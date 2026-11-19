package com.perfectcorp.perfectlib.ph.database.ymk.skuset;

import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.YMKDatabase;

/* JADX INFO: loaded from: classes3.dex */
public abstract class e {
    public static void a(SQLiteDatabase sQLiteDatabase, String str) {
        int iDelete = sQLiteDatabase.delete(YMKDatabase.a(sQLiteDatabase, "SkuSetList"), "SkuSetID = ?", new String[]{str});
        if (iDelete != 1) {
            Log.g(5, "SkuSetListDao", "[delete] delete id: " + str + ", rowsAffected != 1, rowsAffected: " + iDelete);
        }
    }
}
