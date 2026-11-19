package com.google.common.util.concurrent;

import com.google.common.base.Function;
import com.google.errorprone.annotations.DoNotMock;
import java.time.Duration;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes2.dex */
@DoNotMock
public abstract class FluentFuture<V> extends GwtFluentFutureCatchingSpecialization<V> {
    public static <V> FluentFuture<V> from(ListenableFuture<V> listenableFuture) {
        return listenableFuture instanceof FluentFuture ? (FluentFuture) listenableFuture : new ForwardingFluentFuture(listenableFuture);
    }

    public final void addCallback(FutureCallback<? super V> futureCallback, Executor executor) {
        Futures.a(this, futureCallback, executor);
    }

    public final <X extends Throwable> FluentFuture<V> catching(Class<X> cls, Function<? super X, ? extends V> function, Executor executor) {
        return (FluentFuture) AbstractCatchingFuture.create(this, cls, function, executor);
    }

    public final <X extends Throwable> FluentFuture<V> catchingAsync(Class<X> cls, AsyncFunction<? super X, ? extends V> asyncFunction, Executor executor) {
        return (FluentFuture) AbstractCatchingFuture.createAsync(this, cls, asyncFunction, executor);
    }

    public final <T> FluentFuture<T> transform(Function<? super V, T> function, Executor executor) {
        return (FluentFuture) AbstractTransformFuture.create(this, function, executor);
    }

    public final <T> FluentFuture<T> transformAsync(AsyncFunction<? super V, T> asyncFunction, Executor executor) {
        return (FluentFuture) AbstractTransformFuture.createAsync(this, asyncFunction, executor);
    }

    public final FluentFuture<V> withTimeout(long j2, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        if (isDone()) {
            return this;
        }
        TimeoutFuture timeoutFuture = new TimeoutFuture();
        timeoutFuture.f33831b = this;
        TimeoutFuture.Fire fire = new TimeoutFuture.Fire(timeoutFuture);
        timeoutFuture.f33832c = scheduledExecutorService.schedule(fire, j2, timeUnit);
        addListener(fire, DirectExecutor.INSTANCE);
        return timeoutFuture;
    }

    public static abstract class TrustedFuture<V> extends FluentFuture<V> implements AbstractFuture.Trusted<V> {
        @Override // com.google.common.util.concurrent.AbstractFuture, com.google.common.util.concurrent.ListenableFuture
        public final void addListener(Runnable runnable, Executor executor) {
            super.addListener(runnable, executor);
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public final boolean cancel(boolean z) {
            return super.cancel(z);
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState, java.util.concurrent.Future
        public final V get() throws ExecutionException, InterruptedException {
            return blockingGet();
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public final boolean isCancelled() {
            return value() instanceof AbstractFuture.Cancellation;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
        public final boolean isDone() {
            return super.isDone();
        }

        @Override // com.google.common.util.concurrent.AbstractFutureState, java.util.concurrent.Future
        public final V get(long j2, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
            return blockingGet(j2, timeUnit);
        }
    }

    @Deprecated
    public static <V> FluentFuture<V> from(FluentFuture<V> fluentFuture) {
        fluentFuture.getClass();
        return fluentFuture;
    }

    public final FluentFuture<V> withTimeout(Duration duration, ScheduledExecutorService scheduledExecutorService) {
        long nanos;
        try {
            nanos = duration.toNanos();
        } catch (ArithmeticException unused) {
            nanos = duration.isNegative() ? Long.MIN_VALUE : Long.MAX_VALUE;
        }
        return withTimeout(nanos, TimeUnit.NANOSECONDS, scheduledExecutorService);
    }
}
