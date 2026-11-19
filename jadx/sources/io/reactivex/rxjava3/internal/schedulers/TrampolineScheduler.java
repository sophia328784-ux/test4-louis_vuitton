package io.reactivex.rxjava3.internal.schedulers;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
public final class TrampolineScheduler extends Scheduler {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final TrampolineScheduler f71107c = new TrampolineScheduler();

    public static final class SleepingRunnable implements Runnable {
        private final long execTime;
        private final Runnable run;
        private final TrampolineWorker worker;

        public SleepingRunnable(Runnable runnable, TrampolineWorker trampolineWorker, long j2) {
            this.run = runnable;
            this.worker = trampolineWorker;
            this.execTime = j2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.worker.f71113e) {
                return;
            }
            long jNow = this.worker.now(TimeUnit.MILLISECONDS);
            long j2 = this.execTime;
            if (j2 > jNow) {
                try {
                    Thread.sleep(j2 - jNow);
                } catch (InterruptedException e2) {
                    Thread.currentThread().interrupt();
                    RxJavaPlugins.b(e2);
                    return;
                }
            }
            if (this.worker.f71113e) {
                return;
            }
            this.run.run();
        }
    }

    public static final class TimedRunnable implements Comparable<TimedRunnable> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Runnable f71108b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f71109c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public volatile boolean f71110e;

        public TimedRunnable(Runnable runnable, Long l, int i2) {
            this.f71108b = runnable;
            this.f71109c = l.longValue();
            this.d = i2;
        }

        @Override // java.lang.Comparable
        public final int compareTo(TimedRunnable timedRunnable) {
            TimedRunnable timedRunnable2 = timedRunnable;
            int iCompare = Long.compare(this.f71109c, timedRunnable2.f71109c);
            return iCompare == 0 ? Integer.compare(this.d, timedRunnable2.d) : iCompare;
        }
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public final Scheduler.Worker b() {
        return new TrampolineWorker();
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public final Disposable c(Runnable runnable) {
        runnable.run();
        return EmptyDisposable.INSTANCE;
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public final Disposable d(Runnable runnable, long j2, TimeUnit timeUnit) {
        try {
            timeUnit.sleep(j2);
            Objects.requireNonNull(runnable, "run is null");
            runnable.run();
        } catch (InterruptedException e2) {
            Thread.currentThread().interrupt();
            RxJavaPlugins.b(e2);
        }
        return EmptyDisposable.INSTANCE;
    }

    public static final class TrampolineWorker extends Scheduler.Worker {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final PriorityBlockingQueue f71111b = new PriorityBlockingQueue();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AtomicInteger f71112c = new AtomicInteger();
        public final AtomicInteger d = new AtomicInteger();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public volatile boolean f71113e;

        public final class AppendToQueueTask implements Runnable {
            final TimedRunnable timedRunnable;

            public AppendToQueueTask(TimedRunnable timedRunnable) {
                this.timedRunnable = timedRunnable;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.timedRunnable.f71110e = true;
                TrampolineWorker.this.f71111b.remove(this.timedRunnable);
            }
        }

        public final Disposable a(long j2, Runnable runnable) {
            if (this.f71113e) {
                return EmptyDisposable.INSTANCE;
            }
            TimedRunnable timedRunnable = new TimedRunnable(runnable, Long.valueOf(j2), this.d.incrementAndGet());
            this.f71111b.add(timedRunnable);
            if (this.f71112c.getAndIncrement() != 0) {
                return Disposable.f(new AppendToQueueTask(timedRunnable));
            }
            int iAddAndGet = 1;
            while (true) {
                boolean z = this.f71113e;
                PriorityBlockingQueue priorityBlockingQueue = this.f71111b;
                if (z) {
                    priorityBlockingQueue.clear();
                    return EmptyDisposable.INSTANCE;
                }
                TimedRunnable timedRunnable2 = (TimedRunnable) priorityBlockingQueue.poll();
                if (timedRunnable2 == null) {
                    iAddAndGet = this.f71112c.addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return EmptyDisposable.INSTANCE;
                    }
                } else if (!timedRunnable2.f71110e) {
                    timedRunnable2.f71108b.run();
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.f71113e = true;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f71113e;
        }

        @Override // io.reactivex.rxjava3.core.Scheduler.Worker
        public final Disposable schedule(Runnable runnable, long j2, TimeUnit timeUnit) {
            long millis = timeUnit.toMillis(j2) + now(TimeUnit.MILLISECONDS);
            return a(millis, new SleepingRunnable(runnable, this, millis));
        }

        @Override // io.reactivex.rxjava3.core.Scheduler.Worker
        public final Disposable schedule(Runnable runnable) {
            return a(now(TimeUnit.MILLISECONDS), runnable);
        }
    }
}
