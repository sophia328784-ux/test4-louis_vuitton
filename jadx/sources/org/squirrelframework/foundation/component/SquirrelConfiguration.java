package org.squirrelframework.foundation.component;

import com.google.common.util.concurrent.MoreExecutors;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public class SquirrelConfiguration {
    public static ExecutorService getExecutor() {
        ExecutorService executorService = (ExecutorService) SquirrelSingletonProvider.getInstance().get(ExecutorService.class);
        return executorService == null ? registerNewExecutorService(1, 120L, TimeUnit.SECONDS) : executorService;
    }

    public static ScheduledExecutorService getScheduler() {
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) SquirrelSingletonProvider.getInstance().get(ScheduledExecutorService.class);
        return scheduledExecutorService == null ? registerNewSchedulerService(1, 120L, TimeUnit.SECONDS) : scheduledExecutorService;
    }

    public static ExecutorService registerNewExecutorService(int i2, long j2, TimeUnit timeUnit) {
        ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(i2);
        MoreExecutors.a(executorServiceNewFixedThreadPool, j2, timeUnit);
        SquirrelSingletonProvider.getInstance().register(ExecutorService.class, executorServiceNewFixedThreadPool);
        return executorServiceNewFixedThreadPool;
    }

    public static ScheduledExecutorService registerNewSchedulerService(int i2, long j2, TimeUnit timeUnit) {
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(i2);
        MoreExecutors.a(scheduledExecutorServiceNewScheduledThreadPool, j2, timeUnit);
        SquirrelSingletonProvider.getInstance().register(ScheduledExecutorService.class, scheduledExecutorServiceNewScheduledThreadPool);
        return scheduledExecutorServiceNewScheduledThreadPool;
    }
}
