package com.perfectcorp.common.downloader;

import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes3.dex */
public final class s extends ThreadPoolExecutor implements AutoCloseable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final q f39255b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Set f39256c;

    public s(q qVar, ThreadFactory threadFactory) {
        super(8, 8, 0L, TimeUnit.MILLISECONDS, qVar, threadFactory);
        this.f39256c = Collections.newSetFromMap(new IdentityHashMap());
        this.f39255b = qVar;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public final void afterExecute(Runnable runnable, Throwable th) {
        super.afterExecute(runnable, th);
        synchronized (this.f39255b) {
            try {
                this.f39256c.remove(runnable);
                p pVar = (p) runnable;
                if (pVar.i()) {
                    this.f39255b.add(pVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public final void beforeExecute(Thread thread, Runnable runnable) {
        synchronized (this.f39255b) {
            this.f39256c.add(runnable);
        }
        super.beforeExecute(thread, runnable);
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

    @Override // java.util.concurrent.ThreadPoolExecutor
    public final /* bridge */ /* synthetic */ BlockingQueue getQueue() {
        return this.f39255b;
    }

    @Override // java.util.concurrent.AbstractExecutorService
    public final RunnableFuture newTaskFor(Runnable runnable, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.AbstractExecutorService
    public final RunnableFuture newTaskFor(Callable callable) {
        throw new UnsupportedOperationException();
    }
}
