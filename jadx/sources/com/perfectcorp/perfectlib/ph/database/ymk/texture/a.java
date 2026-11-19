package com.perfectcorp.perfectlib.ph.database.ymk.texture;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.Contract;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.makeupcam.template.TemplatePaths;
import com.perfectcorp.perfectlib.ph.template.u;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a {
    public static u a(SQLiteDatabase sQLiteDatabase, String str) {
        Cursor cursorQuery;
        try {
            List list = Contract.TextureInfo.f40253a;
            cursorQuery = sQLiteDatabase.query("TextureInfo", new String[]{"_id", "GUID", "Thumbnail", "ExtraData"}, "GUID=?", new String[]{str}, null, null, null, "1");
            try {
                if (DBUtility.f(cursorQuery)) {
                    u uVar = new u(cursorQuery.getString(cursorQuery.getColumnIndex("GUID")), TemplatePaths.a(cursorQuery.getString(cursorQuery.getColumnIndex("Thumbnail"))), cursorQuery.getString(cursorQuery.getColumnIndex("ExtraData")));
                    IO.b(cursorQuery);
                    return uVar;
                }
                Log.g(3, "TextureInfoDao", "get: Failed to query, GUID: " + str);
                IO.b(cursorQuery);
                return null;
            } catch (Throwable th) {
                th = th;
                try {
                    Log.e("TextureInfoDao", "get, id: " + str, th);
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

    public static u b(SQLiteDatabase sQLiteDatabase, u uVar) {
        uVar.getClass();
        ContentValues contentValues = new ContentValues();
        contentValues.put("GUID", uVar.f41715a);
        contentValues.put("Thumbnail", TemplatePaths.d(uVar.f41716b));
        try {
            long jReplace = sQLiteDatabase.replace(YMKDatabase.a(sQLiteDatabase, "TextureInfo"), null, contentValues);
            if (jReplace >= 0) {
                return uVar;
            }
            Log.g(5, "TextureInfoDao", "db.insert failed. id: " + jReplace);
            return null;
        } catch (Throwable th) {
            Log.d("TextureInfoDao", "db.insert exception: " + th.getMessage());
            throw th;
        }
    }
}
