package androidx.room;

import android.content.Context;
import android.content.Intent;
import androidx.room.coroutines.AndroidSQLiteDriverConnectionPool;
import androidx.room.coroutines.ConnectionPool;
import androidx.room.coroutines.ConnectionPoolImpl;
import androidx.room.driver.SupportSQLiteConnection;
import androidx.room.driver.SupportSQLiteConnectionPool;
import androidx.room.driver.SupportSQLiteDriver;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteDriver;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import androidx.sqlite.driver.AndroidSQLiteDriver;
import defpackage.ct0;
import defpackage.md;
import defpackage.xo0;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0002\f\rB\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B%\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\u0006\u0010\u000b¨\u0006\u000e"}, d2 = {"Landroidx/room/RoomConnectionManager;", "Landroidx/room/BaseRoomConnectionManager;", "Landroidx/room/DatabaseConfiguration;", "config", "Landroidx/room/RoomOpenDelegate;", "openDelegate", "<init>", "(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenDelegate;)V", "Lkotlin/Function1;", "Landroidx/sqlite/db/SupportSQLiteOpenHelper;", "supportOpenHelperFactory", "(Landroidx/room/DatabaseConfiguration;Lkotlin/jvm/functions/Function1;)V", "SupportOpenHelperCallback", "NoOpOpenDelegate", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class RoomConnectionManager extends BaseRoomConnectionManager {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ int f19450h = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DatabaseConfiguration f19451c;
    public final RoomOpenDelegate d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f19452e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ConnectionPool f19453f;
    public SupportSQLiteDatabase g;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/room/RoomConnectionManager$NoOpOpenDelegate;", "Landroidx/room/RoomOpenDelegate;", "<init>", "()V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class NoOpOpenDelegate extends RoomOpenDelegate {
        public NoOpOpenDelegate() {
            super(-1, "", "");
        }

        @Override // androidx.room.RoomOpenDelegate
        public final void a(SQLiteConnection sQLiteConnection) {
            sQLiteConnection.getClass();
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public final void b(SQLiteConnection sQLiteConnection) {
            sQLiteConnection.getClass();
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public final void c(SQLiteConnection sQLiteConnection) {
            sQLiteConnection.getClass();
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public final void d(SQLiteConnection sQLiteConnection) {
            sQLiteConnection.getClass();
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public final void e(SQLiteConnection sQLiteConnection) {
            sQLiteConnection.getClass();
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public final void f(SQLiteConnection sQLiteConnection) {
            sQLiteConnection.getClass();
            throw new IllegalStateException("NOP delegate should never be called");
        }

        @Override // androidx.room.RoomOpenDelegate
        public final RoomOpenDelegate.ValidationResult g(SQLiteConnection sQLiteConnection) {
            sQLiteConnection.getClass();
            throw new IllegalStateException("NOP delegate should never be called");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/room/RoomConnectionManager$SupportOpenHelperCallback;", "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;", "", "version", "<init>", "(Landroidx/room/RoomConnectionManager;I)V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public final class SupportOpenHelperCallback extends SupportSQLiteOpenHelper.Callback {
        public SupportOpenHelperCallback(int i2) {
            super(i2);
        }

        @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
        public final void c(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
            RoomConnectionManager.this.f(new SupportSQLiteConnection(frameworkSQLiteDatabase));
        }

        @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
        public final void d(FrameworkSQLiteDatabase frameworkSQLiteDatabase, int i2, int i3) {
            f(frameworkSQLiteDatabase, i2, i3);
        }

        @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
        public final void e(FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
            SupportSQLiteConnection supportSQLiteConnection = new SupportSQLiteConnection(frameworkSQLiteDatabase);
            RoomConnectionManager roomConnectionManager = RoomConnectionManager.this;
            roomConnectionManager.h(supportSQLiteConnection);
            roomConnectionManager.g = frameworkSQLiteDatabase;
        }

        @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Callback
        public final void f(FrameworkSQLiteDatabase frameworkSQLiteDatabase, int i2, int i3) {
            RoomConnectionManager.this.g(new SupportSQLiteConnection(frameworkSQLiteDatabase), i2, i3);
        }
    }

    public RoomConnectionManager(DatabaseConfiguration databaseConfiguration, RoomOpenDelegate roomOpenDelegate) {
        int i2;
        ConnectionPool connectionPoolImpl;
        databaseConfiguration.getClass();
        roomOpenDelegate.getClass();
        this.f19451c = databaseConfiguration;
        this.d = roomOpenDelegate;
        List list = databaseConfiguration.f19386e;
        RoomDatabase.JournalMode journalMode = databaseConfiguration.g;
        SupportSQLiteOpenHelper.Factory factory = databaseConfiguration.f19385c;
        String str = databaseConfiguration.f19384b;
        this.f19452e = list == null ? EmptyList.f71768b : list;
        SQLiteDriver sQLiteDriver = databaseConfiguration.u;
        if (sQLiteDriver != null) {
            if (sQLiteDriver instanceof AndroidSQLiteDriver) {
                connectionPoolImpl = new AndroidSQLiteDriverConnectionPool(new BaseRoomConnectionManager.DriverWrapper(this, sQLiteDriver), str == null ? ":memory:" : str);
            } else if (str == null) {
                connectionPoolImpl = new ConnectionPoolImpl(new BaseRoomConnectionManager.DriverWrapper(this, sQLiteDriver), ":memory:");
            } else {
                BaseRoomConnectionManager.DriverWrapper driverWrapper = new BaseRoomConnectionManager.DriverWrapper(this, sQLiteDriver);
                journalMode.getClass();
                int[] iArr = BaseRoomConnectionManager.WhenMappings.f19368a;
                int i3 = iArr[journalMode.ordinal()];
                if (i3 == 1) {
                    i2 = 1;
                } else {
                    if (i3 != 2) {
                        ct0.i(journalMode, "Can't get max number of reader for journal mode '");
                        throw null;
                    }
                    i2 = 4;
                }
                int i4 = iArr[journalMode.ordinal()];
                if (i4 != 1 && i4 != 2) {
                    ct0.i(journalMode, "Can't get max number of writers for journal mode '");
                    throw null;
                }
                connectionPoolImpl = new ConnectionPoolImpl(driverWrapper, str, i2, 1);
            }
            this.f19453f = connectionPoolImpl;
        } else {
            if (factory == null) {
                md.n("SQLiteManager was constructed with both null driver and open helper factory!");
                throw null;
            }
            SupportSQLiteOpenHelper.Configuration.Companion companion = SupportSQLiteOpenHelper.Configuration.f19874f;
            Context context = databaseConfiguration.f19383a;
            companion.getClass();
            context.getClass();
            SupportSQLiteOpenHelper.Configuration.Builder builder = new SupportSQLiteOpenHelper.Configuration.Builder(context);
            builder.f19880b = str;
            builder.f19881c = new SupportOpenHelperCallback(roomOpenDelegate.f19476a);
            this.f19453f = new SupportSQLiteConnectionPool(new SupportSQLiteDriver(factory.a(builder.a())));
        }
        boolean z = journalMode == RoomDatabase.JournalMode.WRITE_AHEAD_LOGGING;
        SupportSQLiteOpenHelper supportSQLiteOpenHelperK = k();
        if (supportSQLiteOpenHelperK != null) {
            supportSQLiteOpenHelperK.setWriteAheadLoggingEnabled(z);
        }
    }

    @Override // androidx.room.BaseRoomConnectionManager
    /* JADX INFO: renamed from: c, reason: from getter */
    public final List getF19452e() {
        return this.f19452e;
    }

    @Override // androidx.room.BaseRoomConnectionManager
    /* JADX INFO: renamed from: d, reason: from getter */
    public final DatabaseConfiguration getF19451c() {
        return this.f19451c;
    }

    @Override // androidx.room.BaseRoomConnectionManager
    /* JADX INFO: renamed from: e, reason: from getter */
    public final RoomOpenDelegate getD() {
        return this.d;
    }

    @Override // androidx.room.BaseRoomConnectionManager
    public final String i(String str) {
        str.getClass();
        if (Intrinsics.c(str, ":memory:")) {
            return str;
        }
        String absolutePath = this.f19451c.f19383a.getDatabasePath(str).getAbsolutePath();
        absolutePath.getClass();
        return absolutePath;
    }

    public final SupportSQLiteOpenHelper k() {
        SupportSQLiteDriver supportSQLiteDriver;
        ConnectionPool connectionPool = this.f19453f;
        SupportSQLiteConnectionPool supportSQLiteConnectionPool = connectionPool instanceof SupportSQLiteConnectionPool ? (SupportSQLiteConnectionPool) connectionPool : null;
        if (supportSQLiteConnectionPool == null || (supportSQLiteDriver = supportSQLiteConnectionPool.f19680b) == null) {
            return null;
        }
        return supportSQLiteDriver.f19681a;
    }

    public RoomConnectionManager(DatabaseConfiguration databaseConfiguration, Function1<? super DatabaseConfiguration, ? extends SupportSQLiteOpenHelper> function1) {
        databaseConfiguration.getClass();
        RoomDatabase.JournalMode journalMode = databaseConfiguration.g;
        function1.getClass();
        this.f19451c = databaseConfiguration;
        this.d = new NoOpOpenDelegate();
        List list = databaseConfiguration.f19386e;
        this.f19452e = list == null ? EmptyList.f71768b : list;
        final xo0 xo0Var = new xo0(this, 10);
        ArrayList arrayListX = CollectionsKt.X(new RoomDatabase.Callback() { // from class: androidx.room.RoomConnectionManager$installOnOpenCallback$newCallbacks$1
            @Override // androidx.room.RoomDatabase.Callback
            public final void a(SupportSQLiteDatabase supportSQLiteDatabase) {
                supportSQLiteDatabase.getClass();
                xo0Var.invoke(supportSQLiteDatabase);
            }
        }, list == null ? EmptyList.f71768b : list);
        Context context = databaseConfiguration.f19383a;
        String str = databaseConfiguration.f19384b;
        SupportSQLiteOpenHelper.Factory factory = databaseConfiguration.f19385c;
        RoomDatabase.MigrationContainer migrationContainer = databaseConfiguration.d;
        boolean z = databaseConfiguration.f19387f;
        Executor executor = databaseConfiguration.f19388h;
        Executor executor2 = databaseConfiguration.f19389i;
        Intent intent = databaseConfiguration.f19390j;
        boolean z2 = databaseConfiguration.f19391k;
        boolean z3 = databaseConfiguration.l;
        Set set = databaseConfiguration.m;
        String str2 = databaseConfiguration.n;
        File file = databaseConfiguration.o;
        Callable callable = databaseConfiguration.p;
        RoomDatabase.PrepackagedDatabaseCallback prepackagedDatabaseCallback = databaseConfiguration.q;
        List list2 = databaseConfiguration.r;
        List list3 = databaseConfiguration.s;
        boolean z4 = databaseConfiguration.t;
        SQLiteDriver sQLiteDriver = databaseConfiguration.u;
        CoroutineContext coroutineContext = databaseConfiguration.v;
        context.getClass();
        migrationContainer.getClass();
        journalMode.getClass();
        executor.getClass();
        executor2.getClass();
        list2.getClass();
        list3.getClass();
        this.f19453f = new SupportSQLiteConnectionPool(new SupportSQLiteDriver((SupportSQLiteOpenHelper) function1.invoke(new DatabaseConfiguration(context, str, factory, migrationContainer, arrayListX, z, journalMode, executor, executor2, intent, z2, z3, set, str2, file, callable, prepackagedDatabaseCallback, list2, list3, z4, sQLiteDriver, coroutineContext))));
        boolean z5 = journalMode == RoomDatabase.JournalMode.WRITE_AHEAD_LOGGING;
        SupportSQLiteOpenHelper supportSQLiteOpenHelperK = k();
        if (supportSQLiteOpenHelperK != null) {
            supportSQLiteOpenHelperK.setWriteAheadLoggingEnabled(z5);
        }
    }
}
