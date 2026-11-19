package com.perfectcorp.thirdparty.com.google.common.util.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public interface v extends u, ScheduledExecutorService, AutoCloseable {
    @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.u, java.lang.AutoCloseable
    /* synthetic */ default void close() {
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

    t d();

    t e();

    t f();

    t g();

    @Override // java.util.concurrent.ScheduledExecutorService
    /* synthetic */ default ScheduledFuture schedule(Runnable runnable, long j2, TimeUnit timeUnit) {
        return d();
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    /* synthetic */ default ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j2, long j3, TimeUnit timeUnit) {
        return f();
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    /* synthetic */ default ScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j2, long j3, TimeUnit timeUnit) {
        return g();
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    /* synthetic */ default ScheduledFuture schedule(Callable callable, long j2, TimeUnit timeUnit) {
        return e();
    }
}
