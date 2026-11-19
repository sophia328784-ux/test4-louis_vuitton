package com.perfectcorp.perfectlib.ph.database.ymk.skuset;

import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.YMKDatabase;

/* JADX INFO: loaded from: classes3.dex */
public abstract class d {
    public static void a(SQLiteDatabase sQLiteDatabase, String str) {
        Log.g(3, "SkuSetItemDao", "[delete] delete id: " + str + ", rowsAffected != 1, rowsAffected: " + sQLiteDatabase.delete(YMKDatabase.a(sQLiteDatabase, "SkuSetItem"), "SkuSetId = ?", new String[]{str}));
    }
}
