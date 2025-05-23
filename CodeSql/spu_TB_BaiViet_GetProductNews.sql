CREATE PROCEDURE spu_TB_BaiViet_GetProductNews
AS
BEGIN
    SET NOCOUNT ON;
    
    SELECT 
        bv.ID,
        bv.TieuDe,
        bv.TomTat,
        bv.Thumbnail,
        bv.NgayCongBo,
        cm.TenChuyenMuc,
        cm.URLChuyenMuc,
        bv.URLBaiViet
    FROM TB_BaiViet bv
    LEFT JOIN TB_ChuyenMuc cm ON bv.ChuyenMucID = cm.ID
    WHERE bv.TrangThai = 1
        AND cm.URLChuyenMuc IN ('san-pham', 'doanh-nghiep', 'chinh-phu-dien-tu')
        AND bv.NgayCongBo <= GETDATE()
        AND (bv.HetHanCongBo IS NULL OR bv.HetHanCongBo >= GETDATE())
    ORDER BY bv.NgayCongBo DESC;
END