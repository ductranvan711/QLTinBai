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
        public async Task<Result<List<TB_BaiViet>>> GetAllBaiViet()
        {
            List<TB_BaiViet> lstBaiViet = new List<TB_BaiViet>();
            try
            {
                using (var conn = _connectDB.IConnectData())
                {
                    conn.Open();
                    var sp = "spu_TB_BaiViet_GetAllBaiViet";
                    var result = await conn.QueryAsync<TB_BaiViet>(new CommandDefinition(sp, commandType: System.Data.CommandType.StoredProcedure));
                    return Result<List<TB_BaiViet>>.Success(result.ToList());
                }
            }
            catch (Exception ex)
            {
                return Result<List<TB_BaiViet>>.Failure(ex.Message);
            }
        }

        public async Task<Result<TB_BaiViet>> GetBaiVietById(Guid id)
        {
            try
            {
                using (var conn = _connectDB.IConnectData())
                {
                    conn.Open();
                    var sp = "spu_TB_BaiViet_GetBaiVietById";
                    var parameters = new { ID = id };
                    var result = await conn.QueryFirstOrDefaultAsync<TB_BaiViet>(
                        new CommandDefinition(sp, parameters, commandType: System.Data.CommandType.StoredProcedure));
                    
                    if (result == null)
                        return Result<TB_BaiViet>.Failure("Khong tim thay");
                        
                    return Result<TB_BaiViet>.Success(result);
                }
            }
            catch (Exception ex)
            {
                return Result<TB_BaiViet>.Failure(ex.Message);
            }
        }

        public async Task<Result<List<TB_BaiViet_TrangChu>>> GetLatestNews(int count)
        {
            try
            {
                using (var conn = _connectDB.IConnectData())
                {
                    conn.Open();
                    var sp = "spu_TB_BaiViet_GetLatestNews";
                    var parameters = new { Count = count };
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
        public async Task<Result<List<TB_BaiViet_TrangChu>>> GetServiceNews(int count)
        {
            try
            {
                using (var conn = _connectDB.IConnectData())
                {
                    conn.Open();
                    var sp = "spu_TB_BaiViet_GetServiceNews";
                    var parameters = new { Count = count };
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

        public async Task<Result<List<TB_BaiViet_TrangChu>>> GetTrainingNews()
        {
            try
            {
                using (var conn = _connectDB.IConnectData())
                {
                    conn.Open();
                    var sp = "spu_TB_BaiViet_GetTrainingNews";
                    var result = await conn.QueryAsync<TB_BaiViet_TrangChu>(
                        new CommandDefinition(sp, commandType: System.Data.CommandType.StoredProcedure));
                    
                    return Result<List<TB_BaiViet_TrangChu>>.Success(result.ToList());
                }
            }
            catch (Exception ex)
            {
                return Result<List<TB_BaiViet_TrangChu>>.Failure(ex.Message);
            }
        }
    }
    
}
