package com.perfectcorp.perfectlib.ph.database.ymk.look;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.Contract;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.makeupcam.template.EffectInfo;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes3.dex */
public abstract class e {
    public static d a(SQLiteDatabase sQLiteDatabase, String str) {
        Throwable th;
        Cursor cursorQuery;
        try {
            cursorQuery = sQLiteDatabase.query("LookInfo", Contract.LookInfo.a(), "GUID=?", new String[]{str}, null, null, null, null);
            try {
                if (!DBUtility.f(cursorQuery)) {
                    IO.b(cursorQuery);
                    return null;
                }
                int columnIndex = cursorQuery.getColumnIndex("GUID");
                int columnIndex2 = cursorQuery.getColumnIndex("Version");
                int columnIndex3 = cursorQuery.getColumnIndex("Name");
                int columnIndex4 = cursorQuery.getColumnIndex("Description");
                int columnIndex5 = cursorQuery.getColumnIndex("ThumbImage");
                int columnIndex6 = cursorQuery.getColumnIndex("PreviewImage");
                int columnIndex7 = cursorQuery.getColumnIndex("Source");
                int columnIndex8 = cursorQuery.getColumnIndex("SupportMode");
                int columnIndex9 = cursorQuery.getColumnIndex("IsNew");
                int columnIndex10 = cursorQuery.getColumnIndex("ExtStr2");
                int columnIndex11 = cursorQuery.getColumnIndex("ExtraData");
                int columnIndex12 = cursorQuery.getColumnIndex("ExtStr3");
                int columnIndex13 = cursorQuery.getColumnIndex("LookType");
                String string = cursorQuery.getString(columnIndex);
                float f2 = cursorQuery.getFloat(columnIndex2);
                String string2 = cursorQuery.getString(columnIndex3);
                String string3 = cursorQuery.getString(columnIndex4);
                String string4 = cursorQuery.getString(columnIndex5);
                String string5 = cursorQuery.getString(columnIndex6);
                String string6 = cursorQuery.getString(columnIndex7);
                String string7 = cursorQuery.getString(columnIndex8);
                boolean z = cursorQuery.getInt(columnIndex9) > 0;
                String string8 = cursorQuery.getString(columnIndex10);
                String string9 = cursorQuery.getString(columnIndex11);
                String string10 = cursorQuery.getString(columnIndex12);
                String string11 = cursorQuery.getString(columnIndex13);
                d.a aVar = new d.a(string);
                aVar.f41213b = f2;
                aVar.f41214c = string2;
                aVar.d = string3;
                aVar.f41215e = string4;
                aVar.f41216f = string5;
                aVar.g = string6;
                aVar.f41217h = string7;
                aVar.f41218i = z;
                aVar.f41220k = string8;
                aVar.f41219j = string9;
                if (string10 == null) {
                    string10 = "";
                }
                aVar.l = string10;
                aVar.m = string11;
                d dVar = new d(aVar);
                IO.b(cursorQuery);
                return dVar;
            } catch (Throwable th2) {
                th = th2;
                try {
                    Log.e("LookInfoDao", th.getMessage(), th);
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

    public static ArrayList b(SQLiteDatabase sQLiteDatabase, String str) {
        Cursor cursorQuery = null;
        try {
            ArrayList arrayList = new ArrayList();
            cursorQuery = sQLiteDatabase.query(true, "LookInfo", new String[]{"GUID"}, "ExtStr1!='true' AND LookType='" + str + "'", new String[0], null, null, "_id ASC", null);
            if (!DBUtility.f(cursorQuery)) {
                return arrayList;
            }
            do {
                arrayList.add(cursorQuery.getString(cursorQuery.getColumnIndex("GUID")));
            } while (cursorQuery.moveToNext());
            return arrayList;
        } finally {
            IO.b(cursorQuery);
        }
    }

    public static void c(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("ExtStr2", str2);
            sQLiteDatabase.update(YMKDatabase.a(sQLiteDatabase, "LookInfo"), contentValues, "GUID = ?", new String[]{str});
        } catch (Throwable th) {
            Log.e("LookInfoDao", th.getMessage(), th);
        }
    }

    public static void d(SQLiteDatabase sQLiteDatabase, String str) {
        int iDelete = sQLiteDatabase.delete(YMKDatabase.a(sQLiteDatabase, "LookInfo"), "GUID = ?", new String[]{str});
        if (iDelete != 1) {
            Log.g(5, "LookInfoDao", "[delete]  delete id: " + str + ", rowsAffected != 1, rowsAffected: " + iDelete);
            return;
        }
        for (String str2 : a.b(sQLiteDatabase, str)) {
            String[] strArr = {str2};
            EffectInfo effectInfoA = a.a(sQLiteDatabase, str2);
            if (effectInfoA != null) {
                String str3 = effectInfoA.f40939f;
                int iDelete2 = sQLiteDatabase.delete(YMKDatabase.a(sQLiteDatabase, "EffectInfo"), "GUID = ?", strArr);
                if (iDelete2 != 1) {
                    Log.d("EffectInfoDao", "[delete]  delete id: " + str2 + ", rowsAffected != 1, rowsAffected: " + iDelete2);
                } else if (com.perfectcorp.perfectlib.ph.database.ymk.color.a.a(sQLiteDatabase, str3).isEmpty()) {
                    com.perfectcorp.perfectlib.ph.database.ymk.color.a.c(sQLiteDatabase, Collections.singletonList(str3));
                }
            }
        }
    }
}
