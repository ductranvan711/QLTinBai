-- lấy @Count bài viết chuyên mục dịch vụ mới nhất
CREATE PROCEDURE spu_TB_BaiViet_GetServiceNews
    @Count INT = 6
AS
BEGIN
    SET NOCOUNT ON;
    
    SELECT TOP (@Count)
        bv.ID,
        bv.TieuDe,
        bv.Thumbnail,
        bv.TomTat,
        bv.NgayCongBo,
        cm.TenChuyenMuc,
        cm.URLChuyenMuc,
        bv.URLBaiViet
    FROM TB_BaiViet bv
    LEFT JOIN TB_ChuyenMuc cm ON bv.ChuyenMucID = cm.ID
    WHERE bv.TrangThai = 1
        AND cm.URLChuyenMuc = 'dich-vu'
        AND bv.NgayCongBo <= GETDATE()
        AND (bv.HetHanCongBo IS NULL OR bv.HetHanCongBo >= GETDATE())
    ORDER BY bv.NgayCongBo DESC;
END


