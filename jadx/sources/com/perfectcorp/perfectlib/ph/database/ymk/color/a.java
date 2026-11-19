package com.perfectcorp.perfectlib.ph.database.ymk.color;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.Contract;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.makeupcam.template.ColorInfo;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a {
    public static ArrayList a(SQLiteDatabase sQLiteDatabase, String str) {
        String str2 = str;
        Objects.requireNonNull(str2, "setGUID is null");
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            List list = Contract.ColorInfo.f40205a;
            Cursor cursorQuery = sQLiteDatabase.query(false, "ColorInfo", new String[]{"Set_GUID", "PatternType", "Color", "Intensity", "Source", "ExtraData", "Ext_1", "Ext_2"}, "Set_GUID=?", new String[]{str2}, null, null, "_id", null);
            try {
                if (!DBUtility.f(cursorQuery)) {
                    IO.b(cursorQuery);
                    return arrayList;
                }
                int columnIndex = cursorQuery.getColumnIndex("PatternType");
                int columnIndex2 = cursorQuery.getColumnIndex("Color");
                int columnIndex3 = cursorQuery.getColumnIndex("Intensity");
                int columnIndex4 = cursorQuery.getColumnIndex("Source");
                int columnIndex5 = cursorQuery.getColumnIndex("ExtraData");
                int columnIndex6 = cursorQuery.getColumnIndex("Ext_1");
                int columnIndex7 = cursorQuery.getColumnIndex("Ext_2");
                while (true) {
                    int i2 = columnIndex6;
                    int i3 = columnIndex7;
                    arrayList.add(new ColorInfo(str2, cursorQuery.getString(columnIndex), cursorQuery.getString(columnIndex2), cursorQuery.getString(columnIndex3), cursorQuery.getString(columnIndex4), cursorQuery.getString(columnIndex5), cursorQuery.getString(columnIndex6), cursorQuery.getString(columnIndex7)));
                    if (!cursorQuery.moveToNext()) {
                        IO.b(cursorQuery);
                        return arrayList;
                    }
                    str2 = str;
                    columnIndex7 = i3;
                    columnIndex6 = i2;
                }
            } catch (Throwable th) {
                th = th;
                cursor = cursorQuery;
                try {
                    Log.e("ColorInfoDao", "", th);
                    return arrayList;
                } finally {
                    IO.b(cursor);
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static void b(SQLiteDatabase sQLiteDatabase, ColorInfo colorInfo) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("Set_GUID", colorInfo.f40929a);
        contentValues.put("PatternType", colorInfo.f40930b);
        contentValues.put("Color", colorInfo.f40931c);
        contentValues.put("Intensity", colorInfo.d);
        contentValues.put("Source", colorInfo.f40932e);
        contentValues.put("ExtraData", colorInfo.f40933f);
        contentValues.put("Ext_1", colorInfo.g);
        contentValues.put("Ext_2", colorInfo.f40934h);
        try {
            long jInsert = sQLiteDatabase.insert(YMKDatabase.a(sQLiteDatabase, "ColorInfo"), null, contentValues);
            if (jInsert < 0) {
                Log.g(5, "ColorInfoDao", "db.insert failed. id: " + jInsert);
            }
        } catch (Throwable th) {
            Log.d("ColorInfoDao", "db.insert exception: " + th.getMessage());
            throw th;
        }
    }

    public static boolean c(SQLiteDatabase sQLiteDatabase, List list) {
        try {
            sQLiteDatabase.execSQL(DBUtility.d("DELETE FROM " + YMKDatabase.a(sQLiteDatabase, "ColorInfo") + " WHERE Set_GUID IN (" + DBUtility.g(list) + ")"));
            return true;
        } catch (Throwable th) {
            Log.e("ColorInfoDao", "delete by color set ids", th);
            return false;
        }
    }
}
