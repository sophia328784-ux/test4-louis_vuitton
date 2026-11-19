.class final Lcom/perfectcorp/perfectlib/hc/database/ymk/p;
.super Lcom/perfectcorp/perfectlib/hc/database/ymk/d$a;


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/d$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string p0, "ALTER TABLE MaskInfo ADD BrowPositionX INTEGER DEFAULT 999"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "ALTER TABLE MaskInfo ADD BrowPositionY INTEGER DEFAULT 999"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "ALTER TABLE MaskInfo ADD BrowThickness INTEGER DEFAULT 999"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "ALTER TABLE MaskInfo ADD BrowCurvature INTEGER DEFAULT 999"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "ALTER TABLE MaskInfo ADD BrowDefinition INTEGER DEFAULT 999"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
