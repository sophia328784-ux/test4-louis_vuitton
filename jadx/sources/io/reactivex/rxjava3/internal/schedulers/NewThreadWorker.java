package io.reactivex.rxjava3.internal.schedulers;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.disposables.DisposableContainer;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public class NewThreadWorker extends Scheduler.Worker {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ScheduledThreadPoolExecutor f71098b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile boolean f71099c;

    public NewThreadWorker(ThreadFactory threadFactory) {
        boolean z = SchedulerPoolFactory.f71102a;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, threadFactory);
        scheduledThreadPoolExecutor.setRemoveOnCancelPolicy(SchedulerPoolFactory.f71102a);
        this.f71098b = scheduledThreadPoolExecutor;
    }

    public final ScheduledRunnable a(Runnable runnable, long j2, TimeUnit timeUnit, DisposableContainer disposableContainer) {
        Objects.requireNonNull(runnable, "run is null");
        ScheduledRunnable scheduledRunnable = new ScheduledRunnable(runnable, disposableContainer);
        if (disposableContainer != null && !disposableContainer.b(scheduledRunnable)) {
            return scheduledRunnable;
        }
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = this.f71098b;
        try {
            scheduledRunnable.setFuture(j2 <= 0 ? scheduledThreadPoolExecutor.submit((Callable) scheduledRunnable) : scheduledThreadPoolExecutor.schedule((Callable) scheduledRunnable, j2, timeUnit));
            return scheduledRunnable;
        } catch (RejectedExecutionException e2) {
            if (disposableContainer != null) {
                disposableContainer.a(scheduledRunnable);
            }
            RxJavaPlugins.b(e2);
            return scheduledRunnable;
        }
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final void dispose() {
        if (this.f71099c) {
            return;
        }
        this.f71099c = true;
        this.f71098b.shutdownNow();
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final boolean isDisposed() {
        return this.f71099c;
    }

    @Override // io.reactivex.rxjava3.core.Scheduler.Worker
    public final Disposable schedule(Runnable runnable, long j2, TimeUnit timeUnit) {
        return this.f71099c ? EmptyDisposable.INSTANCE : a(runnable, j2, timeUnit, null);
    }

    @Override // io.reactivex.rxjava3.core.Scheduler.Worker
    public final Disposable schedule(Runnable runnable) {
        return schedule(runnable, 0L, null);
    }
}
