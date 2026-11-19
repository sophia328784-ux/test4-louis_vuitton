package io.reactivex.rxjava3.core;

import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import io.reactivex.rxjava3.internal.schedulers.NewThreadWorker;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import io.reactivex.rxjava3.schedulers.SchedulerRunnableIntrospection;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Scheduler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f70026a = Boolean.getBoolean("rx3.scheduler.use-nanotime");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final long f70027b;

    public static final class DisposeTask implements Disposable, Runnable, SchedulerRunnableIntrospection {
        final Runnable decoratedRun;
        Thread runner;
        final Worker w;

        public DisposeTask(Runnable runnable, Worker worker) {
            this.decoratedRun = runnable;
            this.w = worker;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            if (this.runner == Thread.currentThread()) {
                Worker worker = this.w;
                if (worker instanceof NewThreadWorker) {
                    NewThreadWorker newThreadWorker = (NewThreadWorker) worker;
                    if (newThreadWorker.f71099c) {
                        return;
                    }
                    newThreadWorker.f71099c = true;
                    newThreadWorker.f71098b.shutdown();
                    return;
                }
            }
            this.w.dispose();
        }

        public Runnable getWrappedRunnable() {
            return this.decoratedRun;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.w.isDisposed();
        }

        @Override // java.lang.Runnable
        public void run() {
            this.runner = Thread.currentThread();
            try {
                this.decoratedRun.run();
                dispose();
                this.runner = null;
            } catch (Throwable th) {
                try {
                    RxJavaPlugins.b(th);
                    throw th;
                } catch (Throwable th2) {
                    dispose();
                    this.runner = null;
                    throw th2;
                }
            }
        }
    }

    public static final class PeriodicDirectTask implements Disposable, Runnable, SchedulerRunnableIntrospection {
        volatile boolean disposed;
        final Runnable run;
        final Worker worker;

        public PeriodicDirectTask(Runnable runnable, Worker worker) {
            this.run = runnable;
            this.worker = worker;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            this.disposed = true;
            this.worker.dispose();
        }

        public Runnable getWrappedRunnable() {
            return this.run;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.disposed;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.disposed) {
                return;
            }
            try {
                this.run.run();
            } catch (Throwable th) {
                dispose();
                RxJavaPlugins.b(th);
                throw th;
            }
        }
    }

    public static abstract class Worker implements Disposable {

        public final class PeriodicTask implements Runnable, SchedulerRunnableIntrospection {
            long count;
            final Runnable decoratedRun;
            long lastNowNanoseconds;
            final long periodInNanoseconds;
            final SequentialDisposable sd;
            long startInNanoseconds;

            public PeriodicTask(long j2, Runnable runnable, long j3, SequentialDisposable sequentialDisposable, long j4) {
                this.decoratedRun = runnable;
                this.sd = sequentialDisposable;
                this.periodInNanoseconds = j4;
                this.lastNowNanoseconds = j3;
                this.startInNanoseconds = j2;
            }

            public Runnable getWrappedRunnable() {
                return this.decoratedRun;
            }

            /* JADX WARN: Code duplicated, block: B:10:0x0034  */
            @Override // java.lang.Runnable
            public void run() {
                long j2;
                this.decoratedRun.run();
                if (this.sd.isDisposed()) {
                    return;
                }
                Worker worker = Worker.this;
                TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                long jNow = worker.now(timeUnit);
                long j3 = Scheduler.f70027b;
                long j4 = jNow + j3;
                long j5 = this.lastNowNanoseconds;
                if (j4 >= j5) {
                    long j6 = this.periodInNanoseconds;
                    if (jNow >= j5 + j6 + j3) {
                        long j7 = this.periodInNanoseconds;
                        j2 = jNow + j7;
                        long j8 = this.count + 1;
                        this.count = j8;
                        this.startInNanoseconds = j2 - (j7 * j8);
                    } else {
                        long j9 = this.startInNanoseconds;
                        long j10 = this.count + 1;
                        this.count = j10;
                        j2 = (j10 * j6) + j9;
                    }
                } else {
                    long j11 = this.periodInNanoseconds;
                    j2 = jNow + j11;
                    long j12 = this.count + 1;
                    this.count = j12;
                    this.startInNanoseconds = j2 - (j11 * j12);
                }
                this.lastNowNanoseconds = jNow;
                SequentialDisposable sequentialDisposable = this.sd;
                Disposable disposableSchedule = Worker.this.schedule(this, j2 - jNow, timeUnit);
                sequentialDisposable.getClass();
                DisposableHelper.c(sequentialDisposable, disposableSchedule);
            }
        }

        public long now(TimeUnit timeUnit) {
            return Scheduler.a(timeUnit);
        }

        public Disposable schedule(Runnable runnable) {
            return schedule(runnable, 0L, TimeUnit.NANOSECONDS);
        }

        public abstract Disposable schedule(Runnable runnable, long j2, TimeUnit timeUnit);

        public Disposable schedulePeriodically(Runnable runnable, long j2, long j3, TimeUnit timeUnit) {
            SequentialDisposable sequentialDisposable = new SequentialDisposable();
            SequentialDisposable sequentialDisposable2 = new SequentialDisposable(sequentialDisposable);
            Objects.requireNonNull(runnable, "run is null");
            long nanos = timeUnit.toNanos(j3);
            long jNow = now(TimeUnit.NANOSECONDS);
            Disposable disposableSchedule = schedule(new PeriodicTask(timeUnit.toNanos(j2) + jNow, runnable, jNow, sequentialDisposable2, nanos), j2, timeUnit);
            if (disposableSchedule == EmptyDisposable.INSTANCE) {
                return disposableSchedule;
            }
            DisposableHelper.c(sequentialDisposable, disposableSchedule);
            return sequentialDisposable2;
        }
    }

    static {
        long nanos;
        long jLongValue = Long.getLong("rx3.scheduler.drift-tolerance", 15L).longValue();
        String property = System.getProperty("rx3.scheduler.drift-tolerance-unit", "minutes");
        if ("seconds".equalsIgnoreCase(property)) {
            nanos = TimeUnit.SECONDS.toNanos(jLongValue);
        } else {
            nanos = "milliseconds".equalsIgnoreCase(property) ? TimeUnit.MILLISECONDS.toNanos(jLongValue) : TimeUnit.MINUTES.toNanos(jLongValue);
        }
        f70027b = nanos;
    }

    public static long a(TimeUnit timeUnit) {
        return !f70026a ? timeUnit.convert(System.currentTimeMillis(), TimeUnit.MILLISECONDS) : timeUnit.convert(System.nanoTime(), TimeUnit.NANOSECONDS);
    }

    public abstract Worker b();

    public Disposable c(Runnable runnable) {
        return d(runnable, 0L, TimeUnit.NANOSECONDS);
    }

    public Disposable d(Runnable runnable, long j2, TimeUnit timeUnit) {
        Worker workerB = b();
        Objects.requireNonNull(runnable, "run is null");
        DisposeTask disposeTask = new DisposeTask(runnable, workerB);
        workerB.schedule(disposeTask, j2, timeUnit);
        return disposeTask;
    }

    public Disposable e(Runnable runnable, long j2, long j3, TimeUnit timeUnit) {
        Worker workerB = b();
        PeriodicDirectTask periodicDirectTask = new PeriodicDirectTask(runnable, workerB);
        Disposable disposableSchedulePeriodically = workerB.schedulePeriodically(periodicDirectTask, j2, j3, timeUnit);
        return disposableSchedulePeriodically == EmptyDisposable.INSTANCE ? disposableSchedulePeriodically : periodicDirectTask;
    }
}
