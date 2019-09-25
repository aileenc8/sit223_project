/****** Object:  StoredProcedure [dbo].[InsertAsset]    Script Date: 25/09/2019 5:57:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Aileen Chan
-- Create Date: 22/09/2019
-- Description: Adds assets to Logistix Database
-- =============================================
ALTER PROCEDURE [dbo].[InsertAsset]
(
    @AssetName nchar(30),
	@AssetDesc nchar(50),
	@AssetType nchar(20),
	@AssetStatus nchar(15),
	@AssetDestination nchar(10)
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    -- Insert statements for procedure here
    INSERT INTO dbo.AddAsset (AssetName, AssetDesc, AssetType, AssetStatus, AssetDestination) VALUES (@AssetName, @AssetDesc, @AssetType, @AssetStatus, @AssetDestination)
END
