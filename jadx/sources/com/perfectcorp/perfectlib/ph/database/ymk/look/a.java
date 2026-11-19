package com.perfectcorp.perfectlib.ph.database.ymk.look;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.database.Contract;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.makeupcam.template.EffectInfo;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a {
    public static EffectInfo a(SQLiteDatabase sQLiteDatabase, String str) {
        Cursor cursorQuery;
        try {
            List list = Contract.EffectInfo.f40211a;
            cursorQuery = sQLiteDatabase.query("EffectInfo", new String[]{"GUID", "PresetGUID", "PatternGUID", "EffectType", "ColorCount", "ColorSetGUID", "Intensity", "ListOrder", "ExtraData", "Ext_1", "Ext_2"}, "GUID=?", new String[]{str}, null, null, null, "1");
            try {
                if (!DBUtility.f(cursorQuery)) {
                    IO.b(cursorQuery);
                    return null;
                }
                int columnIndex = cursorQuery.getColumnIndex("GUID");
                int columnIndex2 = cursorQuery.getColumnIndex("PresetGUID");
                int columnIndex3 = cursorQuery.getColumnIndex("PatternGUID");
                int columnIndex4 = cursorQuery.getColumnIndex("EffectType");
                int columnIndex5 = cursorQuery.getColumnIndex("ColorCount");
                int columnIndex6 = cursorQuery.getColumnIndex("ColorSetGUID");
                int columnIndex7 = cursorQuery.getColumnIndex("Intensity");
                int columnIndex8 = cursorQuery.getColumnIndex("ListOrder");
                int columnIndex9 = cursorQuery.getColumnIndex("ExtraData");
                int columnIndex10 = cursorQuery.getColumnIndex("Ext_1");
                String string = cursorQuery.getString(columnIndex);
                String string2 = cursorQuery.getString(columnIndex2);
                String string3 = cursorQuery.getString(columnIndex3);
                String string4 = cursorQuery.getString(columnIndex4);
                String string5 = cursorQuery.getString(columnIndex5);
                String string6 = cursorQuery.getString(columnIndex6);
                String string7 = cursorQuery.getString(columnIndex7);
                String string8 = cursorQuery.getString(columnIndex8);
                String string9 = cursorQuery.getString(columnIndex9);
                String string10 = cursorQuery.getString(columnIndex10);
                EffectInfo.Builder builder = new EffectInfo.Builder(string, string2, string3, string4);
                builder.f40947f = string6;
                builder.f40946e = string5;
                builder.g = string7;
                builder.f40948h = string8;
                builder.f40949i = string9;
                builder.f40950j = string10;
                EffectInfo effectInfo = new EffectInfo(builder);
                IO.b(cursorQuery);
                return effectInfo;
            } catch (Throwable th) {
                th = th;
                try {
                    Log.e("EffectInfoDao", th.getMessage(), th);
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

    public static ArrayList b(SQLiteDatabase sQLiteDatabase, String str) {
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            cursorQuery = sQLiteDatabase.query(true, "EffectInfo", new String[]{"GUID"}, "PresetGUID=?", new String[]{str}, null, null, "ListOrder ASC", null);
            if (!DBUtility.f(cursorQuery)) {
                IO.b(cursorQuery);
                return arrayList;
            }
            do {
                arrayList.add(cursorQuery.getString(cursorQuery.getColumnIndex("GUID")));
            } while (cursorQuery.moveToNext());
            IO.b(cursorQuery);
            return arrayList;
        } catch (Throwable th) {
            try {
                Log.e("EffectInfoDao", th.getMessage(), th);
                return arrayList;
            } finally {
                IO.b(cursorQuery);
            }
        }
    }
}
