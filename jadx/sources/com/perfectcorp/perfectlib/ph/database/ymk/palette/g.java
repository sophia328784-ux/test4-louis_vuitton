package com.perfectcorp.perfectlib.ph.database.ymk.palette;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.Contract;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.thirdparty.com.google.gson.JsonObject;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class g {
    public static List a(Cursor cursor) {
        boolean zF = DBUtility.f(cursor);
        Log.g(3, "TextureInfoDao", "[makeInfos] cursor is valid=" + zF);
        if (!zF) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList();
        do {
            String string = cursor.getString(cursor.getColumnIndex("PaletteID"));
            String string2 = cursor.getString(cursor.getColumnIndex("TextureID"));
            String string3 = cursor.getString(cursor.getColumnIndex("ExtraData"));
            arrayList.add(new f(string, string2, TextUtils.isEmpty(string3) ? f.d : new f.a((JsonObject) GsonHelper.f39260a.i(string3, JsonObject.class), false)));
        } while (cursor.moveToNext());
        return arrayList;
    }

    public static List b(SQLiteDatabase sQLiteDatabase, String str) {
        defpackage.a.v(3, "[getByPaletteID] id=", str, "TextureInfoDao");
        Cursor cursorQuery = null;
        try {
            List list = Contract.PaletteTextureInfo.f40226a;
            cursorQuery = sQLiteDatabase.query("PaletteTextureInfo", new String[]{"_id", "TextureID", "PaletteID", "ExtraData"}, "PaletteID=?", new String[]{str}, null, null, null, null);
            List listA = a(cursorQuery);
            IO.b(cursorQuery);
            return listA;
        } catch (Throwable th) {
            try {
                Log.e("TextureInfoDao", "get, id: " + str, th);
                return Collections.EMPTY_LIST;
            } finally {
                IO.b(cursorQuery);
            }
        }
    }

    public static void c(SQLiteDatabase sQLiteDatabase, List list) {
        try {
            sQLiteDatabase.execSQL(DBUtility.d("DELETE FROM " + YMKDatabase.a(sQLiteDatabase, "PaletteTextureInfo") + " WHERE PaletteID IN (" + DBUtility.g(list) + ")"));
        } catch (Throwable th) {
            Log.e("TextureInfoDao", "delete ids", th);
        }
    }
}
