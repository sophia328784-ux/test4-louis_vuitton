package androidx.room.coroutines;

import android.database.sqlite.SQLiteDatabase;
import androidx.room.TransactionScope;
import androidx.room.Transactor;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.sqlite.driver.AndroidSQLiteConnection;
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
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0007B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;", "Landroidx/room/Transactor;", "Landroidx/room/coroutines/RawConnectionAccessor;", "Landroidx/sqlite/driver/AndroidSQLiteConnection;", "delegate", "<init>", "(Landroidx/sqlite/driver/AndroidSQLiteConnection;)V", "AndroidSQLiteDriverTransactor", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class AndroidSQLiteDriverPooledConnection implements Transactor, RawConnectionAccessor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AndroidSQLiteConnection f19595a;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0082\u0004\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection$AndroidSQLiteDriverTransactor;", "T", "Landroidx/room/TransactionScope;", "Landroidx/room/coroutines/RawConnectionAccessor;", "<init>", "(Landroidx/room/coroutines/AndroidSQLiteDriverPooledConnection;)V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public final class AndroidSQLiteDriverTransactor<T> implements TransactionScope<T>, RawConnectionAccessor {
        public AndroidSQLiteDriverTransactor() {
        }

        @Override // androidx.room.PooledConnection
        public final Object b(String str, Function1 function1, ContinuationImpl continuationImpl) {
            return AndroidSQLiteDriverPooledConnection.this.b(str, function1, continuationImpl);
        }

        @Override // androidx.room.coroutines.RawConnectionAccessor
        public final SQLiteConnection d() {
            return AndroidSQLiteDriverPooledConnection.this.f19595a;
        }
    }

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f19597a;

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
            f19597a = iArr;
        }
    }

    public AndroidSQLiteDriverPooledConnection(AndroidSQLiteConnection androidSQLiteConnection) {
        androidSQLiteConnection.getClass();
        this.f19595a = androidSQLiteConnection;
    }

    @Override // androidx.room.Transactor
    public final Object a(Transactor.SQLiteTransactionType sQLiteTransactionType, Function2 function2, SuspendLambda suspendLambda) {
        return e(sQLiteTransactionType, function2, suspendLambda);
    }

    @Override // androidx.room.PooledConnection
    public final Object b(String str, Function1 function1, ContinuationImpl continuationImpl) {
        SQLiteStatement sQLiteStatementT1 = this.f19595a.T1(str);
        try {
            Object objInvoke = function1.invoke(sQLiteStatementT1);
            AutoCloseableKt.a(sQLiteStatementT1, null);
            return objInvoke;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                AutoCloseableKt.a(sQLiteStatementT1, th);
                throw th2;
            }
        }
    }

    @Override // androidx.room.Transactor
    public final Boolean c(SuspendLambda suspendLambda) {
        return Boolean.valueOf(this.f19595a.f19906b.inTransaction());
    }

    @Override // androidx.room.coroutines.RawConnectionAccessor
    public final SQLiteConnection d() {
        return this.f19595a;
    }

    /* JADX WARN: Code duplicated, block: B:47:0x009a  */
    /* JADX WARN: Code duplicated, block: B:51:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object e(Transactor.SQLiteTransactionType sQLiteTransactionType, Function2 function2, ContinuationImpl continuationImpl) throws Throwable {
        AndroidSQLiteDriverPooledConnection$transaction$1 androidSQLiteDriverPooledConnection$transaction$1;
        AndroidSQLiteDriverPooledConnection androidSQLiteDriverPooledConnection;
        SQLiteDatabase sQLiteDatabase;
        if (continuationImpl instanceof AndroidSQLiteDriverPooledConnection$transaction$1) {
            androidSQLiteDriverPooledConnection$transaction$1 = (AndroidSQLiteDriverPooledConnection$transaction$1) continuationImpl;
            int i2 = androidSQLiteDriverPooledConnection$transaction$1.f19601f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                androidSQLiteDriverPooledConnection$transaction$1.f19601f = i2 - Integer.MIN_VALUE;
            } else {
                androidSQLiteDriverPooledConnection$transaction$1 = new AndroidSQLiteDriverPooledConnection$transaction$1(this, continuationImpl);
            }
        } else {
            androidSQLiteDriverPooledConnection$transaction$1 = new AndroidSQLiteDriverPooledConnection$transaction$1(this, continuationImpl);
        }
        Object obj = androidSQLiteDriverPooledConnection$transaction$1.d;
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = androidSQLiteDriverPooledConnection$transaction$1.f19601f;
        if (i3 == 0) {
            ResultKt.b(obj);
            SQLiteDatabase sQLiteDatabase2 = this.f19595a.f19906b;
            sQLiteDatabase2.inTransaction();
            int i4 = WhenMappings.f19597a[sQLiteTransactionType.ordinal()];
            if (i4 == 1 || i4 == 2) {
                sQLiteDatabase2.beginTransactionNonExclusive();
            } else {
                if (i4 != 3) {
                    v40.g();
                    return null;
                }
                sQLiteDatabase2.beginTransaction();
            }
            try {
                Object androidSQLiteDriverTransactor = new AndroidSQLiteDriverTransactor();
                androidSQLiteDriverPooledConnection$transaction$1.f19598b = this;
                androidSQLiteDriverPooledConnection$transaction$1.f19599c = sQLiteDatabase2;
                androidSQLiteDriverPooledConnection$transaction$1.f19601f = 1;
                Object objInvoke = function2.invoke(androidSQLiteDriverTransactor, androidSQLiteDriverPooledConnection$transaction$1);
                if (objInvoke == obj2) {
                    return obj2;
                }
                androidSQLiteDriverPooledConnection = this;
                sQLiteDatabase = sQLiteDatabase2;
                obj = objInvoke;
            } catch (ConnectionPool.RollbackException e2) {
                e = e2;
                androidSQLiteDriverPooledConnection = this;
                sQLiteDatabase = sQLiteDatabase2;
                Object obj3 = e.f19604b;
                sQLiteDatabase.endTransaction();
                if (!sQLiteDatabase.inTransaction()) {
                    androidSQLiteDriverPooledConnection.getClass();
                }
                return obj3;
            } catch (Throwable th) {
                th = th;
                androidSQLiteDriverPooledConnection = this;
                sQLiteDatabase = sQLiteDatabase2;
                sQLiteDatabase.endTransaction();
                if (!sQLiteDatabase.inTransaction()) {
                    androidSQLiteDriverPooledConnection.getClass();
                }
                throw th;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            sQLiteDatabase = androidSQLiteDriverPooledConnection$transaction$1.f19599c;
            androidSQLiteDriverPooledConnection = (AndroidSQLiteDriverPooledConnection) androidSQLiteDriverPooledConnection$transaction$1.f19598b;
            try {
                try {
                    ResultKt.b(obj);
                } catch (ConnectionPool.RollbackException e3) {
                    e = e3;
                    Object obj4 = e.f19604b;
                    sQLiteDatabase.endTransaction();
                    if (!sQLiteDatabase.inTransaction()) {
                        androidSQLiteDriverPooledConnection.getClass();
                    }
                    return obj4;
                }
            } catch (Throwable th2) {
                th = th2;
                sQLiteDatabase.endTransaction();
                if (!sQLiteDatabase.inTransaction()) {
                    androidSQLiteDriverPooledConnection.getClass();
                }
                throw th;
            }
        }
        sQLiteDatabase.setTransactionSuccessful();
        sQLiteDatabase.endTransaction();
        if (!sQLiteDatabase.inTransaction()) {
            androidSQLiteDriverPooledConnection.getClass();
        }
        return obj;
    }
}
