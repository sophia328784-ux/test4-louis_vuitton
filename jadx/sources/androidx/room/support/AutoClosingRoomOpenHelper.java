package androidx.room.support;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.CharArrayBuffer;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.net.Uri;
import android.os.Bundle;
import androidx.room.DelegatingOpenHelper;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteStatement;
import defpackage.md;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002:\u0003\b\t\nB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\u000b"}, d2 = {"Landroidx/room/support/AutoClosingRoomOpenHelper;", "Landroidx/sqlite/db/SupportSQLiteOpenHelper;", "Landroidx/room/DelegatingOpenHelper;", "delegate", "Landroidx/room/support/AutoCloser;", "autoCloser", "<init>", "(Landroidx/sqlite/db/SupportSQLiteOpenHelper;Landroidx/room/support/AutoCloser;)V", "AutoClosingSupportSQLiteDatabase", "KeepAliveCursor", "AutoClosingSupportSQLiteStatement", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class AutoClosingRoomOpenHelper implements SupportSQLiteOpenHelper, DelegatingOpenHelper {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SupportSQLiteOpenHelper f19712b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AutoCloser f19713c;
    public final AutoClosingSupportSQLiteDatabase d;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "Landroidx/room/support/AutoCloser;", "autoCloser", "<init>", "(Landroidx/room/support/AutoCloser;)V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class AutoClosingSupportSQLiteDatabase implements SupportSQLiteDatabase {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AutoCloser f19714b;

        public AutoClosingSupportSQLiteDatabase(AutoCloser autoCloser) {
            autoCloser.getClass();
            this.f19714b = autoCloser;
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public final boolean I1() {
            return ((Boolean) this.f19714b.b(AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$isWriteAheadLoggingEnabled$1.f19716b)).booleanValue();
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public final void P() {
            AutoCloser autoCloser = this.f19714b;
            try {
                autoCloser.c().P();
            } catch (Throwable th) {
                autoCloser.a();
                throw th;
            }
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public final void R(String str) {
            AutoCloser autoCloser = this.f19714b;
            autoCloser.getClass();
            try {
                SupportSQLiteDatabase supportSQLiteDatabaseC = autoCloser.c();
                supportSQLiteDatabaseC.getClass();
                supportSQLiteDatabaseC.R(str);
            } finally {
                autoCloser.a();
            }
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public final int R1(ContentValues contentValues, Object[] objArr) {
            AutoCloser autoCloser = this.f19714b;
            autoCloser.getClass();
            try {
                SupportSQLiteDatabase supportSQLiteDatabaseC = autoCloser.c();
                supportSQLiteDatabaseC.getClass();
                return supportSQLiteDatabaseC.R1(contentValues, objArr);
            } finally {
                autoCloser.a();
            }
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public final SupportSQLiteStatement T0(String str) {
            str.getClass();
            return new AutoClosingSupportSQLiteStatement(str, this.f19714b);
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public final void a0() {
            SupportSQLiteDatabase supportSQLiteDatabase = this.f19714b.f19707i;
            supportSQLiteDatabase.getClass();
            supportSQLiteDatabase.a0();
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public final void b0() {
            AutoCloser autoCloser = this.f19714b;
            try {
                autoCloser.c().b0();
            } catch (Throwable th) {
                autoCloser.a();
                throw th;
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            AutoCloser autoCloser = this.f19714b;
            synchronized (autoCloser.f19704e) {
                try {
                    autoCloser.f19708j = true;
                    Job job = autoCloser.f19709k;
                    if (job != null) {
                        job.cancel(null);
                    }
                    autoCloser.f19709k = null;
                    SupportSQLiteDatabase supportSQLiteDatabase = autoCloser.f19707i;
                    if (supportSQLiteDatabase != null) {
                        supportSQLiteDatabase.close();
                    }
                    autoCloser.f19707i = null;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public final void d1(Object[] objArr) {
            AutoCloser autoCloser = this.f19714b;
            autoCloser.getClass();
            try {
                SupportSQLiteDatabase supportSQLiteDatabaseC = autoCloser.c();
                supportSQLiteDatabaseC.getClass();
                supportSQLiteDatabaseC.d1(objArr);
            } finally {
                autoCloser.a();
            }
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public final boolean isOpen() {
            SupportSQLiteDatabase supportSQLiteDatabase = this.f19714b.f19707i;
            if (supportSQLiteDatabase != null) {
                return supportSQLiteDatabase.isOpen();
            }
            return false;
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public final void t0() {
            AutoCloser autoCloser = this.f19714b;
            try {
                SupportSQLiteDatabase supportSQLiteDatabase = autoCloser.f19707i;
                supportSQLiteDatabase.getClass();
                supportSQLiteDatabase.t0();
            } finally {
                autoCloser.a();
            }
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public final Cursor w0(SupportSQLiteQuery supportSQLiteQuery) {
            AutoCloser autoCloser = this.f19714b;
            supportSQLiteQuery.getClass();
            try {
                return new KeepAliveCursor(autoCloser.c().w0(supportSQLiteQuery), autoCloser);
            } catch (Throwable th) {
                autoCloser.a();
                throw th;
            }
        }

        @Override // androidx.sqlite.db.SupportSQLiteDatabase
        public final boolean z1() {
            AutoCloser autoCloser = this.f19714b;
            if (autoCloser.f19707i == null) {
                return false;
            }
            return ((Boolean) autoCloser.b(AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$inTransaction$1.f19715b)).booleanValue();
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteStatement;", "Landroidx/sqlite/db/SupportSQLiteStatement;", "", "sql", "Landroidx/room/support/AutoCloser;", "autoCloser", "<init>", "(Ljava/lang/String;Landroidx/room/support/AutoCloser;)V", "Companion", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class AutoClosingSupportSQLiteStatement implements SupportSQLiteStatement {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final /* synthetic */ int f19717i = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f19718b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AutoCloser f19719c;
        public int[] d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long[] f19720e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public double[] f19721f;
        public String[] g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public byte[][] f19722h;

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0004¨\u0006\t"}, d2 = {"Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteStatement$Companion;", "", "", "COLUMN_TYPE_LONG", "I", "COLUMN_TYPE_DOUBLE", "COLUMN_TYPE_STRING", "COLUMN_TYPE_BLOB", "COLUMN_TYPE_NULL", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }
        }

        static {
            new Companion(null);
        }

        public AutoClosingSupportSQLiteStatement(String str, AutoCloser autoCloser) {
            str.getClass();
            autoCloser.getClass();
            this.f19718b = str;
            this.f19719c = autoCloser;
            this.d = new int[0];
            this.f19720e = new long[0];
            this.f19721f = new double[0];
            this.g = new String[0];
            this.f19722h = new byte[0][];
        }

        @Override // androidx.sqlite.db.SupportSQLiteStatement
        public final long G0() {
            return ((Number) this.f19719c.b(new b(this, new a(2)))).longValue();
        }

        @Override // androidx.sqlite.db.SupportSQLiteProgram
        public final void O0(int i2, String str) {
            str.getClass();
            c(3, i2);
            this.d[i2] = 3;
            this.g[i2] = str;
        }

        @Override // androidx.sqlite.db.SupportSQLiteStatement
        public final int S() {
            return ((Number) this.f19719c.b(new b(this, new a(0)))).intValue();
        }

        @Override // androidx.sqlite.db.SupportSQLiteProgram
        public final void a(int i2, long j2) {
            c(1, i2);
            this.d[i2] = 1;
            this.f19720e[i2] = j2;
        }

        @Override // androidx.sqlite.db.SupportSQLiteProgram
        public final void b(int i2, byte[] bArr) {
            bArr.getClass();
            c(4, i2);
            this.d[i2] = 4;
            this.f19722h[i2] = bArr;
        }

        public final void c(int i2, int i3) {
            int i4 = i3 + 1;
            int[] iArr = this.d;
            if (iArr.length < i4) {
                this.d = Arrays.copyOf(iArr, i4);
            }
            if (i2 == 1) {
                long[] jArr = this.f19720e;
                if (jArr.length < i4) {
                    this.f19720e = Arrays.copyOf(jArr, i4);
                    return;
                }
                return;
            }
            if (i2 == 2) {
                double[] dArr = this.f19721f;
                if (dArr.length < i4) {
                    this.f19721f = Arrays.copyOf(dArr, i4);
                    return;
                }
                return;
            }
            if (i2 == 3) {
                String[] strArr = this.g;
                if (strArr.length < i4) {
                    this.g = (String[]) Arrays.copyOf(strArr, i4);
                    return;
                }
                return;
            }
            if (i2 != 4) {
                return;
            }
            byte[][] bArr = this.f19722h;
            if (bArr.length < i4) {
                this.f19722h = (byte[][]) Arrays.copyOf(bArr, i4);
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            this.d = new int[0];
            this.f19720e = new long[0];
            this.f19721f = new double[0];
            this.g = new String[0];
            this.f19722h = new byte[0][];
        }

        @Override // androidx.sqlite.db.SupportSQLiteStatement
        public final void execute() {
            this.f19719c.b(new b(this, new a(1)));
        }

        @Override // androidx.sqlite.db.SupportSQLiteProgram
        public final void l(int i2) {
            c(5, i2);
            this.d[i2] = 5;
        }

        @Override // androidx.sqlite.db.SupportSQLiteProgram
        public final void t1(double d, int i2) {
            c(2, i2);
            this.d[i2] = 2;
            this.f19721f[i2] = d;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/room/support/AutoClosingRoomOpenHelper$KeepAliveCursor;", "Landroid/database/Cursor;", "delegate", "Landroidx/room/support/AutoCloser;", "autoCloser", "<init>", "(Landroid/database/Cursor;Landroidx/room/support/AutoCloser;)V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class KeepAliveCursor implements Cursor {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Cursor f19723b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AutoCloser f19724c;

        public KeepAliveCursor(Cursor cursor, AutoCloser autoCloser) {
            cursor.getClass();
            autoCloser.getClass();
            this.f19723b = cursor;
            this.f19724c = autoCloser;
        }

        @Override // android.database.Cursor, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            this.f19723b.close();
            this.f19724c.a();
        }

        @Override // android.database.Cursor
        public final void copyStringToBuffer(int i2, CharArrayBuffer charArrayBuffer) {
            this.f19723b.copyStringToBuffer(i2, charArrayBuffer);
        }

        @Override // android.database.Cursor
        public final void deactivate() {
            this.f19723b.deactivate();
        }

        @Override // android.database.Cursor
        public final byte[] getBlob(int i2) {
            return this.f19723b.getBlob(i2);
        }

        @Override // android.database.Cursor
        public final int getColumnCount() {
            return this.f19723b.getColumnCount();
        }

        @Override // android.database.Cursor
        public final int getColumnIndex(String str) {
            return this.f19723b.getColumnIndex(str);
        }

        @Override // android.database.Cursor
        public final int getColumnIndexOrThrow(String str) {
            return this.f19723b.getColumnIndexOrThrow(str);
        }

        @Override // android.database.Cursor
        public final String getColumnName(int i2) {
            return this.f19723b.getColumnName(i2);
        }

        @Override // android.database.Cursor
        public final String[] getColumnNames() {
            return this.f19723b.getColumnNames();
        }

        @Override // android.database.Cursor
        public final int getCount() {
            return this.f19723b.getCount();
        }

        @Override // android.database.Cursor
        public final double getDouble(int i2) {
            return this.f19723b.getDouble(i2);
        }

        @Override // android.database.Cursor
        public final Bundle getExtras() {
            return this.f19723b.getExtras();
        }

        @Override // android.database.Cursor
        public final float getFloat(int i2) {
            return this.f19723b.getFloat(i2);
        }

        @Override // android.database.Cursor
        public final int getInt(int i2) {
            return this.f19723b.getInt(i2);
        }

        @Override // android.database.Cursor
        public final long getLong(int i2) {
            return this.f19723b.getLong(i2);
        }

        @Override // android.database.Cursor
        public final Uri getNotificationUri() {
            return this.f19723b.getNotificationUri();
        }

        @Override // android.database.Cursor
        public final int getPosition() {
            return this.f19723b.getPosition();
        }

        @Override // android.database.Cursor
        public final short getShort(int i2) {
            return this.f19723b.getShort(i2);
        }

        @Override // android.database.Cursor
        public final String getString(int i2) {
            return this.f19723b.getString(i2);
        }

        @Override // android.database.Cursor
        public final int getType(int i2) {
            return this.f19723b.getType(i2);
        }

        @Override // android.database.Cursor
        public final boolean getWantsAllOnMoveCalls() {
            return this.f19723b.getWantsAllOnMoveCalls();
        }

        @Override // android.database.Cursor
        public final boolean isAfterLast() {
            return this.f19723b.isAfterLast();
        }

        @Override // android.database.Cursor
        public final boolean isBeforeFirst() {
            return this.f19723b.isBeforeFirst();
        }

        @Override // android.database.Cursor
        public final boolean isClosed() {
            return this.f19723b.isClosed();
        }

        @Override // android.database.Cursor
        public final boolean isFirst() {
            return this.f19723b.isFirst();
        }

        @Override // android.database.Cursor
        public final boolean isLast() {
            return this.f19723b.isLast();
        }

        @Override // android.database.Cursor
        public final boolean isNull(int i2) {
            return this.f19723b.isNull(i2);
        }

        @Override // android.database.Cursor
        public final boolean move(int i2) {
            return this.f19723b.move(i2);
        }

        @Override // android.database.Cursor
        public final boolean moveToFirst() {
            return this.f19723b.moveToFirst();
        }

        @Override // android.database.Cursor
        public final boolean moveToLast() {
            return this.f19723b.moveToLast();
        }

        @Override // android.database.Cursor
        public final boolean moveToNext() {
            return this.f19723b.moveToNext();
        }

        @Override // android.database.Cursor
        public final boolean moveToPosition(int i2) {
            return this.f19723b.moveToPosition(i2);
        }

        @Override // android.database.Cursor
        public final boolean moveToPrevious() {
            return this.f19723b.moveToPrevious();
        }

        @Override // android.database.Cursor
        public final void registerContentObserver(ContentObserver contentObserver) {
            this.f19723b.registerContentObserver(contentObserver);
        }

        @Override // android.database.Cursor
        public final void registerDataSetObserver(DataSetObserver dataSetObserver) {
            this.f19723b.registerDataSetObserver(dataSetObserver);
        }

        @Override // android.database.Cursor
        public final boolean requery() {
            return this.f19723b.requery();
        }

        @Override // android.database.Cursor
        public final Bundle respond(Bundle bundle) {
            return this.f19723b.respond(bundle);
        }

        @Override // android.database.Cursor
        public final void setExtras(Bundle bundle) {
            this.f19723b.setExtras(bundle);
        }

        @Override // android.database.Cursor
        public final void setNotificationUri(ContentResolver contentResolver, Uri uri) {
            this.f19723b.setNotificationUri(contentResolver, uri);
        }

        @Override // android.database.Cursor
        public final void unregisterContentObserver(ContentObserver contentObserver) {
            this.f19723b.unregisterContentObserver(contentObserver);
        }

        @Override // android.database.Cursor
        public final void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            this.f19723b.unregisterDataSetObserver(dataSetObserver);
        }
    }

    public AutoClosingRoomOpenHelper(SupportSQLiteOpenHelper supportSQLiteOpenHelper, AutoCloser autoCloser) {
        supportSQLiteOpenHelper.getClass();
        autoCloser.getClass();
        this.f19712b = supportSQLiteOpenHelper;
        this.f19713c = autoCloser;
        this.d = new AutoClosingSupportSQLiteDatabase(autoCloser);
        autoCloser.getClass();
        supportSQLiteOpenHelper.getClass();
        if (supportSQLiteOpenHelper instanceof AutoClosingRoomOpenHelper) {
            md.n("Failed requirement.");
            throw null;
        }
        autoCloser.f19702b = supportSQLiteOpenHelper;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.d.close();
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    /* JADX INFO: renamed from: getDatabaseName */
    public final String getF19888c() {
        return this.f19712b.getF19888c();
    }

    @Override // androidx.room.DelegatingOpenHelper
    /* JADX INFO: renamed from: getDelegate, reason: from getter */
    public final SupportSQLiteOpenHelper getG() {
        return this.f19712b;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    public final SupportSQLiteDatabase getWritableDatabase() {
        AutoClosingSupportSQLiteDatabase autoClosingSupportSQLiteDatabase = this.d;
        AutoCloser autoCloser = autoClosingSupportSQLiteDatabase.f19714b;
        autoCloser.getClass();
        try {
            autoCloser.c().getClass();
            return autoClosingSupportSQLiteDatabase;
        } finally {
            autoCloser.a();
        }
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    public final void setWriteAheadLoggingEnabled(boolean z) {
        this.f19712b.setWriteAheadLoggingEnabled(z);
    }
}
