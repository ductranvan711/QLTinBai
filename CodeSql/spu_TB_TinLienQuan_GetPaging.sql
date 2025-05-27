CREATE PROCEDURE spu_TB_TinLienQuan_GetPaging --29FCB3D4-01B8-470A-A18C-A7BADA201BF1, A58D2E41-4389-4DF8-B9F3-C8651F06DB71, 7973CF4A-3E57-422F-AEE8-4BF0625D3652
    @BaiVietID uniqueidentifier,
    @PageNumber int,
    @PageSize int
AS
BEGIN
    SET NOCOUNT ON;
    
    WITH CTE AS (
        SELECT
            tlq.*,
            bv.TieuDe,
            bv.URLBaiViet, 
            bv.NgayCongBo,
            bv.TacGia,
            bv.TrangThai,
            cm.TenChuyenMuc,
			cm.URLChuyenMuc,
            ROW_NUMBER() OVER (ORDER BY bv.NgayCongBo DESC) as RowNum
        FROM TB_TinLienQuan tlq
        INNER JOIN TB_BaiViet bv ON tlq.BaiVietLienQuanID = bv.ID
        LEFT JOIN TB_ChuyenMuc cm ON bv.ChuyenMucID = cm.ID
        WHERE tlq.BaiVietID = @BaiVietID
            AND bv.TrangThai = 1
            AND bv.NgayCongBo <= GETDATE()
    )
    SELECT
        *,
        (SELECT COUNT(*) FROM CTE) as TotalCount
    FROM CTE
    WHERE RowNum BETWEEN (@PageNumber - 1) * @PageSize + 1
        AND @PageNumber * @PageSize
    ORDER BY NgayCongBo DESC;
END
