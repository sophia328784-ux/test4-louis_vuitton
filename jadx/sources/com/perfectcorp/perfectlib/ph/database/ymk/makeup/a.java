package com.perfectcorp.perfectlib.ph.database.ymk.makeup;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.Contract;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a {
    public static b a(SQLiteDatabase sQLiteDatabase, String str) {
        Throwable th;
        Cursor cursorQuery;
        try {
            cursorQuery = sQLiteDatabase.query("MakeupItemCache", Contract.MakeupItemCache.a(), "Ext_1=?", new String[]{str}, null, null, null, null);
            try {
                if (!DBUtility.f(cursorQuery)) {
                    IO.b(cursorQuery);
                    return null;
                }
                b bVar = new b(new JSONObject(cursorQuery.getString(cursorQuery.getColumnIndex("JsonString"))));
                IO.b(cursorQuery);
                return bVar;
            } catch (Throwable th2) {
                th = th2;
                try {
                    Log.e("MakeupItemDAO", th.getMessage(), th);
                    return null;
                } finally {
                    IO.b(cursorQuery);
                }
            }
        } catch (Throwable th3) {
            th = th3;
            cursorQuery = null;
        }
    }

    public static void b(SQLiteDatabase sQLiteDatabase, long j2, b bVar) {
        Cursor cursorQuery;
        b bVar2;
        long j3;
        try {
            cursorQuery = sQLiteDatabase.query("MakeupItemCache", Contract.MakeupItemCache.a(), "MIid=?", new String[]{String.valueOf(j2)}, null, null, null, null);
            try {
                if (DBUtility.f(cursorQuery)) {
                    bVar2 = new b(new JSONObject(cursorQuery.getString(cursorQuery.getColumnIndex("JsonString"))));
                    IO.b(cursorQuery);
                } else {
                    IO.b(cursorQuery);
                    bVar2 = null;
                }
            } catch (Throwable th) {
                th = th;
                try {
                    Log.e("MakeupItemDAO", th.getMessage(), th);
                } catch (Throwable th2) {
                    IO.b(cursorQuery);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            cursorQuery = null;
        }
        if (bVar2 != null) {
            StringBuilder sb = new StringBuilder();
            j3 = j2;
            sb.append(j3);
            sQLiteDatabase.delete(YMKDatabase.a(sQLiteDatabase, "MakeupItemCache"), "MIid = ?", new String[]{sb.toString()});
        } else {
            j3 = j2;
        }
        bVar.getClass();
        ContentValues contentValues = new ContentValues();
        contentValues.put("MIid", Long.valueOf(j3));
        contentValues.put("Cid", (Long) 0L);
        contentValues.put("JsonString", bVar.f41225a.toString());
        contentValues.put("Ext_1", bVar.d);
        contentValues.put("Ext_2", "false");
        try {
            sQLiteDatabase.insert(YMKDatabase.a(sQLiteDatabase, "MakeupItemCache"), null, contentValues);
        } catch (Throwable th4) {
            Log.e("MakeupItemDAO", th4.getMessage(), th4);
        }
    }

    public static void c(SQLiteDatabase sQLiteDatabase, String str) {
        sQLiteDatabase.delete(YMKDatabase.a(sQLiteDatabase, "MakeupItemCache"), "Ext_1=?", new String[]{str});
    }
}
