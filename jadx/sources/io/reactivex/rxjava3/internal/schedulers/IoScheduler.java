package io.reactivex.rxjava3.internal.schedulers;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class IoScheduler extends Scheduler {
    public static final RxThreadFactory d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final RxThreadFactory f71092e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final long f71093f = Long.getLong("rx3.io-keep-alive-time", 60).longValue();
    public static final ThreadWorker g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final boolean f71094h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final CachedWorkerPool f71095i;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicReference f71096c;

    public static final class CachedWorkerPool implements Runnable {
        final CompositeDisposable allWorkers;
        private final ScheduledExecutorService evictorService;
        private final Future<?> evictorTask;
        private final ConcurrentLinkedQueue<ThreadWorker> expiringWorkerQueue;
        private final long keepAliveTime;
        private final ThreadFactory threadFactory;

        public CachedWorkerPool(long j2, TimeUnit timeUnit, ThreadFactory threadFactory) {
            CachedWorkerPool cachedWorkerPool;
            ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool;
            ScheduledFuture<?> scheduledFutureScheduleWithFixedDelay;
            long nanos = timeUnit != null ? timeUnit.toNanos(j2) : 0L;
            this.keepAliveTime = nanos;
            this.expiringWorkerQueue = new ConcurrentLinkedQueue<>();
            this.allWorkers = new CompositeDisposable();
            this.threadFactory = threadFactory;
            if (timeUnit != null) {
                scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, IoScheduler.f71092e);
                cachedWorkerPool = this;
                scheduledFutureScheduleWithFixedDelay = scheduledExecutorServiceNewScheduledThreadPool.scheduleWithFixedDelay(cachedWorkerPool, nanos, nanos, TimeUnit.NANOSECONDS);
            } else {
                cachedWorkerPool = this;
                scheduledExecutorServiceNewScheduledThreadPool = null;
                scheduledFutureScheduleWithFixedDelay = null;
            }
            cachedWorkerPool.evictorService = scheduledExecutorServiceNewScheduledThreadPool;
            cachedWorkerPool.evictorTask = scheduledFutureScheduleWithFixedDelay;
        }

        public static void evictExpiredWorkers(ConcurrentLinkedQueue<ThreadWorker> concurrentLinkedQueue, CompositeDisposable compositeDisposable) {
            if (concurrentLinkedQueue.isEmpty()) {
                return;
            }
            long jNow = now();
            for (ThreadWorker threadWorker : concurrentLinkedQueue) {
                if (threadWorker.d > jNow) {
                    return;
                }
                if (concurrentLinkedQueue.remove(threadWorker)) {
                    compositeDisposable.a(threadWorker);
                }
            }
        }

        public static long now() {
            return System.nanoTime();
        }

        public ThreadWorker get() {
            if (this.allWorkers.f70029c) {
                return IoScheduler.g;
            }
            while (!this.expiringWorkerQueue.isEmpty()) {
                ThreadWorker threadWorkerPoll = this.expiringWorkerQueue.poll();
                if (threadWorkerPoll != null) {
                    return threadWorkerPoll;
                }
            }
            ThreadWorker threadWorker = new ThreadWorker(this.threadFactory);
            this.allWorkers.b(threadWorker);
            return threadWorker;
        }

        public void release(ThreadWorker threadWorker) {
            threadWorker.d = now() + this.keepAliveTime;
            this.expiringWorkerQueue.offer(threadWorker);
        }

        @Override // java.lang.Runnable
        public void run() {
            evictExpiredWorkers(this.expiringWorkerQueue, this.allWorkers);
        }

        public void shutdown() {
            this.allWorkers.dispose();
            Future<?> future = this.evictorTask;
            if (future != null) {
                future.cancel(true);
            }
            ScheduledExecutorService scheduledExecutorService = this.evictorService;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.shutdownNow();
            }
        }
    }

    public static final class EventLoopWorker extends Scheduler.Worker implements Runnable {
        private final CachedWorkerPool pool;
        private final ThreadWorker threadWorker;
        final AtomicBoolean once = new AtomicBoolean();
        private final CompositeDisposable tasks = new CompositeDisposable();

        public EventLoopWorker(CachedWorkerPool cachedWorkerPool) {
            this.pool = cachedWorkerPool;
            this.threadWorker = cachedWorkerPool.get();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            if (this.once.compareAndSet(false, true)) {
                this.tasks.dispose();
                if (IoScheduler.f71094h) {
                    this.threadWorker.a(this, 0L, TimeUnit.NANOSECONDS, null);
                } else {
                    this.pool.release(this.threadWorker);
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.once.get();
        }

        @Override // java.lang.Runnable
        public void run() {
            this.pool.release(this.threadWorker);
        }

        @Override // io.reactivex.rxjava3.core.Scheduler.Worker
        public Disposable schedule(Runnable runnable, long j2, TimeUnit timeUnit) {
            return this.tasks.f70029c ? EmptyDisposable.INSTANCE : this.threadWorker.a(runnable, j2, timeUnit, this.tasks);
        }
    }

    public static final class ThreadWorker extends NewThreadWorker {
        public long d;

        public ThreadWorker(ThreadFactory threadFactory) {
            super(threadFactory);
            this.d = 0L;
        }
    }

    static {
        ThreadWorker threadWorker = new ThreadWorker(new RxThreadFactory("RxCachedThreadSchedulerShutdown"));
        g = threadWorker;
        threadWorker.dispose();
        int iMax = Math.max(1, Math.min(10, Integer.getInteger("rx3.io-priority", 5).intValue()));
        RxThreadFactory rxThreadFactory = new RxThreadFactory("RxCachedThreadScheduler", iMax);
        d = rxThreadFactory;
        f71092e = new RxThreadFactory("RxCachedWorkerPoolEvictor", iMax);
        f71094h = Boolean.getBoolean("rx3.io-scheduled-release");
        CachedWorkerPool cachedWorkerPool = new CachedWorkerPool(0L, null, rxThreadFactory);
        f71095i = cachedWorkerPool;
        cachedWorkerPool.shutdown();
    }

    public IoScheduler(ThreadFactory threadFactory) {
        CachedWorkerPool cachedWorkerPool = f71095i;
        AtomicReference atomicReference = new AtomicReference(cachedWorkerPool);
        this.f71096c = atomicReference;
        CachedWorkerPool cachedWorkerPool2 = new CachedWorkerPool(f71093f, TimeUnit.SECONDS, threadFactory);
        while (!atomicReference.compareAndSet(cachedWorkerPool, cachedWorkerPool2)) {
            if (atomicReference.get() != cachedWorkerPool) {
                cachedWorkerPool2.shutdown();
                return;
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.Scheduler
    public final Scheduler.Worker b() {
        return new EventLoopWorker((CachedWorkerPool) this.f71096c.get());
    }

    public IoScheduler() {
        this(d);
    }
}
