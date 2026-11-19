package com.google.common.util.concurrent;

import com.google.android.gms.internal.measurement.zzwx;
import com.google.common.base.Function;
import com.google.common.base.MoreObjects;
import com.google.common.base.Strings;
import com.google.common.collect.ImmutableList;
import com.google.common.util.concurrent.internal.InternalFutureFailureAccess;
import com.google.errorprone.annotations.concurrent.LazyInit;
import defpackage.md;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Futures extends GwtFuturesCatchingSpecialization {

    public static final class CallbackListener<V> implements Runnable {
        final FutureCallback<? super V> callback;
        final ListenableFuture<V> future;

        public CallbackListener(ListenableFuture<V> listenableFuture, FutureCallback<? super V> futureCallback) {
            this.future = listenableFuture;
            this.callback = futureCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable thTryInternalFastPathGetFailure;
            ListenableFuture<V> listenableFuture = this.future;
            if ((listenableFuture instanceof InternalFutureFailureAccess) && (thTryInternalFastPathGetFailure = ((InternalFutureFailureAccess) listenableFuture).tryInternalFastPathGetFailure()) != null) {
                this.callback.onFailure(thTryInternalFastPathGetFailure);
                return;
            }
            try {
                this.callback.onSuccess(Futures.d(this.future));
            } catch (ExecutionException e2) {
                this.callback.onFailure(e2.getCause());
            } catch (Throwable th) {
                this.callback.onFailure(th);
            }
        }

        public String toString() {
            MoreObjects.ToStringHelper toStringHelper = new MoreObjects.ToStringHelper(CallbackListener.class.getSimpleName());
            toStringHelper.a(this.callback);
            return toStringHelper.toString();
        }
    }

    public static final class FutureCombiner<V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f33816a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ImmutableList f33817b;

        public FutureCombiner(boolean z, ImmutableList immutableList) {
            this.f33816a = z;
            this.f33817b = immutableList;
        }

        public final ListenableFuture a(Callable callable, Executor executor) {
            CombinedFuture combinedFuture = new CombinedFuture(this.f33817b, this.f33816a);
            combinedFuture.f33806i = new CombinedFuture.CallableInterruptibleTask(callable, executor);
            combinedFuture.i();
            return combinedFuture;
        }

        public final ListenableFuture b(zzwx zzwxVar, Executor executor) {
            CombinedFuture combinedFuture = new CombinedFuture(this.f33817b, this.f33816a);
            combinedFuture.f33806i = new CombinedFuture.AsyncCallableInterruptibleTask(zzwxVar, executor);
            combinedFuture.i();
            return combinedFuture;
        }
    }

    public static final class NonCancellationPropagatingFuture<V> extends AbstractFuture.TrustedFuture<V> implements Runnable {

        @LazyInit
        private ListenableFuture<V> delegate;

        public NonCancellationPropagatingFuture(ListenableFuture<V> listenableFuture) {
            this.delegate = listenableFuture;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture
        public void afterDone() {
            this.delegate = null;
        }

        @Override // com.google.common.util.concurrent.AbstractFuture
        public String pendingToString() {
            ListenableFuture<V> listenableFuture = this.delegate;
            if (listenableFuture == null) {
                return null;
            }
            return "delegate=[" + listenableFuture + "]";
        }

        @Override // java.lang.Runnable
        public void run() {
            ListenableFuture<V> listenableFuture = this.delegate;
            if (listenableFuture != null) {
                setFuture(listenableFuture);
            }
        }
    }

    public static void a(ListenableFuture listenableFuture, FutureCallback futureCallback, Executor executor) {
        futureCallback.getClass();
        listenableFuture.addListener(new CallbackListener(listenableFuture, futureCallback), executor);
    }

    public static ListenableFuture b(ListenableFuture listenableFuture, Class cls, Function function, Executor executor) {
        return AbstractCatchingFuture.create(listenableFuture, cls, function, executor);
    }

    public static ListenableFuture c(ListenableFuture listenableFuture, Class cls, AsyncFunction asyncFunction, Executor executor) {
        return AbstractCatchingFuture.createAsync(listenableFuture, cls, asyncFunction, executor);
    }

    public static Object d(Future future) {
        if (future.isDone()) {
            return Uninterruptibles.a(future);
        }
        md.k(Strings.b("Future was expected to be done: %s", future));
        return null;
    }

    public static ListenableFuture e() {
        ImmediateFuture.ImmediateCancelledFuture immediateCancelledFuture = ImmediateFuture.ImmediateCancelledFuture.f33820b;
        return immediateCancelledFuture != null ? immediateCancelledFuture : new ImmediateFuture.ImmediateCancelledFuture();
    }

    public static ListenableFuture f(Exception exc) {
        ImmediateFuture.ImmediateFailedFuture immediateFailedFuture = new ImmediateFuture.ImmediateFailedFuture();
        immediateFailedFuture.setException(exc);
        return immediateFailedFuture;
    }

    public static ListenableFuture g(Object obj) {
        return obj == null ? ImmediateFuture.f33818c : new ImmediateFuture(obj);
    }

    public static ListenableFuture h() {
        return ImmediateFuture.f33818c;
    }

    public static ListenableFuture i(ListenableFuture listenableFuture) {
        if (listenableFuture.isDone()) {
            return listenableFuture;
        }
        NonCancellationPropagatingFuture nonCancellationPropagatingFuture = new NonCancellationPropagatingFuture(listenableFuture);
        listenableFuture.addListener(nonCancellationPropagatingFuture, DirectExecutor.INSTANCE);
        return nonCancellationPropagatingFuture;
    }

    public static ListenableFuture j(Callable callable, Executor executor) {
        TrustedListenableFutureTask trustedListenableFutureTaskCreate = TrustedListenableFutureTask.create(callable);
        executor.execute(trustedListenableFutureTaskCreate);
        return trustedListenableFutureTaskCreate;
    }

    public static ListenableFuture k(AsyncCallable asyncCallable, Executor executor) {
        TrustedListenableFutureTask trustedListenableFutureTaskCreate = TrustedListenableFutureTask.create(asyncCallable);
        executor.execute(trustedListenableFutureTaskCreate);
        return trustedListenableFutureTaskCreate;
    }

    public static ListenableFuture l(ListenableFuture listenableFuture, Function function, Executor executor) {
        return AbstractTransformFuture.create(listenableFuture, function, executor);
    }

    public static ListenableFuture m(ListenableFuture listenableFuture, AsyncFunction asyncFunction, Executor executor) {
        return AbstractTransformFuture.createAsync(listenableFuture, asyncFunction, executor);
    }
}
