.class final Lcom/perfectcorp/perfectlib/hc/database/ymk/z;
.super Lcom/perfectcorp/perfectlib/hc/database/ymk/d$a;


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/d$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string p0, "CREATE TABLE SkuSet (SkuSetID TEXT NOT NULL PRIMARY KEY,Type TEXT DEFAULT \'\',Vendor TEXT DEFAULT \'\',CustomerId TEXT DEFAULT \'\',LastModified BIGINT,MakeupVersion TEXT DEFAULT \'\',Metadata TEXT DEFAULT \'\',IsDeleted INTEGER DEFAULT 0);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE SkuSetItem (SkuSetId TEXT NOT NULL,SkuGuid TEXT DEFAULT \'\',ItemGuid TEXT DEFAULT \'\',Metadata TEXT DEFAULT \'\', UNIQUE (SkuSetId, SkuGuid, ItemGuid) ON CONFLICT REPLACE);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE SkuSetSupportedPattern (_id INTEGER PRIMARY KEY AUTOINCREMENT,SkuSetId TEXT NOT NULL,SupportedPatternGuid TEXT DEFAULT \'\',Metadata TEXT DEFAULT \'\',UNIQUE (SkuSetId, SupportedPatternGuid) ON CONFLICT REPLACE);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
