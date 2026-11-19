package com.perfectcorp.perfectlib.ph.database.ymk.shape;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.database.Contract;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.ph.template.p;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a {
    public static p a(SQLiteDatabase sQLiteDatabase, String str) {
        Throwable th;
        Cursor cursorQuery;
        try {
            List list = Contract.ShapeInfo.f40234a;
            try {
                cursorQuery = sQLiteDatabase.query("ShapeInfo", new String[]{"GUID", "Thumbnail", "ExtraData"}, "GUID=?", new String[]{str}, null, null, null, "1");
                try {
                    if (!DBUtility.f(cursorQuery)) {
                        IO.b(cursorQuery);
                        return null;
                    }
                    int columnIndex = cursorQuery.getColumnIndex("ExtraData");
                    p pVar = new p(str, cursorQuery.getString(cursorQuery.getColumnIndex("Thumbnail")), cursorQuery.getString(columnIndex));
                    IO.b(cursorQuery);
                    return pVar;
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        Log.e("ShapeInfoDao", th.getMessage(), th);
                        return null;
                    } finally {
                        IO.b(cursorQuery);
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                cursorQuery = null;
                Log.e("ShapeInfoDao", th.getMessage(), th);
                return null;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }
}
