package com.perfectcorp.thirdparty.io.reactivex.internal.schedulers;

import com.perfectcorp.thirdparty.io.reactivex.Scheduler;
import com.perfectcorp.thirdparty.io.reactivex.disposables.CompositeDisposable;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class m extends Scheduler {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final i f43127b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ScheduledExecutorService f43128c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReference f43129a;

    public static final class a extends Scheduler.b {
        public ScheduledExecutorService g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public CompositeDisposable f43130h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public volatile boolean f43131i;

        @Override // com.perfectcorp.thirdparty.io.reactivex.Scheduler.b
        public final Disposable a(Runnable runnable, long j2, TimeUnit timeUnit) throws Throwable {
            if (this.f43131i) {
                return com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a;
            }
            k kVar = new k(runnable, this.f43130h);
            this.f43130h.b(kVar);
            ScheduledExecutorService scheduledExecutorService = this.g;
            try {
                kVar.a(j2 <= 0 ? scheduledExecutorService.submit((Callable) kVar) : scheduledExecutorService.schedule((Callable) kVar, j2, timeUnit));
                return kVar;
            } catch (RejectedExecutionException e2) {
                dispose();
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(e2);
                return com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a;
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() throws Throwable {
            if (this.f43131i) {
                return;
            }
            this.f43131i = true;
            this.f43130h.dispose();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.f43131i;
        }
    }

    static {
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(0);
        f43128c = scheduledExecutorServiceNewScheduledThreadPool;
        scheduledExecutorServiceNewScheduledThreadPool.shutdown();
        f43127b = new i("PfRxSingleScheduler", Math.max(1, Math.min(10, Integer.getInteger("pf.rx2.single-priority", 5).intValue())), true);
    }

    public m() {
        AtomicReference atomicReference = new AtomicReference();
        this.f43129a = atomicReference;
        boolean z = l.f43122a;
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, f43127b);
        if (l.f43122a && (scheduledExecutorServiceNewScheduledThreadPool instanceof ScheduledThreadPoolExecutor)) {
            l.d.put((ScheduledThreadPoolExecutor) scheduledExecutorServiceNewScheduledThreadPool, scheduledExecutorServiceNewScheduledThreadPool);
        }
        atomicReference.lazySet(scheduledExecutorServiceNewScheduledThreadPool);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Scheduler
    public final Scheduler.b a() {
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.f43129a.get();
        a aVar = new a();
        aVar.g = scheduledExecutorService;
        aVar.f43130h = new CompositeDisposable();
        return aVar;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Scheduler
    public final Disposable c(Runnable runnable, long j2, TimeUnit timeUnit) {
        j jVar = new j(runnable);
        AtomicReference atomicReference = this.f43129a;
        try {
            jVar.a(j2 <= 0 ? ((ScheduledExecutorService) atomicReference.get()).submit(jVar) : ((ScheduledExecutorService) atomicReference.get()).schedule(jVar, j2, timeUnit));
            return jVar;
        } catch (RejectedExecutionException e2) {
            com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(e2);
            return com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a;
        }
    }
}
