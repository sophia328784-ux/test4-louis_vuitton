package androidx.room;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.room.concurrent.CloseBarrier;
import androidx.room.coroutines.RunBlockingUninterruptible_androidKt;
import androidx.room.migration.Migration;
import androidx.room.support.AutoCloser;
import androidx.room.support.AutoClosingRoomOpenHelper;
import androidx.room.support.PrePackagedCopyOpenHelper;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.framework.FrameworkSQLiteOpenHelperFactory;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import defpackage.b21;
import defpackage.bo0;
import defpackage.ct0;
import defpackage.l71;
import defpackage.l8;
import defpackage.lc0;
import defpackage.md;
import defpackage.mt0;
import defpackage.o60;
import defpackage.pq0;
import io.jsonwebtoken.JwtParser;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.collections.MapsKt;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExecutorsKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.internal.ContextScope;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\n\b&\u0018\u00002\u00020\u0001:\u0007\u0004\u0005\u0006\u0007\b\t\nB\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u000b"}, d2 = {"Landroidx/room/RoomDatabase;", "", "<init>", "()V", "JournalMode", "Builder", "MigrationContainer", "Callback", "PrepackagedDatabaseCallback", "QueryCallback", "Companion", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class RoomDatabase {
    public static final /* synthetic */ int m = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ContextScope f19456a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CoroutineContext f19457b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Executor f19458c;
    public TransactionExecutor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public RoomConnectionManager f19459e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public InvalidationTracker f19460f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f19461h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public AutoCloser f19462i;
    public final CloseBarrier g = new CloseBarrier(new RoomDatabase$closeBarrier$1(0, this, RoomDatabase.class, "onClosed", "onClosed()V", 0));

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ThreadLocal f19463j = new ThreadLocal();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final LinkedHashMap f19464k = new LinkedHashMap();
    public boolean l = true;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/room/RoomDatabase$Callback;", "", "<init>", "()V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static abstract class Callback {
        public void a(SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.getClass();
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/room/RoomDatabase$Companion;", "", "", "MAX_BIND_PARAMETER_CNT", "I", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Landroidx/room/RoomDatabase$JournalMode;", "", "AUTOMATIC", "TRUNCATE", "WRITE_AHEAD_LOGGING", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class JournalMode {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ JournalMode[] $VALUES;
        public static final JournalMode AUTOMATIC;
        public static final JournalMode TRUNCATE;
        public static final JournalMode WRITE_AHEAD_LOGGING;

        static {
            JournalMode journalMode = new JournalMode("AUTOMATIC", 0);
            AUTOMATIC = journalMode;
            JournalMode journalMode2 = new JournalMode("TRUNCATE", 1);
            TRUNCATE = journalMode2;
            JournalMode journalMode3 = new JournalMode("WRITE_AHEAD_LOGGING", 2);
            WRITE_AHEAD_LOGGING = journalMode3;
            JournalMode[] journalModeArr = {journalMode, journalMode2, journalMode3};
            $VALUES = journalModeArr;
            $ENTRIES = EnumEntriesKt.a(journalModeArr);
        }

        public static JournalMode valueOf(String str) {
            return (JournalMode) Enum.valueOf(JournalMode.class, str);
        }

        public static JournalMode[] values() {
            return (JournalMode[]) $VALUES.clone();
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/room/RoomDatabase$MigrationContainer;", "", "<init>", "()V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static class MigrationContainer {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LinkedHashMap f19474a = new LinkedHashMap();

        public final void a(Migration migration) {
            migration.getClass();
            int i2 = migration.f19699a;
            int i3 = migration.f19700b;
            Integer numValueOf = Integer.valueOf(i2);
            LinkedHashMap linkedHashMap = this.f19474a;
            Object treeMap = linkedHashMap.get(numValueOf);
            if (treeMap == null) {
                treeMap = new TreeMap();
                linkedHashMap.put(numValueOf, treeMap);
            }
            TreeMap treeMap2 = (TreeMap) treeMap;
            if (treeMap2.containsKey(Integer.valueOf(i3))) {
                Objects.toString(treeMap2.get(Integer.valueOf(i3)));
                migration.toString();
            }
            treeMap2.put(Integer.valueOf(i3), migration);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/room/RoomDatabase$PrepackagedDatabaseCallback;", "", "<init>", "()V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static abstract class PrepackagedDatabaseCallback {
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/room/RoomDatabase$QueryCallback;", "", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface QueryCallback {
    }

    static {
        new Companion(null);
    }

    public final void a() {
        if (this.f19461h) {
            return;
        }
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            md.k("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
        }
    }

    public final void b() {
        if (!q() || r() || this.f19463j.get() == null) {
            return;
        }
        md.k("Cannot access database on a different coroutine context inherited from a suspending transaction.");
    }

    public final void c() {
        a();
        AutoCloser autoCloser = this.f19462i;
        if (autoCloser == null) {
            s();
        } else {
            autoCloser.b(new mt0(this, 2));
        }
    }

    public List d(LinkedHashMap linkedHashMap) {
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(MapsKt.g(linkedHashMap.size()));
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            linkedHashMap2.put(JvmClassMappingKt.b((KClass) entry.getKey()), entry.getValue());
        }
        return i(linkedHashMap2);
    }

    public abstract InvalidationTracker e();

    public RoomOpenDelegateMarker f() {
        throw new NotImplementedError(null, 1, null);
    }

    public SupportSQLiteOpenHelper g(DatabaseConfiguration databaseConfiguration) {
        databaseConfiguration.getClass();
        throw new NotImplementedError(null, 1, null);
    }

    public final void h() {
        AutoCloser autoCloser = this.f19462i;
        if (autoCloser != null) {
            autoCloser.b(new mt0(this, 0));
            return;
        }
        l().getWritableDatabase().t0();
        if (r()) {
            return;
        }
        InvalidationTracker invalidationTrackerK = k();
        invalidationTrackerK.f19402e.e(invalidationTrackerK.f19405i, invalidationTrackerK.f19406j);
    }

    public List i(LinkedHashMap linkedHashMap) {
        return EmptyList.f71768b;
    }

    public final ContextScope j() {
        ContextScope contextScope = this.f19456a;
        if (contextScope != null) {
            return contextScope;
        }
        Intrinsics.h("coroutineScope");
        throw null;
    }

    public final InvalidationTracker k() {
        InvalidationTracker invalidationTracker = this.f19460f;
        if (invalidationTracker != null) {
            return invalidationTracker;
        }
        Intrinsics.h("internalTracker");
        throw null;
    }

    public final SupportSQLiteOpenHelper l() {
        RoomConnectionManager roomConnectionManager = this.f19459e;
        if (roomConnectionManager == null) {
            Intrinsics.h("connectionManager");
            throw null;
        }
        SupportSQLiteOpenHelper supportSQLiteOpenHelperK = roomConnectionManager.k();
        if (supportSQLiteOpenHelperK != null) {
            return supportSQLiteOpenHelperK;
        }
        md.k("Cannot return a SupportSQLiteOpenHelper since no SupportSQLiteOpenHelper.Factory was configured with Room.");
        return null;
    }

    public Set m() {
        Set setN = n();
        ArrayList arrayList = new ArrayList(CollectionsKt.t(setN, 10));
        Iterator it = setN.iterator();
        while (it.hasNext()) {
            arrayList.add(JvmClassMappingKt.e((Class) it.next()));
        }
        return CollectionsKt.B0(arrayList);
    }

    public Set n() {
        return EmptySet.f71770b;
    }

    public LinkedHashMap o() {
        Set<Map.Entry> setEntrySet = p().entrySet();
        int iG = MapsKt.g(CollectionsKt.t(setEntrySet, 10));
        if (iG < 16) {
            iG = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(iG);
        for (Map.Entry entry : setEntrySet) {
            Class cls = (Class) entry.getKey();
            List list = (List) entry.getValue();
            KClass kClassE = JvmClassMappingKt.e(cls);
            List list2 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(JvmClassMappingKt.e((Class) it.next()));
            }
            Pair pair = new Pair(kClassE, arrayList);
            linkedHashMap.put(pair.f71705b, pair.f71706c);
        }
        return linkedHashMap;
    }

    public Map p() {
        return MapsKt.c();
    }

    public final boolean q() {
        RoomConnectionManager roomConnectionManager = this.f19459e;
        if (roomConnectionManager != null) {
            return roomConnectionManager.k() != null;
        }
        Intrinsics.h("connectionManager");
        throw null;
    }

    public final boolean r() {
        return u() && l().getWritableDatabase().z1();
    }

    public final void s() {
        a();
        SupportSQLiteDatabase writableDatabase = l().getWritableDatabase();
        if (!writableDatabase.z1()) {
            RunBlockingUninterruptible_androidKt.a(new InvalidationTracker$syncBlocking$1(k(), null));
        }
        if (writableDatabase.I1()) {
            writableDatabase.b0();
        } else {
            writableDatabase.P();
        }
    }

    public final void t(SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        InvalidationTracker invalidationTrackerK = k();
        TriggerBasedInvalidationTracker triggerBasedInvalidationTracker = invalidationTrackerK.f19402e;
        triggerBasedInvalidationTracker.getClass();
        SQLiteStatement sQLiteStatementT1 = sQLiteConnection.T1("PRAGMA query_only");
        try {
            sQLiteStatementT1.Q1();
            boolean zC1 = sQLiteStatementT1.c1();
            AutoCloseableKt.a(sQLiteStatementT1, null);
            if (!zC1) {
                SQLite.a(sQLiteConnection, "PRAGMA temp_store = MEMORY");
                SQLite.a(sQLiteConnection, "PRAGMA recursive_triggers = 1");
                SQLite.a(sQLiteConnection, "DROP TABLE IF EXISTS room_table_modification_log");
                if (triggerBasedInvalidationTracker.d) {
                    SQLite.a(sQLiteConnection, "CREATE TEMP TABLE IF NOT EXISTS room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)");
                } else {
                    SQLite.a(sQLiteConnection, StringsKt.J("CREATE TEMP TABLE IF NOT EXISTS room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)", "TEMP", ""));
                }
                ObservedTableStates observedTableStates = triggerBasedInvalidationTracker.f19524h;
                ReentrantLock reentrantLock = observedTableStates.f19441a;
                reentrantLock.lock();
                try {
                    observedTableStates.d = true;
                    reentrantLock.unlock();
                } catch (Throwable th) {
                    reentrantLock.unlock();
                    throw th;
                }
            }
            synchronized (invalidationTrackerK.n) {
                MultiInstanceInvalidationClient multiInstanceInvalidationClient = invalidationTrackerK.m;
                if (multiInstanceInvalidationClient != null) {
                    Intent intent = invalidationTrackerK.l;
                    if (intent == null) {
                        throw new IllegalStateException("Required value was null.");
                    }
                    if (multiInstanceInvalidationClient.f19418e.compareAndSet(true, false)) {
                        multiInstanceInvalidationClient.f19417c.bindService(intent, multiInstanceInvalidationClient.f19423k, 1);
                        InvalidationTracker invalidationTracker = multiInstanceInvalidationClient.f19416b;
                        MultiInstanceInvalidationClient$observer$1 multiInstanceInvalidationClient$observer$1 = multiInstanceInvalidationClient.f19421i;
                        invalidationTracker.getClass();
                        multiInstanceInvalidationClient$observer$1.getClass();
                        invalidationTracker.a(multiInstanceInvalidationClient$observer$1);
                    }
                }
            }
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                AutoCloseableKt.a(sQLiteStatementT1, th2);
                throw th3;
            }
        }
    }

    public final boolean u() {
        RoomConnectionManager roomConnectionManager = this.f19459e;
        if (roomConnectionManager == null) {
            Intrinsics.h("connectionManager");
            throw null;
        }
        SupportSQLiteDatabase supportSQLiteDatabase = roomConnectionManager.g;
        if (supportSQLiteDatabase != null) {
            return supportSQLiteDatabase.isOpen();
        }
        return false;
    }

    public final Object v(Function0 function0) {
        if (!q()) {
            return DBUtil.c(this, false, true, new bo0(function0, 5));
        }
        c();
        try {
            Object objMo47invoke = function0.mo47invoke();
            w();
            return objMo47invoke;
        } finally {
            h();
        }
    }

    public final void w() {
        l().getWritableDatabase().a0();
    }

    public final Object x(boolean z, Function2 function2, ContinuationImpl continuationImpl) {
        RoomConnectionManager roomConnectionManager = this.f19459e;
        if (roomConnectionManager != null) {
            return roomConnectionManager.f19453f.j1(z, function2, continuationImpl);
        }
        Intrinsics.h("connectionManager");
        throw null;
    }

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0003B9\b\u0011\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rB)\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u000e\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\f\u0010\u000f¨\u0006\u0010"}, d2 = {"Landroidx/room/RoomDatabase$Builder;", "Landroidx/room/RoomDatabase;", "T", "", "Lkotlin/reflect/KClass;", "klass", "", "name", "Lkotlin/Function0;", "factory", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Lkotlin/reflect/KClass;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroid/content/Context;)V", "Ljava/lang/Class;", "(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static class Builder<T extends RoomDatabase> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final KClass f19465a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Context f19466b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f19467c;
        public final Function0 d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final ArrayList f19468e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final ArrayList f19469f;
        public Executor g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Executor f19470h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public l71 f19471i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f19472j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final JournalMode f19473k;
        public final long l;
        public final MigrationContainer m;
        public final LinkedHashSet n;
        public final LinkedHashSet o;
        public final ArrayList p;
        public boolean q;
        public boolean r;
        public boolean s;
        public final boolean t;

        public Builder(Context context, Class<T> cls, String str) {
            context.getClass();
            cls.getClass();
            this.f19468e = new ArrayList();
            this.f19469f = new ArrayList();
            this.f19473k = JournalMode.AUTOMATIC;
            this.l = -1L;
            this.m = new MigrationContainer();
            this.n = new LinkedHashSet();
            this.o = new LinkedHashSet();
            this.p = new ArrayList();
            this.q = true;
            this.t = true;
            this.f19465a = Reflection.f71922a.b(cls);
            this.f19466b = context;
            this.f19467c = str;
            this.d = null;
        }

        public final void a(Migration... migrationArr) {
            for (Migration migration : migrationArr) {
                Integer numValueOf = Integer.valueOf(migration.f19699a);
                LinkedHashSet linkedHashSet = this.o;
                linkedHashSet.add(numValueOf);
                linkedHashSet.add(Integer.valueOf(migration.f19700b));
            }
            Migration[] migrationArr2 = (Migration[]) Arrays.copyOf(migrationArr, migrationArr.length);
            MigrationContainer migrationContainer = this.m;
            migrationContainer.getClass();
            for (Migration migration2 : migrationArr2) {
                migrationContainer.a(migration2);
            }
        }

        public final RoomDatabase b() {
            String name;
            RoomDatabase roomDatabase;
            RoomOpenDelegate roomOpenDelegate;
            LinkedHashMap linkedHashMap;
            List list;
            int size;
            boolean[] zArr;
            Iterator it;
            CoroutineContext coroutineContextPlus;
            boolean zContainsKey;
            Executor executor = this.g;
            if (executor == null && this.f19470h == null) {
                l8 l8Var = ArchTaskExecutor.f1352c;
                this.f19470h = l8Var;
                this.g = l8Var;
            } else if (executor != null && this.f19470h == null) {
                this.f19470h = executor;
            } else if (executor == null) {
                this.g = this.f19470h;
            }
            LinkedHashSet linkedHashSet = this.o;
            linkedHashSet.getClass();
            LinkedHashSet linkedHashSet2 = this.n;
            linkedHashSet2.getClass();
            if (!linkedHashSet.isEmpty()) {
                Iterator it2 = linkedHashSet.iterator();
                while (it2.hasNext()) {
                    int iIntValue = ((Number) it2.next()).intValue();
                    if (linkedHashSet2.contains(Integer.valueOf(iIntValue))) {
                        b21.n(pq0.k(iIntValue, "Inconsistency detected. A Migration was supplied to addMigration() that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(). Start version is: "));
                        return null;
                    }
                }
            }
            SupportSQLiteOpenHelper.Factory frameworkSQLiteOpenHelperFactory = this.f19471i;
            if (frameworkSQLiteOpenHelperFactory == null) {
                frameworkSQLiteOpenHelperFactory = new FrameworkSQLiteOpenHelperFactory();
            }
            SupportSQLiteOpenHelper.Factory factory = frameworkSQLiteOpenHelperFactory;
            if (this.l > 0) {
                if (this.f19467c != null) {
                    md.n("Required value was null.");
                    return null;
                }
                md.n("Cannot create auto-closing database for an in-memory database.");
                return null;
            }
            boolean z = this.f19472j;
            JournalMode journalMode = this.f19473k;
            journalMode.getClass();
            Context context = this.f19466b;
            context.getClass();
            if (journalMode == JournalMode.AUTOMATIC) {
                Object systemService = context.getSystemService(ActionFloatingViewItem.f37018a);
                ActivityManager activityManager = systemService instanceof ActivityManager ? (ActivityManager) systemService : null;
                journalMode = (activityManager == null || activityManager.isLowRamDevice()) ? JournalMode.TRUNCATE : JournalMode.WRITE_AHEAD_LOGGING;
            }
            JournalMode journalMode2 = journalMode;
            Executor executor2 = this.g;
            if (executor2 == null) {
                md.n("Required value was null.");
                return null;
            }
            Executor executor3 = this.f19470h;
            if (executor3 == null) {
                md.n("Required value was null.");
                return null;
            }
            int i2 = 1;
            DatabaseConfiguration databaseConfiguration = new DatabaseConfiguration(context, this.f19467c, factory, this.m, this.f19468e, z, journalMode2, executor2, executor3, null, this.q, this.r, linkedHashSet2, null, null, null, null, this.f19469f, this.p, this.s, null, null);
            databaseConfiguration.x = this.t;
            Function0 function0 = this.d;
            if (function0 == null || (roomDatabase = (RoomDatabase) function0.mo47invoke()) == null) {
                Class clsB = JvmClassMappingKt.b(this.f19465a);
                Package r0 = clsB.getPackage();
                if (r0 == null || (name = r0.getName()) == null) {
                    name = "";
                }
                String canonicalName = clsB.getCanonicalName();
                canonicalName.getClass();
                if (name.length() != 0) {
                    canonicalName = canonicalName.substring(name.length() + 1);
                }
                String strReplace = canonicalName.replace(JwtParser.SEPARATOR_CHAR, '_');
                strReplace.getClass();
                String strConcat = strReplace.concat("_Impl");
                try {
                    Class<?> cls = Class.forName(name.length() == 0 ? strConcat : name + JwtParser.SEPARATOR_CHAR + strConcat, true, clsB.getClassLoader());
                    cls.getClass();
                    roomDatabase = (RoomDatabase) cls.getDeclaredConstructor(null).newInstance(null);
                } catch (ClassNotFoundException e2) {
                    throw new RuntimeException("Cannot find implementation for " + clsB.getCanonicalName() + ". " + strConcat + " does not exist. Is Room annotation processor correctly configured?", e2);
                } catch (IllegalAccessException e3) {
                    throw new RuntimeException("Cannot access the constructor " + clsB.getCanonicalName(), e3);
                } catch (InstantiationException e4) {
                    throw new RuntimeException("Failed to create an instance of " + clsB.getCanonicalName(), e4);
                }
            }
            roomDatabase.getClass();
            roomDatabase.l = databaseConfiguration.x;
            try {
                RoomOpenDelegateMarker roomOpenDelegateMarkerF = roomDatabase.f();
                roomOpenDelegateMarkerF.getClass();
                roomOpenDelegate = (RoomOpenDelegate) roomOpenDelegateMarkerF;
                while (true) {
                    int i3 = -1;
                    if (!it.hasNext()) {
                        int size2 = list.size() - 1;
                        if (size2 >= 0) {
                            while (true) {
                                int i4 = size2 - 1;
                                if (size2 >= size || !zArr[size2]) {
                                    md.n("Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder.");
                                    return null;
                                }
                                if (i4 < 0) {
                                    break;
                                }
                                size2 = i4;
                            }
                        }
                        for (Migration migration : roomDatabase.d(linkedHashMap)) {
                            int i5 = migration.f19699a;
                            int i6 = migration.f19700b;
                            MigrationContainer migrationContainer = databaseConfiguration.d;
                            LinkedHashMap linkedHashMap2 = migrationContainer.f19474a;
                            if (linkedHashMap2.containsKey(Integer.valueOf(i5))) {
                                Map mapC = (Map) linkedHashMap2.get(Integer.valueOf(i5));
                                if (mapC == null) {
                                    mapC = MapsKt.c();
                                }
                                zContainsKey = mapC.containsKey(Integer.valueOf(i6));
                            } else {
                                zContainsKey = false;
                            }
                            if (!zContainsKey) {
                                migrationContainer.a(migration);
                            }
                        }
                        LinkedHashMap linkedHashMapO = roomDatabase.o();
                        List list2 = databaseConfiguration.r;
                        boolean[] zArr2 = new boolean[list2.size()];
                        for (Map.Entry entry : linkedHashMapO.entrySet()) {
                            KClass kClass = (KClass) entry.getKey();
                            for (KClass kClass2 : (List) entry.getValue()) {
                                int size3 = list2.size() - 1;
                                if (size3 < 0) {
                                    size3 = -1;
                                    break;
                                }
                                while (true) {
                                    int i7 = size3 - 1;
                                    if (kClass2.t(list2.get(size3))) {
                                        zArr2[size3] = true;
                                        break;
                                    }
                                    if (i7 < 0) {
                                        size3 = -1;
                                        break;
                                    }
                                    size3 = i7;
                                }
                                if (size3 < 0) {
                                    ct0.h(kClass2.getF74431c(), ") for ", kClass.getF74431c(), " is missing in the database configuration.", "A required type converter (");
                                    return null;
                                }
                                Object obj = list2.get(size3);
                                kClass2.getClass();
                                obj.getClass();
                                roomDatabase.f19464k.put(kClass2, obj);
                            }
                        }
                        int size4 = list2.size() - 1;
                        if (size4 >= 0) {
                            while (true) {
                                int i8 = size4 - 1;
                                if (!zArr2[size4]) {
                                    md.n(o60.n("Unexpected type converter ", list2.get(size4), ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder."));
                                    return null;
                                }
                                if (i8 < 0) {
                                    break;
                                }
                                size4 = i8;
                            }
                        }
                        CoroutineContext coroutineContext = databaseConfiguration.v;
                        if (coroutineContext != null) {
                            CoroutineContext.Element element = coroutineContext.get(ContinuationInterceptor.INSTANCE);
                            element.getClass();
                            CoroutineDispatcher coroutineDispatcher = (CoroutineDispatcher) element;
                            Executor executorA = ExecutorsKt.a(coroutineDispatcher);
                            roomDatabase.f19458c = executorA;
                            roomDatabase.d = new TransactionExecutor(executorA);
                            roomDatabase.f19456a = CoroutineScopeKt.a(coroutineContext.plus(SupervisorKt.a((Job) coroutineContext.get(Job.Key.f74677b))));
                            boolean zQ = roomDatabase.q();
                            ContextScope contextScope = roomDatabase.f19456a;
                            if (zQ) {
                                if (contextScope == null) {
                                    Intrinsics.h("coroutineScope");
                                    throw null;
                                }
                                coroutineContextPlus = contextScope.f75106b.plus(coroutineDispatcher.limitedParallelism(1));
                            } else {
                                if (contextScope == null) {
                                    Intrinsics.h("coroutineScope");
                                    throw null;
                                }
                                coroutineContextPlus = contextScope.f75106b;
                            }
                            roomDatabase.f19457b = coroutineContextPlus;
                        } else {
                            roomDatabase.f19458c = databaseConfiguration.f19388h;
                            roomDatabase.d = new TransactionExecutor(databaseConfiguration.f19389i);
                            Executor executor4 = roomDatabase.f19458c;
                            if (executor4 == null) {
                                Intrinsics.h("internalQueryExecutor");
                                throw null;
                            }
                            ContextScope contextScopeA = CoroutineScopeKt.a(ExecutorsKt.b(executor4).plus(SupervisorKt.b()));
                            roomDatabase.f19456a = contextScopeA;
                            CoroutineContext coroutineContext2 = contextScopeA.f75106b;
                            TransactionExecutor transactionExecutor = roomDatabase.d;
                            if (transactionExecutor == null) {
                                Intrinsics.h("internalTransactionExecutor");
                                throw null;
                            }
                            roomDatabase.f19457b = coroutineContext2.plus(ExecutorsKt.b(transactionExecutor));
                        }
                        roomDatabase.f19461h = databaseConfiguration.f19387f;
                        RoomConnectionManager roomConnectionManager = roomDatabase.f19459e;
                        if (roomConnectionManager == null) {
                            Intrinsics.h("connectionManager");
                            throw null;
                        }
                        SupportSQLiteOpenHelper supportSQLiteOpenHelperK = roomConnectionManager.k();
                        if (supportSQLiteOpenHelperK == null) {
                            supportSQLiteOpenHelperK = null;
                            break;
                        }
                        while (!(supportSQLiteOpenHelperK instanceof PrePackagedCopyOpenHelper)) {
                            if (!(supportSQLiteOpenHelperK instanceof DelegatingOpenHelper)) {
                                supportSQLiteOpenHelperK = null;
                                break;
                            }
                            supportSQLiteOpenHelperK = ((DelegatingOpenHelper) supportSQLiteOpenHelperK).getG();
                        }
                        PrePackagedCopyOpenHelper prePackagedCopyOpenHelper = (PrePackagedCopyOpenHelper) supportSQLiteOpenHelperK;
                        if (prePackagedCopyOpenHelper != null) {
                            prePackagedCopyOpenHelper.f19729h = databaseConfiguration;
                        }
                        RoomConnectionManager roomConnectionManager2 = roomDatabase.f19459e;
                        if (roomConnectionManager2 == null) {
                            Intrinsics.h("connectionManager");
                            throw null;
                        }
                        SupportSQLiteOpenHelper supportSQLiteOpenHelperK2 = roomConnectionManager2.k();
                        if (supportSQLiteOpenHelperK2 == null) {
                            supportSQLiteOpenHelperK2 = null;
                            break;
                        }
                        while (!(supportSQLiteOpenHelperK2 instanceof AutoClosingRoomOpenHelper)) {
                            if (!(supportSQLiteOpenHelperK2 instanceof DelegatingOpenHelper)) {
                                supportSQLiteOpenHelperK2 = null;
                                break;
                            }
                            supportSQLiteOpenHelperK2 = ((DelegatingOpenHelper) supportSQLiteOpenHelperK2).getG();
                        }
                        AutoClosingRoomOpenHelper autoClosingRoomOpenHelper = (AutoClosingRoomOpenHelper) supportSQLiteOpenHelperK2;
                        if (autoClosingRoomOpenHelper != null) {
                            AutoCloser autoCloser = autoClosingRoomOpenHelper.f19713c;
                            roomDatabase.f19462i = autoCloser;
                            ContextScope contextScope2 = roomDatabase.f19456a;
                            if (contextScope2 == null) {
                                Intrinsics.h("coroutineScope");
                                throw null;
                            }
                            autoCloser.getClass();
                            autoCloser.f19703c = contextScope2;
                            InvalidationTracker invalidationTrackerK = roomDatabase.k();
                            invalidationTrackerK.f19404h = autoCloser;
                            autoCloser.d = new InvalidationTracker$setAutoCloser$1(0, invalidationTrackerK, InvalidationTracker.class, "onAutoCloseCallback", "onAutoCloseCallback()V", 0);
                        }
                        Intent intent = databaseConfiguration.f19390j;
                        if (intent != null) {
                            String str = databaseConfiguration.f19384b;
                            if (str == null) {
                                md.n("Required value was null.");
                                return null;
                            }
                            InvalidationTracker invalidationTrackerK2 = roomDatabase.k();
                            Context context2 = databaseConfiguration.f19383a;
                            context2.getClass();
                            invalidationTrackerK2.l = intent;
                            invalidationTrackerK2.m = new MultiInstanceInvalidationClient(context2, str, invalidationTrackerK2);
                        }
                        return roomDatabase;
                    }
                    KClass kClass3 = (KClass) it.next();
                    int size5 = list.size() - 1;
                    if (size5 >= 0) {
                        while (true) {
                            int i9 = size5 - 1;
                            if (kClass3.t(list.get(size5))) {
                                zArr[size5] = true;
                                i3 = size5;
                                break;
                            }
                            if (i9 < 0) {
                                break;
                            }
                            size5 = i9;
                        }
                    }
                    if (i3 < 0) {
                        lc0.v("A required auto migration spec (", kClass3.getF74431c(), ") is missing in the database configuration.");
                        return null;
                    }
                    linkedHashMap.put(kClass3, list.get(i3));
                }
            } catch (NotImplementedError unused) {
                roomOpenDelegate = null;
            }
            roomDatabase.f19459e = roomOpenDelegate == null ? new RoomConnectionManager(databaseConfiguration, new mt0(roomDatabase, i2)) : new RoomConnectionManager(databaseConfiguration, roomOpenDelegate);
            roomDatabase.f19460f = roomDatabase.e();
            linkedHashMap = new LinkedHashMap();
            Set setM = roomDatabase.m();
            list = databaseConfiguration.s;
            size = list.size();
            zArr = new boolean[size];
            it = setM.iterator();
        }

        public Builder(KClass<T> kClass, String str, Function0<? extends T> function0, Context context) {
            kClass.getClass();
            context.getClass();
            this.f19468e = new ArrayList();
            this.f19469f = new ArrayList();
            this.f19473k = JournalMode.AUTOMATIC;
            this.l = -1L;
            this.m = new MigrationContainer();
            this.n = new LinkedHashSet();
            this.o = new LinkedHashSet();
            this.p = new ArrayList();
            this.q = true;
            this.t = true;
            this.f19465a = kClass;
            this.f19466b = context;
            this.f19467c = str;
            this.d = function0;
        }
    }
}
