package androidx.sqlite.db.framework;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import android.database.sqlite.SQLiteStatement;
import android.text.TextUtils;
import androidx.sqlite.db.SimpleSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteStatement;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import defpackage.e1;
import defpackage.md;
import defpackage.tx;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "Landroid/database/sqlite/SQLiteDatabase;", "delegate", "<init>", "(Landroid/database/sqlite/SQLiteDatabase;)V", "Companion", "sqlite-framework_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class FrameworkSQLiteDatabase implements SupportSQLiteDatabase {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f19883c = new Companion(null);
    public static final String[] d = {"", " OR ROLLBACK ", " OR ABORT ", " OR FAIL ", " OR IGNORE ", " OR REPLACE "};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String[] f19884e = new String[0];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Lazy f19885f;
    public static final Lazy g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SQLiteDatabase f19886b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u001c\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase$Companion;", "", "", "", "CONFLICT_VALUES", "[Ljava/lang/String;", "EMPTY_STRING_ARRAY", "sqlite-framework_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        f19885f = LazyKt.a(lazyThreadSafetyMode, new tx(20));
        g = LazyKt.a(lazyThreadSafetyMode, new tx(21));
    }

    public FrameworkSQLiteDatabase(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.getClass();
        this.f19886b = sQLiteDatabase;
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final boolean I1() {
        return this.f19886b.isWriteAheadLoggingEnabled();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final void P() {
        this.f19886b.beginTransaction();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final void R(String str) {
        this.f19886b.execSQL(str);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final int R1(ContentValues contentValues, Object[] objArr) {
        int i2 = 0;
        if (contentValues.size() == 0) {
            md.n("Empty values");
            return 0;
        }
        int size = contentValues.size();
        int length = objArr.length + size;
        Object[] objArr2 = new Object[length];
        StringBuilder sb = new StringBuilder("UPDATE ");
        sb.append(d[3]);
        sb.append("WorkSpec SET ");
        for (String str : contentValues.keySet()) {
            sb.append(i2 > 0 ? "," : "");
            sb.append(str);
            objArr2[i2] = contentValues.get(str);
            sb.append("=?");
            i2++;
        }
        for (int i3 = size; i3 < length; i3++) {
            objArr2[i3] = objArr[i3 - size];
        }
        if (!TextUtils.isEmpty("last_enqueue_time = 0 AND interval_duration <> 0 ")) {
            sb.append(" WHERE last_enqueue_time = 0 AND interval_duration <> 0 ");
        }
        SupportSQLiteStatement supportSQLiteStatementT0 = T0(sb.toString());
        SimpleSQLiteQuery.d.getClass();
        SimpleSQLiteQuery.Companion.a(supportSQLiteStatementT0, objArr2);
        return ((FrameworkSQLiteStatement) supportSQLiteStatementT0).f19903c.executeUpdateDelete();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final SupportSQLiteStatement T0(String str) {
        str.getClass();
        SQLiteStatement sQLiteStatementCompileStatement = this.f19886b.compileStatement(str);
        sQLiteStatementCompileStatement.getClass();
        return new FrameworkSQLiteStatement(sQLiteStatementCompileStatement);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final void W0() throws IllegalAccessException, InvocationTargetException {
        f19883c.getClass();
        Lazy lazy = g;
        if (((Method) lazy.getF71699b()) != null) {
            Lazy lazy2 = f19885f;
            if (((Method) lazy2.getF71699b()) != null) {
                Method method = (Method) lazy.getF71699b();
                method.getClass();
                Method method2 = (Method) lazy2.getF71699b();
                method2.getClass();
                Object objInvoke = method2.invoke(this.f19886b, null);
                if (objInvoke != null) {
                    method.invoke(objInvoke, 0, null, 0, null);
                    return;
                } else {
                    md.k("Required value was null.");
                    return;
                }
            }
        }
        P();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final void a0() {
        this.f19886b.setTransactionSuccessful();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final void b0() {
        this.f19886b.beginTransactionNonExclusive();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f19886b.close();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final void d1(Object[] objArr) {
        this.f19886b.execSQL("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", objArr);
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final boolean isOpen() {
        return this.f19886b.isOpen();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final void t0() {
        this.f19886b.endTransaction();
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final Cursor w0(SupportSQLiteQuery supportSQLiteQuery) {
        supportSQLiteQuery.getClass();
        final e1 e1Var = new e1(supportSQLiteQuery, 2);
        Cursor cursorRawQueryWithFactory = this.f19886b.rawQueryWithFactory(new SQLiteDatabase.CursorFactory() { // from class: o00
            @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
            public final Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
                FrameworkSQLiteDatabase.Companion companion = FrameworkSQLiteDatabase.f19883c;
                return (Cursor) e1Var.g(sQLiteDatabase, sQLiteCursorDriver, str, sQLiteQuery);
            }
        }, supportSQLiteQuery.getF19871b(), f19884e, null);
        cursorRawQueryWithFactory.getClass();
        return cursorRawQueryWithFactory;
    }

    @Override // androidx.sqlite.db.SupportSQLiteDatabase
    public final boolean z1() {
        return this.f19886b.inTransaction();
    }
}
