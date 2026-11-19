package androidx.room.driver;

import android.database.Cursor;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteStatement;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteProgram;
import androidx.sqlite.db.SupportSQLiteQuery;
import defpackage.md;
import java.io.IOException;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004\u0082\u0001\u0002\u0005\u0006¨\u0006\u0007"}, d2 = {"Landroidx/room/driver/SupportSQLiteStatement;", "Landroidx/sqlite/SQLiteStatement;", "Companion", "SupportAndroidSQLiteStatement", "SupportOtherAndroidSQLiteStatement", "Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;", "Landroidx/room/driver/SupportSQLiteStatement$SupportOtherAndroidSQLiteStatement;", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class SupportSQLiteStatement implements SQLiteStatement {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f19689e = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SupportSQLiteDatabase f19690b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f19691c;
    public boolean d;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/room/driver/SupportSQLiteStatement$Companion;", "", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement;", "Landroidx/room/driver/SupportSQLiteStatement;", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "db", "", "sql", "<init>", "(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)V", "Companion", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class SupportAndroidSQLiteStatement extends SupportSQLiteStatement {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int[] f19692f;
        public long[] g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public double[] f19693h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public String[] f19694i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public byte[][] f19695j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public Cursor f19696k;

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/room/driver/SupportSQLiteStatement$SupportAndroidSQLiteStatement$Companion;", "", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }
        }

        static {
            new Companion(null);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SupportAndroidSQLiteStatement(SupportSQLiteDatabase supportSQLiteDatabase, String str) {
            super(supportSQLiteDatabase, str, null);
            supportSQLiteDatabase.getClass();
            str.getClass();
            this.f19692f = new int[0];
            this.g = new long[0];
            this.f19693h = new double[0];
            this.f19694i = new String[0];
            this.f19695j = new byte[0][];
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
            this.f19692f[i2] = 3;
            this.f19694i[i2] = str;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final boolean Q1() {
            h();
            k();
            Cursor cursor = this.f19696k;
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
            this.f19692f[i2] = 1;
            this.g[i2] = j2;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void b(int i2, byte[] bArr) {
            bArr.getClass();
            h();
            j(4, i2);
            this.f19692f[i2] = 4;
            this.f19695j[i2] = bArr;
        }

        @Override // java.lang.AutoCloseable
        public final void close() {
            if (!this.d) {
                h();
                this.f19692f = new int[0];
                this.g = new long[0];
                this.f19693h = new double[0];
                this.f19694i = new String[0];
                this.f19695j = new byte[0][];
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
            Cursor cursor = this.f19696k;
            if (cursor != null) {
                return cursor.getColumnCount();
            }
            return 0;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final String getColumnName(int i2) {
            h();
            k();
            Cursor cursor = this.f19696k;
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
            int[] iArr = this.f19692f;
            if (iArr.length < i4) {
                this.f19692f = Arrays.copyOf(iArr, i4);
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
                double[] dArr = this.f19693h;
                if (dArr.length < i4) {
                    this.f19693h = Arrays.copyOf(dArr, i4);
                    return;
                }
                return;
            }
            if (i2 == 3) {
                String[] strArr = this.f19694i;
                if (strArr.length < i4) {
                    this.f19694i = (String[]) Arrays.copyOf(strArr, i4);
                    return;
                }
                return;
            }
            if (i2 != 4) {
                return;
            }
            byte[][] bArr = this.f19695j;
            if (bArr.length < i4) {
                this.f19695j = (byte[][]) Arrays.copyOf(bArr, i4);
            }
        }

        public final void k() {
            if (this.f19696k == null) {
                this.f19696k = this.f19690b.w0(new SupportSQLiteQuery() { // from class: androidx.room.driver.SupportSQLiteStatement$SupportAndroidSQLiteStatement$ensureCursor$1
                    @Override // androidx.sqlite.db.SupportSQLiteQuery
                    /* JADX INFO: renamed from: h */
                    public final String getF19871b() {
                        return this.f19697b.f19691c;
                    }

                    @Override // androidx.sqlite.db.SupportSQLiteQuery
                    public final void j(SupportSQLiteProgram supportSQLiteProgram) {
                        SupportSQLiteStatement.SupportAndroidSQLiteStatement supportAndroidSQLiteStatement = this.f19697b;
                        int length = supportAndroidSQLiteStatement.f19692f.length;
                        for (int i2 = 1; i2 < length; i2++) {
                            int i3 = supportAndroidSQLiteStatement.f19692f[i2];
                            if (i3 == 1) {
                                supportSQLiteProgram.a(i2, supportAndroidSQLiteStatement.g[i2]);
                            } else if (i3 == 2) {
                                supportSQLiteProgram.t1(supportAndroidSQLiteStatement.f19693h[i2], i2);
                            } else if (i3 == 3) {
                                String str = supportAndroidSQLiteStatement.f19694i[i2];
                                str.getClass();
                                supportSQLiteProgram.O0(i2, str);
                            } else if (i3 == 4) {
                                byte[] bArr = supportAndroidSQLiteStatement.f19695j[i2];
                                bArr.getClass();
                                supportSQLiteProgram.b(i2, bArr);
                            } else if (i3 == 5) {
                                supportSQLiteProgram.l(i2);
                            }
                        }
                    }
                });
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void l(int i2) {
            h();
            j(5, i2);
            this.f19692f[i2] = 5;
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
            Cursor cursor = this.f19696k;
            if (cursor != null) {
                return cursor;
            }
            SQLite.b(21, "no row");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void reset() {
            h();
            Cursor cursor = this.f19696k;
            if (cursor != null) {
                cursor.close();
            }
            this.f19696k = null;
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/room/driver/SupportSQLiteStatement$SupportOtherAndroidSQLiteStatement;", "Landroidx/room/driver/SupportSQLiteStatement;", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "db", "", "sql", "<init>", "(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class SupportOtherAndroidSQLiteStatement extends SupportSQLiteStatement {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final androidx.sqlite.db.SupportSQLiteStatement f19698f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SupportOtherAndroidSQLiteStatement(SupportSQLiteDatabase supportSQLiteDatabase, String str) {
            super(supportSQLiteDatabase, str, null);
            supportSQLiteDatabase.getClass();
            str.getClass();
            this.f19698f = supportSQLiteDatabase.T0(str);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void A(int i2, String str) {
            str.getClass();
            h();
            this.f19698f.O0(i2, str);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final boolean Q1() {
            h();
            this.f19698f.execute();
            return false;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void a(int i2, long j2) {
            h();
            this.f19698f.a(i2, j2);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void b(int i2, byte[] bArr) {
            bArr.getClass();
            h();
            this.f19698f.b(i2, bArr);
        }

        @Override // java.lang.AutoCloseable
        public final void close() throws IOException {
            this.f19698f.close();
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
            this.f19698f.l(i2);
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

    public SupportSQLiteStatement(SupportSQLiteDatabase supportSQLiteDatabase, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this.f19690b = supportSQLiteDatabase;
        this.f19691c = str;
    }

    public final void h() {
        if (this.d) {
            SQLite.b(21, "statement is closed");
            throw null;
        }
    }
}
