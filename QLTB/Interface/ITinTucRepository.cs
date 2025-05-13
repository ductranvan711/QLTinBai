using Domain;
using Application.Core;
namespace QLTB.Interface
{
    public interface ITinTucRepository
    {
        Task<Result<List<TB_BaiViet>>> GetAllBaiViet();
        Task<Result<TB_BaiViet>> GetBaiVietById(Guid id);
    }
}
