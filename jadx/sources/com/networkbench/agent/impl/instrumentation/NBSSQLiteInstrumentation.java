package com.networkbench.agent.impl.instrumentation;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.os.CancellationSignal;
import com.networkbench.agent.impl.harvest.type.MetricCategory;
import defpackage.o60;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class NBSSQLiteInstrumentation {
    private static final ArrayList<String> categoryParams = new ArrayList<>(Arrays.asList("category", MetricCategory.class.getName(), "DATABASE"));

    public static int delete(SQLiteDatabase sQLiteDatabase, String str, String str2, String[] strArr) {
        NBSTraceEngine.enterMethod(o60.p("SQLiteDatabase#delete", new StringBuilder()), categoryParams);
        int iDelete = sQLiteDatabase.delete(str, str2, strArr);
        NBSTraceEngine.exitMethod();
        return iDelete;
    }

    public static void execSQL(SQLiteDatabase sQLiteDatabase, String str) throws SQLException {
        NBSTraceEngine.enterMethod(o60.p("SQLiteDatabase#execSQL", new StringBuilder()), categoryParams);
        sQLiteDatabase.execSQL(str);
        NBSTraceEngine.exitMethod();
    }

    public static long insert(SQLiteDatabase sQLiteDatabase, String str, String str2, ContentValues contentValues) {
        NBSTraceEngine.enterMethod(o60.p("SQLiteDatabase#insert", new StringBuilder()), categoryParams);
        long jInsert = sQLiteDatabase.insert(str, str2, contentValues);
        NBSTraceEngine.exitMethod();
        return jInsert;
    }

    public static long insertOrThrow(SQLiteDatabase sQLiteDatabase, String str, String str2, ContentValues contentValues) throws SQLException {
        NBSTraceEngine.enterMethod(o60.p("SQLiteDatabase#insertOrThrow", new StringBuilder()), categoryParams);
        long jInsertOrThrow = sQLiteDatabase.insertOrThrow(str, str2, contentValues);
        NBSTraceEngine.exitMethod();
        return jInsertOrThrow;
    }

    public static long insertWithOnConflict(SQLiteDatabase sQLiteDatabase, String str, String str2, ContentValues contentValues, int i2) {
        NBSTraceEngine.enterMethod(o60.p("SQLiteDatabase#insertWithOnConflict", new StringBuilder()), categoryParams);
        long jInsertWithOnConflict = sQLiteDatabase.insertWithOnConflict(str, str2, contentValues, i2);
        NBSTraceEngine.exitMethod();
        return jInsertWithOnConflict;
    }

    public static Cursor query(SQLiteDatabase sQLiteDatabase, boolean z, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6) {
        NBSTraceEngine.enterMethod(o60.p("SQLiteDatabase#query", new StringBuilder()), categoryParams);
        Cursor cursorQuery = sQLiteDatabase.query(z, str, strArr, str2, strArr2, str3, str4, str5, str6);
        NBSTraceEngine.exitMethod();
        return cursorQuery;
    }

    public static Cursor queryWithFactory(SQLiteDatabase sQLiteDatabase, SQLiteDatabase.CursorFactory cursorFactory, boolean z, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6) {
        NBSTraceEngine.enterMethod(o60.p("SQLiteDatabase#queryWithFactory", new StringBuilder()), categoryParams);
        Cursor cursorQueryWithFactory = sQLiteDatabase.queryWithFactory(cursorFactory, z, str, strArr, str2, strArr2, str3, str4, str5, str6);
        NBSTraceEngine.exitMethod();
        return cursorQueryWithFactory;
    }

    public static Cursor rawQuery(SQLiteDatabase sQLiteDatabase, String str, String[] strArr) {
        NBSTraceEngine.enterMethod(o60.p("SQLiteDatabase#rawQuery", new StringBuilder()), categoryParams);
        Cursor cursorRawQuery = sQLiteDatabase.rawQuery(str, strArr);
        NBSTraceEngine.exitMethod();
        return cursorRawQuery;
    }

    public static Cursor rawQueryWithFactory(SQLiteDatabase sQLiteDatabase, SQLiteDatabase.CursorFactory cursorFactory, String str, String[] strArr, String str2) {
        NBSTraceEngine.enterMethod(o60.p("SQLiteDatabase#rawQueryWithFactory", new StringBuilder()), categoryParams);
        Cursor cursorRawQueryWithFactory = sQLiteDatabase.rawQueryWithFactory(cursorFactory, str, strArr, str2);
        NBSTraceEngine.exitMethod();
        return cursorRawQueryWithFactory;
    }

    public static long replace(SQLiteDatabase sQLiteDatabase, String str, String str2, ContentValues contentValues) {
        NBSTraceEngine.enterMethod(o60.p("SQLiteDatabase#replace", new StringBuilder()), categoryParams);
        long jReplace = sQLiteDatabase.replace(str, str2, contentValues);
        NBSTraceEngine.exitMethod();
        return jReplace;
    }

    public static long replaceOrThrow(SQLiteDatabase sQLiteDatabase, String str, String str2, ContentValues contentValues) throws SQLException {
        NBSTraceEngine.enterMethod(o60.p("SQLiteDatabase#replaceOrThrow", new StringBuilder()), categoryParams);
        long jReplaceOrThrow = sQLiteDatabase.replaceOrThrow(str, str2, contentValues);
        NBSTraceEngine.exitMethod();
        return jReplaceOrThrow;
    }

    public static int update(SQLiteDatabase sQLiteDatabase, String str, ContentValues contentValues, String str2, String[] strArr) {
        NBSTraceEngine.enterMethod(o60.p("SQLiteDatabase#update", new StringBuilder()), categoryParams);
        int iUpdate = sQLiteDatabase.update(str, contentValues, str2, strArr);
        NBSTraceEngine.exitMethod();
        return iUpdate;
    }

    public static int updateWithOnConflict(SQLiteDatabase sQLiteDatabase, String str, ContentValues contentValues, String str2, String[] strArr, int i2) {
        NBSTraceEngine.enterMethod(o60.p("SQLiteDatabase#updateWithOnConflict", new StringBuilder()), categoryParams);
        int iUpdateWithOnConflict = sQLiteDatabase.updateWithOnConflict(str, contentValues, str2, strArr, i2);
        NBSTraceEngine.exitMethod();
        return iUpdateWithOnConflict;
    }

    @Deprecated
    public void a() {
    }

    public static void execSQL(SQLiteDatabase sQLiteDatabase, String str, Object[] objArr) throws SQLException {
        NBSTraceEngine.enterMethod(o60.p("SQLiteDatabase#execSQL", new StringBuilder()), categoryParams);
        sQLiteDatabase.execSQL(str, objArr);
        NBSTraceEngine.exitMethod();
    }

    public static Cursor query(SQLiteDatabase sQLiteDatabase, boolean z, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6, CancellationSignal cancellationSignal) {
        NBSTraceEngine.enterMethod(o60.p("SQLiteDatabase#query", new StringBuilder()), categoryParams);
        Cursor cursorQuery = sQLiteDatabase.query(z, str, strArr, str2, strArr2, str3, str4, str5, str6, cancellationSignal);
        NBSTraceEngine.exitMethod();
        return cursorQuery;
    }

    public static Cursor queryWithFactory(SQLiteDatabase sQLiteDatabase, SQLiteDatabase.CursorFactory cursorFactory, boolean z, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6, CancellationSignal cancellationSignal) {
        NBSTraceEngine.enterMethod(o60.p("SQLiteDatabase#queryWithFactory", new StringBuilder()), categoryParams);
        Cursor cursorQueryWithFactory = sQLiteDatabase.queryWithFactory(cursorFactory, z, str, strArr, str2, strArr2, str3, str4, str5, str6, cancellationSignal);
        NBSTraceEngine.exitMethod();
        return cursorQueryWithFactory;
    }

    public static Cursor rawQuery(SQLiteDatabase sQLiteDatabase, String str, String[] strArr, CancellationSignal cancellationSignal) {
        NBSTraceEngine.enterMethod(o60.p("SQLiteDatabase#rawQuery", new StringBuilder()), categoryParams);
        Cursor cursorRawQuery = sQLiteDatabase.rawQuery(str, strArr, cancellationSignal);
        NBSTraceEngine.exitMethod();
        return cursorRawQuery;
    }

    public static Cursor rawQueryWithFactory(SQLiteDatabase sQLiteDatabase, SQLiteDatabase.CursorFactory cursorFactory, String str, String[] strArr, String str2, CancellationSignal cancellationSignal) {
        NBSTraceEngine.enterMethod(o60.p("SQLiteDatabase#rawQueryWithFactory", new StringBuilder()), categoryParams);
        Cursor cursorRawQueryWithFactory = sQLiteDatabase.rawQueryWithFactory(cursorFactory, str, strArr, str2, cancellationSignal);
        NBSTraceEngine.exitMethod();
        return cursorRawQueryWithFactory;
    }

    public static Cursor query(SQLiteDatabase sQLiteDatabase, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
        NBSTraceEngine.enterMethod(o60.p("SQLiteDatabase#query", new StringBuilder()), categoryParams);
        Cursor cursorQuery = sQLiteDatabase.query(str, strArr, str2, strArr2, str3, str4, str5);
        NBSTraceEngine.exitMethod();
        return cursorQuery;
    }

    public static Cursor query(SQLiteDatabase sQLiteDatabase, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6) {
        NBSTraceEngine.enterMethod(o60.p("SQLiteDatabase#query", new StringBuilder()), categoryParams);
        Cursor cursorQuery = sQLiteDatabase.query(str, strArr, str2, strArr2, str3, str4, str5, str6);
        NBSTraceEngine.exitMethod();
        return cursorQuery;
    }
}
