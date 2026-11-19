package com.perfectcorp.thirdparty.io.reactivex.internal.schedulers;

import com.perfectcorp.thirdparty.io.reactivex.Scheduler;
import com.perfectcorp.thirdparty.io.reactivex.disposables.CompositeDisposable;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class e extends Scheduler {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final i f43099b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final i f43100c;
    public static final long d = Long.getLong("pf.rx2.io-keep-alive-time", 60).longValue();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final c f43101e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f43102f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReference f43103a;

    public static final class b extends Scheduler.b {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final a f43109h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final c f43110i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final AtomicBoolean f43111j = new AtomicBoolean();
        public final CompositeDisposable g = new CompositeDisposable();

        public b(a aVar) {
            this.f43109h = aVar;
            this.f43110i = aVar.a();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.Scheduler.b
        public final Disposable a(Runnable runnable, long j2, TimeUnit timeUnit) {
            return this.g.f42595c ? com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a : this.f43110i.b(runnable, j2, timeUnit, this.g);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() throws Throwable {
            if (this.f43111j.compareAndSet(false, true)) {
                this.g.dispose();
                this.f43109h.a(this.f43110i);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.f43111j.get();
        }
    }

    public static final class c extends g {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public long f43112i;

        public c(ThreadFactory threadFactory) {
            super(threadFactory);
            this.f43112i = 0L;
        }
    }

    static {
        c cVar = new c(new i("PfRxCachedThreadSchedulerShutdown"));
        f43101e = cVar;
        cVar.dispose();
        int iMax = Math.max(1, Math.min(10, Integer.getInteger("pf.rx2.io-priority", 5).intValue()));
        i iVar = new i("PfRxCachedThreadScheduler", iMax);
        f43099b = iVar;
        f43100c = new i("PfRxCachedWorkerPoolEvictor", iMax);
        a aVar = new a(0L, null, iVar);
        f43102f = aVar;
        aVar.b();
    }

    public e() throws Throwable {
        a aVar = f43102f;
        AtomicReference atomicReference = new AtomicReference(aVar);
        this.f43103a = atomicReference;
        a aVar2 = new a(d, TimeUnit.SECONDS, f43099b);
        while (!atomicReference.compareAndSet(aVar, aVar2)) {
            if (atomicReference.get() != aVar) {
                aVar2.b();
                return;
            }
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Scheduler
    public final Scheduler.b a() {
        return new b((a) this.f43103a.get());
    }

    public static final class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final long f43104a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ConcurrentLinkedQueue<c> f43105b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private CompositeDisposable f43106c;
        private final ScheduledExecutorService d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final Future<?> f43107e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final ThreadFactory f43108f;

        public a(long j2, TimeUnit timeUnit, ThreadFactory threadFactory) {
            a aVar;
            ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool;
            ScheduledFuture<?> scheduledFutureScheduleWithFixedDelay;
            long nanos = timeUnit != null ? timeUnit.toNanos(j2) : 0L;
            this.f43104a = nanos;
            this.f43105b = new ConcurrentLinkedQueue<>();
            this.f43106c = new CompositeDisposable();
            this.f43108f = threadFactory;
            if (timeUnit != null) {
                scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, e.f43100c);
                aVar = this;
                scheduledFutureScheduleWithFixedDelay = scheduledExecutorServiceNewScheduledThreadPool.scheduleWithFixedDelay(aVar, nanos, nanos, TimeUnit.NANOSECONDS);
            } else {
                aVar = this;
                scheduledExecutorServiceNewScheduledThreadPool = null;
                scheduledFutureScheduleWithFixedDelay = null;
            }
            aVar.d = scheduledExecutorServiceNewScheduledThreadPool;
            aVar.f43107e = scheduledFutureScheduleWithFixedDelay;
        }

        public final c a() {
            if (this.f43106c.f42595c) {
                return e.f43101e;
            }
            while (!this.f43105b.isEmpty()) {
                c cVarPoll = this.f43105b.poll();
                if (cVarPoll != null) {
                    return cVarPoll;
                }
            }
            c cVar = new c(this.f43108f);
            this.f43106c.b(cVar);
            return cVar;
        }

        public final void b() throws Throwable {
            this.f43106c.dispose();
            Future<?> future = this.f43107e;
            if (future != null) {
                future.cancel(true);
            }
            ScheduledExecutorService scheduledExecutorService = this.d;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.shutdownNow();
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f43105b.isEmpty()) {
                return;
            }
            long jNanoTime = System.nanoTime();
            for (c cVar : this.f43105b) {
                if (cVar.f43112i > jNanoTime) {
                    return;
                }
                if (this.f43105b.remove(cVar)) {
                    this.f43106c.a(cVar);
                }
            }
        }

        public final void a(c cVar) {
            cVar.f43112i = System.nanoTime() + this.f43104a;
            this.f43105b.offer(cVar);
        }
    }
}
