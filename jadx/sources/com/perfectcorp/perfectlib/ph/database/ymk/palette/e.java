package com.perfectcorp.perfectlib.ph.database.ymk.palette;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class e {
    public static d a(SQLiteDatabase sQLiteDatabase, String str) {
        Cursor cursorQuery;
        try {
            try {
                cursorQuery = sQLiteDatabase.query("PaletteStyleInfo", new String[]{"palette_guid", "style_guid", "inner_ratio", "feather_strength", "intensity"}, "palette_guid=?", new String[]{str}, null, null, null, "1");
                try {
                    if (!DBUtility.f(cursorQuery)) {
                        IO.b(cursorQuery);
                        return null;
                    }
                    d dVar = new d(str, cursorQuery.getString(cursorQuery.getColumnIndex("style_guid")), cursorQuery.getInt(cursorQuery.getColumnIndex("inner_ratio")), cursorQuery.getInt(cursorQuery.getColumnIndex("feather_strength")), cursorQuery.getInt(cursorQuery.getColumnIndex("intensity")));
                    IO.b(cursorQuery);
                    return dVar;
                } catch (Throwable th) {
                    th = th;
                    try {
                        Log.e("PaletteStyleInfoDao", th.getMessage(), th);
                        return null;
                    } finally {
                        IO.b(cursorQuery);
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                cursorQuery = null;
                Log.e("PaletteStyleInfoDao", th.getMessage(), th);
                return null;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static void b(SQLiteDatabase sQLiteDatabase, List list) {
        try {
            List listC = c(sQLiteDatabase, list);
            sQLiteDatabase.execSQL(DBUtility.d("DELETE FROM " + YMKDatabase.a(sQLiteDatabase, "PaletteStyleInfo") + " WHERE palette_guid IN (" + DBUtility.g(list) + ")"));
            com.perfectcorp.perfectlib.ph.database.ymk.style.b.b(sQLiteDatabase, listC);
        } catch (Throwable th) {
            Log.e("PaletteStyleInfoDao", "deleteByPaletteIds", th);
        }
    }

    public static List c(SQLiteDatabase sQLiteDatabase, List list) {
        try {
            Cursor cursorRawQuery = sQLiteDatabase.rawQuery(DBUtility.d("SELECT style_guid FROM " + YMKDatabase.a(sQLiteDatabase, "PaletteStyleInfo") + " WHERE palette_guid IN (" + DBUtility.g(list) + ")"), null);
            if (!DBUtility.f(cursorRawQuery)) {
                List list2 = Collections.EMPTY_LIST;
                IO.b(cursorRawQuery);
                return list2;
            }
            ArrayList arrayList = new ArrayList();
            do {
                arrayList.add(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("style_guid")));
            } while (cursorRawQuery.moveToNext());
            IO.b(cursorRawQuery);
            return arrayList;
        } catch (Throwable th) {
            try {
                Log.e("PaletteStyleInfoDao", "getStyleIds", th);
                return Collections.EMPTY_LIST;
            } finally {
                IO.b(null);
            }
        }
    }
}
