using Domain;
using Application.Core;

namespace QLTB.Interface
{
    public interface ITinTucRepository
    {
        Task<Result<List<TB_BaiViet_TrangChu>>> GetNews(int type, int? count, string chuyenMuc = null);
        Task<Result<TB_BaiViet_GetChiTiet>> GetBaiVietChiTiet(String urlBaiViet);
        Task<Result<List<TinLienQuanTrinhDien1>>> GetTinLienQuanPaging(Guid baiVietId, int pageNumber, int pageSize);
    }
}
