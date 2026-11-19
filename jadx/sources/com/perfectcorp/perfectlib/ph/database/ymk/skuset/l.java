package com.perfectcorp.perfectlib.ph.database.ymk.skuset;

import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.database.ymk.BaseDao;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public abstract class l {
    public static void a(SQLiteDatabase sQLiteDatabase, String str) {
        Threads.b();
        Objects.requireNonNull(str);
        try {
            Log.g(3, "SkuSetWearingStyleDao", "[delete] skuSetId=" + str + ", rowsAffected=" + BaseDao.c(sQLiteDatabase, "SkuSetWearingStyle", "SkuSetId", str));
        } catch (Throwable th) {
            Log.e("SkuSetWearingStyleDao", "[delete] failed", th);
            throw th;
        }
    }
}
