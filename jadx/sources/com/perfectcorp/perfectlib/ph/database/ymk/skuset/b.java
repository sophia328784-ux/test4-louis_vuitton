package com.perfectcorp.perfectlib.ph.database.ymk.skuset;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class b {
    public static List a(SQLiteDatabase sQLiteDatabase, List list) {
        try {
            Cursor cursorQuery = sQLiteDatabase.query("SkuSet", new String[]{"SkuSetID", "Type", "Vendor", "CustomerId", "LastModified", "MakeupVersion", "Metadata", "IsDeleted"}, "SkuSetID IN (" + DBUtility.g(list) + ")", null, null, null, null, null);
            if (!DBUtility.f(cursorQuery)) {
                List list2 = Collections.EMPTY_LIST;
                IO.b(cursorQuery);
                return list2;
            }
            ArrayList arrayList = new ArrayList();
            do {
                int columnIndex = cursorQuery.getColumnIndex("SkuSetID");
                int columnIndex2 = cursorQuery.getColumnIndex("Type");
                int columnIndex3 = cursorQuery.getColumnIndex("Vendor");
                int columnIndex4 = cursorQuery.getColumnIndex("CustomerId");
                int columnIndex5 = cursorQuery.getColumnIndex("LastModified");
                int columnIndex6 = cursorQuery.getColumnIndex("MakeupVersion");
                int columnIndex7 = cursorQuery.getColumnIndex("Metadata");
                int columnIndex8 = cursorQuery.getColumnIndex("IsDeleted");
                String string = cursorQuery.getString(columnIndex);
                String string2 = cursorQuery.getString(columnIndex2);
                String string3 = cursorQuery.getString(columnIndex3);
                String string4 = cursorQuery.getString(columnIndex4);
                long j2 = cursorQuery.getLong(columnIndex5);
                String string5 = cursorQuery.getString(columnIndex6);
                String string6 = cursorQuery.getString(columnIndex7);
                boolean z = cursorQuery.getInt(columnIndex8) > 0;
                a.C0157a c0157a = new a.C0157a(string);
                c0157a.f41335b = string2;
                c0157a.f41336c = string3;
                c0157a.d = string4;
                c0157a.f41337e = j2;
                c0157a.f41338f = string5;
                c0157a.g = (a.b) GsonBaseResponse.f41999a.i(string6, a.b.class);
                c0157a.f41339h = z;
                arrayList.add(new a(c0157a));
            } while (cursorQuery.moveToNext());
            IO.b(cursorQuery);
            return arrayList;
        } catch (Throwable th) {
            try {
                Log.e("SkuSetDao", "[getSkuSets]", th);
                throw th;
            } catch (Throwable th2) {
                IO.b(null);
                throw th2;
            }
        }
    }

    public static void b(SQLiteDatabase sQLiteDatabase, String str) {
        int iDelete = sQLiteDatabase.delete(YMKDatabase.a(sQLiteDatabase, "SkuSet"), "SkuSetID = ?", new String[]{str});
        if (iDelete != 1) {
            Log.g(5, "SkuSetDao", "[delete] delete id: " + str + ", rowsAffected != 1, rowsAffected: " + iDelete);
        }
    }
}
