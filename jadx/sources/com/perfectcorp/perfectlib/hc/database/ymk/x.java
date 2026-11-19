package com.perfectcorp.perfectlib.hc.database.ymk;

import android.database.sqlite.SQLiteDatabase;

/* JADX INFO: loaded from: classes3.dex */
final class x extends d$a {
    @Override // com.perfectcorp.perfectlib.hc.database.ymk.d$a, com.perfectcorp.perfectlib.hc.database.ymk.d$b
    public final void a(SQLiteDatabase sQLiteDatabase) {
        super.a(sQLiteDatabase);
        sQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS 'index_cache_strategy_for_cache_first_then_update' ON CacheStrategyForCacheFirstThenUpdate(Guid)");
        sQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS 'index_pattern_palette_pattern_guid' ON PatternPaletteInfo(PatternGUID)");
        sQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS 'index_pattern_palette_palette_guid' ON PatternPaletteInfo(PaletteGUID)");
        sQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS 'index_pattern_palette_palette_color_index' ON PatternPaletteInfo(PaletteColorIndex)");
        sQLiteDatabase.execSQL("CREATE TABLE TextureInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT,GUID TEXT,Thumbnail TEXT,ExtraData TEXT, UNIQUE (GUID) ON CONFLICT IGNORE);");
        sQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS 'index_texture_guid' ON TextureInfo(GUID)");
        sQLiteDatabase.execSQL("CREATE TABLE PaletteTextureInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT,PaletteID TEXT,TextureID TEXT,ExtraData TEXT, UNIQUE (PaletteID, TextureID) ON CONFLICT IGNORE);");
        sQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS 'index_palette_texture_palette_guid' ON PaletteTextureInfo(PaletteID)");
        sQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS 'index_palette_texture_texture_guid' ON PaletteTextureInfo(TextureID)");
        sQLiteDatabase.execSQL("UPDATE IdSystemInfo SET ReferencedIds = '[\"-_-\"]'");
    }
}
