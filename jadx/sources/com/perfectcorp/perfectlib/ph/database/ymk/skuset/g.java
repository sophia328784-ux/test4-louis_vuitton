package com.perfectcorp.perfectlib.ph.database.ymk.skuset;

import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.database.ymk.BaseDao;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public abstract class g {
    public static void a(SQLiteDatabase sQLiteDatabase, String str) {
        Threads.b();
        Objects.requireNonNull(str);
        try {
            Log.g(3, "SkuSetListSupportedPatternDao", "[delete] skuSetId=" + str + ", rowsAffected=" + BaseDao.c(sQLiteDatabase, "SkuSetListSupportedPattern", "SkuSetId", str));
        } catch (Throwable th) {
            Log.e("SkuSetListSupportedPatternDao", "[delete] failed", th);
            throw th;
        }
    }
}
