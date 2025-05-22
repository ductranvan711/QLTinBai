CREATE PROCEDURE spu_TB_BaiViet_GetTrainingNews 
AS 
BEGIN 
    SET NOCOUNT ON;
    
    WITH TrainingNews AS (
        SELECT 
            bv.ID, 
            bv.TieuDe, 
            bv.Thumbnail, 
            bv.TomTat, 
            bv.NgayCongBo, 
            cm.TenChuyenMuc, 
            cm.URLChuyenMuc, 
            bv.URLBaiViet,
            bv.TieuDiem
        FROM TB_BaiViet bv 
        LEFT JOIN TB_ChuyenMuc cm ON bv.ChuyenMucID = cm.ID 
        WHERE bv.TrangThai = 1 
            AND cm.URLChuyenMuc IN ('dao-tao', 'dao-tao-26', 'tin-hoat-dong', 'goc-hoc-vien')
            AND bv.NgayCongBo <= GETDATE() 
            AND (bv.HetHanCongBo IS NULL OR bv.HetHanCongBo >= GETDATE())
    )
    -- lấy tin tức tiêu điểm
    SELECT 
        ID, TieuDe, Thumbnail, TomTat, NgayCongBo,
        TenChuyenMuc, URLChuyenMuc, URLBaiViet,
        1 as TieuDiem
    FROM TrainingNews
    WHERE TieuDiem = 1
    
    UNION ALL
    
    -- lấy 4 tin mới nhất k phải tin tiêu điểm
    SELECT TOP 4
        ID, TieuDe, Thumbnail, TomTat, NgayCongBo,
        TenChuyenMuc, URLChuyenMuc, URLBaiViet,
        0 as TieuDiem
    FROM TrainingNews
    WHERE TieuDiem = 0
    ORDER BY NgayCongBo DESC;
END

