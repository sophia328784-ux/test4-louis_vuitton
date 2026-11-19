package com.perfectcorp.perfectlib.hc.database.ymk;

import android.database.sqlite.SQLiteDatabase;

/* JADX INFO: loaded from: classes3.dex */
final class p extends d$a {
    @Override // com.perfectcorp.perfectlib.hc.database.ymk.d$a, com.perfectcorp.perfectlib.hc.database.ymk.d$b
    public final void a(SQLiteDatabase sQLiteDatabase) {
        super.a(sQLiteDatabase);
        sQLiteDatabase.execSQL("ALTER TABLE MaskInfo ADD BrowPositionX INTEGER DEFAULT 999");
        sQLiteDatabase.execSQL("ALTER TABLE MaskInfo ADD BrowPositionY INTEGER DEFAULT 999");
        sQLiteDatabase.execSQL("ALTER TABLE MaskInfo ADD BrowThickness INTEGER DEFAULT 999");
        sQLiteDatabase.execSQL("ALTER TABLE MaskInfo ADD BrowCurvature INTEGER DEFAULT 999");
        sQLiteDatabase.execSQL("ALTER TABLE MaskInfo ADD BrowDefinition INTEGER DEFAULT 999");
    }
}
