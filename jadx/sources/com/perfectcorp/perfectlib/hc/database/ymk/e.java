package com.perfectcorp.perfectlib.hc.database.ymk;

import android.database.sqlite.SQLiteDatabase;

/* JADX INFO: loaded from: classes3.dex */
final class e extends d$a {
    @Override // com.perfectcorp.perfectlib.hc.database.ymk.d$a, com.perfectcorp.perfectlib.hc.database.ymk.d$b
    public final void a(SQLiteDatabase sQLiteDatabase) {
        super.a(sQLiteDatabase);
        sQLiteDatabase.execSQL("CREATE TABLE IdSystemInfo (Id TEXT PRIMARY KEY,ReferencedIds TEXT, Size INTEGER DEFAULT 0, LastModified INTEGER)");
        sQLiteDatabase.execSQL("CREATE TABLE ReferenceElementInfo (Id TEXT PRIMARY KEY,ReferencedIds TEXT)");
    }
}
