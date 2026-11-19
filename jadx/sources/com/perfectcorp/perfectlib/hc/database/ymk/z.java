package com.perfectcorp.perfectlib.hc.database.ymk;

import android.database.sqlite.SQLiteDatabase;

/* JADX INFO: loaded from: classes3.dex */
final class z extends d$a {
    @Override // com.perfectcorp.perfectlib.hc.database.ymk.d$a, com.perfectcorp.perfectlib.hc.database.ymk.d$b
    public final void a(SQLiteDatabase sQLiteDatabase) {
        super.a(sQLiteDatabase);
        sQLiteDatabase.execSQL("CREATE TABLE SkuSet (SkuSetID TEXT NOT NULL PRIMARY KEY,Type TEXT DEFAULT '',Vendor TEXT DEFAULT '',CustomerId TEXT DEFAULT '',LastModified BIGINT,MakeupVersion TEXT DEFAULT '',Metadata TEXT DEFAULT '',IsDeleted INTEGER DEFAULT 0);");
        sQLiteDatabase.execSQL("CREATE TABLE SkuSetItem (SkuSetId TEXT NOT NULL,SkuGuid TEXT DEFAULT '',ItemGuid TEXT DEFAULT '',Metadata TEXT DEFAULT '', UNIQUE (SkuSetId, SkuGuid, ItemGuid) ON CONFLICT REPLACE);");
        sQLiteDatabase.execSQL("CREATE TABLE SkuSetSupportedPattern (_id INTEGER PRIMARY KEY AUTOINCREMENT,SkuSetId TEXT NOT NULL,SupportedPatternGuid TEXT DEFAULT '',Metadata TEXT DEFAULT '',UNIQUE (SkuSetId, SupportedPatternGuid) ON CONFLICT REPLACE);");
    }
}
