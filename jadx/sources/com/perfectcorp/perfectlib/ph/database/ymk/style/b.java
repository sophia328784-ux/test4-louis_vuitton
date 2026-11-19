package com.perfectcorp.perfectlib.ph.database.ymk.style;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class b {
    public static a a(SQLiteDatabase sQLiteDatabase, String str) {
        Cursor cursorQuery;
        try {
            cursorQuery = sQLiteDatabase.query("StyleInfo", new String[]{"GUID", "ExtraData", "Ext1", "Ext2", "Ext3", "Ext4", "Ext5"}, "GUID=?", new String[]{str}, null, null, null, "1");
            try {
                if (!DBUtility.f(cursorQuery)) {
                    IO.b(cursorQuery);
                    return null;
                }
                int columnIndex = cursorQuery.getColumnIndex("ExtraData");
                int columnIndex2 = cursorQuery.getColumnIndex("Ext1");
                int columnIndex3 = cursorQuery.getColumnIndex("Ext2");
                int columnIndex4 = cursorQuery.getColumnIndex("Ext3");
                int columnIndex5 = cursorQuery.getColumnIndex("Ext4");
                int columnIndex6 = cursorQuery.getColumnIndex("Ext5");
                cursorQuery.getString(columnIndex);
                String string = cursorQuery.getString(columnIndex2);
                String string2 = cursorQuery.getString(columnIndex3);
                cursorQuery.getString(columnIndex4);
                cursorQuery.getString(columnIndex5);
                cursorQuery.getString(columnIndex6);
                a aVar = new a(str, string, string2);
                IO.b(cursorQuery);
                return aVar;
            } catch (Throwable th) {
                th = th;
                try {
                    Log.e("StyleInfoDao", th.getMessage(), th);
                    return null;
                } finally {
                    IO.b(cursorQuery);
                }
            }
        } catch (Throwable th2) {
            th = th2;
            cursorQuery = null;
        }
    }

    public static void b(SQLiteDatabase sQLiteDatabase, List list) {
        try {
            sQLiteDatabase.execSQL(DBUtility.d("DELETE FROM " + YMKDatabase.a(sQLiteDatabase, "StyleInfo") + " WHERE GUID IN (" + DBUtility.g(list) + ")"));
        } catch (Throwable th) {
            Log.e("StyleInfoDao", "delete by ids", th);
        }
    }
}
