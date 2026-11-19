package com.google.common.util.concurrent;

import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
final class ForwardingFluentFuture<V> extends FluentFuture<V> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ListenableFuture f33814b;

    public ForwardingFluentFuture(ListenableFuture listenableFuture) {
        listenableFuture.getClass();
        this.f33814b = listenableFuture;
    }

    @Override // com.google.common.util.concurrent.AbstractFuture, com.google.common.util.concurrent.ListenableFuture
    public final void addListener(Runnable runnable, Executor executor) {
        this.f33814b.addListener(runnable, executor);
    }

    @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        return this.f33814b.cancel(z);
    }

    @Override // com.google.common.util.concurrent.AbstractFutureState, java.util.concurrent.Future
    public final Object get() {
        return this.f33814b.get();
    }

    @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f33814b.isCancelled();
    }

    @Override // com.google.common.util.concurrent.AbstractFuture, java.util.concurrent.Future
    public final boolean isDone() {
        return this.f33814b.isDone();
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public final String toString() {
        return this.f33814b.toString();
    }

    @Override // com.google.common.util.concurrent.AbstractFutureState, java.util.concurrent.Future
    public final Object get(long j2, TimeUnit timeUnit) {
        return this.f33814b.get(j2, timeUnit);
    }
}
