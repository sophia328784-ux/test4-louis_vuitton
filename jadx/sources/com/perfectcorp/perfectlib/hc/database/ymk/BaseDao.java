package com.perfectcorp.perfectlib.hc.database.ymk;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.thirdparty.com.google.common.base.Joiner;
import com.perfectcorp.thirdparty.com.google.common.collect.FluentIterable;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import defpackage.g7;
import java.sql.SQLDataException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseDao<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f40265a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f40266b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String[] f40267c;

    public BaseDao(String str, String str2, String[] strArr) {
        this.f40265a = str;
        this.f40266b = str2;
        Objects.requireNonNull(strArr);
        this.f40267c = strArr;
    }

    public static int c(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3) {
        Threads.b();
        Objects.requireNonNull(sQLiteDatabase);
        Objects.requireNonNull(str);
        Objects.requireNonNull(str3);
        return sQLiteDatabase.delete(YMKDatabase.a(sQLiteDatabase, str), str2.concat("=?"), new String[]{str3});
    }

    public static Cursor f(SQLiteDatabase sQLiteDatabase, String str, String[] strArr, String[] strArr2, String[] strArr3) {
        Objects.requireNonNull(str);
        Objects.requireNonNull(strArr);
        return sQLiteDatabase.query(true, str, strArr, new Joiner(" AND ").b(FluentIterable.n(Arrays.asList(strArr2)).r(new g7(11))), strArr3, null, null, null, null);
    }

    public static String g(Cursor cursor, String str) {
        Objects.requireNonNull(cursor);
        return cursor.getString(cursor.getColumnIndex(str));
    }

    public static void j(SQLiteDatabase sQLiteDatabase, String str, ContentValues contentValues) throws SQLDataException {
        Threads.b();
        Objects.requireNonNull(sQLiteDatabase);
        Objects.requireNonNull(str);
        Objects.requireNonNull(contentValues);
        if (sQLiteDatabase.replaceOrThrow(YMKDatabase.a(sQLiteDatabase, str), null, contentValues) == -1) {
            throw new SQLDataException("Can't insert or replace data.");
        }
    }

    public final Cursor a(SQLiteDatabase sQLiteDatabase, String str, String str2, String[] strArr) {
        return sQLiteDatabase.query(true, this.f40266b, strArr, str != null ? str.concat("=?") : null, str2 != null ? new String[]{str2} : null, null, null, null, null);
    }

    public final void b(SQLiteDatabase sQLiteDatabase) {
        Threads.b();
        try {
            String str = this.f40266b;
            Threads.b();
            sQLiteDatabase.delete(YMKDatabase.a(sQLiteDatabase, str), null, null);
        } catch (Throwable th) {
            Log.e(this.f40265a, "[deleteAll] failed", th);
            throw th;
        }
    }

    public final void d(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        String str3 = this.f40265a;
        Threads.b();
        Objects.requireNonNull(sQLiteDatabase);
        Objects.requireNonNull(str2);
        try {
            Log.g(3, str3, "[deleteByTextColumn] column=" + str + ", value=" + str2 + ", count=" + c(sQLiteDatabase, this.f40266b, str, str2));
        } catch (Throwable th) {
            Log.e(str3, "[deleteByTextColumn] failed", th);
            throw th;
        }
    }

    public final List e(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        Threads.b();
        Objects.requireNonNull(sQLiteDatabase);
        Objects.requireNonNull(str2);
        Cursor cursorA = null;
        try {
            cursorA = a(sQLiteDatabase, str, str2, this.f40267c);
            List listM = m(cursorA);
            IO.b(cursorA);
            return listM;
        } catch (Throwable th) {
            try {
                Log.e(this.f40265a, "[getByTextColumn] failed", th);
                throw th;
            } catch (Throwable th2) {
                IO.b(cursorA);
                throw th2;
            }
        }
    }

    public final List h(SQLiteDatabase sQLiteDatabase, String str, String str2, String str3) {
        Threads.b();
        try {
            Cursor cursorA = a(sQLiteDatabase, str2, str3, new String[]{str});
            if (!DBUtility.f(cursorA)) {
                List list = Collections.EMPTY_LIST;
                IO.b(cursorA);
                return list;
            }
            ArrayList arrayList = new ArrayList();
            do {
                arrayList.add(cursorA.getString(cursorA.getColumnIndex(str)));
            } while (cursorA.moveToNext());
            IO.b(cursorA);
            return arrayList;
        } catch (Throwable th) {
            try {
                Log.e(this.f40265a, "[getTextColumnByTextColumn] failed", th);
                throw th;
            } catch (Throwable th2) {
                IO.b(null);
                throw th2;
            }
        }
    }

    public final void i(SQLiteDatabase sQLiteDatabase, Object obj) {
        Threads.b();
        Objects.requireNonNull(sQLiteDatabase);
        Objects.requireNonNull(obj);
        try {
            j(sQLiteDatabase, this.f40266b, n(obj));
        } catch (Throwable th) {
            Log.e(this.f40265a, "[insertOrReplace] failed", th);
            throw th;
        }
    }

    public final void k(SQLiteDatabase sQLiteDatabase, List list) {
        Threads.b();
        Objects.requireNonNull(sQLiteDatabase);
        Objects.requireNonNull(list);
        sQLiteDatabase.beginTransaction();
        try {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                i(sQLiteDatabase, it.next());
            }
            sQLiteDatabase.setTransactionSuccessful();
        } finally {
            sQLiteDatabase.endTransaction();
        }
    }

    public abstract Object l(Cursor cursor);

    public final List m(Cursor cursor) {
        if (!DBUtility.f(cursor)) {
            return Collections.EMPTY_LIST;
        }
        bz bzVar = ImmutableList.f42200c;
        ImmutableList.Builder builder = new ImmutableList.Builder();
        do {
            builder.f(l(cursor));
        } while (cursor.moveToNext());
        return builder.i();
    }

    public abstract ContentValues n(Object obj);
}
