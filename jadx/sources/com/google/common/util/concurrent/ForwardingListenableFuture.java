package com.google.common.util.concurrent;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ForwardingListenableFuture<V> extends ForwardingFuture<V> implements ListenableFuture<V> {

    public static abstract class SimpleForwardingListenableFuture<V> extends ForwardingListenableFuture<V> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ListenableFuture f33815b;

        public SimpleForwardingListenableFuture(ListenableFuture listenableFuture) {
            listenableFuture.getClass();
            this.f33815b = listenableFuture;
        }

        @Override // com.google.common.collect.ForwardingObject
        public final Object c() {
            return this.f33815b;
        }
    }

    @Override // com.google.common.util.concurrent.ListenableFuture
    public final void addListener(Runnable runnable, Executor executor) {
        ((SimpleForwardingListenableFuture) this).f33815b.addListener(runnable, executor);
    }
}
