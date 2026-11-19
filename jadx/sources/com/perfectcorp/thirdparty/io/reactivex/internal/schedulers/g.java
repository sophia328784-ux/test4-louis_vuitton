package com.perfectcorp.thirdparty.io.reactivex.internal.schedulers;

import com.perfectcorp.thirdparty.io.reactivex.Scheduler;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.internal.disposables.DisposableContainer;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public class g extends Scheduler.b implements Disposable {
    public final ScheduledExecutorService g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile boolean f43115h;

    public g(ThreadFactory threadFactory) {
        boolean z = l.f43122a;
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, threadFactory);
        if (l.f43122a && (scheduledExecutorServiceNewScheduledThreadPool instanceof ScheduledThreadPoolExecutor)) {
            l.d.put((ScheduledThreadPoolExecutor) scheduledExecutorServiceNewScheduledThreadPool, scheduledExecutorServiceNewScheduledThreadPool);
        }
        this.g = scheduledExecutorServiceNewScheduledThreadPool;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Scheduler.b
    public final Disposable a(Runnable runnable, long j2, TimeUnit timeUnit) {
        return this.f43115h ? com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a : b(runnable, j2, timeUnit, null);
    }

    public final k b(Runnable runnable, long j2, TimeUnit timeUnit, DisposableContainer disposableContainer) {
        k kVar = new k(runnable, disposableContainer);
        if (disposableContainer != null && !disposableContainer.b(kVar)) {
            return kVar;
        }
        ScheduledExecutorService scheduledExecutorService = this.g;
        try {
            kVar.a(j2 <= 0 ? scheduledExecutorService.submit((Callable) kVar) : scheduledExecutorService.schedule((Callable) kVar, j2, timeUnit));
            return kVar;
        } catch (RejectedExecutionException e2) {
            if (disposableContainer != null) {
                disposableContainer.a(kVar);
            }
            com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(e2);
            return kVar;
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
    public final void dispose() {
        if (this.f43115h) {
            return;
        }
        this.f43115h = true;
        this.g.shutdownNow();
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return this.f43115h;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Scheduler.b
    public final Disposable a(Runnable runnable) {
        return a(runnable, 0L, null);
    }
}
