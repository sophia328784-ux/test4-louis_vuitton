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
public abstract class c {
    public static List a(SQLiteDatabase sQLiteDatabase, String str) {
        try {
            Cursor cursorQuery = sQLiteDatabase.query(YMKDatabase.a(sQLiteDatabase, "PaletteShapeInfo"), new String[]{"shape_guid"}, "palette_guid=?", new String[]{str}, null, null, "_id ASC");
            if (!DBUtility.f(cursorQuery)) {
                List list = Collections.EMPTY_LIST;
                IO.b(cursorQuery);
                return list;
            }
            int columnIndex = cursorQuery.getColumnIndex("shape_guid");
            ArrayList arrayList = new ArrayList();
            do {
                arrayList.add(cursorQuery.getString(columnIndex));
            } while (cursorQuery.moveToNext());
            IO.b(cursorQuery);
            return arrayList;
        } catch (Throwable th) {
            try {
                Log.e("PaletteShapeInfoDao", "getShapesByPaletteId", th);
                return Collections.EMPTY_LIST;
            } finally {
                IO.b(null);
            }
        }
    }

    public static void b(SQLiteDatabase sQLiteDatabase, List list) {
        try {
            sQLiteDatabase.execSQL(DBUtility.d("DELETE FROM " + YMKDatabase.a(sQLiteDatabase, "PaletteShapeInfo") + " WHERE palette_guid IN (" + DBUtility.g(list) + ")"));
        } catch (Throwable th) {
            Log.e("PaletteShapeInfoDao", "deleteByPaletteIds", th);
        }
    }
}
