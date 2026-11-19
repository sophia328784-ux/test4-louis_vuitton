package com.perfectcorp.perfectlib.ph.database.ymk.sku;

import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import defpackage.fx0;

/* JADX INFO: loaded from: classes3.dex */
public abstract class SkuDbHelper {
    public static Optional a(String str) {
        SQLiteDatabase sQLiteDatabaseB = YMKDatabase.b();
        Optional optionalD = SkuItemDao.d(sQLiteDatabaseB, str);
        return optionalD.d() ? SkuDao.a(sQLiteDatabaseB, ((e) optionalD.c()).f41293b, false) : Optional.a();
    }

    public static void removeMarkDeletedContent(SQLiteDatabase sQLiteDatabase) {
        DBUtility.i(sQLiteDatabase, new fx0(sQLiteDatabase, 0));
    }
}
