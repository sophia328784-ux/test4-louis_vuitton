package com.google.common.util.concurrent;

import defpackage.kd0;
import defpackage.r81;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.Delayed;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public abstract class MoreExecutors {

    public static class ListeningDecorator extends AbstractListeningExecutorService {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ExecutorService f33824b;

        public ListeningDecorator(ExecutorService executorService) {
            executorService.getClass();
            this.f33824b = executorService;
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean awaitTermination(long j2, TimeUnit timeUnit) {
            return this.f33824b.awaitTermination(j2, timeUnit);
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            this.f33824b.execute(runnable);
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean isShutdown() {
            return this.f33824b.isShutdown();
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean isTerminated() {
            return this.f33824b.isTerminated();
        }

        @Override // java.util.concurrent.ExecutorService
        public final void shutdown() {
            this.f33824b.shutdown();
        }

        @Override // java.util.concurrent.ExecutorService
        public final List shutdownNow() {
            return this.f33824b.shutdownNow();
        }

        public final String toString() {
            return super.toString() + "[" + this.f33824b + "]";
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0060  */
    public static void a(ExecutorService executorService, long j2, TimeUnit timeUnit) {
        ThreadFactory threadFactoryDefaultThreadFactory;
        executorService.getClass();
        timeUnit.getClass();
        String str = "DelayedShutdownHook-for-" + executorService;
        kd0 kd0Var = new kd0(executorService, j2, timeUnit, 0);
        if (System.getProperty("com.google.appengine.runtime.environment") == null) {
            threadFactoryDefaultThreadFactory = Executors.defaultThreadFactory();
        } else {
            try {
                Class.forName("com.google.appengine.api.utils.SystemProperty");
                if (Class.forName("com.google.apphosting.api.ApiProxy").getMethod("getCurrentEnvironment", null).invoke(null, null) != null) {
                    try {
                        threadFactoryDefaultThreadFactory = (ThreadFactory) Class.forName("com.google.appengine.api.ThreadManager").getMethod("currentRequestThreadFactory", null).invoke(null, null);
                    } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException e2) {
                        r81.g("Couldn't invoke ThreadManager.currentRequestThreadFactory", e2);
                        return;
                    } catch (InvocationTargetException e3) {
                        throw e3.getCause();
                    }
                } else {
                    threadFactoryDefaultThreadFactory = Executors.defaultThreadFactory();
                }
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            }
        }
        Thread threadNewThread = threadFactoryDefaultThreadFactory.newThread(kd0Var);
        Objects.requireNonNull(threadNewThread);
        try {
            threadNewThread.setName(str);
        } catch (SecurityException unused2) {
        }
        Runtime.getRuntime().addShutdownHook(threadNewThread);
    }

    public static Executor b() {
        return DirectExecutor.INSTANCE;
    }

    public static ListeningExecutorService c(ExecutorService executorService) {
        if (executorService instanceof ListeningExecutorService) {
            return (ListeningExecutorService) executorService;
        }
        return executorService instanceof ScheduledExecutorService ? new ScheduledListeningDecorator((ScheduledExecutorService) executorService) : new ListeningDecorator(executorService);
    }

    public static ListeningScheduledExecutorService d(ScheduledExecutorService scheduledExecutorService) {
        return scheduledExecutorService instanceof ListeningScheduledExecutorService ? (ListeningScheduledExecutorService) scheduledExecutorService : new ScheduledListeningDecorator(scheduledExecutorService);
    }

    public static Executor e(Executor executor) {
        return new SequentialExecutor(executor);
    }

    public static Executor f(final Executor executor, final AbstractFuture abstractFuture) {
        executor.getClass();
        return executor == DirectExecutor.INSTANCE ? executor : new Executor() { // from class: jd0
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                try {
                    executor.execute(runnable);
                } catch (RejectedExecutionException e2) {
                    abstractFuture.setException(e2);
                }
            }
        };
    }

    public static final class ScheduledListeningDecorator extends ListeningDecorator implements ListeningScheduledExecutorService {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ScheduledExecutorService f33825c;

        public static final class ListenableScheduledTask<V> extends ForwardingListenableFuture.SimpleForwardingListenableFuture<V> implements ListenableScheduledFuture<V> {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final ScheduledFuture f33826c;

            public ListenableScheduledTask(AbstractFuture abstractFuture, ScheduledFuture scheduledFuture) {
                super(abstractFuture);
                this.f33826c = scheduledFuture;
            }

            @Override // com.google.common.util.concurrent.ForwardingFuture, java.util.concurrent.Future
            public final boolean cancel(boolean z) {
                boolean zCancel = super.cancel(z);
                if (zCancel) {
                    this.f33826c.cancel(z);
                }
                return zCancel;
            }

            @Override // java.lang.Comparable
            public final int compareTo(Delayed delayed) {
                return this.f33826c.compareTo(delayed);
            }

            @Override // java.util.concurrent.Delayed
            public final long getDelay(TimeUnit timeUnit) {
                return this.f33826c.getDelay(timeUnit);
            }
        }

        public static final class NeverSuccessfulListenableFutureTask extends AbstractFuture.TrustedFuture<Void> implements Runnable {
            private final Runnable delegate;

            public NeverSuccessfulListenableFutureTask(Runnable runnable) {
                runnable.getClass();
                this.delegate = runnable;
            }

            @Override // com.google.common.util.concurrent.AbstractFuture
            public String pendingToString() {
                return "task=[" + this.delegate + "]";
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    this.delegate.run();
                } catch (Throwable th) {
                    setException(th);
                    throw th;
                }
            }
        }

        public ScheduledListeningDecorator(ScheduledExecutorService scheduledExecutorService) {
            super(scheduledExecutorService);
            this.f33825c = scheduledExecutorService;
        }

        @Override // com.google.common.util.concurrent.ListeningScheduledExecutorService, java.util.concurrent.ScheduledExecutorService
        public final ListenableScheduledFuture schedule(Runnable runnable, long j2, TimeUnit timeUnit) {
            TrustedListenableFutureTask trustedListenableFutureTaskCreate = TrustedListenableFutureTask.create(runnable, null);
            return new ListenableScheduledTask(trustedListenableFutureTaskCreate, this.f33825c.schedule(trustedListenableFutureTaskCreate, j2, timeUnit));
        }

        @Override // com.google.common.util.concurrent.ListeningScheduledExecutorService, java.util.concurrent.ScheduledExecutorService
        public final ListenableScheduledFuture scheduleAtFixedRate(Runnable runnable, long j2, long j3, TimeUnit timeUnit) {
            NeverSuccessfulListenableFutureTask neverSuccessfulListenableFutureTask = new NeverSuccessfulListenableFutureTask(runnable);
            return new ListenableScheduledTask(neverSuccessfulListenableFutureTask, this.f33825c.scheduleAtFixedRate(neverSuccessfulListenableFutureTask, j2, j3, timeUnit));
        }

        @Override // com.google.common.util.concurrent.ListeningScheduledExecutorService, java.util.concurrent.ScheduledExecutorService
        public final ListenableScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j2, long j3, TimeUnit timeUnit) {
            NeverSuccessfulListenableFutureTask neverSuccessfulListenableFutureTask = new NeverSuccessfulListenableFutureTask(runnable);
            return new ListenableScheduledTask(neverSuccessfulListenableFutureTask, this.f33825c.scheduleWithFixedDelay(neverSuccessfulListenableFutureTask, j2, j3, timeUnit));
        }

        @Override // com.google.common.util.concurrent.ListeningScheduledExecutorService, java.util.concurrent.ScheduledExecutorService
        public final ListenableScheduledFuture schedule(Callable callable, long j2, TimeUnit timeUnit) {
            TrustedListenableFutureTask trustedListenableFutureTaskCreate = TrustedListenableFutureTask.create(callable);
            return new ListenableScheduledTask(trustedListenableFutureTaskCreate, this.f33825c.schedule(trustedListenableFutureTaskCreate, j2, timeUnit));
        }
    }
}
