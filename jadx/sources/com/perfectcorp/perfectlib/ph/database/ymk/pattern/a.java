package com.perfectcorp.perfectlib.ph.database.ymk.pattern;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.Contract;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.makeupcam.template.TemplatePaths;
import com.perfectcorp.perfectlib.ph.template.m;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a {
    /* JADX WARN: Multi-variable type inference failed */
    public static m a(Cursor cursor) {
        String string = cursor.getString(cursor.getColumnIndex("GUID"));
        String string2 = cursor.getString(cursor.getColumnIndex("PatternType"));
        String string3 = cursor.getString(cursor.getColumnIndex("Name"));
        String string4 = cursor.getString(cursor.getColumnIndex("ThumbPath"));
        String string5 = cursor.getString(cursor.getColumnIndex("Source"));
        String string6 = cursor.getString(cursor.getColumnIndex("SupportMode"));
        float f2 = cursor.getFloat(cursor.getColumnIndex("Version"));
        String string7 = cursor.getString(cursor.getColumnIndex("ExtraData"));
        return new m(string, string2, string3, TemplatePaths.a(string4), string5, string6, f2, cursor.getInt(cursor.getColumnIndex("IsNew")) > 0, cursor.getString(cursor.getColumnIndex("SkuGUID")), TextUtils.isEmpty(string7) ? new m.b((int) (0 == true ? 1 : 0)) : (m.b) GsonHelper.f39260a.i(string7, m.b.class), cursor.getString(cursor.getColumnIndex("ExtStr1")), cursor.getString(cursor.getColumnIndex("ExtStr2")), cursor.getString(cursor.getColumnIndex("TextureSupportedMode")), cursor.getString(cursor.getColumnIndex("HiddenInRoom")), cursor.getInt(cursor.getColumnIndex("Positions")));
    }

    public static List b(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        Cursor cursorQuery = null;
        try {
            ArrayList arrayList = new ArrayList();
            cursorQuery = sQLiteDatabase.query(true, "PatternInfo", new String[]{"GUID"}, (str2 != null ? "PatternType=? AND Source=? AND ExtStr3!='true'" : "PatternType=? AND ExtStr3!='true'").concat(""), str2 != null ? new String[]{str, str2} : new String[]{str}, null, null, "_id ASC", null);
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
                Log.e("PatternInfoDao", "getIDsByType patternType: " + str + ", sourceType: " + str2, th);
                return Collections.EMPTY_LIST;
            } finally {
                IO.b(cursorQuery);
            }
        }
    }

    public static void c(SQLiteDatabase sQLiteDatabase, List list, boolean z) {
        try {
            sQLiteDatabase.execSQL(DBUtility.d("DELETE FROM " + YMKDatabase.a(sQLiteDatabase, "PatternInfo") + " WHERE GUID IN (" + DBUtility.g(list) + ")"));
            com.perfectcorp.perfectlib.ph.database.ymk.mask.a.c(sQLiteDatabase, list);
            com.perfectcorp.perfectlib.ph.database.ymk.tattooMask.b.c(sQLiteDatabase, list);
            if (z) {
                return;
            }
            c.h(sQLiteDatabase, list);
        } catch (Throwable th) {
            Log.e("PatternInfoDao", "delete ids", th);
        }
    }

    public static m d(SQLiteDatabase sQLiteDatabase, String str) {
        Cursor cursorQuery;
        try {
            cursorQuery = sQLiteDatabase.query("PatternInfo", Contract.PatternInfo.a(), "GUID=?", new String[]{str}, null, null, null, "1");
            try {
                if (!DBUtility.f(cursorQuery)) {
                    IO.b(cursorQuery);
                    return null;
                }
                m mVarA = a(cursorQuery);
                IO.b(cursorQuery);
                return mVarA;
            } catch (Throwable th) {
                th = th;
                try {
                    Log.e("PatternInfoDao", "getByID id: " + str, th);
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
}
