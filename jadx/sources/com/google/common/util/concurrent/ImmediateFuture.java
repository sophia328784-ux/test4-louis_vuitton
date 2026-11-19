package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes2.dex */
class ImmediateFuture<V> implements ListenableFuture<V> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ListenableFuture f33818c = new ImmediateFuture(null);
    public static final LazyLogger d = new LazyLogger(ImmediateFuture.class);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f33819b;

    public static final class ImmediateCancelledFuture<V> extends AbstractFuture.TrustedFuture<V> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final ImmediateCancelledFuture f33820b;

        static {
            f33820b = AbstractFutureState.GENERATE_CANCELLATION_CAUSES ? null : new ImmediateCancelledFuture();
        }

        public ImmediateCancelledFuture() {
            cancel(false);
        }
    }

    public static final class ImmediateFailedFuture<V> extends AbstractFuture.TrustedFuture<V> {
    }

    public ImmediateFuture(Object obj) {
        this.f33819b = obj;
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public final void addListener(Runnable runnable, Executor executor) {
        Preconditions.m(runnable, "Runnable was null.");
        Preconditions.m(executor, "Executor was null.");
        try {
            executor.execute(runnable);
        } catch (Exception e2) {
            d.a().log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e2);
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j2, TimeUnit timeUnit) {
        timeUnit.getClass();
        return this.f33819b;
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return true;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=SUCCESS, result=[");
        return defpackage.a.n(sb, this.f33819b, "]]");
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return this.f33819b;
    }
}
