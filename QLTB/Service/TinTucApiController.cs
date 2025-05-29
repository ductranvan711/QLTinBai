using MediatR;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using QLTB.Interface;
using QLTB.Repository;
using System.Net;

namespace QLTB.Services
{
    // Model chung cho tất cả loại tin tức
    public class NewsRequest
    {
        public int Type { get; set; } = 1; // 1: Latest, 2: dịch vụ, 3: đào tạo, 4: sản phẩm
        public int? Count { get; set; }
        public string ChuyenMuc { get; set; }
    }

    [Route("api/[controller]")]
    public class TinTucApiController : Controller
    {
        public readonly ITinTucRepository _tinTucRepository;
        public TinTucApiController(ITinTucRepository tinTucRepository)
        {
            _tinTucRepository = tinTucRepository;
        }

        [AllowAnonymous]
        [HttpPost]
        [Route("GetNews")]
        public async Task<IActionResult> GetNews([FromBody] NewsRequest request)
        {
            try
            {
                var result = await _tinTucRepository.GetNews(
                    request?.Type ?? 1,
                    request?.Count,
                    request?.ChuyenMuc);
                return Ok(result);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [AllowAnonymous]
        [HttpPost]
        [Route("GetLatestNews")]
        public async Task<IActionResult> GetLatestNews([FromBody] NewsRequest request)
        {
            try
            {
                var result = await _tinTucRepository.GetNews(1, request?.Count ?? 4, request?.ChuyenMuc);
                return Ok(result);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [AllowAnonymous]
        [HttpPost]
        [Route("GetServiceNews")]
        public async Task<IActionResult> GetServiceNews([FromBody] NewsRequest request)
        {
            try
            {
                var result = await _tinTucRepository.GetNews(2, request?.Count ?? 6, request?.ChuyenMuc);
                return Ok(result);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [AllowAnonymous]
        [HttpPost]
        [Route("GetTrainingNews")]
        public async Task<IActionResult> GetTrainingNews([FromBody] NewsRequest request)
        {
            try
            {
                var result = await _tinTucRepository.GetNews(3, request?.Count ?? 4, request?.ChuyenMuc);
                return Ok(result);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [AllowAnonymous]
        [HttpPost]
        [Route("GetProductNews")]
        public async Task<IActionResult> GetProductNews([FromBody] NewsRequest request)
        {
            try
            {
                var result = await _tinTucRepository.GetNews(4, request?.Count, request?.ChuyenMuc);
                return Ok(result);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [AllowAnonymous]
        [HttpGet]
        [Route("GetBaiVietChiTiet/{urlBaiViet}")]
        public async Task<IActionResult> GetBaiVietChiTiet(String urlBaiViet)
        {
            try
            {
                var result = await _tinTucRepository.GetBaiVietChiTiet(urlBaiViet);
                return Ok(result);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [AllowAnonymous]
        [HttpGet]
        [Route("GetTinLienQuanPaging")]
        public async Task<IActionResult> GetTinLienQuanPaging([FromQuery] Guid baiVietId, [FromQuery] int pageNumber = 1, [FromQuery] int pageSize = 5)
        {
            try
            {
                var result = await _tinTucRepository.GetTinLienQuanPaging(baiVietId, pageNumber, pageSize);
                return Ok(result);
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
    }
}
