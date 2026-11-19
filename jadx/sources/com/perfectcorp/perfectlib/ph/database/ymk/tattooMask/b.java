package com.perfectcorp.perfectlib.ph.database.ymk.tattooMask;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.makeupcam.template.TemplatePaths;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class b {
    public static ArrayList a(SQLiteDatabase sQLiteDatabase, String str) {
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            cursorQuery = sQLiteDatabase.query(true, "TattooMaskInfo", new String[]{"PatternId", "TattooMaskOrder", "TattoMaskPath", "ExtraData", "Ext_1", "Ext_2"}, "PatternId=?", new String[]{str}, null, null, null, null);
            if (!DBUtility.f(cursorQuery)) {
                IO.b(cursorQuery);
                return arrayList;
            }
            int columnIndex = cursorQuery.getColumnIndex("TattooMaskOrder");
            int columnIndex2 = cursorQuery.getColumnIndex("TattoMaskPath");
            int columnIndex3 = cursorQuery.getColumnIndex("ExtraData");
            int columnIndex4 = cursorQuery.getColumnIndex("Ext_1");
            int columnIndex5 = cursorQuery.getColumnIndex("Ext_2");
            do {
                String string = cursorQuery.getString(columnIndex);
                String string2 = cursorQuery.getString(columnIndex2);
                arrayList.add(new a(str, string, TemplatePaths.a(string2), cursorQuery.getString(columnIndex3), cursorQuery.getString(columnIndex4), cursorQuery.getString(columnIndex5)));
            } while (cursorQuery.moveToNext());
            IO.b(cursorQuery);
            return arrayList;
        } catch (Throwable th) {
            try {
                Log.e("TattooMaskInfoDao", th.getMessage(), th);
                return arrayList;
            } finally {
                IO.b(cursorQuery);
            }
        }
    }

    public static void b(SQLiteDatabase sQLiteDatabase, a aVar) {
        aVar.getClass();
        ContentValues contentValues = new ContentValues();
        contentValues.put("PatternId", aVar.f41349a);
        contentValues.put("TattooMaskOrder", aVar.f41350b);
        contentValues.put("TattoMaskPath", TemplatePaths.d(aVar.f41351c));
        contentValues.put("ExtraData", aVar.d);
        contentValues.put("Ext_1", aVar.f41352e);
        contentValues.put("Ext_2", aVar.f41353f);
        try {
            long jInsert = sQLiteDatabase.insert(YMKDatabase.a(sQLiteDatabase, "TattooMaskInfo"), null, contentValues);
            if (jInsert < 0) {
                Log.g(5, "TattooMaskInfoDao", "db.insert failed. id: " + jInsert);
            }
        } catch (Throwable th) {
            Log.d("TattooMaskInfoDao", "db.insert exception: " + th.getMessage());
            throw th;
        }
    }

    public static void c(SQLiteDatabase sQLiteDatabase, List list) {
        try {
            sQLiteDatabase.execSQL(DBUtility.d("DELETE FROM " + YMKDatabase.a(sQLiteDatabase, "TattooMaskInfo") + " WHERE PatternId IN (" + DBUtility.g(list) + ")"));
        } catch (Throwable th) {
            Log.e("TattooMaskInfoDao", "delete by pattern ids", th);
        }
    }
}
