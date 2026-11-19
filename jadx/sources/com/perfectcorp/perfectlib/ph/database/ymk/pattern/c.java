package com.perfectcorp.perfectlib.ph.database.ymk.pattern;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.Contract;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.gson.JsonObject;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class c {
    public static List a(Cursor cursor) {
        if (!DBUtility.f(cursor)) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList();
        do {
            String string = cursor.getString(cursor.getColumnIndex("PatternGUID"));
            String string2 = cursor.getString(cursor.getColumnIndex("PaletteGUID"));
            String string3 = cursor.getString(cursor.getColumnIndex("PaletteColorIndex"));
            String string4 = cursor.getString(cursor.getColumnIndex("Source"));
            int i2 = cursor.getInt(cursor.getColumnIndex("ColorCount"));
            String string5 = cursor.getString(cursor.getColumnIndex("ColorIntensities"));
            String string6 = cursor.getString(cursor.getColumnIndex("Radius"));
            String string7 = cursor.getString(cursor.getColumnIndex("HiddenIntensity"));
            String string8 = cursor.getString(cursor.getColumnIndex("extra"));
            arrayList.add(new b(string, string2, string3, string4, i2, string5, string6, string7, TextUtils.isEmpty(string8) ? b.f41250j : new b.C0149b((JsonObject) GsonHelper.f39260a.i(string8, JsonObject.class), false)));
        } while (cursor.moveToNext());
        return arrayList;
    }

    public static List b(SQLiteDatabase sQLiteDatabase, String str) {
        try {
            Cursor cursorQuery = sQLiteDatabase.query("PatternPaletteInfo", Contract.PatternPaletteInfo.a(), "PatternGUID=? AND PatternPaletteInfo.isDeleted=0", new String[]{str}, null, null, null, null);
            if (DBUtility.f(cursorQuery)) {
                List listA = a(cursorQuery);
                IO.b(cursorQuery);
                return listA;
            }
            List list = Collections.EMPTY_LIST;
            IO.b(cursorQuery);
            return list;
        } catch (Throwable th) {
            try {
                Log.e("PatternPaletteInfoDao", "getByPatternId failed", th);
                return Collections.EMPTY_LIST;
            } finally {
                IO.b(null);
            }
        }
    }

    public static List c(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        try {
            Cursor cursorQuery = sQLiteDatabase.query("PatternPaletteInfo", Contract.PatternPaletteInfo.a(), "PaletteGUID=?", new String[]{str}, null, null, null, str2);
            if (!DBUtility.f(cursorQuery)) {
                List list = Collections.EMPTY_LIST;
                IO.b(cursorQuery);
                return list;
            }
            List listA = a(cursorQuery);
            if (MoreCollections.a(listA)) {
                listA = Collections.EMPTY_LIST;
            }
            IO.b(cursorQuery);
            return listA;
        } catch (Throwable th) {
            try {
                int i2 = Log.f39427a;
                Log.j("PatternPaletteInfoDao", th.getMessage(), th);
                return Collections.EMPTY_LIST;
            } finally {
                IO.b(null);
            }
        }
    }

    public static List d(SQLiteDatabase sQLiteDatabase, String str, String str2, boolean z) {
        try {
            String[] strArr = {"PatternGUID"};
            String strConcat = str2 != null ? "PatternPaletteInfo.PaletteGUID=? AND PatternInfo.GUID = PatternGUID AND PatternPaletteInfo.PaletteColorIndex=?" : "PatternPaletteInfo.PaletteGUID=? AND PatternInfo.GUID = PatternGUID";
            if (!z) {
                strConcat = strConcat.concat(" AND PatternPaletteInfo.isDeleted=0");
            }
            Cursor cursorQuery = sQLiteDatabase.query(true, "PatternPaletteInfo, PatternInfo", strArr, strConcat, str2 != null ? new String[]{str, str2} : new String[]{str}, "PatternPaletteInfo.PatternGUID", null, "MIN(PatternPaletteInfo._id)", null);
            if (!DBUtility.f(cursorQuery)) {
                List list = Collections.EMPTY_LIST;
                IO.b(cursorQuery);
                return list;
            }
            ArrayList arrayList = new ArrayList();
            do {
                arrayList.add(cursorQuery.getString(cursorQuery.getColumnIndex("PatternGUID")));
            } while (cursorQuery.moveToNext());
            IO.b(cursorQuery);
            return arrayList;
        } catch (Throwable th) {
            try {
                Log.e("PatternPaletteInfoDao", "getPatternIds failed", th);
                return Collections.EMPTY_LIST;
            } finally {
                IO.b(null);
            }
        }
    }

    public static List e(SQLiteDatabase sQLiteDatabase, List list, boolean z) {
        try {
            String strConcat = "SELECT PaletteGUID FROM " + YMKDatabase.a(sQLiteDatabase, "PatternPaletteInfo") + " WHERE PatternGUID" + DBUtility.b(list);
            if (!z) {
                strConcat = strConcat.concat(" AND isDeleted=0");
            }
            Cursor cursorRawQuery = sQLiteDatabase.rawQuery(DBUtility.d(strConcat), null);
            if (!DBUtility.f(cursorRawQuery)) {
                List list2 = Collections.EMPTY_LIST;
                IO.b(cursorRawQuery);
                return list2;
            }
            ArrayList arrayList = new ArrayList();
            do {
                arrayList.add(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("PaletteGUID")));
            } while (cursorRawQuery.moveToNext());
            IO.b(cursorRawQuery);
            return arrayList;
        } catch (Throwable th) {
            try {
                Log.e("PatternPaletteInfoDao", "getPaletteIds", th);
                return Collections.EMPTY_LIST;
            } finally {
                IO.b(null);
            }
        }
    }

    public static void f(SQLiteDatabase sQLiteDatabase, b bVar) {
        bVar.getClass();
        ContentValues contentValues = new ContentValues();
        contentValues.put("PatternGUID", bVar.f41251a);
        contentValues.put("PaletteGUID", bVar.f41252b);
        contentValues.put("PaletteColorIndex", bVar.f41253c);
        contentValues.put("Source", bVar.d);
        contentValues.put("ColorCount", Integer.valueOf(bVar.f41254e));
        contentValues.put("ColorIntensities", bVar.f41255f);
        contentValues.put("Radius", bVar.g);
        contentValues.put("HiddenIntensity", bVar.f41256h);
        b.C0149b c0149b = bVar.f41257i;
        contentValues.put("extra", c0149b != null ? GsonHelper.f39261b.l(c0149b.f41261a.h(), JsonObject.class) : null);
        try {
            long jInsert = sQLiteDatabase.insert(YMKDatabase.a(sQLiteDatabase, "PatternPaletteInfo"), null, contentValues);
            if (jInsert < 0) {
                Log.g(5, "PatternPaletteInfoDao", "db.insert failed. id: " + jInsert);
            }
        } catch (Throwable th) {
            Log.e("PatternPaletteInfoDao", "insert", th);
        }
    }

    public static void g(SQLiteDatabase sQLiteDatabase, List list) {
        try {
            sQLiteDatabase.execSQL(DBUtility.d("UPDATE " + YMKDatabase.a(sQLiteDatabase, "PatternPaletteInfo") + " SET isDeleted=1 WHERE PaletteGUID" + DBUtility.b(list) + " OR PatternGUID" + DBUtility.b(list)));
        } catch (Throwable th) {
            Log.e("PatternPaletteInfoDao", "[markAsDeleted] failed", th);
        }
    }

    public static void h(SQLiteDatabase sQLiteDatabase, List list) {
        try {
            sQLiteDatabase.execSQL(DBUtility.d("DELETE FROM " + YMKDatabase.a(sQLiteDatabase, "PatternPaletteInfo") + " WHERE PatternGUID IN (" + DBUtility.g(list) + ")"));
        } catch (Throwable th) {
            Log.e("PatternPaletteInfoDao", "delete by pattern ids", th);
        }
    }

    public static Optional i(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        try {
            Cursor cursorQuery = sQLiteDatabase.query("PatternPaletteInfo", Contract.PatternPaletteInfo.a(), "PaletteGUID=? AND PatternGUID=?", new String[]{str, str2}, null, null, "_id", "1");
            List listA = a(cursorQuery);
            Optional optionalA = listA.isEmpty() ? Optional.a() : Optional.e((b) listA.get(0));
            IO.b(cursorQuery);
            return optionalA;
        } catch (Throwable th) {
            try {
                int i2 = Log.f39427a;
                Log.j("PatternPaletteInfoDao", th.getMessage(), th);
                return Optional.a();
            } finally {
                IO.b(null);
            }
        }
    }

    public static b.C0149b j(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        try {
            Cursor cursorQuery = sQLiteDatabase.query("PatternPaletteInfo", new String[]{"extra"}, "PatternGUID=? AND PaletteGUID=?", new String[]{str, str2}, null, null, null, null);
            if (!DBUtility.f(cursorQuery)) {
                b.C0149b c0149b = b.f41250j;
                IO.b(cursorQuery);
                return c0149b;
            }
            String string = cursorQuery.getString(cursorQuery.getColumnIndex("extra"));
            b.C0149b c0149b2 = b.f41250j;
            b.C0149b c0149b3 = TextUtils.isEmpty(string) ? b.f41250j : new b.C0149b((JsonObject) GsonHelper.f39260a.i(string, JsonObject.class), false);
            IO.b(cursorQuery);
            return c0149b3;
        } catch (Throwable th) {
            try {
                Log.e("PatternPaletteInfoDao", "", th);
                return b.f41250j;
            } finally {
                IO.b(null);
            }
        }
    }
}
