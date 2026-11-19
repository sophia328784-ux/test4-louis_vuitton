package com.perfectcorp.thirdparty.com.google.common.util.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public interface u extends ExecutorService, AutoCloseable {
    ListenableFuture a();

    ListenableFuture b();

    ListenableFuture c();

    @Override // java.lang.AutoCloseable
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

    @Override // java.util.concurrent.ExecutorService
    /* synthetic */ default Future submit(Runnable runnable) {
        return b();
    }

    @Override // java.util.concurrent.ExecutorService
    /* synthetic */ default Future submit(Runnable runnable, Object obj) {
        return c();
    }

    @Override // java.util.concurrent.ExecutorService
    /* synthetic */ default Future submit(Callable callable) {
        return a();
    }
}
