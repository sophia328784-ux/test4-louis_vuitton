package com.perfectcorp.thirdparty.io.reactivex.internal.schedulers;

import com.perfectcorp.thirdparty.io.reactivex.Scheduler;
import com.perfectcorp.thirdparty.io.reactivex.disposables.CompositeDisposable;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class b extends Scheduler {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C0226b f43068b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final i f43069c;
    public static final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final c f43070e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReference f43071a;

    /* JADX INFO: renamed from: com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.b$b, reason: collision with other inner class name */
    public static final class C0226b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f43076a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final c[] f43077b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f43078c;

        public C0226b(int i2, ThreadFactory threadFactory) {
            this.f43076a = i2;
            this.f43077b = new c[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                this.f43077b[i3] = new c(threadFactory);
            }
        }
    }

    public static final class c extends g {
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        int iIntValue = Integer.getInteger("pf.rx2.computation-threads", 0).intValue();
        if (iIntValue > 0 && iIntValue <= iAvailableProcessors) {
            iAvailableProcessors = iIntValue;
        }
        d = iAvailableProcessors;
        c cVar = new c(new i("PfRxComputationShutdown"));
        f43070e = cVar;
        cVar.dispose();
        i iVar = new i("PfRxComputationThreadPool", Math.max(1, Math.min(10, Integer.getInteger("pf.rx2.computation-priority", 5).intValue())), true);
        f43069c = iVar;
        C0226b c0226b = new C0226b(0, iVar);
        f43068b = c0226b;
        for (c cVar2 : c0226b.f43077b) {
            cVar2.dispose();
        }
    }

    public b() {
        C0226b c0226b = f43068b;
        AtomicReference atomicReference = new AtomicReference(c0226b);
        this.f43071a = atomicReference;
        C0226b c0226b2 = new C0226b(d, f43069c);
        while (!atomicReference.compareAndSet(c0226b, c0226b2)) {
            if (atomicReference.get() != c0226b) {
                for (c cVar : c0226b2.f43077b) {
                    cVar.dispose();
                }
                return;
            }
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Scheduler
    public final Scheduler.b a() {
        c cVar;
        C0226b c0226b = (C0226b) this.f43071a.get();
        int i2 = c0226b.f43076a;
        if (i2 == 0) {
            cVar = f43070e;
        } else {
            c[] cVarArr = c0226b.f43077b;
            long j2 = c0226b.f43078c;
            c0226b.f43078c = 1 + j2;
            cVar = cVarArr[(int) (j2 % ((long) i2))];
        }
        return new a(cVar);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Scheduler
    public final Disposable c(Runnable runnable, long j2, TimeUnit timeUnit) {
        c cVar;
        C0226b c0226b = (C0226b) this.f43071a.get();
        int i2 = c0226b.f43076a;
        if (i2 == 0) {
            cVar = f43070e;
        } else {
            c[] cVarArr = c0226b.f43077b;
            long j3 = c0226b.f43078c;
            c0226b.f43078c = 1 + j3;
            cVar = cVarArr[(int) (j3 % ((long) i2))];
        }
        cVar.getClass();
        j jVar = new j(runnable);
        ScheduledExecutorService scheduledExecutorService = cVar.g;
        try {
            jVar.a(j2 <= 0 ? scheduledExecutorService.submit(jVar) : scheduledExecutorService.schedule(jVar, j2, timeUnit));
            return jVar;
        } catch (RejectedExecutionException e2) {
            com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(e2);
            return com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a;
        }
    }

    public static final class a extends Scheduler.b {
        public final com.perfectcorp.thirdparty.io.reactivex.internal.disposables.d g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final CompositeDisposable f43072h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.io.reactivex.internal.disposables.d f43073i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final c f43074j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public volatile boolean f43075k;

        public a(c cVar) {
            this.f43074j = cVar;
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.d dVar = new com.perfectcorp.thirdparty.io.reactivex.internal.disposables.d();
            this.g = dVar;
            CompositeDisposable compositeDisposable = new CompositeDisposable();
            this.f43072h = compositeDisposable;
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.d dVar2 = new com.perfectcorp.thirdparty.io.reactivex.internal.disposables.d();
            this.f43073i = dVar2;
            dVar2.b(dVar);
            dVar2.b(compositeDisposable);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.Scheduler.b
        public final Disposable a(Runnable runnable) {
            return this.f43075k ? com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a : this.f43074j.b(runnable, 0L, TimeUnit.MILLISECONDS, this.g);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() throws Throwable {
            if (this.f43075k) {
                return;
            }
            this.f43075k = true;
            this.f43073i.dispose();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.f43075k;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.Scheduler.b
        public final Disposable a(Runnable runnable, long j2, TimeUnit timeUnit) {
            return this.f43075k ? com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a : this.f43074j.b(runnable, j2, timeUnit, this.f43072h);
        }
    }
}
