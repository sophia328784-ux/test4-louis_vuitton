package com.perfectcorp.perfectlib.ph.database.ymk.mask;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.Contract;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.makeupcam.template.TemplatePaths;
import com.perfectcorp.perfectlib.ph.template.c;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a {
    public static ArrayList a(SQLiteDatabase sQLiteDatabase, String str) {
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            cursorQuery = sQLiteDatabase.query(true, "MaskInfo", Contract.MaskInfo.a(), "PatternId=?", new String[]{str}, null, null, null, null);
            if (!DBUtility.f(cursorQuery)) {
                IO.b(cursorQuery);
                return arrayList;
            }
            int columnIndex = cursorQuery.getColumnIndex("MaskOrder");
            int columnIndex2 = cursorQuery.getColumnIndex("MaskPath");
            int columnIndex3 = cursorQuery.getColumnIndex("ExtraData");
            int columnIndex4 = cursorQuery.getColumnIndex("Ext_1");
            int columnIndex5 = cursorQuery.getColumnIndex("Ext_2");
            int columnIndex6 = cursorQuery.getColumnIndex("ObbPath");
            int columnIndex7 = cursorQuery.getColumnIndex("OccluderPath");
            int columnIndex8 = cursorQuery.getColumnIndex("HairWarpingStrength");
            do {
                String string = cursorQuery.getString(columnIndex);
                String string2 = cursorQuery.getString(columnIndex2);
                String string3 = cursorQuery.getString(columnIndex3);
                String string4 = cursorQuery.getString(columnIndex4);
                String string5 = cursorQuery.getString(columnIndex5);
                String string6 = cursorQuery.getString(columnIndex6);
                String string7 = cursorQuery.getString(columnIndex7);
                arrayList.add(new c(str, string, TemplatePaths.a(string2), string3, TemplatePaths.a(string4), string5, TemplatePaths.a(string6), TemplatePaths.a(string7), cursorQuery.getInt(columnIndex8)));
            } while (cursorQuery.moveToNext());
            IO.b(cursorQuery);
            return arrayList;
        } catch (Throwable th) {
            try {
                Log.e("MaskInfoDao", th.getMessage(), th);
                return arrayList;
            } finally {
                IO.b(cursorQuery);
            }
        }
    }

    public static void b(SQLiteDatabase sQLiteDatabase, c cVar) {
        cVar.getClass();
        ContentValues contentValues = new ContentValues();
        contentValues.put("PatternId", cVar.f41610a);
        contentValues.put("MaskOrder", cVar.f41611b);
        contentValues.put("MaskPath", TemplatePaths.d(cVar.f41612c));
        contentValues.put("ExtraData", cVar.d);
        contentValues.put("Ext_1", TemplatePaths.d(cVar.f41613e));
        contentValues.put("Ext_2", cVar.f41614f);
        contentValues.put("ObbPath", TemplatePaths.d(cVar.g));
        contentValues.put("OccluderPath", TemplatePaths.d(cVar.f41615h));
        contentValues.put("HairWarpingStrength", Integer.valueOf(cVar.f41616i));
        try {
            long jInsert = sQLiteDatabase.insert(YMKDatabase.a(sQLiteDatabase, "MaskInfo"), null, contentValues);
            if (jInsert < 0) {
                Log.g(5, "MaskInfoDao", "db.insert failed. id: " + jInsert);
            }
        } catch (Throwable th) {
            Log.e("MaskInfoDao", "insert", th);
            throw th;
        }
    }

    public static void c(SQLiteDatabase sQLiteDatabase, List list) {
        try {
            sQLiteDatabase.execSQL(DBUtility.d("DELETE FROM " + YMKDatabase.a(sQLiteDatabase, "MaskInfo") + " WHERE PatternId IN (" + DBUtility.g(list) + ")"));
        } catch (Throwable th) {
            Log.e("MaskInfoDao", "delete by pattern ids", th);
        }
    }
}
