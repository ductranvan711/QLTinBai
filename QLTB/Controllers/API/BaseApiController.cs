﻿using System.Net;
using System.Security.Claims;
using System.Text;
using Application.Core;
using Aspose.Cells;
using Aspose.Cells.Drawing;
using Domain;
using MediatR;
using Microsoft.AspNetCore.Http.HttpResults;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Formatters;
using Newtonsoft.Json;
using QLTB.ViewModels;

namespace QLTB.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class AdminController : ControllerBase
    {
        private IMediator _mediator;
        private IWebHostEnvironment _hostingEnvironment;
        private readonly IConfiguration _config;

        public string[] FileTypes = { ".xls", ".xlsx", ".csv", ".rdf" };
        public string DefaultUniqueCode = "000.00.14.H57";

        protected IMediator Mediator => _mediator ??= HttpContext.RequestServices.GetService<IMediator>();

        public AdminController(IWebHostEnvironment hostingEnvironment, IConfiguration config)
        {
            _hostingEnvironment = hostingEnvironment;
            _config = config;
        }

        protected async Task<ResultUploadFile> SaveFileUpload(IFormFile file, string subDirectory)
        {
            ResultUploadFile result = new ResultUploadFile
            {
                Success = false,
                Message = "",
                Url = "",
                Star = 0,
                JsonData = ""
            };

            //Kiểm tra là đuôi file bị chặn từ appsetting
            string BlockFileExt = _config.GetValue<string>("BlockFileExt");

            string fileName = file.FileName;

            if (BlockFileExt != null)
            {
                bool check = IsFileTypeBlocked(fileName, BlockFileExt);
                if (check == true)
                {
                    result.Message = "Định dạng file không được hỗ trợ!";
                    return result;
                }
            }

            int MaxFileSizeMB = _config.GetValue<int>("MaxFileSize");
            //Từ MB -> B
            long MaxFileSize = MaxFileSizeMB * 1024 * 1024;

            //File rỗng
            if (file.Length <= 0)
            {
                result.Message = "File rỗng, vui lòng kiểm tra lại file!";
                return result;
            }

            if (MaxFileSize > 0 && file.Length > MaxFileSize)
            {
                string resp = $"Kích thước file quá lớn! Tối đa {MaxFileSizeMB} MB";
                result.Message = resp;
                return result;
            }

            DateTime curr = DateTime.Now;
            int year = curr.Year;
            string yearFolder = $"{year}";

            var target = Path.Combine(_hostingEnvironment.ContentRootPath, "wwwroot", subDirectory, yearFolder);

            if (!Directory.Exists(target))
                Directory.CreateDirectory(target);

            string pre = new DateTimeOffset(DateTime.UtcNow).ToUnixTimeSeconds().ToString();

            int idx = fileName.LastIndexOf('.');
            string newFileName = $"{fileName.Substring(0, idx)}_{pre}{fileName.Substring(idx)}";
            var filePath = Path.Combine(target, $"{newFileName}");

            string returnPath = $"/{subDirectory}\\{yearFolder}\\{newFileName}";

            using (var stream = new FileStream(filePath, FileMode.Create))
            {
                await file.CopyToAsync(stream);

                string Url = returnPath;
                result.Url = Url;

                result.Success = true;

                return result;
            }
        }

        protected async Task<ResultUploadFile> SaveFileUploadMetadata(IFormFile file, string subDirectory, string UniqueCode = "", bool flag = false)
        {
            if (string.IsNullOrWhiteSpace(UniqueCode))
            {
                UniqueCode = DefaultUniqueCode;
            }

            ResultUploadFile result = new ResultUploadFile
            {
                Success = false,
                Message = "",
                Url = "",
                Star = 0,
                JsonData = "",
                MimeType = "",
                Size = 0
            };

            //Kiểm tra là đuôi file bị chặn từ appsetting
            string BlockFileExt = _config.GetValue<string>("BlockFileExt");

            string fileName = file.FileName;

            if (BlockFileExt != null)
            {
                bool check = IsFileTypeBlocked(fileName, BlockFileExt);
                if (check == true)
                {
                    result.Message = "Định dạng file không được hỗ trợ!";
                    return result;
                }
            }

            int MaxFileSizeMB = _config.GetValue<int>("MaxFileSize");
            //Từ MB -> B
            long MaxFileSize = MaxFileSizeMB * 1024 * 1024;

            //File rỗng
            if (file.Length <= 0)
            {
                result.Message = "File rỗng, vui lòng kiểm tra lại file!";
                return result;
            }

            if (MaxFileSize > 0 && file.Length > MaxFileSize)
            {
                string resp = $"Kích thước file quá lớn! Tối đa {MaxFileSizeMB} MB";
                result.Message = resp;
                return result;
            }

            DateTime curr = DateTime.Now;
            int year = curr.Year;
            string yearFolder = $"{year}";

            var target = Path.Combine(_hostingEnvironment.ContentRootPath, "wwwroot", subDirectory, UniqueCode, yearFolder);

            if (!Directory.Exists(target))
                Directory.CreateDirectory(target);

            string pre = new DateTimeOffset(DateTime.UtcNow).ToUnixTimeSeconds().ToString();

            int idx = fileName.LastIndexOf('.');
            string newFileName = $"{fileName.Substring(0, idx)}_{pre}{fileName.Substring(idx)}";
            var filePath = Path.Combine(target, $"{newFileName}");

            string returnPath = $"/{subDirectory}\\{UniqueCode}\\{yearFolder}\\{newFileName}";

            using (var stream = new FileStream(filePath, FileMode.Create))
            {
                await file.CopyToAsync(stream);

                string Url = returnPath;
                result.Url = Url;
                
                string mimetype = file.ContentType;

                string ext = Path.GetExtension(fileName).ToLower();
                try
                {
                    mimetype = MimeTypes.MimeTypeMap.GetMimeType(ext);
                }
                catch 
                {
                    mimetype = file.ContentType;
                }

                result.MimeType = mimetype;

                result.Size = file.Length;

                result.Success = true;

                //Flag upload file cho distribution
                if (flag == true)
                {
                    int check = getFileStar(fileName);
                    result.Star = check;
                }

                return result;
            }
        }

        protected ResultUploadFile SaveApiResponse(string JsonData, string mimeType, string ResourceName, string subDirectory, string UniqueCode = "")
        {
            if (string.IsNullOrWhiteSpace(UniqueCode))
            {
                UniqueCode = DefaultUniqueCode;
            }

            ResultUploadFile result = new ResultUploadFile
            {
                Url = "",
                Star = 0,
                JsonData = "",
                MimeType = "",
                Size = 0,
            };

            DateTime curr = DateTime.Now;
            int year = curr.Year;
            string yearFolder = $"{year}";

            var target = Path.Combine(_hostingEnvironment.ContentRootPath, "wwwroot", subDirectory, UniqueCode, yearFolder);

            if (!Directory.Exists(target))
                Directory.CreateDirectory(target);

            string pre = new DateTimeOffset(DateTime.UtcNow).ToUnixTimeSeconds().ToString();

            string fileName = ResourceName;

            string ext = ".json";
            try
            {
                ext = MimeTypes.MimeTypeMap.GetExtension(mimeType);
            }
            catch
            {
                ext = ".json";
            }

            string mime = "application/json";
            try
            {
                mime = MimeTypes.MimeTypeMap.GetMimeType(ext);
            }
            catch
            {
                mime = "application/json";
            }

            string newFileName = $"{fileName}_{pre}{ext}";
            var filePath = Path.Combine(target, $"{newFileName}");

            string returnPath = $"/{subDirectory}\\{UniqueCode}\\{yearFolder}\\{newFileName}";

            using (FileStream fs = System.IO.File.Create(filePath))
            {
                // Add some text to file
                Byte[] data = new UTF8Encoding(true).GetBytes(JsonData);
                fs.Write(data, 0, data.Length);

                string Url = returnPath;
                result.Url = Url;
                result.MimeType = mime;

                //distribution
                int check = getFileStar(newFileName);
                result.Star = check;

                return result;
            }
        }

        protected bool IsFileTypeValid(string[] validFileTypes, string fileName)
        {
            bool result = false;

            if (validFileTypes != null)
            {
                string ext = Path.GetExtension(fileName).ToLower();
                for (int i = 0; i < validFileTypes.Length; i++)
                {
                    if (ext.Equals(validFileTypes[i].ToLower()))
                    {
                        result = true;
                        break;
                    }
                }
            }

            return result;
        }

        protected bool IsFileTypeBlocked(string fileName, string blockedFileTypes)
        {
            bool result = false;

            if (!string.IsNullOrEmpty(blockedFileTypes))
            {
                string[] blockedArr = blockedFileTypes.Split(',');
                if (blockedArr.Count() > 0)
                {
                    string ext = Path.GetExtension(fileName).ToLower();
                    for (int i = 0; i < blockedArr.Length; i++)
                    {
                        if (ext.Equals(blockedArr[i].ToLower()))
                        {
                            result = true;
                            break;
                        }
                    }

                    return result;
                }
            }

            return result;
        }

        protected int getFileStar(string fileName)
        {
            int result = 1;
            string ext = Path.GetExtension(fileName).ToLower();

            string star2List = _config.GetValue<string>("2starExt");
            string star3List = _config.GetValue<string>("3starExt");
            string star4List = _config.GetValue<string>("4starExt");

            if (!string.IsNullOrEmpty(star2List))
            {
                result = checkFileStar(ext, star2List, 2);
                if (result != -1)
                {
                    return result;
                }
            }

            if (!string.IsNullOrEmpty(star3List) && result == -1)
            {
                result = checkFileStar(ext, star3List, 3);
                if (result != -1)
                {
                    return result;
                }
            }

            if (!string.IsNullOrEmpty(star4List) && result == -1)
            {
                result = checkFileStar(ext, star4List, 4);
                if (result != -1)
                {
                    return result;
                }
            }

            return 1;
        }

        protected int checkFileStar(string fileExt, string starList, byte star)
        {
            int result = -1;

            if (!string.IsNullOrEmpty(starList))
            {
                string[] starArr = starList.Split(',');
                if (starArr.Count() > 0)
                {
                    for (int i = 0; i < starArr.Length; i++)
                    {
                        if (fileExt.Equals(starArr[i].ToLower()))
                        {
                            result = star;
                            break;
                        }
                    }

                    return result;
                }
            }

            return result;
        }

        //Hàm bỏ dấu tiếng việt
        public string convertToUnSign(string s)
        {
            string stFormD = s.Normalize(NormalizationForm.FormD);
            StringBuilder sb = new StringBuilder();
            for (int ich = 0; ich < stFormD.Length; ich++)
            {
                System.Globalization.UnicodeCategory uc = System.Globalization.CharUnicodeInfo.GetUnicodeCategory(stFormD[ich]);
                if (uc != System.Globalization.UnicodeCategory.NonSpacingMark)
                {
                    sb.Append(stFormD[ich]);
                }
            }
            sb = sb.Replace('Đ', 'D');
            sb = sb.Replace('đ', 'd');
            sb = sb.Replace(' ', '_');
            return (sb.ToString().Normalize(NormalizationForm.FormD));
        }

        protected void DeleteFileUpload(string filePath)
        {
            string path = filePath.Replace(@"/", "");

            var target = Path.Combine(_hostingEnvironment.ContentRootPath, "wwwroot", path);
            if (System.IO.File.Exists(target))
            {
                System.IO.File.Delete(target);
            }
        }

        public static string GetIPAddress()
        {
            var ipAddress = string.Empty;
            IPHostEntry Host = default(IPHostEntry);
            string Hostname = null;
            Hostname = System.Environment.MachineName;
            Host = Dns.GetHostEntry(Hostname);
            foreach (IPAddress IP in Host.AddressList)
            {
                if (IP.AddressFamily == System.Net.Sockets.AddressFamily.InterNetwork)
                {
                    ipAddress = Convert.ToString(IP);
                }
            }

            return ipAddress;
        }

        protected ActionResult HandleResult<T>(Result<T> result)
        {
            if (result.IsSuccess && result.Value != null)
                return Ok(result.Value);

            if (result.IsSuccess && result.Value == null)
                return NotFound();

            return BadRequest(result.Error);
        }

        protected DataPermissionViewModel getPermission()
        {
            var claimsIdentity = (ClaimsIdentity)User.Identity;

            string UniqueCode = null;
            bool checkAdmin = false;

            if (claimsIdentity != null && claimsIdentity.Name != null)
            {
                string strRoles = claimsIdentity.FindFirst("RolesList").Value;
                string strUniqueCode = claimsIdentity.FindFirst("OrgUniqueCode").Value;

                UniqueCode = strUniqueCode;

                if (strRoles != null && strRoles != "")
                {
                    string[] rolesArr = strRoles.Split(',');
                    if (rolesArr.Count() > 0)
                    {
                        for (int i = 0; i < rolesArr.Length; i++)
                        {
                            if (rolesArr[i].ToUpper() == "HOST" || rolesArr[i].ToUpper() == "SYSTEMADMIN")
                            {
                                checkAdmin = true;
                                break;
                            }
                        }
                    }
                }
            }
            
            DataPermissionViewModel vm = new DataPermissionViewModel
            {
                IsAdmin = checkAdmin,
                UniqueCode = UniqueCode
            };

            return vm;
        }
    }
}
