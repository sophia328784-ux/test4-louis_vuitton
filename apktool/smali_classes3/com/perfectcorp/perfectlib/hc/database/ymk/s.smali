.class final Lcom/perfectcorp/perfectlib/hc/database/ymk/s;
.super Lcom/perfectcorp/perfectlib/hc/database/ymk/d$a;


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/d$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 p0, 0x3

    const-string v0, "DatabaseUpgrade_1_34"

    const-string v1, "[createNewTables] start"

    invoke-static {p0, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-string v1, "CREATE TABLE SkuOnly (_id INTEGER PRIMARY KEY AUTOINCREMENT,skuId BIGINT DEFAULT -1,skuGuid TEXT NOT NULL,name TEXT,longName TEXT,isDefault INTEGER DEFAULT 0,vendor TEXT,startDate BIGINT,endDate BIGINT,featureType TEXT,featureSubtype TEXT,lastModified INTEGER DEFAULT -1,info TEXT,customerId BIGINT DEFAULT -1,isDeleted INTEGER DEFAULT 0,extraInfo TEXT,hidden TEXT,UNIQUE (skuGuid) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE TABLE SkuItemOnly (_id INTEGER PRIMARY KEY AUTOINCREMENT,itemGuid TEXT,skuGuid TEXT,isHot INTEGER DEFAULT 0,freeSampleUrl TEXT,shoppingUrl TEXT,moreInfoUrl TEXT,itemDescription TEXT,customerInfo TEXT,isDeleted INTEGER DEFAULT 0,itemThumbnailPath TEXT NOT NULL,itemThumbnailIndexedPath TEXT NOT NULL,itemPaletteThumbnail TEXT NOT NULL,displayColorList TEXT NOT NULL,colorNumber TEXT NOT NULL,itemName TEXT NOT NULL,itemLongName TEXT NOT NULL,isIntensitySliderHidden INTEGER DEFAULT 0,isRadiusSliderHidden INTEGER DEFAULT 0,isHiddenIntensitySliderHidden INTEGER DEFAULT 0,isShineIntensitySliderHidden TEXT,extraData TEXT,UNIQUE (skuGuid,itemGuid));"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE TABLE SkuSetList (SkuSetID TEXT NOT NULL PRIMARY KEY,Type TEXT DEFAULT \'\',Vendor TEXT DEFAULT \'\',CustomerId TEXT DEFAULT \'\',LastModified BIGINT,MakeupVersion TEXT DEFAULT \'\',Metadata TEXT DEFAULT \'\',IsDeleted INTEGER DEFAULT 0);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE TABLE SkuSetListItem (SkuSetId TEXT NOT NULL,SkuGuid TEXT DEFAULT \'\',ItemGuid TEXT DEFAULT \'\',Metadata TEXT DEFAULT \'\', UNIQUE (SkuSetId, SkuGuid, ItemGuid) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE TABLE SkuSetListSupportedPattern (_id INTEGER PRIMARY KEY AUTOINCREMENT,SkuSetId TEXT NOT NULL,SupportedPatternGuid TEXT DEFAULT \'\',Metadata TEXT DEFAULT \'\',UNIQUE (SkuSetId, SupportedPatternGuid) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE TABLE SkuSetListWearingStyle (_id INTEGER PRIMARY KEY AUTOINCREMENT,SkuSetId TEXT NOT NULL,WearingStyleGuid TEXT DEFAULT \'\',Metadata TEXT DEFAULT \'\',UNIQUE (SkuSetId, WearingStyleGuid) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "[createNewTables] end"

    invoke-static {p0, v0, p1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
