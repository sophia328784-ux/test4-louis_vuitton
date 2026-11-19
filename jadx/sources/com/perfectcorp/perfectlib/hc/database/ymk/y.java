package com.perfectcorp.perfectlib.hc.database.ymk;

import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import defpackage.fx0;

/* JADX INFO: loaded from: classes3.dex */
final class y extends d$a {
    @Override // com.perfectcorp.perfectlib.hc.database.ymk.d$a, com.perfectcorp.perfectlib.hc.database.ymk.d$b
    public final void a(SQLiteDatabase sQLiteDatabase) {
        super.a(sQLiteDatabase);
        DBUtility.i(com.perfectcorp.perfectlib.hc.database.mcsdk.a.h().getReadableDatabase(), new fx0(sQLiteDatabase, 4));
    }
}
