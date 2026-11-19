.class final Lcom/perfectcorp/perfectlib/hc/database/ymk/x;
.super Lcom/perfectcorp/perfectlib/hc/database/ymk/d$a;


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/d$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string p0, "CREATE INDEX IF NOT EXISTS \'index_cache_strategy_for_cache_first_then_update\' ON CacheStrategyForCacheFirstThenUpdate(Guid)"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE INDEX IF NOT EXISTS \'index_pattern_palette_pattern_guid\' ON PatternPaletteInfo(PatternGUID)"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE INDEX IF NOT EXISTS \'index_pattern_palette_palette_guid\' ON PatternPaletteInfo(PaletteGUID)"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE INDEX IF NOT EXISTS \'index_pattern_palette_palette_color_index\' ON PatternPaletteInfo(PaletteColorIndex)"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE TextureInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT,GUID TEXT,Thumbnail TEXT,ExtraData TEXT, UNIQUE (GUID) ON CONFLICT IGNORE);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE INDEX IF NOT EXISTS \'index_texture_guid\' ON TextureInfo(GUID)"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE PaletteTextureInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT,PaletteID TEXT,TextureID TEXT,ExtraData TEXT, UNIQUE (PaletteID, TextureID) ON CONFLICT IGNORE);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE INDEX IF NOT EXISTS \'index_palette_texture_palette_guid\' ON PaletteTextureInfo(PaletteID)"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE INDEX IF NOT EXISTS \'index_palette_texture_texture_guid\' ON PaletteTextureInfo(TextureID)"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "UPDATE IdSystemInfo SET ReferencedIds = \'[\"-_-\"]\'"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
