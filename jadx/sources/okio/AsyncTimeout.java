package okio;

import defpackage.a61;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Lokio/AsyncTimeout;", "Lokio/Timeout;", "<init>", "()V", "Watchdog", "Companion", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class AsyncTimeout extends Timeout {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Companion f77383h = new Companion(null);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final PriorityQueue f77384i = new PriorityQueue();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static AsyncTimeout f77385j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final ReentrantLock f77386k;
    public static final Condition l;
    public static final long m;
    public static final long n;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f77387e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f77388f = -1;
    public long g;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\b\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0007R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004R\u0014\u0010\f\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\u0004¨\u0006\r"}, d2 = {"Lokio/AsyncTimeout$Companion;", "", "", "TIMEOUT_WRITE_SIZE", "I", "", "IDLE_TIMEOUT_MILLIS", "J", "IDLE_TIMEOUT_NANOS", "STATE_IDLE", "STATE_IN_QUEUE", "STATE_TIMED_OUT", "STATE_CANCELED", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static final void a(Companion companion, AsyncTimeout asyncTimeout) {
            companion.getClass();
            if (AsyncTimeout.f77385j == null) {
                AsyncTimeout.f77385j = new AsyncTimeout();
                new Watchdog().start();
            }
            long jNanoTime = System.nanoTime();
            long j2 = asyncTimeout.f77457c;
            boolean z = asyncTimeout.f77455a;
            if (j2 != 0 && z) {
                asyncTimeout.g = Math.min(j2, asyncTimeout.c() - jNanoTime) + jNanoTime;
            } else if (j2 != 0) {
                asyncTimeout.g = jNanoTime + j2;
            } else {
                if (!z) {
                    a61.h();
                    return;
                }
                asyncTimeout.g = asyncTimeout.c();
            }
            PriorityQueue priorityQueue = AsyncTimeout.f77384i;
            priorityQueue.getClass();
            int i2 = priorityQueue.f77438a + 1;
            priorityQueue.f77438a = i2;
            AsyncTimeout[] asyncTimeoutArr = priorityQueue.f77439b;
            if (i2 == asyncTimeoutArr.length) {
                AsyncTimeout[] asyncTimeoutArr2 = new AsyncTimeout[i2 * 2];
                ArraysKt.n(asyncTimeoutArr, asyncTimeoutArr2, 0, 0, 14);
                priorityQueue.f77439b = asyncTimeoutArr2;
            }
            priorityQueue.a(i2, asyncTimeout);
            if (asyncTimeout.f77388f == 1) {
                AsyncTimeout.l.signal();
            }
        }

        public static AsyncTimeout b() throws InterruptedException {
            PriorityQueue priorityQueue = AsyncTimeout.f77384i;
            AsyncTimeout asyncTimeout = priorityQueue.f77439b[1];
            if (asyncTimeout == null) {
                long jNanoTime = System.nanoTime();
                AsyncTimeout.l.await(AsyncTimeout.m, TimeUnit.MILLISECONDS);
                if (priorityQueue.f77439b[1] != null || System.nanoTime() - jNanoTime < AsyncTimeout.n) {
                    return null;
                }
                return AsyncTimeout.f77385j;
            }
            long jNanoTime2 = asyncTimeout.g - System.nanoTime();
            if (jNanoTime2 > 0) {
                AsyncTimeout.l.await(jNanoTime2, TimeUnit.NANOSECONDS);
                return null;
            }
            priorityQueue.b(asyncTimeout);
            asyncTimeout.f77387e = 2;
            return asyncTimeout;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"Lokio/AsyncTimeout$Watchdog;", "Ljava/lang/Thread;", "<init>", "()V", "run", "", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Watchdog extends Thread {
        public Watchdog() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (true) {
                try {
                    AsyncTimeout.f77383h.getClass();
                    ReentrantLock reentrantLock = AsyncTimeout.f77386k;
                    reentrantLock.lock();
                    try {
                        AsyncTimeout asyncTimeoutB = Companion.b();
                        if (asyncTimeoutB == AsyncTimeout.f77385j) {
                            AsyncTimeout.f77385j = null;
                            reentrantLock.unlock();
                            return;
                        } else {
                            reentrantLock.unlock();
                            if (asyncTimeoutB != null) {
                                asyncTimeoutB.l();
                            }
                        }
                    } catch (Throwable th) {
                        reentrantLock.unlock();
                        throw th;
                    }
                } catch (InterruptedException unused) {
                }
            }
        }
    }

    static {
        ReentrantLock reentrantLock = new ReentrantLock();
        f77386k = reentrantLock;
        Condition conditionNewCondition = reentrantLock.newCondition();
        conditionNewCondition.getClass();
        l = conditionNewCondition;
        m = 60000L;
        n = TimeUnit.MILLISECONDS.toNanos(60000L);
    }

    public final void i() {
        long j2 = this.f77457c;
        boolean z = this.f77455a;
        if (j2 != 0 || z) {
            ReentrantLock reentrantLock = f77386k;
            reentrantLock.lock();
            try {
                if (this.f77387e != 0) {
                    throw new IllegalStateException("Unbalanced enter/exit");
                }
                this.f77387e = 1;
                Companion.a(f77383h, this);
                reentrantLock.unlock();
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }
    }

    public final boolean j() {
        ReentrantLock reentrantLock = f77386k;
        reentrantLock.lock();
        try {
            int i2 = this.f77387e;
            this.f77387e = 0;
            if (i2 != 1) {
                return i2 == 2;
            }
            f77384i.b(this);
            return false;
        } finally {
            reentrantLock.unlock();
        }
    }

    public IOException k(IOException iOException) {
        throw null;
    }

    public void l() {
    }
}
