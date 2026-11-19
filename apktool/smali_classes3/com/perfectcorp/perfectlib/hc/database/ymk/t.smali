.class final Lcom/perfectcorp/perfectlib/hc/database/ymk/t;
.super Lcom/perfectcorp/perfectlib/hc/database/ymk/d$a;


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/d$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 p0, 0x3

    const-string v0, "DatabaseUpgrade_1_35"

    const-string v1, "[createNewTables] start"

    invoke-static {p0, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-string v1, "CREATE TABLE ShapeInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT,GUID TEXT,Thumbnail TEXT,ExtraData TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE INDEX IF NOT EXISTS \'index_shape_guid\' ON ShapeInfo(GUID)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE TABLE PaletteShapeInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT, palette_guid TEXT NOT NULL, shape_guid TEXT NOT NULL, UNIQUE(palette_guid, shape_guid) ON CONFLICT IGNORE);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE INDEX IF NOT EXISTS \'index_palette_shape_palette_guid\' ON PaletteShapeInfo(palette_guid)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE INDEX IF NOT EXISTS \'index_palette_shape_shape_guid\' ON PaletteShapeInfo(shape_guid)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "[createNewTables] end"

    invoke-static {p0, v0, p1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
