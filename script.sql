-- Stored Procedure để lấy tất cả bài viết
CREATE PROCEDURE spu_TB_BaiViet_GetAllBaiViet
AS
BEGIN
    SELECT * FROM TB_BaiViet
END
GO

-- Stored Procedure để lấy bài viết theo ID
CREATE PROCEDURE spu_TB_BaiViet_GetBaiVietById
    @Id UNIQUEIDENTIFIER
AS
BEGIN
    SELECT * FROM TB_BaiViet WHERE ID = @Id
END
GO