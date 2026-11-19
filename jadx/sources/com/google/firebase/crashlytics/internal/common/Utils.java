package com.google.firebase.crashlytics.internal.common;

import android.os.Looper;
import com.google.android.gms.tasks.Task;
import com.google.firebase.crashlytics.internal.Logger;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import defpackage.bm;
import defpackage.ln0;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Utils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ExecutorService f34575a;

    static {
        final AtomicLong atomicLong = new AtomicLong(1L);
        ThreadFactory threadFactory = new ThreadFactory() { // from class: com.google.firebase.crashlytics.internal.common.ExecutorUtils$1
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(final Runnable runnable) {
                Thread threadNewThread = Executors.defaultThreadFactory().newThread(new BackgroundPriorityRunnable() { // from class: com.google.firebase.crashlytics.internal.common.ExecutorUtils$1.1
                    @Override // com.google.firebase.crashlytics.internal.common.BackgroundPriorityRunnable
                    public void onRun() {
                        runnable.run();
                    }
                });
                threadNewThread.setName("awaitEvenIfOnMainThread task continuation executor" + atomicLong.getAndIncrement());
                return threadNewThread;
            }
        };
        ThreadPoolExecutor.DiscardPolicy discardPolicy = new ThreadPoolExecutor.DiscardPolicy();
        final ExecutorService executorServiceUnconfigurableExecutorService = Executors.unconfigurableExecutorService(new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), threadFactory, discardPolicy));
        Runtime runtime = Runtime.getRuntime();
        final String str = "awaitEvenIfOnMainThread task continuation executor";
        final long j2 = 2;
        final TimeUnit timeUnit = TimeUnit.SECONDS;
        runtime.addShutdownHook(new Thread(new BackgroundPriorityRunnable() { // from class: com.google.firebase.crashlytics.internal.common.ExecutorUtils$2
            @Override // com.google.firebase.crashlytics.internal.common.BackgroundPriorityRunnable
            public void onRun() {
                try {
                    Logger logger = Logger.f34483b;
                    logger.a(3);
                    executorServiceUnconfigurableExecutorService.shutdown();
                    if (executorServiceUnconfigurableExecutorService.awaitTermination(j2, timeUnit)) {
                        return;
                    }
                    logger.a(3);
                    executorServiceUnconfigurableExecutorService.shutdownNow();
                } catch (InterruptedException unused) {
                    Logger logger2 = Logger.f34483b;
                    Locale locale = Locale.US;
                    logger2.a(3);
                    executorServiceUnconfigurableExecutorService.shutdownNow();
                }
            }
        }, "Crashlytics Shutdown Hook for awaitEvenIfOnMainThread task continuation executor"));
        f34575a = executorServiceUnconfigurableExecutorService;
    }

    public static void a(Task task) throws InterruptedException, TimeoutException {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        task.g(f34575a, new ln0(countDownLatch, 23));
        Looper mainLooper = Looper.getMainLooper();
        Looper looperMyLooper = Looper.myLooper();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        if (mainLooper == looperMyLooper) {
            countDownLatch.await(HarvestConfiguration.SLOW_USER_ACTION_THRESHOLD, timeUnit);
        } else {
            countDownLatch.await(4000L, timeUnit);
        }
        if (task.isSuccessful()) {
            task.getResult();
        } else {
            if (task.j()) {
                throw new CancellationException("Task is already canceled");
            }
            if (!task.k()) {
                throw new TimeoutException();
            }
            bm.i(task.getException());
        }
    }
}
