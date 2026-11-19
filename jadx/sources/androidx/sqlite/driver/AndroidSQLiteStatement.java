package androidx.sqlite.driver;

import android.database.Cursor;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteStatement;
import defpackage.md;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b0\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0002\u0005\u0006¨\u0006\u0007"}, d2 = {"Landroidx/sqlite/driver/AndroidSQLiteStatement;", "Landroidx/sqlite/SQLiteStatement;", "Companion", "SelectAndroidSQLiteStatement", "OtherAndroidSQLiteStatement", "Landroidx/sqlite/driver/AndroidSQLiteStatement$OtherAndroidSQLiteStatement;", "Landroidx/sqlite/driver/AndroidSQLiteStatement$SelectAndroidSQLiteStatement;", "sqlite-framework_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class AndroidSQLiteStatement implements SQLiteStatement {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f19907e = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SQLiteDatabase f19908b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f19909c;
    public boolean d;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/sqlite/driver/AndroidSQLiteStatement$Companion;", "", "sqlite-framework_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/sqlite/driver/AndroidSQLiteStatement$OtherAndroidSQLiteStatement;", "Landroidx/sqlite/driver/AndroidSQLiteStatement;", "Landroid/database/sqlite/SQLiteDatabase;", "db", "", "sql", "<init>", "(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V", "sqlite-framework_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class OtherAndroidSQLiteStatement extends AndroidSQLiteStatement {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final android.database.sqlite.SQLiteStatement f19910f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OtherAndroidSQLiteStatement(SQLiteDatabase sQLiteDatabase, String str) {
            super(sQLiteDatabase, str, null);
            sQLiteDatabase.getClass();
            str.getClass();
            android.database.sqlite.SQLiteStatement sQLiteStatementCompileStatement = sQLiteDatabase.compileStatement(str);
            sQLiteStatementCompileStatement.getClass();
            this.f19910f = sQLiteStatementCompileStatement;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void A(int i2, String str) {
            str.getClass();
            h();
            this.f19910f.bindString(i2, str);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final boolean Q1() {
            h();
            this.f19910f.execute();
            return false;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void a(int i2, long j2) {
            h();
            this.f19910f.bindLong(i2, j2);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void b(int i2, byte[] bArr) {
            bArr.getClass();
            h();
            this.f19910f.bindBlob(i2, bArr);
        }

        @Override // java.lang.AutoCloseable
        public final void close() {
            this.f19910f.close();
            this.d = true;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final byte[] getBlob(int i2) {
            h();
            SQLite.b(21, "no row");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final int getColumnCount() {
            h();
            return 0;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final String getColumnName(int i2) {
            h();
            SQLite.b(21, "no row");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final long getLong(int i2) {
            h();
            SQLite.b(21, "no row");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final boolean isNull(int i2) {
            h();
            SQLite.b(21, "no row");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void l(int i2) {
            h();
            this.f19910f.bindNull(i2);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final String m1(int i2) {
            h();
            SQLite.b(21, "no row");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void reset() {
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/sqlite/driver/AndroidSQLiteStatement$SelectAndroidSQLiteStatement;", "Landroidx/sqlite/driver/AndroidSQLiteStatement;", "Landroid/database/sqlite/SQLiteDatabase;", "db", "", "sql", "<init>", "(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V", "Companion", "sqlite-framework_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class SelectAndroidSQLiteStatement extends AndroidSQLiteStatement {
        public static final /* synthetic */ int l = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int[] f19911f;
        public long[] g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public double[] f19912h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public String[] f19913i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public byte[][] f19914j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public Cursor f19915k;

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/sqlite/driver/AndroidSQLiteStatement$SelectAndroidSQLiteStatement$Companion;", "", "sqlite-framework_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }
        }

        static {
            new Companion(null);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SelectAndroidSQLiteStatement(SQLiteDatabase sQLiteDatabase, String str) {
            super(sQLiteDatabase, str, null);
            sQLiteDatabase.getClass();
            str.getClass();
            this.f19911f = new int[0];
            this.g = new long[0];
            this.f19912h = new double[0];
            this.f19913i = new String[0];
            this.f19914j = new byte[0][];
        }

        public static void m(Cursor cursor, int i2) {
            if (i2 < 0 || i2 >= cursor.getColumnCount()) {
                SQLite.b(25, "column index out of range");
                throw null;
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void A(int i2, String str) {
            str.getClass();
            h();
            j(3, i2);
            this.f19911f[i2] = 3;
            this.f19913i[i2] = str;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final boolean Q1() {
            h();
            k();
            Cursor cursor = this.f19915k;
            if (cursor != null) {
                return cursor.moveToNext();
            }
            md.k("Required value was null.");
            return false;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void a(int i2, long j2) {
            h();
            j(1, i2);
            this.f19911f[i2] = 1;
            this.g[i2] = j2;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void b(int i2, byte[] bArr) {
            bArr.getClass();
            h();
            j(4, i2);
            this.f19911f[i2] = 4;
            this.f19914j[i2] = bArr;
        }

        @Override // java.lang.AutoCloseable
        public final void close() {
            if (!this.d) {
                reset();
            }
            this.d = true;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final byte[] getBlob(int i2) {
            h();
            Cursor cursorN = n();
            m(cursorN, i2);
            byte[] blob = cursorN.getBlob(i2);
            blob.getClass();
            return blob;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final int getColumnCount() {
            h();
            k();
            Cursor cursor = this.f19915k;
            if (cursor != null) {
                return cursor.getColumnCount();
            }
            return 0;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final String getColumnName(int i2) {
            h();
            k();
            Cursor cursor = this.f19915k;
            if (cursor == null) {
                md.k("Required value was null.");
                return null;
            }
            m(cursor, i2);
            String columnName = cursor.getColumnName(i2);
            columnName.getClass();
            return columnName;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final long getLong(int i2) {
            h();
            Cursor cursorN = n();
            m(cursorN, i2);
            return cursorN.getLong(i2);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final boolean isNull(int i2) {
            h();
            Cursor cursorN = n();
            m(cursorN, i2);
            return cursorN.isNull(i2);
        }

        public final void j(int i2, int i3) {
            int i4 = i3 + 1;
            int[] iArr = this.f19911f;
            if (iArr.length < i4) {
                this.f19911f = Arrays.copyOf(iArr, i4);
            }
            if (i2 == 1) {
                long[] jArr = this.g;
                if (jArr.length < i4) {
                    this.g = Arrays.copyOf(jArr, i4);
                    return;
                }
                return;
            }
            if (i2 == 2) {
                double[] dArr = this.f19912h;
                if (dArr.length < i4) {
                    this.f19912h = Arrays.copyOf(dArr, i4);
                    return;
                }
                return;
            }
            if (i2 == 3) {
                String[] strArr = this.f19913i;
                if (strArr.length < i4) {
                    this.f19913i = (String[]) Arrays.copyOf(strArr, i4);
                    return;
                }
                return;
            }
            if (i2 != 4) {
                return;
            }
            byte[][] bArr = this.f19914j;
            if (bArr.length < i4) {
                this.f19914j = (byte[][]) Arrays.copyOf(bArr, i4);
            }
        }

        public final void k() {
            if (this.f19915k == null) {
                this.f19915k = this.f19908b.rawQueryWithFactory(new SQLiteDatabase.CursorFactory() { // from class: androidx.sqlite.driver.a
                    @Override // android.database.sqlite.SQLiteDatabase.CursorFactory
                    public final Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
                        int i2 = AndroidSQLiteStatement.SelectAndroidSQLiteStatement.l;
                        sQLiteQuery.getClass();
                        AndroidSQLiteStatement.SelectAndroidSQLiteStatement selectAndroidSQLiteStatement = this.f19916a;
                        int length = selectAndroidSQLiteStatement.f19911f.length;
                        for (int i3 = 1; i3 < length; i3++) {
                            int i4 = selectAndroidSQLiteStatement.f19911f[i3];
                            if (i4 == 1) {
                                sQLiteQuery.bindLong(i3, selectAndroidSQLiteStatement.g[i3]);
                            } else if (i4 == 2) {
                                sQLiteQuery.bindDouble(i3, selectAndroidSQLiteStatement.f19912h[i3]);
                            } else if (i4 == 3) {
                                sQLiteQuery.bindString(i3, selectAndroidSQLiteStatement.f19913i[i3]);
                            } else if (i4 == 4) {
                                sQLiteQuery.bindBlob(i3, selectAndroidSQLiteStatement.f19914j[i3]);
                            } else if (i4 == 5) {
                                sQLiteQuery.bindNull(i3);
                            }
                        }
                        return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
                    }
                }, this.f19909c, new String[0], null);
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void l(int i2) {
            h();
            j(5, i2);
            this.f19911f[i2] = 5;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final String m1(int i2) {
            h();
            Cursor cursorN = n();
            m(cursorN, i2);
            String string = cursorN.getString(i2);
            string.getClass();
            return string;
        }

        public final Cursor n() {
            Cursor cursor = this.f19915k;
            if (cursor != null) {
                return cursor;
            }
            SQLite.b(21, "no row");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void reset() {
            h();
            Cursor cursor = this.f19915k;
            if (cursor != null) {
                cursor.close();
            }
            this.f19915k = null;
        }
    }

    public AndroidSQLiteStatement(SQLiteDatabase sQLiteDatabase, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this.f19908b = sQLiteDatabase;
        this.f19909c = str;
    }

    public final void h() {
        if (this.d) {
            SQLite.b(21, "statement is closed");
            throw null;
        }
    }
}
