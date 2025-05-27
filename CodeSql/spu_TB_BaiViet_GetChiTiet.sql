CREATE PROCEDURE spu_TB_BaiViet_GetChiTiet
    @URLBaiViet nvarchar(500)
AS
BEGIN
    SET NOCOUNT ON;
    
    SELECT 
		bv.ID,
        cm.TenChuyenMuc,
        bv.TieuDe,
        bv.NgayCongBo,
        bv.TomTat,
        bv.NoiDung,
        bv.NguonTin,
        bv.TacGia
    FROM TB_BaiViet bv
    INNER JOIN TB_ChuyenMuc cm ON bv.ChuyenMucID = cm.ID
    WHERE bv.URLBaiViet = @URLBaiViet
    AND bv.TrangThai = 1;
    
    RETURN 0;
END

