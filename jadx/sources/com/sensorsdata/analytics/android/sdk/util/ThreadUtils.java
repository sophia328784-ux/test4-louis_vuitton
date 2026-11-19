package com.sensorsdata.analytics.android.sdk.util;

import com.sensorsdata.analytics.android.sdk.SALog;
import defpackage.n00;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes3.dex */
public class ThreadUtils {
    private static final String TAG = "SA.ThreadUtils";
    private static final Map<Integer, Map<Integer, ExecutorService>> TYPE_PRIORITY_POOLS = new HashMap();
    private static final byte TYPE_SINGLE = -1;

    public static final class ThreadPoolExecutorUtil extends ThreadPoolExecutor implements AutoCloseable {
        private final AtomicInteger mSubmittedCount;
        private LinkedBlockingQueueUtil mWorkQueue;

        public ThreadPoolExecutorUtil(int i2, int i3, long j2, TimeUnit timeUnit, LinkedBlockingQueueUtil linkedBlockingQueueUtil, ThreadFactory threadFactory) {
            super(i2, i3, j2, timeUnit, linkedBlockingQueueUtil, threadFactory);
            this.mSubmittedCount = new AtomicInteger();
            linkedBlockingQueueUtil.mPool = this;
            this.mWorkQueue = linkedBlockingQueueUtil;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static ExecutorService createPool(int i2, int i3) {
            if (i2 != -1) {
                return new ThreadPoolExecutorUtil(i2, i2, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueueUtil(), new UtilsThreadFactory(n00.m(i2, "fixed(", ")"), i3));
            }
            return new ThreadPoolExecutorUtil(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueueUtil(), new UtilsThreadFactory("single", i3));
        }

        private int getSubmittedCount() {
            return this.mSubmittedCount.get();
        }

        @Override // java.util.concurrent.ThreadPoolExecutor
        public void afterExecute(Runnable runnable, Throwable th) {
            this.mSubmittedCount.decrementAndGet();
            super.afterExecute(runnable, th);
        }

        @Override // java.lang.AutoCloseable
        public final /* synthetic */ void close() {
            boolean zIsTerminated;
            if (this == ForkJoinPool.commonPool() || (zIsTerminated = isTerminated())) {
                return;
            }
            shutdown();
            boolean z = false;
            while (!zIsTerminated) {
                try {
                    zIsTerminated = awaitTermination(1L, TimeUnit.DAYS);
                } catch (InterruptedException unused) {
                    if (!z) {
                        shutdownNow();
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }

        @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            if (isShutdown()) {
                return;
            }
            this.mSubmittedCount.incrementAndGet();
            try {
                super.execute(runnable);
            } catch (RejectedExecutionException unused) {
                SALog.i(ThreadUtils.TAG, "This will not happen!");
                this.mWorkQueue.offer(runnable);
            } catch (Throwable unused2) {
                this.mSubmittedCount.decrementAndGet();
            }
        }
    }

    private static ExecutorService getPoolByTypeAndPriority(int i2, int i3) {
        ExecutorService executorServiceCreatePool;
        Map<Integer, Map<Integer, ExecutorService>> map = TYPE_PRIORITY_POOLS;
        synchronized (map) {
            try {
                Map<Integer, ExecutorService> map2 = map.get(Integer.valueOf(i2));
                if (map2 == null) {
                    ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
                    executorServiceCreatePool = ThreadPoolExecutorUtil.createPool(i2, i3);
                    concurrentHashMap.put(Integer.valueOf(i3), executorServiceCreatePool);
                    map.put(Integer.valueOf(i2), concurrentHashMap);
                } else {
                    executorServiceCreatePool = map2.get(Integer.valueOf(i3));
                    if (executorServiceCreatePool == null) {
                        executorServiceCreatePool = ThreadPoolExecutorUtil.createPool(i2, i3);
                        map2.put(Integer.valueOf(i3), executorServiceCreatePool);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return executorServiceCreatePool;
    }

    public static ExecutorService getSinglePool() {
        return getPoolByTypeAndPriority(-1);
    }

    public static ExecutorService getSinglePool(int i2) {
        return getPoolByTypeAndPriority(-1, i2);
    }

    public static final class LinkedBlockingQueueUtil extends LinkedBlockingQueue<Runnable> {
        private int mCapacity;
        private volatile ThreadPoolExecutorUtil mPool;

        public LinkedBlockingQueueUtil(boolean z) {
            this.mCapacity = Integer.MAX_VALUE;
            if (z) {
                this.mCapacity = 0;
            }
        }

        @Override // java.util.concurrent.LinkedBlockingQueue, java.util.Queue, java.util.concurrent.BlockingQueue
        public boolean offer(Runnable runnable) {
            if (this.mCapacity > size() || this.mPool == null || this.mPool.getPoolSize() >= this.mPool.getMaximumPoolSize()) {
                return super.offer(runnable);
            }
            return false;
        }

        public LinkedBlockingQueueUtil() {
            this.mCapacity = Integer.MAX_VALUE;
        }

        public LinkedBlockingQueueUtil(int i2) {
            this.mCapacity = i2;
        }
    }

    public static final class UtilsThreadFactory extends AtomicLong implements ThreadFactory {
        private static final AtomicInteger POOL_NUMBER = new AtomicInteger(1);
        private final boolean isDaemon;
        private final String namePrefix;
        private final int priority;

        public UtilsThreadFactory(String str, int i2, boolean z) {
            StringBuilder sbU = n00.u(str, "-pool-");
            sbU.append(POOL_NUMBER.getAndIncrement());
            sbU.append("-thread-");
            this.namePrefix = sbU.toString();
            this.priority = i2;
            this.isDaemon = z;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, this.namePrefix + getAndIncrement()) { // from class: com.sensorsdata.analytics.android.sdk.util.ThreadUtils.UtilsThreadFactory.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    try {
                        super.run();
                    } catch (Throwable unused) {
                        SALog.i("ThreadUtils", "Request threw uncaught throwable");
                    }
                }
            };
            thread.setDaemon(this.isDaemon);
            thread.setPriority(this.priority);
            return thread;
        }

        public UtilsThreadFactory(String str, int i2) {
            this(str, i2, false);
        }
    }

    private static ExecutorService getPoolByTypeAndPriority(int i2) {
        return getPoolByTypeAndPriority(i2, 5);
    }
}
