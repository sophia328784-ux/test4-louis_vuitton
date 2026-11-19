package com.perfectcorp.perfectlib.ph.database.ymk.idsystem;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.Contract;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.makeupcam.template.TemplatePaths;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a {
    public static com.perfectcorp.perfectlib.ph.template.a a(Cursor cursor) {
        String string = cursor.getString(cursor.getColumnIndex("Id"));
        String string2 = cursor.getString(cursor.getColumnIndex("ReferencedIds"));
        return new com.perfectcorp.perfectlib.ph.template.a(string, TemplatePaths.a(string2), cursor.getLong(cursor.getColumnIndex("Size")), cursor.getLong(cursor.getColumnIndex("LastModified")));
    }

    public static Optional b(SQLiteDatabase sQLiteDatabase, String str) {
        try {
            List list = Contract.IdSystemInfo.f40219a;
            Cursor cursorQuery = sQLiteDatabase.query("IdSystemInfo", new String[]{"Id", "ReferencedIds", "Size", "LastModified"}, "Id=?", new String[]{str}, null, null, null);
            if (DBUtility.f(cursorQuery)) {
                Optional optionalE = Optional.e(a(cursorQuery));
                IO.b(cursorQuery);
                return optionalE;
            }
            Optional optionalA = Optional.a();
            IO.b(cursorQuery);
            return optionalA;
        } catch (Throwable th) {
            try {
                Log.e("IdSystemInfoDao", "getByID id: " + str, th);
                throw th;
            } catch (Throwable th2) {
                IO.b(null);
                throw th2;
            }
        }
    }

    public static void c(SQLiteDatabase sQLiteDatabase, com.perfectcorp.perfectlib.ph.template.a aVar) {
        Optional optionalB = b(YMKDatabase.b(), aVar.f41607a);
        if (optionalB.d()) {
            HashSet hashSet = new HashSet(((com.perfectcorp.perfectlib.ph.template.a) optionalB.c()).f41608b);
            hashSet.addAll(aVar.f41608b);
            aVar = new com.perfectcorp.perfectlib.ph.template.a(aVar.f41607a, hashSet, Math.max(((com.perfectcorp.perfectlib.ph.template.a) optionalB.c()).d, aVar.d));
        }
        try {
            long jReplace = sQLiteDatabase.replace(YMKDatabase.a(sQLiteDatabase, "IdSystemInfo"), null, aVar.a());
            if (jReplace < 0) {
                Log.g(5, "IdSystemInfoDao", "db.insert failed. id: " + jReplace);
            }
        } catch (Throwable th) {
            Log.d("IdSystemInfoDao", "db.insert exception: " + th.getMessage());
            throw th;
        }
    }

    public static void d(SQLiteDatabase sQLiteDatabase, com.perfectcorp.perfectlib.ph.template.a aVar) {
        try {
            long jUpdate = sQLiteDatabase.update(YMKDatabase.a(sQLiteDatabase, "IdSystemInfo"), aVar.a(), "Id=?", new String[]{aVar.f41607a});
            if (jUpdate < 0) {
                Log.g(5, "IdSystemInfoDao", "db.update failed. id: " + jUpdate);
            }
        } catch (Throwable th) {
            Log.e("IdSystemInfoDao", "db.update exception: ", th);
            throw th;
        }
    }

    public static Collection e(SQLiteDatabase sQLiteDatabase, String str) {
        try {
            Cursor cursorQuery = sQLiteDatabase.query("IdSystemInfo", new String[]{"Id"}, "ReferencedIds LIKE ?", new String[]{"%" + str + "%"}, null, null, null, null);
            if (!DBUtility.f(cursorQuery)) {
                List list = Collections.EMPTY_LIST;
                IO.b(cursorQuery);
                return list;
            }
            HashSet hashSet = new HashSet();
            do {
                hashSet.add(cursorQuery.getString(cursorQuery.getColumnIndex("Id")));
            } while (cursorQuery.moveToNext());
            IO.b(cursorQuery);
            return hashSet;
        } catch (Throwable th) {
            try {
                Log.e("IdSystemInfoDao", "getByContainedReferencedId referencedId=" + str, th);
                throw th;
            } catch (Throwable th2) {
                IO.b(null);
                throw th2;
            }
        }
    }

    public static boolean f(SQLiteDatabase sQLiteDatabase, String str) {
        Cursor cursorQuery = null;
        try {
            cursorQuery = sQLiteDatabase.query("IdSystemInfo", new String[]{"Id"}, "Id=?", new String[]{str}, null, null, null, null);
            boolean zF = DBUtility.f(cursorQuery);
            IO.b(cursorQuery);
            return zF;
        } catch (Throwable th) {
            try {
                Log.e("IdSystemInfoDao", "exists", th);
                throw th;
            } catch (Throwable th2) {
                IO.b(cursorQuery);
                throw th2;
            }
        }
    }
}
