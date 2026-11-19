package androidx.room.coroutines;

import androidx.collection.CircularArray;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import defpackage.md;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.Semaphore;
import kotlinx.coroutines.sync.SemaphoreAndMutexImpl;
import kotlinx.coroutines.sync.SemaphoreKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/room/coroutines/Pool;", "", "", "capacity", "Lkotlin/Function0;", "Landroidx/sqlite/SQLiteConnection;", "connectionFactory", "<init>", "(ILkotlin/jvm/functions/Function0;)V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class Pool {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f19636a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function0 f19637b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ReentrantLock f19638c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f19639e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ConnectionWithLock[] f19640f;
    public final Semaphore g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CircularArray f19641h;

    public Pool(int i2, Function0<? extends SQLiteConnection> function0) {
        function0.getClass();
        this.f19636a = i2;
        this.f19637b = function0;
        this.f19638c = new ReentrantLock();
        this.f19640f = new ConnectionWithLock[i2];
        this.g = SemaphoreKt.a(i2);
        this.f19641h = new CircularArray(i2);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    public final Object a(ContinuationImpl continuationImpl) {
        Pool$acquire$1 pool$acquire$1;
        if (continuationImpl instanceof Pool$acquire$1) {
            pool$acquire$1 = (Pool$acquire$1) continuationImpl;
            int i2 = pool$acquire$1.f19644e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                pool$acquire$1.f19644e = i2 - Integer.MIN_VALUE;
            } else {
                pool$acquire$1 = new Pool$acquire$1(this, continuationImpl);
            }
        } else {
            pool$acquire$1 = new Pool$acquire$1(this, continuationImpl);
        }
        Object obj = pool$acquire$1.f19643c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = pool$acquire$1.f19644e;
        Mutex mutex = null;
        Object[] objArr = 0;
        if (i3 == 0) {
            ResultKt.b(obj);
            pool$acquire$1.f19642b = this;
            pool$acquire$1.f19644e = 1;
            if (((SemaphoreAndMutexImpl) this.g).a(pool$acquire$1) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            this = (Pool) pool$acquire$1.f19642b;
            ResultKt.b(obj);
        }
        try {
            ReentrantLock reentrantLock = this.f19638c;
            CircularArray circularArray = this.f19641h;
            reentrantLock.lock();
            try {
                if (this.f19639e) {
                    SQLite.b(21, "Connection pool is closed");
                    throw null;
                }
                if (circularArray.f3233b == circularArray.f3234c && this.d < this.f19636a) {
                    ConnectionWithLock connectionWithLock = new ConnectionWithLock((SQLiteConnection) this.f19637b.mo47invoke(), mutex, 2, objArr == true ? 1 : 0);
                    ConnectionWithLock[] connectionWithLockArr = this.f19640f;
                    int i4 = this.d;
                    this.d = i4 + 1;
                    connectionWithLockArr[i4] = connectionWithLock;
                    circularArray.a(connectionWithLock);
                }
                int i5 = circularArray.f3233b;
                if (i5 == circularArray.f3234c) {
                    throw new ArrayIndexOutOfBoundsException();
                }
                Object[] objArr2 = circularArray.f3232a;
                Object obj2 = objArr2[i5];
                objArr2[i5] = null;
                circularArray.f3233b = (i5 + 1) & circularArray.d;
                ConnectionWithLock connectionWithLock2 = (ConnectionWithLock) obj2;
                reentrantLock.unlock();
                return connectionWithLock2;
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        } catch (Throwable th2) {
            ((SemaphoreAndMutexImpl) this.g).release();
            throw th2;
        }
    }

    public final void b() {
        ReentrantLock reentrantLock = this.f19638c;
        reentrantLock.lock();
        try {
            this.f19639e = true;
            for (ConnectionWithLock connectionWithLock : this.f19640f) {
                if (connectionWithLock != null) {
                    connectionWithLock.close();
                }
            }
            reentrantLock.unlock();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final void c(StringBuilder sb) {
        CircularArray circularArray = this.f19641h;
        ReentrantLock reentrantLock = this.f19638c;
        reentrantLock.lock();
        try {
            ListBuilder listBuilderV = CollectionsKt.v();
            int i2 = (circularArray.f3234c - circularArray.f3233b) & circularArray.d;
            for (int i3 = 0; i3 < i2; i3++) {
                if (i3 >= 0) {
                    int i4 = circularArray.f3234c;
                    int i5 = circularArray.f3233b;
                    int i6 = circularArray.d;
                    if (i3 < ((i4 - i5) & i6)) {
                        Object obj = circularArray.f3232a[(i5 + i3) & i6];
                        obj.getClass();
                        listBuilderV.add(obj);
                    }
                }
                throw new ArrayIndexOutOfBoundsException();
            }
            ListBuilder listBuilderR = CollectionsKt.r(listBuilderV);
            sb.append('\t' + toString() + " (");
            sb.append("capacity=" + this.f19636a + ", ");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("permits=");
            SemaphoreAndMutexImpl semaphoreAndMutexImpl = (SemaphoreAndMutexImpl) this.g;
            semaphoreAndMutexImpl.getClass();
            sb2.append(Math.max(SemaphoreAndMutexImpl.f75213h.get(semaphoreAndMutexImpl), 0));
            sb2.append(", ");
            sb.append(sb2.toString());
            sb.append("queue=(size=" + listBuilderR.getD() + ")[" + CollectionsKt.K(listBuilderR, null, null, null, null, 63) + "], ");
            sb.append(")");
            sb.append('\n');
            ConnectionWithLock[] connectionWithLockArr = this.f19640f;
            int length = connectionWithLockArr.length;
            int i7 = 0;
            for (int i8 = 0; i8 < length; i8++) {
                ConnectionWithLock connectionWithLock = connectionWithLockArr[i8];
                i7++;
                StringBuilder sb3 = new StringBuilder();
                sb3.append("\t\t[");
                sb3.append(i7);
                sb3.append("] - ");
                sb3.append(connectionWithLock != null ? connectionWithLock.f19624b.toString() : null);
                sb.append(sb3.toString());
                sb.append('\n');
                if (connectionWithLock != null) {
                    connectionWithLock.e(sb);
                }
            }
            reentrantLock.unlock();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final void d(ConnectionWithLock connectionWithLock) {
        connectionWithLock.getClass();
        ReentrantLock reentrantLock = this.f19638c;
        reentrantLock.lock();
        try {
            this.f19641h.a(connectionWithLock);
            reentrantLock.unlock();
            ((SemaphoreAndMutexImpl) this.g).release();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }
}
