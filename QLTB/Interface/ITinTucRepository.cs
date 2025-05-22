using Domain;
using Application.Core;
namespace QLTB.Interface
{
    public interface ITinTucRepository
    {
        Task<Result<List<TB_BaiViet>>> GetAllBaiViet();
        Task<Result<TB_BaiViet>> GetBaiVietById(Guid id);
        Task<Result<List<TB_BaiViet_TrangChu>>> GetLatestNews(int count);
        Task<Result<List<TB_BaiViet_TrangChu>>> GetServiceNews(int count);
        Task<Result<List<TB_BaiViet_TrangChu>>> GetTrainingNews();
    }
}
