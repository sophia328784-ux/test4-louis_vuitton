package com.perfectcorp.perfectlib.hc.database;

import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public abstract class DBUtility {
    public static void a(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3) {
        try {
            Cursor cursorRawQuery = sQLiteDatabase.rawQuery("PRAGMA table_info(" + str + ")", null);
            if (!f(cursorRawQuery)) {
                throw new SQLiteException("PRAGMA table_info('" + str + "') is invalid");
            }
            HashSet hashSet = new HashSet();
            do {
                hashSet.add(cursorRawQuery.getString(cursorRawQuery.getColumnIndex("name")));
            } while (cursorRawQuery.moveToNext());
            if (!hashSet.contains(str2)) {
                sQLiteDatabase.execSQL("ALTER TABLE " + str + " ADD " + str2 + " " + str3);
            }
            IO.b(cursorRawQuery);
        } catch (Throwable th) {
            IO.b(null);
            throw th;
        }
    }

    public static String b(Iterable iterable) {
        return " IN (" + g(iterable) + ") ";
    }

    public static String c(String... strArr) {
        StringBuilder sb = new StringBuilder(" IN (");
        StringBuilder sb2 = new StringBuilder();
        for (String str : strArr) {
            DatabaseUtils.appendEscapedSQLString(sb2, str);
            sb2.append(',');
        }
        if (sb2.length() > 0) {
            sb2.setLength(sb2.length() - 1);
        }
        sb.append(sb2.toString());
        sb.append(") ");
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static String d(String str) {
        String str2 = (String) ImmutableList.z(str).get(0);
        Objects.requireNonNull(str2);
        return str2;
    }

    public static boolean e(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3) {
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = sQLiteDatabase.rawQuery("SELECT COUNT(*) FROM " + str + " WHERE " + str2.concat("=?") + " LIMIT 1", new String[]{str3});
            if (!f(cursorRawQuery)) {
                return false;
            }
            cursorRawQuery.moveToFirst();
            return cursorRawQuery.getInt(0) > 0;
        } finally {
            IO.b(cursorRawQuery);
        }
    }

    public static boolean f(Cursor cursor) {
        if (cursor == null) {
            return false;
        }
        return cursor.moveToFirst();
    }

    public static String g(Iterable iterable) {
        StringBuilder sb = new StringBuilder();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            DatabaseUtils.appendEscapedSQLString(sb, (String) it.next());
            sb.append(',');
        }
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 1);
        }
        return sb.toString();
    }

    public static Object h(SQLiteDatabase sQLiteDatabase, Callable callable) {
        sQLiteDatabase.beginTransaction();
        try {
            Object objCall = callable.call();
            sQLiteDatabase.setTransactionSuccessful();
            sQLiteDatabase.endTransaction();
            return objCall;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                sQLiteDatabase.endTransaction();
                throw th2;
            }
        }
    }

    public static void i(SQLiteDatabase sQLiteDatabase, Runnable runnable) {
        h(sQLiteDatabase, new a(runnable));
    }
}
