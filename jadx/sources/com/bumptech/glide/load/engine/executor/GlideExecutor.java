package com.bumptech.glide.load.engine.executor;

import android.os.Process;
import android.os.StrictMode;
import android.text.TextUtils;
import android.util.Log;
import defpackage.az;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.Future;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public final class GlideExecutor implements ExecutorService, AutoCloseable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile int f24618c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ThreadPoolExecutor f24619b;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f24620a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f24621b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f24622c;
        public final ThreadFactory d = new DefaultPriorityThreadFactory();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final UncaughtThrowableStrategy f24623e = UncaughtThrowableStrategy.f24630b;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public String f24624f;

        public Builder(boolean z) {
            this.f24620a = z;
        }

        public final GlideExecutor a() {
            if (TextUtils.isEmpty(this.f24624f)) {
                az.w(this.f24624f, "Name must be non-null and non-empty, but given: ");
                return null;
            }
            return new GlideExecutor(new ThreadPoolExecutor(this.f24621b, this.f24622c, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new DefaultThreadFactory(this.d, this.f24624f, this.f24620a)));
        }
    }

    public static final class DefaultPriorityThreadFactory implements ThreadFactory {
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return new Thread(runnable) { // from class: com.bumptech.glide.load.engine.executor.GlideExecutor.DefaultPriorityThreadFactory.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    Process.setThreadPriority(9);
                    super.run();
                }
            };
        }
    }

    public static final class DefaultThreadFactory implements ThreadFactory {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ThreadFactory f24625b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f24626c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f24627e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final AtomicInteger f24628f = new AtomicInteger();
        public final UncaughtThrowableStrategy d = UncaughtThrowableStrategy.f24630b;

        public DefaultThreadFactory(ThreadFactory threadFactory, String str, boolean z) {
            this.f24625b = threadFactory;
            this.f24626c = str;
            this.f24627e = z;
        }

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(final Runnable runnable) {
            Thread threadNewThread = this.f24625b.newThread(new Runnable() { // from class: com.bumptech.glide.load.engine.executor.GlideExecutor.DefaultThreadFactory.1
                @Override // java.lang.Runnable
                public void run() {
                    if (DefaultThreadFactory.this.f24627e) {
                        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
                    }
                    try {
                        runnable.run();
                    } catch (Throwable unused) {
                        ((UncaughtThrowableStrategy.AnonymousClass2) DefaultThreadFactory.this.d).getClass();
                        Log.isLoggable("GlideExecutor", 6);
                    }
                }
            });
            threadNewThread.setName("glide-" + this.f24626c + "-thread-" + this.f24628f.getAndIncrement());
            return threadNewThread;
        }
    }

    public interface UncaughtThrowableStrategy {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final UncaughtThrowableStrategy f24629a = null;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final UncaughtThrowableStrategy f24630b = new AnonymousClass2();

        /* JADX INFO: renamed from: com.bumptech.glide.load.engine.executor.GlideExecutor$UncaughtThrowableStrategy$2, reason: invalid class name */
        public class AnonymousClass2 implements UncaughtThrowableStrategy {
        }
    }

    public GlideExecutor(ThreadPoolExecutor threadPoolExecutor) {
        this.f24619b = threadPoolExecutor;
    }

    public static GlideExecutor h() {
        return new GlideExecutor(new ThreadPoolExecutor(0, Integer.MAX_VALUE, 10000L, TimeUnit.MILLISECONDS, new SynchronousQueue(), new DefaultThreadFactory(new DefaultPriorityThreadFactory(), "source-unlimited", false)));
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean awaitTermination(long j2, TimeUnit timeUnit) {
        return this.f24619b.awaitTermination(j2, timeUnit);
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        ThreadPoolExecutor threadPoolExecutor;
        boolean zIsTerminated;
        if (this == ForkJoinPool.commonPool() || (zIsTerminated = (threadPoolExecutor = this.f24619b).isTerminated())) {
            return;
        }
        shutdown();
        boolean z = false;
        while (!zIsTerminated) {
            try {
                zIsTerminated = threadPoolExecutor.awaitTermination(1L, TimeUnit.DAYS);
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

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f24619b.execute(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    public final List invokeAll(Collection collection) {
        return this.f24619b.invokeAll(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public final Object invokeAny(Collection collection) {
        return this.f24619b.invokeAny(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isShutdown() {
        return this.f24619b.isShutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isTerminated() {
        return this.f24619b.isTerminated();
    }

    @Override // java.util.concurrent.ExecutorService
    public final void shutdown() {
        this.f24619b.shutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public final List shutdownNow() {
        return this.f24619b.shutdownNow();
    }

    @Override // java.util.concurrent.ExecutorService
    public final Future submit(Runnable runnable) {
        return this.f24619b.submit(runnable);
    }

    public final String toString() {
        return this.f24619b.toString();
    }

    @Override // java.util.concurrent.ExecutorService
    public final List invokeAll(Collection collection, long j2, TimeUnit timeUnit) {
        return this.f24619b.invokeAll(collection, j2, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public final Object invokeAny(Collection collection, long j2, TimeUnit timeUnit) {
        return this.f24619b.invokeAny(collection, j2, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public final Future submit(Runnable runnable, Object obj) {
        return this.f24619b.submit(runnable, obj);
    }

    @Override // java.util.concurrent.ExecutorService
    public final Future submit(Callable callable) {
        return this.f24619b.submit(callable);
    }
}
