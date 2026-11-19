package androidx.room.driver;

import androidx.room.TransactionScope;
import androidx.room.Transactor;
import androidx.room.coroutines.ConnectionPool;
import androidx.room.coroutines.RawConnectionAccessor;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.db.SupportSQLiteDatabase;
import defpackage.md;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0007B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Landroidx/room/driver/SupportSQLitePooledConnection;", "Landroidx/room/Transactor;", "Landroidx/room/coroutines/RawConnectionAccessor;", "Landroidx/room/driver/SupportSQLiteConnection;", "delegate", "<init>", "(Landroidx/room/driver/SupportSQLiteConnection;)V", "SupportSQLiteTransactor", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class SupportSQLitePooledConnection implements Transactor, RawConnectionAccessor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SupportSQLiteConnection f19682a;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/room/driver/SupportSQLitePooledConnection$SupportSQLiteTransactor;", "T", "Landroidx/room/TransactionScope;", "Landroidx/room/coroutines/RawConnectionAccessor;", "<init>", "(Landroidx/room/driver/SupportSQLitePooledConnection;)V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public final class SupportSQLiteTransactor<T> implements TransactionScope<T>, RawConnectionAccessor {
        public SupportSQLiteTransactor() {
        }

        @Override // androidx.room.PooledConnection
        public final Object b(String str, Function1 function1, ContinuationImpl continuationImpl) {
            return SupportSQLitePooledConnection.this.b(str, function1, continuationImpl);
        }

        @Override // androidx.room.coroutines.RawConnectionAccessor
        public final SQLiteConnection d() {
            return SupportSQLitePooledConnection.this.f19682a;
        }
    }

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f19684a;

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
            f19684a = iArr;
        }
    }

    public SupportSQLitePooledConnection(SupportSQLiteConnection supportSQLiteConnection) {
        supportSQLiteConnection.getClass();
        this.f19682a = supportSQLiteConnection;
    }

    @Override // androidx.room.Transactor
    public final Object a(Transactor.SQLiteTransactionType sQLiteTransactionType, Function2 function2, SuspendLambda suspendLambda) {
        return e(sQLiteTransactionType, function2, suspendLambda);
    }

    @Override // androidx.room.PooledConnection
    public final Object b(String str, Function1 function1, ContinuationImpl continuationImpl) {
        SupportSQLiteStatement supportSQLiteStatementT1 = this.f19682a.T1(str);
        try {
            Object objInvoke = function1.invoke(supportSQLiteStatementT1);
            AutoCloseableKt.a(supportSQLiteStatementT1, null);
            return objInvoke;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                AutoCloseableKt.a(supportSQLiteStatementT1, th);
                throw th2;
            }
        }
    }

    @Override // androidx.room.Transactor
    public final Boolean c(SuspendLambda suspendLambda) {
        return Boolean.valueOf(this.f19682a.f19679b.z1());
    }

    @Override // androidx.room.coroutines.RawConnectionAccessor
    public final SQLiteConnection d() {
        return this.f19682a;
    }

    /* JADX WARN: Code duplicated, block: B:47:0x009a  */
    /* JADX WARN: Code duplicated, block: B:51:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object e(Transactor.SQLiteTransactionType sQLiteTransactionType, Function2 function2, ContinuationImpl continuationImpl) throws Throwable {
        SupportSQLitePooledConnection$transaction$1 supportSQLitePooledConnection$transaction$1;
        SupportSQLitePooledConnection supportSQLitePooledConnection;
        SupportSQLiteDatabase supportSQLiteDatabase;
        if (continuationImpl instanceof SupportSQLitePooledConnection$transaction$1) {
            supportSQLitePooledConnection$transaction$1 = (SupportSQLitePooledConnection$transaction$1) continuationImpl;
            int i2 = supportSQLitePooledConnection$transaction$1.f19688f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                supportSQLitePooledConnection$transaction$1.f19688f = i2 - Integer.MIN_VALUE;
            } else {
                supportSQLitePooledConnection$transaction$1 = new SupportSQLitePooledConnection$transaction$1(this, continuationImpl);
            }
        } else {
            supportSQLitePooledConnection$transaction$1 = new SupportSQLitePooledConnection$transaction$1(this, continuationImpl);
        }
        Object obj = supportSQLitePooledConnection$transaction$1.d;
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = supportSQLitePooledConnection$transaction$1.f19688f;
        if (i3 == 0) {
            ResultKt.b(obj);
            SupportSQLiteDatabase supportSQLiteDatabase2 = this.f19682a.f19679b;
            supportSQLiteDatabase2.z1();
            int i4 = WhenMappings.f19684a[sQLiteTransactionType.ordinal()];
            if (i4 == 1) {
                supportSQLiteDatabase2.W0();
            } else if (i4 == 2) {
                supportSQLiteDatabase2.b0();
            } else {
                if (i4 != 3) {
                    v40.g();
                    return null;
                }
                supportSQLiteDatabase2.P();
            }
            try {
                Object supportSQLiteTransactor = new SupportSQLiteTransactor();
                supportSQLitePooledConnection$transaction$1.f19685b = this;
                supportSQLitePooledConnection$transaction$1.f19686c = supportSQLiteDatabase2;
                supportSQLitePooledConnection$transaction$1.f19688f = 1;
                Object objInvoke = function2.invoke(supportSQLiteTransactor, supportSQLitePooledConnection$transaction$1);
                if (objInvoke == obj2) {
                    return obj2;
                }
                supportSQLitePooledConnection = this;
                supportSQLiteDatabase = supportSQLiteDatabase2;
                obj = objInvoke;
            } catch (ConnectionPool.RollbackException e2) {
                e = e2;
                supportSQLitePooledConnection = this;
                supportSQLiteDatabase = supportSQLiteDatabase2;
                Object obj3 = e.f19604b;
                supportSQLiteDatabase.t0();
                if (!supportSQLiteDatabase.z1()) {
                    supportSQLitePooledConnection.getClass();
                }
                return obj3;
            } catch (Throwable th) {
                th = th;
                supportSQLitePooledConnection = this;
                supportSQLiteDatabase = supportSQLiteDatabase2;
                supportSQLiteDatabase.t0();
                if (!supportSQLiteDatabase.z1()) {
                    supportSQLitePooledConnection.getClass();
                }
                throw th;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            supportSQLiteDatabase = supportSQLitePooledConnection$transaction$1.f19686c;
            supportSQLitePooledConnection = (SupportSQLitePooledConnection) supportSQLitePooledConnection$transaction$1.f19685b;
            try {
                try {
                    ResultKt.b(obj);
                } catch (ConnectionPool.RollbackException e3) {
                    e = e3;
                    Object obj4 = e.f19604b;
                    supportSQLiteDatabase.t0();
                    if (!supportSQLiteDatabase.z1()) {
                        supportSQLitePooledConnection.getClass();
                    }
                    return obj4;
                }
            } catch (Throwable th2) {
                th = th2;
                supportSQLiteDatabase.t0();
                if (!supportSQLiteDatabase.z1()) {
                    supportSQLitePooledConnection.getClass();
                }
                throw th;
            }
        }
        supportSQLiteDatabase.a0();
        supportSQLiteDatabase.t0();
        if (!supportSQLiteDatabase.z1()) {
            supportSQLitePooledConnection.getClass();
        }
        return obj;
    }
}
