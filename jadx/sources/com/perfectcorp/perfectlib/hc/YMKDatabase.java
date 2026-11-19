package com.perfectcorp.perfectlib.hc;

import android.database.sqlite.SQLiteDatabase;
import android.util.Pair;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.database.ymk.DatabaseOpenHelper;
import com.perfectcorp.perfectlib.internal.ModuleConfig;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.SkuDbHelper;
import defpackage.tr;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public final class YMKDatabase {
    public static String a(SQLiteDatabase sQLiteDatabase, String str) {
        int i2 = DatabaseOpenHelper.g;
        ArrayList arrayList = new ArrayList();
        Iterator<Pair<String, String>> it = sQLiteDatabase.getAttachedDbs().iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next().first);
        }
        return (arrayList.contains("BuiltIn") && arrayList.contains("Live")) ? tr.g("'Live'.", str) : str;
    }

    public static synchronized SQLiteDatabase b() {
        try {
        } catch (Throwable th) {
            DatabaseOpenHelper.Union.f40272j.p();
            Log.e("YMKDatabase", "getReadableDatabase()", th);
            throw th;
        }
        return DatabaseOpenHelper.Union.f40272j.getReadableDatabase();
    }

    public static synchronized SQLiteDatabase c() {
        try {
        } catch (Throwable th) {
            DatabaseOpenHelper.Union.f40272j.p();
            Log.e("YMKDatabase", "getWritableDatabase()", th);
            throw th;
        }
        return DatabaseOpenHelper.Union.f40272j.getWritableDatabase();
    }

    public static void initDbAndCleanUp() throws IllegalAccessException, InvocationTargetException {
        c();
        SQLiteDatabase writableDatabase = DatabaseOpenHelper.Union.f40272j.f40274i.getWritableDatabase();
        if (ModuleConfig.t) {
            SkuDbHelper.class.getDeclaredMethod("removeMarkDeletedContent", SQLiteDatabase.class).invoke(null, writableDatabase);
        }
    }
}
