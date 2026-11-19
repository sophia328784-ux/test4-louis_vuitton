package androidx.room.coroutines;

import androidx.room.TransactionScope;
import androidx.room.Transactor;
import androidx.room.concurrent.ThreadLocal_jvmAndroidKt;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import com.batch.android.s.b;
import defpackage.md;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.sync.Mutex;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002:\u0003\t\n\u000bB\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\f"}, d2 = {"Landroidx/room/coroutines/PooledConnectionImpl;", "Landroidx/room/Transactor;", "Landroidx/room/coroutines/RawConnectionAccessor;", "Landroidx/room/coroutines/ConnectionWithLock;", "delegate", "", "isReadOnly", "<init>", "(Landroidx/room/coroutines/ConnectionWithLock;Z)V", "TransactionItem", "TransactionImpl", "StatementWrapper", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class PooledConnectionImpl implements Transactor, RawConnectionAccessor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConnectionWithLock f19645a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f19646b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayDeque f19647c;
    public final AtomicBoolean d;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/room/coroutines/PooledConnectionImpl$StatementWrapper;", "Landroidx/sqlite/SQLiteStatement;", "delegate", "<init>", "(Landroidx/room/coroutines/PooledConnectionImpl;Landroidx/sqlite/SQLiteStatement;)V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public final class StatementWrapper implements SQLiteStatement {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SQLiteStatement f19648b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f19649c;
        public final /* synthetic */ PooledConnectionImpl d;

        public StatementWrapper(PooledConnectionImpl pooledConnectionImpl, SQLiteStatement sQLiteStatement) {
            sQLiteStatement.getClass();
            this.d = pooledConnectionImpl;
            this.f19648b = sQLiteStatement;
            this.f19649c = ThreadLocal_jvmAndroidKt.a();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void A(int i2, String str) {
            str.getClass();
            if (this.d.d.get()) {
                SQLite.b(21, "Statement is recycled");
                throw null;
            }
            if (this.f19649c == ThreadLocal_jvmAndroidKt.a()) {
                this.f19648b.A(i2, str);
            } else {
                SQLite.b(21, "Attempted to use statement on a different thread");
                throw null;
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final boolean Q1() {
            if (this.d.d.get()) {
                SQLite.b(21, "Statement is recycled");
                throw null;
            }
            if (this.f19649c == ThreadLocal_jvmAndroidKt.a()) {
                return this.f19648b.Q1();
            }
            SQLite.b(21, "Attempted to use statement on a different thread");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void a(int i2, long j2) {
            if (this.d.d.get()) {
                SQLite.b(21, "Statement is recycled");
                throw null;
            }
            if (this.f19649c == ThreadLocal_jvmAndroidKt.a()) {
                this.f19648b.a(i2, j2);
            } else {
                SQLite.b(21, "Attempted to use statement on a different thread");
                throw null;
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void b(int i2, byte[] bArr) {
            bArr.getClass();
            if (this.d.d.get()) {
                SQLite.b(21, "Statement is recycled");
                throw null;
            }
            if (this.f19649c == ThreadLocal_jvmAndroidKt.a()) {
                this.f19648b.b(i2, bArr);
            } else {
                SQLite.b(21, "Attempted to use statement on a different thread");
                throw null;
            }
        }

        @Override // java.lang.AutoCloseable
        public final void close() throws Exception {
            if (this.d.d.get()) {
                SQLite.b(21, "Statement is recycled");
                throw null;
            }
            if (this.f19649c == ThreadLocal_jvmAndroidKt.a()) {
                this.f19648b.close();
            } else {
                SQLite.b(21, "Attempted to use statement on a different thread");
                throw null;
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final byte[] getBlob(int i2) {
            if (this.d.d.get()) {
                SQLite.b(21, "Statement is recycled");
                throw null;
            }
            if (this.f19649c == ThreadLocal_jvmAndroidKt.a()) {
                return this.f19648b.getBlob(i2);
            }
            SQLite.b(21, "Attempted to use statement on a different thread");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final int getColumnCount() {
            if (this.d.d.get()) {
                SQLite.b(21, "Statement is recycled");
                throw null;
            }
            if (this.f19649c == ThreadLocal_jvmAndroidKt.a()) {
                return this.f19648b.getColumnCount();
            }
            SQLite.b(21, "Attempted to use statement on a different thread");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final String getColumnName(int i2) {
            if (this.d.d.get()) {
                SQLite.b(21, "Statement is recycled");
                throw null;
            }
            if (this.f19649c == ThreadLocal_jvmAndroidKt.a()) {
                return this.f19648b.getColumnName(i2);
            }
            SQLite.b(21, "Attempted to use statement on a different thread");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final long getLong(int i2) {
            if (this.d.d.get()) {
                SQLite.b(21, "Statement is recycled");
                throw null;
            }
            if (this.f19649c == ThreadLocal_jvmAndroidKt.a()) {
                return this.f19648b.getLong(i2);
            }
            SQLite.b(21, "Attempted to use statement on a different thread");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final boolean isNull(int i2) {
            if (this.d.d.get()) {
                SQLite.b(21, "Statement is recycled");
                throw null;
            }
            if (this.f19649c == ThreadLocal_jvmAndroidKt.a()) {
                return this.f19648b.isNull(i2);
            }
            SQLite.b(21, "Attempted to use statement on a different thread");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void l(int i2) {
            if (this.d.d.get()) {
                SQLite.b(21, "Statement is recycled");
                throw null;
            }
            if (this.f19649c == ThreadLocal_jvmAndroidKt.a()) {
                this.f19648b.l(i2);
            } else {
                SQLite.b(21, "Attempted to use statement on a different thread");
                throw null;
            }
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final String m1(int i2) {
            if (this.d.d.get()) {
                SQLite.b(21, "Statement is recycled");
                throw null;
            }
            if (this.f19649c == ThreadLocal_jvmAndroidKt.a()) {
                return this.f19648b.m1(i2);
            }
            SQLite.b(21, "Attempted to use statement on a different thread");
            throw null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public final void reset() {
            if (this.d.d.get()) {
                SQLite.b(21, "Statement is recycled");
                throw null;
            }
            if (this.f19649c == ThreadLocal_jvmAndroidKt.a()) {
                this.f19648b.reset();
            } else {
                SQLite.b(21, "Attempted to use statement on a different thread");
                throw null;
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/room/coroutines/PooledConnectionImpl$TransactionImpl;", "T", "Landroidx/room/TransactionScope;", "Landroidx/room/coroutines/RawConnectionAccessor;", "<init>", "(Landroidx/room/coroutines/PooledConnectionImpl;)V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public final class TransactionImpl<T> implements TransactionScope<T>, RawConnectionAccessor {
        public TransactionImpl() {
        }

        @Override // androidx.room.PooledConnection
        public final Object b(String str, Function1 function1, ContinuationImpl continuationImpl) {
            return PooledConnectionImpl.this.b(str, function1, continuationImpl);
        }

        @Override // androidx.room.coroutines.RawConnectionAccessor
        public final SQLiteConnection d() {
            return PooledConnectionImpl.this.f19645a;
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/room/coroutines/PooledConnectionImpl$TransactionItem;", "", "", b.a.f24015b, "", "shouldRollback", "<init>", "(IZ)V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class TransactionItem {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f19651a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f19652b;

        public TransactionItem(int i2, boolean z) {
            this.f19651a = i2;
            this.f19652b = z;
        }
    }

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f19653a;

        static {
            int[] iArr = new int[Transactor.SQLiteTransactionType.values().length];
            try {
                iArr[Transactor.SQLiteTransactionType.DEFERRED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Transactor.SQLiteTransactionType.IMMEDIATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Transactor.SQLiteTransactionType.EXCLUSIVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f19653a = iArr;
        }
    }

    public PooledConnectionImpl(ConnectionWithLock connectionWithLock, boolean z) {
        connectionWithLock.getClass();
        this.f19645a = connectionWithLock;
        this.f19646b = z;
        this.f19647c = new ArrayDeque();
        this.d = new AtomicBoolean(false);
    }

    @Override // androidx.room.Transactor
    public final Object a(Transactor.SQLiteTransactionType sQLiteTransactionType, Function2 function2, SuspendLambda suspendLambda) {
        if (this.d.get()) {
            SQLite.b(21, "Connection is recycled");
            throw null;
        }
        ConnectionElement connectionElement = (ConnectionElement) suspendLambda.getContext().get(ConnectionElement.f19602c);
        if (connectionElement != null && connectionElement.f19603b == this) {
            return g(sQLiteTransactionType, function2, suspendLambda);
        }
        SQLite.b(21, "Attempted to use connection on a different coroutine");
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.room.PooledConnection
    public final Object b(String str, Function1 function1, ContinuationImpl continuationImpl) {
        PooledConnectionImpl$usePrepared$1 pooledConnectionImpl$usePrepared$1;
        ConnectionWithLock connectionWithLock;
        Mutex mutex;
        if (continuationImpl instanceof PooledConnectionImpl$usePrepared$1) {
            pooledConnectionImpl$usePrepared$1 = (PooledConnectionImpl$usePrepared$1) continuationImpl;
            int i2 = pooledConnectionImpl$usePrepared$1.f19670h;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                pooledConnectionImpl$usePrepared$1.f19670h = i2 - Integer.MIN_VALUE;
            } else {
                pooledConnectionImpl$usePrepared$1 = new PooledConnectionImpl$usePrepared$1(this, continuationImpl);
            }
        } else {
            pooledConnectionImpl$usePrepared$1 = new PooledConnectionImpl$usePrepared$1(this, continuationImpl);
        }
        Object obj = pooledConnectionImpl$usePrepared$1.f19669f;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = pooledConnectionImpl$usePrepared$1.f19670h;
        if (i3 == 0) {
            ResultKt.b(obj);
            if (this.d.get()) {
                SQLite.b(21, "Connection is recycled");
                throw null;
            }
            ConnectionElement connectionElement = (ConnectionElement) pooledConnectionImpl$usePrepared$1.getContext().get(ConnectionElement.f19602c);
            if (connectionElement == null || connectionElement.f19603b != this) {
                SQLite.b(21, "Attempted to use connection on a different coroutine");
                throw null;
            }
            pooledConnectionImpl$usePrepared$1.f19666b = this;
            pooledConnectionImpl$usePrepared$1.f19667c = str;
            pooledConnectionImpl$usePrepared$1.d = function1;
            connectionWithLock = this.f19645a;
            pooledConnectionImpl$usePrepared$1.f19668e = connectionWithLock;
            pooledConnectionImpl$usePrepared$1.f19670h = 1;
            if (connectionWithLock.f19625c.c(pooledConnectionImpl$usePrepared$1) == coroutineSingletons) {
                mutex = connectionWithLock;
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            Mutex mutex2 = (Mutex) pooledConnectionImpl$usePrepared$1.f19668e;
            function1 = pooledConnectionImpl$usePrepared$1.d;
            str = pooledConnectionImpl$usePrepared$1.f19667c;
            PooledConnectionImpl pooledConnectionImpl = (PooledConnectionImpl) pooledConnectionImpl$usePrepared$1.f19666b;
            ResultKt.b(obj);
            mutex = mutex2;
            this = pooledConnectionImpl;
        }
        try {
            mutex = connectionWithLock;
            StatementWrapper statementWrapper = new StatementWrapper(this, this.f19645a.T1(str));
            try {
                Object objInvoke = function1.invoke(statementWrapper);
                AutoCloseableKt.a(statementWrapper, null);
                mutex.d(null);
                return objInvoke;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    AutoCloseableKt.a(statementWrapper, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            mutex.d(null);
            throw th3;
        }
    }

    @Override // androidx.room.Transactor
    public final Boolean c(SuspendLambda suspendLambda) {
        if (this.d.get()) {
            SQLite.b(21, "Connection is recycled");
            throw null;
        }
        ConnectionElement connectionElement = (ConnectionElement) suspendLambda.getContext().get(ConnectionElement.f19602c);
        if (connectionElement != null && connectionElement.f19603b == this) {
            return Boolean.valueOf(!this.f19647c.isEmpty());
        }
        SQLite.b(21, "Attempted to use connection on a different coroutine");
        throw null;
    }

    @Override // androidx.room.coroutines.RawConnectionAccessor
    public final SQLiteConnection d() {
        return this.f19645a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    public final Object e(Transactor.SQLiteTransactionType sQLiteTransactionType, ContinuationImpl continuationImpl) {
        PooledConnectionImpl$beginTransaction$1 pooledConnectionImpl$beginTransaction$1;
        ConnectionWithLock connectionWithLock;
        Mutex mutex;
        if (continuationImpl instanceof PooledConnectionImpl$beginTransaction$1) {
            pooledConnectionImpl$beginTransaction$1 = (PooledConnectionImpl$beginTransaction$1) continuationImpl;
            int i2 = pooledConnectionImpl$beginTransaction$1.g;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                pooledConnectionImpl$beginTransaction$1.g = i2 - Integer.MIN_VALUE;
            } else {
                pooledConnectionImpl$beginTransaction$1 = new PooledConnectionImpl$beginTransaction$1(this, continuationImpl);
            }
        } else {
            pooledConnectionImpl$beginTransaction$1 = new PooledConnectionImpl$beginTransaction$1(this, continuationImpl);
        }
        Object obj = pooledConnectionImpl$beginTransaction$1.f19656e;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = pooledConnectionImpl$beginTransaction$1.g;
        if (i3 == 0) {
            ResultKt.b(obj);
            pooledConnectionImpl$beginTransaction$1.f19654b = this;
            pooledConnectionImpl$beginTransaction$1.f19655c = sQLiteTransactionType;
            connectionWithLock = this.f19645a;
            pooledConnectionImpl$beginTransaction$1.d = connectionWithLock;
            pooledConnectionImpl$beginTransaction$1.g = 1;
            if (connectionWithLock.f19625c.c(pooledConnectionImpl$beginTransaction$1) == coroutineSingletons) {
                mutex = connectionWithLock;
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            Mutex mutex2 = (Mutex) pooledConnectionImpl$beginTransaction$1.d;
            sQLiteTransactionType = pooledConnectionImpl$beginTransaction$1.f19655c;
            PooledConnectionImpl pooledConnectionImpl = (PooledConnectionImpl) pooledConnectionImpl$beginTransaction$1.f19654b;
            ResultKt.b(obj);
            mutex = mutex2;
            this = pooledConnectionImpl;
        }
        try {
            mutex = connectionWithLock;
            ArrayDeque arrayDeque = this.f19647c;
            ConnectionWithLock connectionWithLock2 = this.f19645a;
            int i4 = arrayDeque.d;
            if (arrayDeque.isEmpty()) {
                int i5 = WhenMappings.f19653a[sQLiteTransactionType.ordinal()];
                if (i5 == 1) {
                    SQLite.a(connectionWithLock2, "BEGIN DEFERRED TRANSACTION");
                } else if (i5 == 2) {
                    SQLite.a(connectionWithLock2, "BEGIN IMMEDIATE TRANSACTION");
                } else {
                    if (i5 != 3) {
                        throw new NoWhenBranchMatchedException();
                    }
                    SQLite.a(connectionWithLock2, "BEGIN EXCLUSIVE TRANSACTION");
                }
            } else {
                SQLite.a(connectionWithLock2, "SAVEPOINT '" + i4 + '\'');
            }
            arrayDeque.addLast(new TransactionItem(i4, false));
            Unit unit = Unit.f71739a;
            mutex.d(null);
            return unit;
        } catch (Throwable th) {
            mutex.d(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object f(boolean z, ContinuationImpl continuationImpl) {
        PooledConnectionImpl$endTransaction$1 pooledConnectionImpl$endTransaction$1;
        ConnectionWithLock connectionWithLock;
        Mutex mutex;
        if (continuationImpl instanceof PooledConnectionImpl$endTransaction$1) {
            pooledConnectionImpl$endTransaction$1 = (PooledConnectionImpl$endTransaction$1) continuationImpl;
            int i2 = pooledConnectionImpl$endTransaction$1.g;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                pooledConnectionImpl$endTransaction$1.g = i2 - Integer.MIN_VALUE;
            } else {
                pooledConnectionImpl$endTransaction$1 = new PooledConnectionImpl$endTransaction$1(this, continuationImpl);
            }
        } else {
            pooledConnectionImpl$endTransaction$1 = new PooledConnectionImpl$endTransaction$1(this, continuationImpl);
        }
        Object obj = pooledConnectionImpl$endTransaction$1.f19660e;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = pooledConnectionImpl$endTransaction$1.g;
        if (i3 == 0) {
            ResultKt.b(obj);
            pooledConnectionImpl$endTransaction$1.f19658b = this;
            connectionWithLock = this.f19645a;
            pooledConnectionImpl$endTransaction$1.f19659c = connectionWithLock;
            pooledConnectionImpl$endTransaction$1.d = z;
            pooledConnectionImpl$endTransaction$1.g = 1;
            if (connectionWithLock.f19625c.c(pooledConnectionImpl$endTransaction$1) == coroutineSingletons) {
                mutex = connectionWithLock;
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            z = pooledConnectionImpl$endTransaction$1.d;
            Mutex mutex2 = (Mutex) pooledConnectionImpl$endTransaction$1.f19659c;
            PooledConnectionImpl pooledConnectionImpl = (PooledConnectionImpl) pooledConnectionImpl$endTransaction$1.f19658b;
            ResultKt.b(obj);
            mutex = mutex2;
            this = pooledConnectionImpl;
        }
        try {
            mutex = connectionWithLock;
            ArrayDeque arrayDeque = this.f19647c;
            ConnectionWithLock connectionWithLock2 = this.f19645a;
            if (arrayDeque.isEmpty()) {
                throw new IllegalStateException("Not in a transaction");
            }
            TransactionItem transactionItem = (TransactionItem) CollectionsKt.c0(arrayDeque);
            if (!z || transactionItem.f19652b) {
                if (arrayDeque.isEmpty()) {
                    SQLite.a(connectionWithLock2, "ROLLBACK TRANSACTION");
                } else {
                    SQLite.a(connectionWithLock2, "ROLLBACK TRANSACTION TO SAVEPOINT '" + transactionItem.f19651a + '\'');
                }
            } else if (arrayDeque.isEmpty()) {
                SQLite.a(connectionWithLock2, "END TRANSACTION");
            } else {
                SQLite.a(connectionWithLock2, "RELEASE SAVEPOINT '" + transactionItem.f19651a + '\'');
            }
            Unit unit = Unit.f71739a;
            mutex.d(null);
            return unit;
        } catch (Throwable th) {
            mutex.d(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:41:0x0095  */
    /* JADX WARN: Code duplicated, block: B:45:0x00a1 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:50:0x00aa A[Catch: all -> 0x00bc, TRY_LEAVE, TryCatch #4 {all -> 0x00bc, blocks: (B:48:0x00a6, B:50:0x00aa), top: B:77:0x00a6 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x00bb A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:66:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:68:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:79:0x00be A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00cc, code lost:
    
        if (r12.f(false, r0) == r1) goto L62;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object g(androidx.room.Transactor.SQLiteTransactionType r12, kotlin.jvm.functions.Function2 r13, kotlin.coroutines.jvm.internal.ContinuationImpl r14) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.coroutines.PooledConnectionImpl.g(androidx.room.Transactor$SQLiteTransactionType, kotlin.jvm.functions.Function2, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
