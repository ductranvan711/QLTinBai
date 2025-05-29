using Application.Core;
using Dapper;
using Domain;
using QLTB.Interface;

namespace QLTB.Repository
{
    public class TinTucRepository : ITinTucRepository
    {
        private readonly IConnectDB _connectDB;
        public TinTucRepository(IConnectDB connectDB)
        {
            _connectDB = connectDB;
        }

        public async Task<Result<List<TB_BaiViet_TrangChu>>> GetNews(int type, int? count = null, string chuyenMuc = null)
        {
            try
            {
                using (var conn = _connectDB.IConnectData())
                {
                    conn.Open();
                    var sp = "spu_TB_BaiViet_GetNews";
                    var parameters = new { Type = type, Count = count, ChuyenMuc = chuyenMuc };
                    var result = await conn.QueryAsync<TB_BaiViet_TrangChu>(
                        new CommandDefinition(sp, parameters, commandType: System.Data.CommandType.StoredProcedure));

                    return Result<List<TB_BaiViet_TrangChu>>.Success(result.ToList());
                }
            }
            catch (Exception ex)
            {
                return Result<List<TB_BaiViet_TrangChu>>.Failure(ex.Message);
            }
        }

        public async Task<Result<List<TB_BaiViet_TrangChu>>> GetLatestNews(int count, string chuyenMuc = null)
        {
            return await GetNews(1, count, chuyenMuc);
        }

        public async Task<Result<List<TB_BaiViet_TrangChu>>> GetServiceNews(int count, string chuyenMuc = null)
        {
            return await GetNews(2, count, chuyenMuc);
        }

        public async Task<Result<List<TB_BaiViet_TrangChu>>> GetTrainingNews(int count, string chuyenMuc = null)
        {
            return await GetNews(3, count, chuyenMuc);
        }

        public async Task<Result<List<TB_BaiViet_TrangChu>>> GetProductNews(string chuyenMuc = null)
        {
            return await GetNews(4, null, chuyenMuc);
        }

        public async Task<Result<TB_BaiViet_GetChiTiet>> GetBaiVietChiTiet(String urlBaiViet)
        {
            try
            {
                using (var conn = _connectDB.IConnectData())
                {
                    conn.Open();
                    var sp = "spu_TB_BaiViet_GetChiTiet";
                    var parameters = new { urlBaiViet = urlBaiViet };
                    var result = await conn.QueryFirstOrDefaultAsync<TB_BaiViet_GetChiTiet>(
                        new CommandDefinition(sp, parameters, commandType: System.Data.CommandType.StoredProcedure));
                    
                    if (result == null)
                        return Result<TB_BaiViet_GetChiTiet>.Failure("K tim thay bai viet");
                        
                    return Result<TB_BaiViet_GetChiTiet>.Success(result);
                }
            }
            catch (Exception ex)
            {
                return Result<TB_BaiViet_GetChiTiet>.Failure(ex.Message);
            }
        }

        public async Task<Result<List<TinLienQuanTrinhDien1>>> GetTinLienQuanPaging(Guid baiVietId, int pageNumber, int pageSize)
        {
            try
            {
                using (var conn = _connectDB.IConnectData())
                {
                    conn.Open();
                    var sp = "spu_TB_TinLienQuan_GetPaging";
                    var parameters = new { 
                        BaiVietID = baiVietId,
                        PageNumber = pageNumber,
                        PageSize = pageSize
                    };
                    var result = await conn.QueryAsync<TinLienQuanTrinhDien1>(
                        new CommandDefinition(sp, parameters, commandType: System.Data.CommandType.StoredProcedure));
                    
                    return Result<List<TinLienQuanTrinhDien1>>.Success(result.ToList());
                }
            }
            catch (Exception ex)
            {
                return Result<List<TinLienQuanTrinhDien1>>.Failure(ex.Message);
            }
        }
    }

}
