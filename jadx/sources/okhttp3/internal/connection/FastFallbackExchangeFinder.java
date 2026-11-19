package okhttp3.internal.connection;

import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.TimeUnit;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskRunner;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lokhttp3/internal/connection/FastFallbackExchangeFinder;", "Lokhttp3/internal/connection/ExchangeFinder;", "Lokhttp3/internal/connection/RoutePlanner;", "routePlanner", "Lokhttp3/internal/concurrent/TaskRunner;", "taskRunner", "<init>", "(Lokhttp3/internal/connection/RoutePlanner;Lokhttp3/internal/concurrent/TaskRunner;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FastFallbackExchangeFinder implements ExchangeFinder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RoutePlanner f77112a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TaskRunner f77113b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f77114c;
    public final CopyOnWriteArrayList d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final BlockingQueue f77115e;

    public FastFallbackExchangeFinder(RoutePlanner routePlanner, TaskRunner taskRunner) {
        routePlanner.getClass();
        taskRunner.getClass();
        this.f77112a = routePlanner;
        this.f77113b = taskRunner;
        this.f77114c = Long.MIN_VALUE;
        this.d = new CopyOnWriteArrayList();
        this.f77115e = taskRunner.f77074b.b(new LinkedBlockingDeque());
    }

    @Override // okhttp3.internal.connection.ExchangeFinder
    public final RealConnection a() throws IOException {
        RoutePlanner.ConnectResult connectResultD;
        CopyOnWriteArrayList copyOnWriteArrayList = this.d;
        IOException iOException = null;
        while (true) {
            try {
                boolean zIsEmpty = copyOnWriteArrayList.isEmpty();
                RoutePlanner routePlanner = this.f77112a;
                if (zIsEmpty && !routePlanner.a(null)) {
                    c();
                    iOException.getClass();
                    throw iOException;
                }
                if (routePlanner.isCanceled()) {
                    throw new IOException("Canceled");
                }
                long jC = this.f77113b.f77074b.c();
                long j2 = this.f77114c - jC;
                if (copyOnWriteArrayList.isEmpty() || j2 <= 0) {
                    connectResultD = d();
                    j2 = 250000000;
                    this.f77114c = jC + 250000000;
                } else {
                    connectResultD = null;
                }
                if (connectResultD == null) {
                    TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                    if (copyOnWriteArrayList.isEmpty() || (connectResultD = (RoutePlanner.ConnectResult) this.f77115e.poll(j2, timeUnit)) == null) {
                        connectResultD = null;
                    } else {
                        copyOnWriteArrayList.remove(connectResultD.f77151a);
                    }
                    if (connectResultD == null) {
                    }
                }
                RoutePlanner.Plan plan = connectResultD.f77151a;
                boolean z = false;
                if (connectResultD.f77152b == null && connectResultD.f77153c == null) {
                    c();
                    if (!plan.isReady()) {
                        connectResultD = plan.getF77111b();
                    }
                    if (connectResultD.f77152b == null && connectResultD.f77153c == null) {
                        z = true;
                    }
                    if (z) {
                        RealConnection f77149b = connectResultD.f77151a.getF77149b();
                        c();
                        return f77149b;
                    }
                }
                Throwable th = connectResultD.f77153c;
                if (th != null) {
                    if (!(th instanceof IOException)) {
                        throw th;
                    }
                    if (iOException == null) {
                        iOException = (IOException) th;
                    } else {
                        ExceptionsKt.a(iOException, th);
                    }
                }
                RoutePlanner.Plan plan2 = connectResultD.f77152b;
                if (plan2 != null) {
                    routePlanner.c().addFirst(plan2);
                }
            } catch (Throwable th2) {
                c();
                throw th2;
            }
        }
    }

    @Override // okhttp3.internal.connection.ExchangeFinder
    /* JADX INFO: renamed from: b, reason: from getter */
    public final RoutePlanner getF77112a() {
        return this.f77112a;
    }

    public final void c() {
        CopyOnWriteArrayList copyOnWriteArrayList = this.d;
        Iterator it = copyOnWriteArrayList.iterator();
        it.getClass();
        while (it.hasNext()) {
            RoutePlanner.Plan plan = (RoutePlanner.Plan) it.next();
            plan.cancel();
            RoutePlanner.Plan planA = plan.a();
            if (planA != null) {
                this.f77112a.c().addLast(planA);
            }
        }
        copyOnWriteArrayList.clear();
    }

    public final RoutePlanner.ConnectResult d() {
        final RoutePlanner.Plan failedPlan;
        RoutePlanner routePlanner = this.f77112a;
        if (routePlanner.a(null)) {
            try {
                failedPlan = routePlanner.d();
            } catch (Throwable th) {
                failedPlan = new FailedPlan(th);
            }
            if (failedPlan.isReady()) {
                return new RoutePlanner.ConnectResult(failedPlan, null, null, 6, null);
            }
            if (failedPlan instanceof FailedPlan) {
                return ((FailedPlan) failedPlan).f77111b;
            }
            this.d.add(failedPlan);
            final String str = _UtilJvmKt.f77019b + " connect " + routePlanner.b().f76817i.h();
            this.f77113b.d().d(new Task(str) { // from class: okhttp3.internal.connection.FastFallbackExchangeFinder$launchTcpConnect$1
                @Override // okhttp3.internal.concurrent.Task
                public final long runOnce() throws InterruptedException {
                    RoutePlanner.ConnectResult connectResult;
                    RoutePlanner.Plan plan = failedPlan;
                    try {
                        connectResult = plan.f();
                    } catch (Throwable th2) {
                        connectResult = new RoutePlanner.ConnectResult(plan, null, th2, 2, null);
                    }
                    FastFallbackExchangeFinder fastFallbackExchangeFinder = this;
                    if (!fastFallbackExchangeFinder.d.contains(plan)) {
                        return -1L;
                    }
                    fastFallbackExchangeFinder.f77115e.put(connectResult);
                    return -1L;
                }
            }, 0L);
        }
        return null;
    }
}
