-- lấy @count bài viết mới nhất
CREATE PROCEDURE spu_TB_BaiViet_GetLatestNews
    @Count INT = 4
AS
BEGIN
    SET NOCOUNT ON;
    
    SELECT TOP (@Count)
        bv.ID,
        bv.TieuDe,
        bv.Thumbnail,
        bv.NgayCongBo,
        cm.TenChuyenMuc,
        cm.URLChuyenMuc,
		bv.URLBaiViet
    FROM TB_BaiViet bv
    LEFT JOIN TB_ChuyenMuc cm ON bv.ChuyenMucID = cm.ID
    WHERE bv.TrangThai = 1
        AND bv.NgayCongBo <= GETDATE()
        AND (bv.HetHanCongBo IS NULL OR bv.HetHanCongBo >= GETDATE())
    ORDER BY bv.NgayCongBo DESC;
END

