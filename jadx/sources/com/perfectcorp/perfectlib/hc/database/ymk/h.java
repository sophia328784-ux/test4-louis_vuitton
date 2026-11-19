package com.perfectcorp.perfectlib.hc.database.ymk;

import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.perfectlib.hc.database.Contract;
import com.perfectcorp.perfectlib.hc.database.DBUtility;

/* JADX INFO: loaded from: classes3.dex */
final class h extends d$a {
    @Override // com.perfectcorp.perfectlib.hc.database.ymk.d$a, com.perfectcorp.perfectlib.hc.database.ymk.d$b
    public final void a(SQLiteDatabase sQLiteDatabase) {
        super.a(sQLiteDatabase);
        DBUtility.a(sQLiteDatabase, "ProductMaskDetail", "lastModified", "INTEGER");
        DBUtility.a(sQLiteDatabase, "DownloadImage", "type", "TEXT");
        sQLiteDatabase.execSQL(Contract.b("index_downloaded_image_type", "DownloadImage", "type"));
    }
}
