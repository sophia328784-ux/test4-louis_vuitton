package com.networkbench.agent.impl.instrumentation;

import com.networkbench.agent.impl.asyncaction.g;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class NBSThreadPoolInstrument {
    private static final e log = f.a();
    private static final g controller = new g();

    public static void execute(ExecutorService executorService, Runnable runnable) {
        try {
            log.a("execute executorServer instanceof ExecutorService");
            executorService.execute(proxyRunnable(executorService, runnable));
        } catch (Throwable th) {
            try {
                log.a("schedule error:", th);
            } finally {
                executorService.execute(runnable);
            }
        }
    }

    private static Callable proxyCallable(ExecutorService executorService, Callable callable) {
        if (executorService == null) {
            log.a("object is not instanceOf ExecutorService, not instrument");
            return callable;
        }
        log.a("object is instanceOf ExecutorService");
        g gVar = controller;
        return gVar.a() ? gVar.a(callable) : callable;
    }

    private static Runnable proxyRunnable(Object obj, Runnable runnable) {
        g gVar = controller;
        return gVar.a() ? gVar.a(runnable) : runnable;
    }

    public static ScheduledFuture<?> schedule(ScheduledExecutorService scheduledExecutorService, Runnable runnable, long j2, TimeUnit timeUnit) {
        try {
            return scheduledExecutorService.schedule(proxyRunnable(scheduledExecutorService, runnable), j2, timeUnit);
        } catch (Throwable th) {
            try {
                log.a("schedule error:", th);
                return scheduledExecutorService.schedule(runnable, j2, timeUnit);
            } catch (Throwable unused) {
                return scheduledExecutorService.schedule(runnable, j2, timeUnit);
            }
        }
    }

    public static ScheduledFuture<?> scheduleAtFixedRate(ScheduledExecutorService scheduledExecutorService, Runnable runnable, long j2, long j3, TimeUnit timeUnit) {
        try {
            return scheduledExecutorService.scheduleAtFixedRate(proxyRunnable(scheduledExecutorService, runnable), j2, j3, timeUnit);
        } catch (Throwable th) {
            try {
                log.a("scheduleAtFixedRate error:", th);
                return scheduledExecutorService.scheduleAtFixedRate(runnable, j2, j3, timeUnit);
            } catch (Throwable unused) {
                return scheduledExecutorService.scheduleAtFixedRate(runnable, j2, j3, timeUnit);
            }
        }
    }

    public static Future<?> submit(ExecutorService executorService, Runnable runnable) {
        try {
            return executorService.submit(proxyRunnable(executorService, runnable));
        } catch (Throwable th) {
            try {
                log.a("submit error:", th);
                return executorService.submit(runnable);
            } catch (Throwable unused) {
                return executorService.submit(runnable);
            }
        }
    }

    public static <T> Future<T> submit(ExecutorService executorService, Callable<T> callable) {
        try {
            return executorService.submit(proxyCallable(executorService, callable));
        } catch (Throwable th) {
            try {
                log.a("submit error:", th);
                return executorService.submit(callable);
            } catch (Throwable unused) {
                return executorService.submit(callable);
            }
        }
    }
}
