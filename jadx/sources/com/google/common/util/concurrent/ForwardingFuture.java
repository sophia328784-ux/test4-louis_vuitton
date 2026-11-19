package com.google.common.util.concurrent;

import com.google.common.collect.ForwardingObject;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ForwardingFuture<V> extends ForwardingObject implements Future<V> {
    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return ((ForwardingListenableFuture.SimpleForwardingListenableFuture) this).f33815b.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return ((ForwardingListenableFuture.SimpleForwardingListenableFuture) this).f33815b.get();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return ((ForwardingListenableFuture.SimpleForwardingListenableFuture) this).f33815b.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return ((ForwardingListenableFuture.SimpleForwardingListenableFuture) this).f33815b.isDone();
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j2, TimeUnit timeUnit) {
        return ((ForwardingListenableFuture.SimpleForwardingListenableFuture) this).f33815b.get(j2, timeUnit);
    }
}
