package com.perfectcorp.perfectlib.ph.database.ymk.makeupitem;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.Contract;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.makeupcam.template.TemplatePaths;
import com.perfectcorp.perfectlib.ph.template.n;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a {
    public static n a(SQLiteDatabase sQLiteDatabase, String str) {
        Cursor cursorQuery;
        try {
            List list = Contract.ReferenceElementInfo.f40233a;
            try {
                cursorQuery = sQLiteDatabase.query("ReferenceElementInfo", new String[]{"Id", "ReferencedIds"}, "Id=?", new String[]{str}, null, null, null);
                try {
                    if (!DBUtility.f(cursorQuery)) {
                        IO.b(cursorQuery);
                        return null;
                    }
                    n nVar = new n(cursorQuery.getString(cursorQuery.getColumnIndex("Id")), TemplatePaths.a(cursorQuery.getString(cursorQuery.getColumnIndex("ReferencedIds"))));
                    IO.b(cursorQuery);
                    return nVar;
                } catch (Throwable th) {
                    th = th;
                    try {
                        Log.e("ReferenceElementInfoDao", "getByID id: " + str, th);
                        return null;
                    } finally {
                        IO.b(cursorQuery);
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                cursorQuery = null;
                Log.e("ReferenceElementInfoDao", "getByID id: " + str, th);
                return null;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0039  */
    /* JADX WARN: Code duplicated, block: B:26:0x0082 A[Catch: all -> 0x0095, TRY_LEAVE, TryCatch #1 {all -> 0x0095, blocks: (B:24:0x0074, B:26:0x0082), top: B:38:0x0074 }] */
    /* JADX WARN: Code duplicated, block: B:30:0x0098 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Instruction removed from duplicated block: B:26:0x0082, please report this as an issue */
    public static void b(SQLiteDatabase sQLiteDatabase, n nVar) {
        SQLiteDatabase sQLiteDatabase2;
        Cursor cursorQuery;
        boolean zF;
        long jInsert;
        try {
            sQLiteDatabase2 = sQLiteDatabase;
            try {
                cursorQuery = sQLiteDatabase2.query("ReferenceElementInfo", new String[]{"Id"}, "Id=?", new String[]{nVar.f41698a}, null, null, null, null);
                try {
                    zF = DBUtility.f(cursorQuery);
                    IO.b(cursorQuery);
                } catch (Throwable th) {
                    th = th;
                    try {
                        Log.e("ReferenceElementInfoDao", "exists", th);
                        IO.b(cursorQuery);
                        zF = false;
                    } catch (Throwable th2) {
                        IO.b(cursorQuery);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                cursorQuery = null;
                Log.e("ReferenceElementInfoDao", "exists", th);
                IO.b(cursorQuery);
                zF = false;
                if (zF) {
                    try {
                        sQLiteDatabase2.execSQL(DBUtility.d("DELETE FROM " + YMKDatabase.a(sQLiteDatabase2, "ReferenceElementInfo") + " WHERE Id IN (" + DBUtility.g(Collections.singletonList(nVar.f41698a)) + ")"));
                    } catch (Throwable th4) {
                        Log.e("ReferenceElementInfoDao", "delete ids", th4);
                    }
                }
                jInsert = sQLiteDatabase2.insert(YMKDatabase.a(sQLiteDatabase2, "ReferenceElementInfo"), null, nVar.a());
                if (jInsert < 0) {
                    Log.g(5, "ReferenceElementInfoDao", "db.insert failed. id: " + jInsert);
                }
            }
        } catch (Throwable th5) {
            th = th5;
            sQLiteDatabase2 = sQLiteDatabase;
        }
        if (zF) {
            sQLiteDatabase2.execSQL(DBUtility.d("DELETE FROM " + YMKDatabase.a(sQLiteDatabase2, "ReferenceElementInfo") + " WHERE Id IN (" + DBUtility.g(Collections.singletonList(nVar.f41698a)) + ")"));
        }
        try {
            jInsert = sQLiteDatabase2.insert(YMKDatabase.a(sQLiteDatabase2, "ReferenceElementInfo"), null, nVar.a());
            if (jInsert < 0) {
                Log.g(5, "ReferenceElementInfoDao", "db.insert failed. id: " + jInsert);
            }
        } catch (Throwable th6) {
            Log.d("ReferenceElementInfoDao", "db.insert exception: " + th6.getMessage());
            throw th6;
        }
    }
}
