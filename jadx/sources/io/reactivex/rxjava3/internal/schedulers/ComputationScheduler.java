package io.reactivex.rxjava3.internal.schedulers;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.disposables.ListCompositeDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class ComputationScheduler extends Scheduler implements SchedulerMultiWorkerSupport {
    public static final FixedSchedulerPool d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final RxThreadFactory f71082e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f71083f;
    public static final PoolWorker g;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicReference f71084c;

    public static final class FixedSchedulerPool implements SchedulerMultiWorkerSupport {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f71089a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final PoolWorker[] f71090b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f71091c;

        public FixedSchedulerPool(int i2, ThreadFactory threadFactory) {
            this.f71089a = i2;
            this.f71090b = new PoolWorker[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                this.f71090b[i3] = new PoolWorker(threadFactory);
            }
        }

        public final PoolWorker a() {
            int i2 = this.f71089a;
            if (i2 == 0) {
                return ComputationScheduler.g;
            }
            long j2 = this.f71091c;
            this.f71091c = 1 + j2;
            return this.f71090b[(int) (j2 % ((long) i2))];
        }
    }

    public static final class PoolWorker extends NewThreadWorker {
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        int iIntValue = Integer.getInteger("rx3.computation-threads", 0).intValue();
        if (iIntValue > 0 && iIntValue <= iAvailableProcessors) {
            iAvailableProcessors = iIntValue;
        }
        f71083f = iAvailableProcessors;
        PoolWorker poolWorker = new PoolWorker(new RxThreadFactory("RxComputationShutdown"));
        g = poolWorker;
        poolWorker.dispose();
        RxThreadFactory rxThreadFactory = new RxThreadFactory("RxComputationThreadPool", Math.max(1, Math.min(10, Integer.getInteger("rx3.computation-priority", 5).intValue())), true);
        f71082e = rxThreadFactory;
        FixedSchedulerPool fixedSchedulerPool = new FixedSchedulerPool(0, rxThreadFactory);
        d = fixedSchedulerPool;
        for (PoolWorker poolWorker2 : fixedSchedulerPool.f71090b) {
            poolWorker2.dispose();
        }
    }

    public ComputationScheduler(ThreadFactory threadFactory) {
        FixedSchedulerPool fixedSchedulerPool = d;
        AtomicReference atomicReference = new AtomicReference(fixedSchedulerPool);
        this.f71084c = atomicReference;
        FixedSchedulerPool fixedSchedulerPool2 = new FixedSchedulerPool(f71083f, threadFactory);
        while (!atomicReference.compareAndSet(fixedSchedulerPool, fixedSchedulerPool2)) {
            if (atomicReference.get() != fixedSchedulerPool) {
                for (PoolWorker poolWorker : fixedSchedulerPool2.f71090b) {
                    poolWorker.dispose();
                }
                return;
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public final Scheduler.Worker b() {
        return new EventLoopWorker(((FixedSchedulerPool) this.f71084c.get()).a());
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public final Disposable d(Runnable runnable, long j2, TimeUnit timeUnit) {
        PoolWorker poolWorkerA = ((FixedSchedulerPool) this.f71084c.get()).a();
        poolWorkerA.getClass();
        Objects.requireNonNull(runnable, "run is null");
        ScheduledDirectTask scheduledDirectTask = new ScheduledDirectTask(runnable, true);
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = poolWorkerA.f71098b;
        try {
            scheduledDirectTask.setFuture(j2 <= 0 ? scheduledThreadPoolExecutor.submit(scheduledDirectTask) : scheduledThreadPoolExecutor.schedule(scheduledDirectTask, j2, timeUnit));
            return scheduledDirectTask;
        } catch (RejectedExecutionException e2) {
            RxJavaPlugins.b(e2);
            return EmptyDisposable.INSTANCE;
        }
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public final Disposable e(Runnable runnable, long j2, long j3, TimeUnit timeUnit) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = ((FixedSchedulerPool) this.f71084c.get()).a().f71098b;
        if (j3 <= 0) {
            InstantPeriodicTask instantPeriodicTask = new InstantPeriodicTask(runnable, scheduledThreadPoolExecutor);
            try {
                instantPeriodicTask.setFirst(j2 <= 0 ? scheduledThreadPoolExecutor.submit(instantPeriodicTask) : scheduledThreadPoolExecutor.schedule(instantPeriodicTask, j2, timeUnit));
                return instantPeriodicTask;
            } catch (RejectedExecutionException e2) {
                RxJavaPlugins.b(e2);
                return EmptyDisposable.INSTANCE;
            }
        }
        ScheduledDirectPeriodicTask scheduledDirectPeriodicTask = new ScheduledDirectPeriodicTask(runnable, true);
        try {
            scheduledDirectPeriodicTask.setFuture(scheduledThreadPoolExecutor.scheduleAtFixedRate(scheduledDirectPeriodicTask, j2, j3, timeUnit));
            return scheduledDirectPeriodicTask;
        } catch (RejectedExecutionException e3) {
            RxJavaPlugins.b(e3);
            return EmptyDisposable.INSTANCE;
        }
    }

    public static final class EventLoopWorker extends Scheduler.Worker {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ListCompositeDisposable f71085b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final CompositeDisposable f71086c;
        public final ListCompositeDisposable d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final PoolWorker f71087e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public volatile boolean f71088f;

        public EventLoopWorker(PoolWorker poolWorker) {
            this.f71087e = poolWorker;
            ListCompositeDisposable listCompositeDisposable = new ListCompositeDisposable();
            this.f71085b = listCompositeDisposable;
            CompositeDisposable compositeDisposable = new CompositeDisposable();
            this.f71086c = compositeDisposable;
            ListCompositeDisposable listCompositeDisposable2 = new ListCompositeDisposable();
            this.d = listCompositeDisposable2;
            listCompositeDisposable2.b(listCompositeDisposable);
            listCompositeDisposable2.b(compositeDisposable);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            if (this.f71088f) {
                return;
            }
            this.f71088f = true;
            this.d.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f71088f;
        }

        @Override // io.reactivex.rxjava3.core.Scheduler.Worker
        public final Disposable schedule(Runnable runnable) {
            return this.f71088f ? EmptyDisposable.INSTANCE : this.f71087e.a(runnable, 0L, TimeUnit.MILLISECONDS, this.f71085b);
        }

        @Override // io.reactivex.rxjava3.core.Scheduler.Worker
        public final Disposable schedule(Runnable runnable, long j2, TimeUnit timeUnit) {
            if (this.f71088f) {
                return EmptyDisposable.INSTANCE;
            }
            return this.f71087e.a(runnable, j2, timeUnit, this.f71086c);
        }
    }

    public ComputationScheduler() {
        this(f71082e);
    }
}
