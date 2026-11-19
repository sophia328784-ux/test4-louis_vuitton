package androidx.room.coroutines;

import android.database.SQLException;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteDriver;
import defpackage.md;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.internal.ThreadLocalElement;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B)\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b¢\u0006\u0004\b\u0006\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/room/coroutines/ConnectionPoolImpl;", "Landroidx/room/coroutines/ConnectionPool;", "Landroidx/sqlite/SQLiteDriver;", "driver", "", "fileName", "<init>", "(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;)V", "", "maxNumOfReaders", "maxNumOfWriters", "(Landroidx/sqlite/SQLiteDriver;Ljava/lang/String;II)V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ConnectionPoolImpl implements ConnectionPool {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SQLiteDriver f19605b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Pool f19606c;
    public final Pool d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ThreadLocal f19607e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AtomicBoolean f19608f;
    public final long g;

    public ConnectionPoolImpl(final SQLiteDriver sQLiteDriver, final String str, int i2, int i3) {
        sQLiteDriver.getClass();
        str.getClass();
        this.f19607e = new ThreadLocal();
        final int i4 = 0;
        this.f19608f = new AtomicBoolean(false);
        Duration.Companion companion = Duration.INSTANCE;
        this.g = DurationKt.g(30, DurationUnit.SECONDS);
        if (i2 <= 0) {
            md.n("Maximum number of readers must be greater than 0");
            throw null;
        }
        if (i3 <= 0) {
            md.n("Maximum number of writers must be greater than 0");
            throw null;
        }
        this.f19605b = sQLiteDriver;
        this.f19606c = new Pool(i2, new Function0() { // from class: zo
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i5 = i4;
                String str2 = str;
                SQLiteDriver sQLiteDriver2 = sQLiteDriver;
                switch (i5) {
                    case 0:
                        SQLiteConnection sQLiteConnectionA = sQLiteDriver2.a(str2);
                        SQLite.a(sQLiteConnectionA, "PRAGMA query_only = 1");
                        return sQLiteConnectionA;
                    case 1:
                        return sQLiteDriver2.a(str2);
                    default:
                        return sQLiteDriver2.a(str2);
                }
            }
        });
        final int i5 = 1;
        this.d = new Pool(i3, new Function0() { // from class: zo
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i6 = i5;
                String str2 = str;
                SQLiteDriver sQLiteDriver2 = sQLiteDriver;
                switch (i6) {
                    case 0:
                        SQLiteConnection sQLiteConnectionA = sQLiteDriver2.a(str2);
                        SQLite.a(sQLiteConnectionA, "PRAGMA query_only = 1");
                        return sQLiteConnectionA;
                    case 1:
                        return sQLiteDriver2.a(str2);
                    default:
                        return sQLiteDriver2.a(str2);
                }
            }
        });
    }

    public final void c(boolean z) {
        String str = z ? "reader" : "writer";
        StringBuilder sb = new StringBuilder();
        sb.append("Timed out attempting to acquire a " + str + " connection.");
        sb.append("\n\nWriter pool:\n");
        this.d.c(sb);
        sb.append("Reader pool:");
        sb.append('\n');
        this.f19606c.c(sb);
        SQLite.b(5, sb.toString());
        throw null;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        if (this.f19608f.compareAndSet(false, true)) {
            this.f19606c.b();
            this.d.b();
        }
    }

    /* JADX WARN: Code duplicated, block: B:139:0x01bc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    /* JADX WARN: Code duplicated, block: B:92:0x01b2 A[Catch: all -> 0x01ca, TRY_LEAVE, TryCatch #6 {all -> 0x01ca, blocks: (B:90:0x01ac, B:92:0x01b2, B:94:0x01bc, B:95:0x01c1), top: B:133:0x01ac }] */
    @Override // androidx.room.coroutines.ConnectionPool
    public final Object j1(boolean z, Function2 function2, ContinuationImpl continuationImpl) throws Throwable {
        ConnectionPoolImpl$useConnection$1 connectionPoolImpl$useConnection$1;
        Ref$ObjectRef ref$ObjectRef;
        Throwable th;
        Pool pool;
        CoroutineContext context;
        Ref$ObjectRef ref$ObjectRef2;
        Pool pool2;
        Ref$ObjectRef ref$ObjectRef3;
        CoroutineContext coroutineContext;
        ConnectionPoolImpl connectionPoolImpl;
        boolean z2;
        Ref$ObjectRef ref$ObjectRef4;
        ConnectionPoolImpl connectionPoolImpl2;
        Ref$ObjectRef ref$ObjectRef5;
        PooledConnectionImpl pooledConnectionImpl;
        PooledConnectionImpl pooledConnectionImpl2;
        ConnectionPoolImpl connectionPoolImpl3 = this;
        boolean z3 = z;
        Function2 function3 = function2;
        if (continuationImpl instanceof ConnectionPoolImpl$useConnection$1) {
            connectionPoolImpl$useConnection$1 = (ConnectionPoolImpl$useConnection$1) continuationImpl;
            int i2 = connectionPoolImpl$useConnection$1.f19619k;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                connectionPoolImpl$useConnection$1.f19619k = i2 - Integer.MIN_VALUE;
            } else {
                connectionPoolImpl$useConnection$1 = new ConnectionPoolImpl$useConnection$1(connectionPoolImpl3, continuationImpl);
            }
        } else {
            connectionPoolImpl$useConnection$1 = new ConnectionPoolImpl$useConnection$1(connectionPoolImpl3, continuationImpl);
        }
        Object objF = connectionPoolImpl$useConnection$1.f19617i;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = connectionPoolImpl$useConnection$1.f19619k;
        try {
            if (i3 == 0) {
                ResultKt.b(objF);
                if (connectionPoolImpl3.f19608f.get()) {
                    SQLite.b(21, "Connection pool is closed");
                    throw null;
                }
                ThreadLocal threadLocal = connectionPoolImpl3.f19607e;
                PooledConnectionImpl pooledConnectionImpl3 = (PooledConnectionImpl) threadLocal.get();
                if (pooledConnectionImpl3 == null) {
                    ConnectionElement connectionElement = (ConnectionElement) connectionPoolImpl$useConnection$1.getContext().get(ConnectionElement.f19602c);
                    pooledConnectionImpl3 = connectionElement != null ? connectionElement.f19603b : null;
                }
                if (pooledConnectionImpl3 == null) {
                    Pool pool3 = z3 ? connectionPoolImpl3.f19606c : connectionPoolImpl3.d;
                    ref$ObjectRef = new Ref$ObjectRef();
                    try {
                        context = connectionPoolImpl$useConnection$1.getContext();
                        ref$ObjectRef2 = new Ref$ObjectRef();
                        try {
                            long j2 = connectionPoolImpl3.g;
                            ConnectionPoolImpl$acquireWithTimeout$2 connectionPoolImpl$acquireWithTimeout$2 = new ConnectionPoolImpl$acquireWithTimeout$2(ref$ObjectRef2, pool3, null);
                            connectionPoolImpl$useConnection$1.f19612b = connectionPoolImpl3;
                            connectionPoolImpl$useConnection$1.f19613c = (Serializable) function3;
                            connectionPoolImpl$useConnection$1.d = pool3;
                            connectionPoolImpl$useConnection$1.f19614e = ref$ObjectRef;
                            connectionPoolImpl$useConnection$1.f19615f = context;
                            connectionPoolImpl$useConnection$1.g = ref$ObjectRef2;
                            connectionPoolImpl$useConnection$1.f19616h = z3;
                            connectionPoolImpl$useConnection$1.f19619k = 3;
                            if (TimeoutKt.b(DelayKt.e(j2), connectionPoolImpl$acquireWithTimeout$2, connectionPoolImpl$useConnection$1) != coroutineSingletons) {
                                pool2 = pool3;
                                ref$ObjectRef3 = ref$ObjectRef;
                                coroutineContext = context;
                                connectionPoolImpl = connectionPoolImpl3;
                                z2 = z3;
                                ref$ObjectRef4 = ref$ObjectRef2;
                                ref$ObjectRef2 = ref$ObjectRef4;
                                z3 = z2;
                                ref$ObjectRef5 = ref$ObjectRef3;
                                connectionPoolImpl2 = connectionPoolImpl;
                                context = coroutineContext;
                                th = null;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            pool2 = pool3;
                            ref$ObjectRef3 = ref$ObjectRef;
                            Ref$ObjectRef ref$ObjectRef6 = ref$ObjectRef3;
                            connectionPoolImpl2 = connectionPoolImpl3;
                            ref$ObjectRef5 = ref$ObjectRef6;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        pool = pool3;
                        throw th;
                    }
                } else {
                    if (!z3 && pooledConnectionImpl3.f19646b) {
                        SQLite.b(1, "Cannot upgrade connection from reader to writer");
                        throw null;
                    }
                    if (connectionPoolImpl$useConnection$1.getContext().get(ConnectionElement.f19602c) == null) {
                        ConnectionElement connectionElement2 = new ConnectionElement(pooledConnectionImpl3);
                        threadLocal.getClass();
                        CoroutineContext coroutineContextD = CoroutineContext.Element.DefaultImpls.d(new ThreadLocalElement(pooledConnectionImpl3, threadLocal), connectionElement2);
                        ConnectionPoolImpl$useConnection$2 connectionPoolImpl$useConnection$2 = new ConnectionPoolImpl$useConnection$2(function3, pooledConnectionImpl3, null);
                        connectionPoolImpl$useConnection$1.f19619k = 1;
                        Object objF2 = BuildersKt.f(coroutineContextD, connectionPoolImpl$useConnection$2, connectionPoolImpl$useConnection$1);
                        if (objF2 != coroutineSingletons) {
                            return objF2;
                        }
                    } else {
                        connectionPoolImpl$useConnection$1.f19619k = 2;
                        Object objInvoke = function3.invoke(pooledConnectionImpl3, connectionPoolImpl$useConnection$1);
                        if (objInvoke != coroutineSingletons) {
                            return objInvoke;
                        }
                    }
                }
                return coroutineSingletons;
            }
            if (i3 == 1) {
                ResultKt.b(objF);
                return objF;
            }
            if (i3 == 2) {
                ResultKt.b(objF);
                return objF;
            }
            if (i3 != 3) {
                if (i3 != 4) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ref$ObjectRef5 = (Ref$ObjectRef) connectionPoolImpl$useConnection$1.f19613c;
                pool = (Pool) connectionPoolImpl$useConnection$1.f19612b;
                try {
                    ResultKt.b(objF);
                    try {
                        pooledConnectionImpl2 = (PooledConnectionImpl) ref$ObjectRef5.f71921b;
                        if (pooledConnectionImpl2 != null) {
                            if (pooledConnectionImpl2.d.compareAndSet(false, true)) {
                                try {
                                    SQLite.a(pooledConnectionImpl2.f19645a, "ROLLBACK TRANSACTION");
                                } catch (SQLException unused) {
                                }
                            }
                            ConnectionWithLock connectionWithLock = pooledConnectionImpl2.f19645a;
                            connectionWithLock.d = null;
                            connectionWithLock.f19626e = null;
                            pool.d(connectionWithLock);
                        }
                    } catch (Throwable unused2) {
                    }
                    return objF;
                } catch (Throwable th4) {
                    th = th4;
                    ref$ObjectRef = ref$ObjectRef5;
                    th = th;
                    try {
                        throw th;
                    } catch (Throwable th5) {
                        try {
                            PooledConnectionImpl pooledConnectionImpl4 = (PooledConnectionImpl) ref$ObjectRef.f71921b;
                            if (pooledConnectionImpl4 == null) {
                                throw th5;
                            }
                            if (pooledConnectionImpl4.d.compareAndSet(false, true)) {
                                try {
                                    SQLite.a(pooledConnectionImpl4.f19645a, "ROLLBACK TRANSACTION");
                                } catch (SQLException unused3) {
                                }
                            }
                            ConnectionWithLock connectionWithLock2 = pooledConnectionImpl4.f19645a;
                            connectionWithLock2.d = null;
                            connectionWithLock2.f19626e = null;
                            pool.d(connectionWithLock2);
                            throw th5;
                        } catch (Throwable th6) {
                            ExceptionsKt.a(th, th6);
                            throw th5;
                        }
                    }
                }
            }
            z2 = connectionPoolImpl$useConnection$1.f19616h;
            ref$ObjectRef4 = connectionPoolImpl$useConnection$1.g;
            CoroutineContext coroutineContext2 = connectionPoolImpl$useConnection$1.f19615f;
            ref$ObjectRef3 = connectionPoolImpl$useConnection$1.f19614e;
            pool2 = (Pool) connectionPoolImpl$useConnection$1.d;
            Function2 function4 = (Function2) connectionPoolImpl$useConnection$1.f19613c;
            connectionPoolImpl = (ConnectionPoolImpl) connectionPoolImpl$useConnection$1.f19612b;
            try {
                ResultKt.b(objF);
                coroutineContext = coroutineContext2;
                function3 = function4;
                ref$ObjectRef2 = ref$ObjectRef4;
                z3 = z2;
                ref$ObjectRef5 = ref$ObjectRef3;
                connectionPoolImpl2 = connectionPoolImpl;
                context = coroutineContext;
                th = null;
            } catch (Throwable th7) {
                th = th7;
                ref$ObjectRef2 = ref$ObjectRef4;
                z3 = z2;
                connectionPoolImpl3 = connectionPoolImpl;
                context = coroutineContext2;
                function3 = function4;
                Ref$ObjectRef ref$ObjectRef7 = ref$ObjectRef3;
                connectionPoolImpl2 = connectionPoolImpl3;
                ref$ObjectRef5 = ref$ObjectRef7;
            }
            Pair pair = new Pair(ref$ObjectRef2.f71921b, th);
            ConnectionWithLock connectionWithLock3 = (ConnectionWithLock) pair.f71705b;
            Throwable th8 = (Throwable) pair.f71706c;
            if (connectionWithLock3 != null) {
                context.getClass();
                connectionWithLock3.d = context;
                connectionWithLock3.f19626e = new Throwable();
                pooledConnectionImpl = new PooledConnectionImpl(connectionWithLock3, connectionPoolImpl2.f19606c != connectionPoolImpl2.d && z3);
            } else {
                pooledConnectionImpl = null;
            }
            ref$ObjectRef5.f71921b = pooledConnectionImpl;
            if (th8 instanceof TimeoutCancellationException) {
                connectionPoolImpl2.c(z3);
                throw null;
            }
            if (th8 != null) {
                throw th8;
            }
            if (pooledConnectionImpl == null) {
                throw new IllegalArgumentException("Required value was null.");
            }
            connectionPoolImpl2.getClass();
            ConnectionElement connectionElement3 = new ConnectionElement(pooledConnectionImpl);
            ThreadLocal threadLocal2 = connectionPoolImpl2.f19607e;
            threadLocal2.getClass();
            CoroutineContext coroutineContextD2 = CoroutineContext.Element.DefaultImpls.d(new ThreadLocalElement(pooledConnectionImpl, threadLocal2), connectionElement3);
            ConnectionPoolImpl$useConnection$4 connectionPoolImpl$useConnection$4 = new ConnectionPoolImpl$useConnection$4(function3, ref$ObjectRef5, null);
            connectionPoolImpl$useConnection$1.f19612b = pool2;
            connectionPoolImpl$useConnection$1.f19613c = ref$ObjectRef5;
            connectionPoolImpl$useConnection$1.d = null;
            connectionPoolImpl$useConnection$1.f19614e = null;
            connectionPoolImpl$useConnection$1.f19615f = null;
            connectionPoolImpl$useConnection$1.g = null;
            connectionPoolImpl$useConnection$1.f19619k = 4;
            objF = BuildersKt.f(coroutineContextD2, connectionPoolImpl$useConnection$4, connectionPoolImpl$useConnection$1);
            if (objF != coroutineSingletons) {
                pool = pool2;
                pooledConnectionImpl2 = (PooledConnectionImpl) ref$ObjectRef5.f71921b;
                if (pooledConnectionImpl2 != null) {
                    if (pooledConnectionImpl2.d.compareAndSet(false, true)) {
                        SQLite.a(pooledConnectionImpl2.f19645a, "ROLLBACK TRANSACTION");
                    }
                    ConnectionWithLock connectionWithLock4 = pooledConnectionImpl2.f19645a;
                    connectionWithLock4.d = null;
                    connectionWithLock4.f19626e = null;
                    pool.d(connectionWithLock4);
                }
                return objF;
            }
            return coroutineSingletons;
        } catch (Throwable th9) {
            th = th9;
            ref$ObjectRef = ref$ObjectRef5;
            pool = pool2;
            th = th;
            throw th;
        }
    }

    public ConnectionPoolImpl(final SQLiteDriver sQLiteDriver, final String str) {
        sQLiteDriver.getClass();
        str.getClass();
        this.f19607e = new ThreadLocal();
        this.f19608f = new AtomicBoolean(false);
        Duration.Companion companion = Duration.INSTANCE;
        this.g = DurationKt.g(30, DurationUnit.SECONDS);
        this.f19605b = sQLiteDriver;
        final int i2 = 2;
        Pool pool = new Pool(1, new Function0() { // from class: zo
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i6 = i2;
                String str2 = str;
                SQLiteDriver sQLiteDriver2 = sQLiteDriver;
                switch (i6) {
                    case 0:
                        SQLiteConnection sQLiteConnectionA = sQLiteDriver2.a(str2);
                        SQLite.a(sQLiteConnectionA, "PRAGMA query_only = 1");
                        return sQLiteConnectionA;
                    case 1:
                        return sQLiteDriver2.a(str2);
                    default:
                        return sQLiteDriver2.a(str2);
                }
            }
        });
        this.f19606c = pool;
        this.d = pool;
    }
}
