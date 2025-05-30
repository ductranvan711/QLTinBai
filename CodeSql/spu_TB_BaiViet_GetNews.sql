USE [TinTuc]
GO
/****** Object:  StoredProcedure [dbo].[spu_TB_BaiViet_GetNews]    Script Date: 5/29/2025 4:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[spu_TB_BaiViet_GetNews]
    @Type INT = 1, -- 1: Latest, 2: dịch vụ, 3: đào tạo, 4: san phẩm
    @Count INT = NULL, -- sl bài viết
    @ChuyenMuc nvarchar(max) = NULL -- ID cm
AS
BEGIN
    SET NOCOUNT ON;
    
    -- xác định số lượng mặc định tùy theo loại nếu không được cung cấp
    DECLARE @DefaultCount INT
    IF @Count IS NULL
    BEGIN
        SET @DefaultCount = CASE
            WHEN @Type = 1 THEN 4 -- Latest News
            WHEN @Type = 2 THEN 6 -- dịch vụ
            WHEN @Type = 3 THEN 4 -- đào tạo
            WHEN @Type = 4 THEN 6 -- sản phẩm
            ELSE 4
        END
        SET @Count = @DefaultCount
    END
    
    -- Xử lý từng loại tin tức
    IF @Type = 1 -- Latest News
    BEGIN
        SELECT TOP (@Count)
            bv.ID,
            bv.TieuDe,
            bv.Thumbnail,
            bv.TomTat,
            bv.NgayCongBo,
            cm.TenChuyenMuc,
            cm.URLChuyenMuc,
            bv.URLBaiViet,
            0 as TieuDiem
        FROM TB_BaiViet bv
        LEFT JOIN TB_ChuyenMuc cm ON bv.ChuyenMucID = cm.ID
        WHERE bv.TrangThai = 1
            AND (
                @ChuyenMuc IS NULL
                OR
                bv.ChuyenMucID IN (SELECT TRIM(value) FROM STRING_SPLIT(@ChuyenMuc, ','))
            )
            AND bv.NgayCongBo <= GETDATE()
            AND (bv.HetHanCongBo IS NULL OR bv.HetHanCongBo >= GETDATE())
        ORDER BY bv.NgayCongBo DESC;
    END
    
    ELSE IF @Type = 2 -- dịch vụ
    BEGIN
        SELECT TOP (@Count)
            bv.ID,
            bv.TieuDe,
            bv.Thumbnail,
            bv.TomTat,
            bv.NgayCongBo,
            cm.TenChuyenMuc,
            cm.URLChuyenMuc,
            bv.URLBaiViet,
            0 as TieuDiem
        FROM TB_BaiViet bv
        LEFT JOIN TB_ChuyenMuc cm ON bv.ChuyenMucID = cm.ID
        WHERE bv.TrangThai = 1
            AND (
                (@ChuyenMuc IS NULL AND cm.URLChuyenMuc = 'dich-vu')
                OR
                (@ChuyenMuc IS NOT NULL AND bv.ChuyenMucID IN (SELECT TRIM(value) FROM STRING_SPLIT(@ChuyenMuc, ',')))
            )
            AND bv.NgayCongBo <= GETDATE()
            AND (bv.HetHanCongBo IS NULL OR bv.HetHanCongBo >= GETDATE())
        ORDER BY bv.NgayCongBo DESC;
    END
    
    ELSE IF @Type = 3 -- đào tạo
    BEGIN
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
                AND (
                    (@ChuyenMuc IS NULL AND cm.URLChuyenMuc IN ('dao-tao', 'dao-tao-26', 'tin-hoat-dong', 'goc-hoc-vien'))
                    OR
                    (@ChuyenMuc IS NOT NULL AND bv.ChuyenMucID IN (SELECT TRIM(value) FROM STRING_SPLIT(@ChuyenMuc, ',')))
                )
                AND bv.NgayCongBo <= GETDATE() 
                AND (bv.HetHanCongBo IS NULL OR bv.HetHanCongBo >= GETDATE())
        )
        
        -- Lấy tin tức tiêu điểm
        SELECT 
            ID, TieuDe, Thumbnail, TomTat, NgayCongBo,
            TenChuyenMuc, URLChuyenMuc, URLBaiViet,
            1 as TieuDiem
        FROM TrainingNews
        WHERE TieuDiem = 1
        
        UNION ALL
        
        -- Lấy tin thường
        SELECT TOP (@Count)
            ID, TieuDe, Thumbnail, TomTat, NgayCongBo,
            TenChuyenMuc, URLChuyenMuc, URLBaiViet,
            0 as TieuDiem
        FROM TrainingNews
        WHERE TieuDiem = 0
        ORDER BY NgayCongBo DESC;
    END
    
    ELSE IF @Type = 4 -- sản phẩm
    BEGIN
        SELECT TOP (@Count)
            bv.ID,
            bv.TieuDe,
            bv.Thumbnail,
            bv.TomTat,
            bv.NgayCongBo,
            cm.TenChuyenMuc,
            cm.URLChuyenMuc,
            bv.URLBaiViet,
            0 as TieuDiem
        FROM TB_BaiViet bv
        LEFT JOIN TB_ChuyenMuc cm ON bv.ChuyenMucID = cm.ID
        WHERE bv.TrangThai = 1
            AND (
                @ChuyenMuc IS NULL
                OR
                bv.ChuyenMucID IN (SELECT TRIM(value) FROM STRING_SPLIT(@ChuyenMuc, ','))
            )
            AND bv.NgayCongBo <= GETDATE()
            AND (bv.HetHanCongBo IS NULL OR bv.HetHanCongBo >= GETDATE())
        ORDER BY bv.NgayCongBo DESC, bv.CreatedOnDate DESC;
    END
END
