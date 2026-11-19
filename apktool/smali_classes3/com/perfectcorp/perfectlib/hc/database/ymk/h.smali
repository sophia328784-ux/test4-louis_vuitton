.class final Lcom/perfectcorp/perfectlib/hc/database/ymk/h;
.super Lcom/perfectcorp/perfectlib/hc/database/ymk/d$a;


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/d$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string p0, "lastModified"

    const-string v0, "INTEGER"

    const-string v1, "ProductMaskDetail"

    invoke-static {p1, v1, p0, v0}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "TEXT"

    const-string v0, "DownloadImage"

    const-string v1, "type"

    invoke-static {p1, v0, v1, p0}, Lcom/perfectcorp/perfectlib/hc/database/DBUtility;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "index_downloaded_image_type"

    invoke-static {p0, v0, v1}, Lcom/perfectcorp/perfectlib/hc/database/Contract;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
