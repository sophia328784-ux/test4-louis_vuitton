package com.perfectcorp.perfectlib.ph.database.ymk.sku;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class g {
    public static List a(Cursor cursor) {
        if (!DBUtility.f(cursor)) {
            return Collections.EMPTY_LIST;
        }
        bz bzVar = ImmutableList.f42200c;
        ImmutableList.Builder builder = new ImmutableList.Builder();
        do {
            e.a aVarD = e.d();
            aVarD.f41301a = cursor.getString(cursor.getColumnIndex("itemGuid"));
            aVarD.f41302b = cursor.getString(cursor.getColumnIndex("skuGuid"));
            aVarD.f41303c = cursor.getInt(cursor.getColumnIndex("isHot")) != 1 ? 0 : 1;
            aVarD.d = cursor.getString(cursor.getColumnIndex("freeSampleUrl"));
            aVarD.f41304e = cursor.getString(cursor.getColumnIndex("shoppingUrl"));
            aVarD.f41305f = cursor.getString(cursor.getColumnIndex("moreInfoUrl"));
            aVarD.f41308j = cursor.getString(cursor.getColumnIndex("itemDescription"));
            aVarD.s = cursor.getString(cursor.getColumnIndex("customerInfo"));
            aVarD.g = cursor.getString(cursor.getColumnIndex("itemThumbnailPath"));
            aVarD.f41306h = cursor.getString(cursor.getColumnIndex("itemThumbnailIndexedPath"));
            aVarD.f41307i = cursor.getString(cursor.getColumnIndex("itemPaletteThumbnail"));
            aVarD.f41309k = cursor.getString(cursor.getColumnIndex("displayColorList"));
            aVarD.l = cursor.getString(cursor.getColumnIndex("colorNumber"));
            aVarD.m = cursor.getString(cursor.getColumnIndex("itemName"));
            aVarD.n = cursor.getString(cursor.getColumnIndex("itemLongName"));
            aVarD.o = cursor.getString(cursor.getColumnIndex("isIntensitySliderHidden"));
            aVarD.p = cursor.getString(cursor.getColumnIndex("isRadiusSliderHidden"));
            aVarD.q = cursor.getString(cursor.getColumnIndex("isHiddenIntensitySliderHidden"));
            aVarD.r = cursor.getString(cursor.getColumnIndex("isShineIntensitySliderHidden"));
            aVarD.t = cursor.getString(cursor.getColumnIndex("extraData"));
            builder.f(new e(aVarD));
        } while (cursor.moveToNext());
        return builder.i();
    }

    public static List b(SQLiteDatabase sQLiteDatabase, List list) {
        Threads.b();
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = sQLiteDatabase.rawQuery(DBUtility.d("SELECT * FROM " + YMKDatabase.a(sQLiteDatabase, "SkuItemOnly") + " WHERE itemGuid IN (" + DBUtility.g(list) + ")"), null);
            List listA = a(cursorRawQuery);
            IO.b(cursorRawQuery);
            return listA;
        } catch (Throwable th) {
            try {
                Log.e("SkuItemOnlyDao", "[get] error", th);
                throw th;
            } catch (Throwable th2) {
                IO.b(cursorRawQuery);
                throw th2;
            }
        }
    }

    public static List c(SQLiteDatabase sQLiteDatabase, String[] strArr, String str, String[] strArr2) {
        Threads.b();
        Cursor cursorQuery = null;
        try {
            cursorQuery = sQLiteDatabase.query("SkuItemOnly", strArr, str, strArr2, null, null, "_id ASC", null);
            List listA = a(cursorQuery);
            IO.b(cursorQuery);
            return listA;
        } catch (Throwable th) {
            try {
                Log.e("SkuItemOnlyDao", "[get] error", th);
                throw th;
            } catch (Throwable th2) {
                IO.b(cursorQuery);
                throw th2;
            }
        }
    }
}
