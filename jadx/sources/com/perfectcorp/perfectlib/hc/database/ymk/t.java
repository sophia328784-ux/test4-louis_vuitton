package com.perfectcorp.perfectlib.hc.database.ymk;

import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.utility.Log;

/* JADX INFO: loaded from: classes3.dex */
final class t extends d$a {
    @Override // com.perfectcorp.perfectlib.hc.database.ymk.d$a, com.perfectcorp.perfectlib.hc.database.ymk.d$b
    public final void a(SQLiteDatabase sQLiteDatabase) {
        super.a(sQLiteDatabase);
        Log.g(3, "DatabaseUpgrade_1_35", "[createNewTables] start");
        sQLiteDatabase.execSQL("CREATE TABLE ShapeInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT,GUID TEXT,Thumbnail TEXT,ExtraData TEXT);");
        sQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS 'index_shape_guid' ON ShapeInfo(GUID)");
        sQLiteDatabase.execSQL("CREATE TABLE PaletteShapeInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT, palette_guid TEXT NOT NULL, shape_guid TEXT NOT NULL, UNIQUE(palette_guid, shape_guid) ON CONFLICT IGNORE);");
        sQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS 'index_palette_shape_palette_guid' ON PaletteShapeInfo(palette_guid)");
        sQLiteDatabase.execSQL("CREATE INDEX IF NOT EXISTS 'index_palette_shape_shape_guid' ON PaletteShapeInfo(shape_guid)");
        Log.g(3, "DatabaseUpgrade_1_35", "[createNewTables] end");
    }
}
