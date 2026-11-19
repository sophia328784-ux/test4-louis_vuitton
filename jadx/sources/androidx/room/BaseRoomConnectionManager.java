package androidx.room;

import androidx.room.concurrent.ExclusiveLock;
import androidx.room.concurrent.FileLock;
import androidx.room.driver.SupportSQLiteConnection;
import androidx.room.migration.Migration;
import androidx.room.util.MigrationUtil;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteDriver;
import androidx.sqlite.SQLiteStatement;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import defpackage.n00;
import defpackage.v7;
import java.nio.channels.FileChannel;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\b'\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Landroidx/room/BaseRoomConnectionManager;", "", "<init>", "()V", "DriverWrapper", "Companion", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class BaseRoomConnectionManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f19363a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f19364b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/room/BaseRoomConnectionManager$Companion;", "", "", "BUSY_TIMEOUT_MS", "I", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0084\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/room/BaseRoomConnectionManager$DriverWrapper;", "Landroidx/sqlite/SQLiteDriver;", "actual", "<init>", "(Landroidx/room/BaseRoomConnectionManager;Landroidx/sqlite/SQLiteDriver;)V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public final class DriverWrapper implements SQLiteDriver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SQLiteDriver f19365a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ BaseRoomConnectionManager f19366b;

        public DriverWrapper(BaseRoomConnectionManager baseRoomConnectionManager, SQLiteDriver sQLiteDriver) {
            sQLiteDriver.getClass();
            this.f19366b = baseRoomConnectionManager;
            this.f19365a = sQLiteDriver;
        }

        @Override // androidx.sqlite.SQLiteDriver
        public final SQLiteConnection a(String str) {
            FileChannel fileChannel;
            FileChannel fileChannel2;
            str.getClass();
            BaseRoomConnectionManager baseRoomConnectionManager = this.f19366b;
            final String strI = baseRoomConnectionManager.i(str);
            boolean z = false;
            ExclusiveLock exclusiveLock = new ExclusiveLock(strI, (baseRoomConnectionManager.f19363a || baseRoomConnectionManager.f19364b || Intrinsics.c(strI, ":memory:")) ? false : true);
            Function1 function1 = new Function1() { // from class: androidx.room.BaseRoomConnectionManager$DriverWrapper$openLocked$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Throwable th = (Throwable) obj;
                    th.getClass();
                    throw new IllegalStateException(n00.r(strI, "'. Was a proper path / name used in Room's database builder?", new StringBuilder("Unable to open database '")), th);
                }
            };
            ReentrantLock reentrantLock = exclusiveLock.f19589a;
            reentrantLock.lock();
            FileLock fileLock = exclusiveLock.f19590b;
            if (fileLock != null) {
                try {
                    fileLock.a();
                } catch (Throwable th) {
                    th = th;
                }
            }
            try {
                try {
                    if (baseRoomConnectionManager.f19364b) {
                        throw new IllegalStateException("Recursive database initialization detected. Did you try to use the database instance during initialization? Maybe in one of the callbacks?");
                    }
                    SQLiteConnection sQLiteConnectionA = this.f19365a.a(strI);
                    if (baseRoomConnectionManager.f19363a) {
                        if (baseRoomConnectionManager.getF19451c().g == RoomDatabase.JournalMode.WRITE_AHEAD_LOGGING) {
                            SQLite.a(sQLiteConnectionA, "PRAGMA synchronous = NORMAL");
                        } else {
                            SQLite.a(sQLiteConnectionA, "PRAGMA synchronous = FULL");
                        }
                        BaseRoomConnectionManager.b(sQLiteConnectionA);
                        baseRoomConnectionManager.getD().d(sQLiteConnectionA);
                    } else {
                        try {
                            baseRoomConnectionManager.f19364b = true;
                            BaseRoomConnectionManager.a(baseRoomConnectionManager, sQLiteConnectionA);
                            baseRoomConnectionManager.f19364b = false;
                        } catch (Throwable th2) {
                            baseRoomConnectionManager.f19364b = false;
                            throw th2;
                        }
                    }
                    if (fileLock != null && (fileChannel2 = fileLock.f19592b) != null) {
                        try {
                            fileChannel2.close();
                            fileLock.f19592b = null;
                        } catch (Throwable th3) {
                            fileLock.f19592b = null;
                            throw th3;
                        }
                    }
                    reentrantLock.unlock();
                    return sQLiteConnectionA;
                } catch (Throwable th4) {
                    if (fileLock != null && (fileChannel = fileLock.f19592b) != null) {
                        try {
                            fileChannel.close();
                        } finally {
                            fileLock.f19592b = null;
                        }
                    }
                    throw th4;
                }
            } catch (Throwable th5) {
                th = th5;
                z = true;
            }
            th = th5;
            z = true;
            try {
                if (z) {
                    throw th;
                }
                function1.invoke(th);
                throw null;
            } catch (Throwable th6) {
                reentrantLock.unlock();
                throw th6;
            }
        }
    }

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f19368a;

        static {
            int[] iArr = new int[RoomDatabase.JournalMode.values().length];
            try {
                iArr[RoomDatabase.JournalMode.TRUNCATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[RoomDatabase.JournalMode.WRITE_AHEAD_LOGGING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f19368a = iArr;
        }
    }

    static {
        new Companion(null);
    }

    public static final void a(BaseRoomConnectionManager baseRoomConnectionManager, SQLiteConnection sQLiteConnection) throws Throwable {
        Object failure;
        RoomDatabase.JournalMode journalMode = baseRoomConnectionManager.getF19451c().g;
        RoomDatabase.JournalMode journalMode2 = RoomDatabase.JournalMode.WRITE_AHEAD_LOGGING;
        if (journalMode == journalMode2) {
            SQLite.a(sQLiteConnection, "PRAGMA journal_mode = WAL");
        } else {
            SQLite.a(sQLiteConnection, "PRAGMA journal_mode = TRUNCATE");
        }
        if (baseRoomConnectionManager.getF19451c().g == journalMode2) {
            SQLite.a(sQLiteConnection, "PRAGMA synchronous = NORMAL");
        } else {
            SQLite.a(sQLiteConnection, "PRAGMA synchronous = FULL");
        }
        b(sQLiteConnection);
        SQLiteStatement sQLiteStatementT1 = sQLiteConnection.T1("PRAGMA user_version");
        try {
            sQLiteStatementT1.Q1();
            int i2 = (int) sQLiteStatementT1.getLong(0);
            AutoCloseableKt.a(sQLiteStatementT1, null);
            if (i2 != baseRoomConnectionManager.getD().f19476a) {
                SQLite.a(sQLiteConnection, "BEGIN EXCLUSIVE TRANSACTION");
                try {
                    Result.Companion companion = Result.INSTANCE;
                    if (i2 == 0) {
                        baseRoomConnectionManager.f(sQLiteConnection);
                    } else {
                        baseRoomConnectionManager.g(sQLiteConnection, i2, baseRoomConnectionManager.getD().f19476a);
                    }
                    SQLite.a(sQLiteConnection, "PRAGMA user_version = " + baseRoomConnectionManager.getD().f19476a);
                    failure = Unit.f71739a;
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    failure = new Result.Failure(th);
                }
                if (!(failure instanceof Result.Failure)) {
                    SQLite.a(sQLiteConnection, "END TRANSACTION");
                }
                Throwable thA = Result.a(failure);
                if (thA != null) {
                    SQLite.a(sQLiteConnection, "ROLLBACK TRANSACTION");
                    throw thA;
                }
            }
            baseRoomConnectionManager.h(sQLiteConnection);
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                AutoCloseableKt.a(sQLiteStatementT1, th2);
                throw th3;
            }
        }
    }

    public static void b(SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementT1 = sQLiteConnection.T1("PRAGMA busy_timeout");
        try {
            sQLiteStatementT1.Q1();
            long j2 = sQLiteStatementT1.getLong(0);
            AutoCloseableKt.a(sQLiteStatementT1, null);
            if (j2 < HarvestConfiguration.SLOW_USER_ACTION_THRESHOLD) {
                SQLite.a(sQLiteConnection, "PRAGMA busy_timeout = 3000");
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                AutoCloseableKt.a(sQLiteStatementT1, th);
                throw th2;
            }
        }
    }

    /* JADX INFO: renamed from: c */
    public abstract List getF19452e();

    /* JADX INFO: renamed from: d */
    public abstract DatabaseConfiguration getF19451c();

    /* JADX INFO: renamed from: e */
    public abstract RoomOpenDelegate getD();

    public final void f(SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementT1 = sQLiteConnection.T1("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'");
        try {
            boolean z = false;
            if (sQLiteStatementT1.Q1() && sQLiteStatementT1.getLong(0) == 0) {
                z = true;
            }
            AutoCloseableKt.a(sQLiteStatementT1, null);
            getD().a(sQLiteConnection);
            if (!z) {
                RoomOpenDelegate.ValidationResult validationResultG = getD().g(sQLiteConnection);
                if (!validationResultG.f19479a) {
                    v7.i(validationResultG.f19480b, "Pre-packaged database has an invalid schema: ");
                    return;
                }
            }
            j(sQLiteConnection);
            getD().c(sQLiteConnection);
            Iterator it = getF19452e().iterator();
            while (it.hasNext()) {
                ((RoomDatabase.Callback) it.next()).getClass();
                if (sQLiteConnection instanceof SupportSQLiteConnection) {
                    ((SupportSQLiteConnection) sQLiteConnection).f19679b.getClass();
                }
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                AutoCloseableKt.a(sQLiteStatementT1, th);
                throw th2;
            }
        }
    }

    public final void g(SQLiteConnection sQLiteConnection, int i2, int i3) {
        sQLiteConnection.getClass();
        List listA = MigrationUtil.a(getF19451c().d, i2, i3);
        if (listA != null) {
            getD().f(sQLiteConnection);
            Iterator it = listA.iterator();
            while (it.hasNext()) {
                ((Migration) it.next()).a(sQLiteConnection);
            }
            RoomOpenDelegate.ValidationResult validationResultG = getD().g(sQLiteConnection);
            if (!validationResultG.f19479a) {
                v7.i(validationResultG.f19480b, "Migration didn't properly handle: ");
                return;
            } else {
                getD().e(sQLiteConnection);
                j(sQLiteConnection);
                return;
            }
        }
        if (MigrationUtil.b(getF19451c(), i2, i3)) {
            throw new IllegalStateException(("A migration from " + i2 + " to " + i3 + " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* functions.").toString());
        }
        if (getF19451c().t) {
            SQLiteStatement sQLiteStatementT1 = sQLiteConnection.T1("SELECT name, type FROM sqlite_master WHERE type = 'table' OR type = 'view'");
            try {
                ListBuilder listBuilderV = CollectionsKt.v();
                while (sQLiteStatementT1.Q1()) {
                    String strM1 = sQLiteStatementT1.m1(0);
                    if (!StringsKt.P(strM1, "sqlite_", false) && !strM1.equals("android_metadata")) {
                        listBuilderV.add(new Pair(strM1, Boolean.valueOf(Intrinsics.c(sQLiteStatementT1.m1(1), "view"))));
                    }
                }
                ListBuilder listBuilderR = CollectionsKt.r(listBuilderV);
                AutoCloseableKt.a(sQLiteStatementT1, null);
                ListIterator listIterator = listBuilderR.listIterator(0);
                while (listIterator.hasNext()) {
                    Pair pair = (Pair) listIterator.next();
                    String str = (String) pair.f71705b;
                    if (((Boolean) pair.f71706c).booleanValue()) {
                        SQLite.a(sQLiteConnection, "DROP VIEW IF EXISTS " + str);
                    } else {
                        SQLite.a(sQLiteConnection, "DROP TABLE IF EXISTS " + str);
                    }
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    AutoCloseableKt.a(sQLiteStatementT1, th);
                    throw th2;
                }
            }
        } else {
            getD().b(sQLiteConnection);
        }
        Iterator it2 = getF19452e().iterator();
        while (it2.hasNext()) {
            ((RoomDatabase.Callback) it2.next()).getClass();
            if (sQLiteConnection instanceof SupportSQLiteConnection) {
                ((SupportSQLiteConnection) sQLiteConnection).f19679b.getClass();
            }
        }
        getD().a(sQLiteConnection);
    }

    public final void h(SQLiteConnection sQLiteConnection) {
        Object failure;
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementT1 = sQLiteConnection.T1("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name = 'room_master_table'");
        try {
            boolean z = sQLiteStatementT1.Q1() && sQLiteStatementT1.getLong(0) != 0;
            AutoCloseableKt.a(sQLiteStatementT1, null);
            if (z) {
                SQLiteStatement sQLiteStatementT2 = sQLiteConnection.T1("SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1");
                try {
                    String strM1 = sQLiteStatementT2.Q1() ? sQLiteStatementT2.m1(0) : null;
                    AutoCloseableKt.a(sQLiteStatementT2, null);
                    if (!Intrinsics.c(getD().f19477b, strM1) && !Intrinsics.c(getD().f19478c, strM1)) {
                        throw new IllegalStateException(("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: " + getD().f19477b + ", found: " + strM1).toString());
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        AutoCloseableKt.a(sQLiteStatementT2, th);
                        throw th2;
                    }
                }
            } else {
                SQLite.a(sQLiteConnection, "BEGIN EXCLUSIVE TRANSACTION");
                try {
                    Result.Companion companion = Result.INSTANCE;
                    RoomOpenDelegate.ValidationResult validationResultG = getD().g(sQLiteConnection);
                    if (!validationResultG.f19479a) {
                        throw new IllegalStateException(("Pre-packaged database has an invalid schema: " + validationResultG.f19480b).toString());
                    }
                    getD().e(sQLiteConnection);
                    j(sQLiteConnection);
                    failure = Unit.f71739a;
                    if (!(failure instanceof Result.Failure)) {
                        SQLite.a(sQLiteConnection, "END TRANSACTION");
                    }
                    Throwable thA = Result.a(failure);
                    if (thA != null) {
                        SQLite.a(sQLiteConnection, "ROLLBACK TRANSACTION");
                        throw thA;
                    }
                } catch (Throwable th3) {
                    Result.Companion companion2 = Result.INSTANCE;
                    failure = new Result.Failure(th3);
                }
            }
            getD().d(sQLiteConnection);
            for (RoomDatabase.Callback callback : getF19452e()) {
                callback.getClass();
                if (sQLiteConnection instanceof SupportSQLiteConnection) {
                    callback.a(((SupportSQLiteConnection) sQLiteConnection).f19679b);
                }
            }
            this.f19363a = true;
        } catch (Throwable th4) {
            try {
                throw th4;
            } catch (Throwable th5) {
                AutoCloseableKt.a(sQLiteStatementT1, th4);
                throw th5;
            }
        }
    }

    public String i(String str) {
        str.getClass();
        return str;
    }

    public final void j(SQLiteConnection sQLiteConnection) {
        SQLite.a(sQLiteConnection, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
        String str = getD().f19477b;
        str.getClass();
        SQLite.a(sQLiteConnection, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '" + str + "')");
    }
}
