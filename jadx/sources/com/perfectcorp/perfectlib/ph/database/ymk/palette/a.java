package com.perfectcorp.perfectlib.ph.database.ymk.palette;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.Contract;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a {
    public static com.perfectcorp.perfectlib.ph.template.d a(SQLiteDatabase sQLiteDatabase, String str) {
        Cursor cursorQuery;
        try {
            cursorQuery = sQLiteDatabase.query("PaletteInfo", Contract.PaletteInfo.a(), "GUID=?", new String[]{str}, null, null, null, "1");
            try {
                if (DBUtility.f(cursorQuery)) {
                    com.perfectcorp.perfectlib.ph.template.d dVar = new com.perfectcorp.perfectlib.ph.template.d(cursorQuery.getString(cursorQuery.getColumnIndex("GUID")), cursorQuery.getString(cursorQuery.getColumnIndex("ColorSetGUID")), cursorQuery.getInt(cursorQuery.getColumnIndex("ColorCount")), cursorQuery.getString(cursorQuery.getColumnIndex("Name")), cursorQuery.getString(cursorQuery.getColumnIndex("Thumbnail")), cursorQuery.getString(cursorQuery.getColumnIndex("Source")), cursorQuery.getFloat(cursorQuery.getColumnIndex("Version")), cursorQuery.getInt(cursorQuery.getColumnIndex("isNew")) > 0, cursorQuery.getString(cursorQuery.getColumnIndex("SkuGUID")), cursorQuery.getString(cursorQuery.getColumnIndex("Ext1")), cursorQuery.getString(cursorQuery.getColumnIndex("Ext2")), cursorQuery.getString(cursorQuery.getColumnIndex("Ext3")), cursorQuery.getString(cursorQuery.getColumnIndex("ExtraData")));
                    IO.b(cursorQuery);
                    return dVar;
                }
                Log.g(3, "PaletteInfoDao", "getById: Failed to query, GUID: " + str);
                IO.b(cursorQuery);
                return null;
            } catch (Throwable th) {
                th = th;
                try {
                    Log.e("PaletteInfoDao", "getById, id: " + str, th);
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

    public static void b(SQLiteDatabase sQLiteDatabase, com.perfectcorp.perfectlib.ph.template.d dVar, List list) {
        String str = dVar.f41624a;
        String str2 = dVar.f41628f;
        if (d(sQLiteDatabase, str, true)) {
            List listSingletonList = Collections.singletonList(str);
            try {
                List listC = c(sQLiteDatabase, listSingletonList);
                sQLiteDatabase.execSQL(DBUtility.d("DELETE FROM " + YMKDatabase.a(sQLiteDatabase, "PaletteInfo") + " WHERE GUID IN (" + DBUtility.g(listSingletonList) + ")"));
                e.b(sQLiteDatabase, listSingletonList);
                com.perfectcorp.perfectlib.ph.database.ymk.color.a.c(sQLiteDatabase, listC);
                g.c(sQLiteDatabase, listSingletonList);
                c.b(sQLiteDatabase, listSingletonList);
            } catch (Throwable th) {
                Log.e("PaletteInfoDao", "delete by ids", th);
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("GUID", str);
        contentValues.put("ColorSetGUID", dVar.f41625b);
        contentValues.put("ColorCount", Integer.valueOf(dVar.f41626c));
        contentValues.put("Name", dVar.d);
        contentValues.put("Thumbnail", dVar.f41627e);
        contentValues.put("Source", str2);
        contentValues.put("Version", Float.valueOf(dVar.g));
        contentValues.put("isNew", Boolean.valueOf(dVar.f41629h));
        contentValues.put("SkuGUID", dVar.f41630i);
        contentValues.put("ExtraData", dVar.f41631j);
        contentValues.put("Ext1", dVar.f41632k);
        contentValues.put("Ext2", dVar.l);
        contentValues.put("Ext3", dVar.m);
        contentValues.put("Ext4", "false");
        contentValues.put("Ext5", "");
        try {
            Log.g(2, "PaletteInfoDao", "db.insert to PaletteInfo: " + contentValues);
            long jInsert = sQLiteDatabase.insert(YMKDatabase.a(sQLiteDatabase, "PaletteInfo"), null, contentValues);
            if (jInsert < 0) {
                Log.g(5, "PaletteInfoDao", "db.insert failed. id: " + jInsert);
            } else {
                if (YMKPrimitiveData.SourceType.SKU.name().equals(str2) && !MoreCollections.a(list)) {
                    com.perfectcorp.perfectlib.ph.database.ymk.pattern.c.g(sQLiteDatabase, Collections.singletonList(str));
                }
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    com.perfectcorp.perfectlib.ph.database.ymk.pattern.c.f(sQLiteDatabase, (com.perfectcorp.perfectlib.ph.database.ymk.pattern.b) it.next());
                }
            }
        } catch (Throwable th2) {
            Log.d("PaletteInfoDao", "db.insert exception: " + th2.getMessage());
            throw th2;
        }
    }

    public static List c(SQLiteDatabase sQLiteDatabase, List list) {
        try {
            Cursor cursorRawQuery = sQLiteDatabase.rawQuery(DBUtility.d("SELECT ColorSetGUID FROM " + YMKDatabase.a(sQLiteDatabase, "PaletteInfo") + " WHERE GUID IN (" + DBUtility.g(list) + ")"), null);
            if (!DBUtility.f(cursorRawQuery)) {
                List list2 = Collections.EMPTY_LIST;
                IO.b(cursorRawQuery);
                return list2;
            }
            ArrayList arrayList = new ArrayList();
            do {
                arrayList.add(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("ColorSetGUID")));
            } while (cursorRawQuery.moveToNext());
            IO.b(cursorRawQuery);
            return arrayList;
        } catch (Throwable th) {
            try {
                Log.e("PaletteInfoDao", "getColorSetIds", th);
                return Collections.EMPTY_LIST;
            } finally {
                IO.b(null);
            }
        }
    }

    public static boolean d(SQLiteDatabase sQLiteDatabase, String str, boolean z) {
        boolean z2 = false;
        Cursor cursorQuery = null;
        try {
            cursorQuery = sQLiteDatabase.query("PaletteInfo", new String[]{"GUID"}, z ? "GUID=?" : "GUID=? AND Ext4!='true'", new String[]{str}, null, null, null, null);
            if (cursorQuery != null && cursorQuery.moveToFirst()) {
                z2 = true;
            }
            IO.b(cursorQuery);
            return z2;
        } catch (Throwable th) {
            try {
                Log.e("PaletteInfoDao", th.getMessage(), th);
                return false;
            } finally {
                IO.b(cursorQuery);
            }
        }
    }
}
