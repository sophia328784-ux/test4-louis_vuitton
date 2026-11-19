package com.perfectcorp.perfectlib.hc.database.ymk;

import android.database.sqlite.SQLiteDatabase;

/* JADX INFO: loaded from: classes3.dex */
final class r extends d$a {
    @Override // com.perfectcorp.perfectlib.hc.database.ymk.d$a, com.perfectcorp.perfectlib.hc.database.ymk.d$b
    public final void a(SQLiteDatabase sQLiteDatabase) {
        super.a(sQLiteDatabase);
        sQLiteDatabase.execSQL("ALTER TABLE IdSystemInfo ADD LastModified INTEGER");
    }
}
