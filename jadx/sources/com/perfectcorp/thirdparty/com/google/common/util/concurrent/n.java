package com.perfectcorp.thirdparty.com.google.common.util.concurrent;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class n<V> extends q<V> {

    public static abstract class a<V> extends n<V> implements b.h<V> {
        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.b, com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture
        public final void addListener(Runnable runnable, Executor executor) {
            super.addListener(runnable, executor);
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.b, java.util.concurrent.Future
        public final boolean cancel(boolean z) {
            return super.cancel(z);
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.b, java.util.concurrent.Future
        public final V get() throws ExecutionException, InterruptedException {
            return (V) super.get();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.b, java.util.concurrent.Future
        public final boolean isCancelled() {
            return super.isCancelled();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.b, java.util.concurrent.Future
        public final boolean isDone() {
            return super.isDone();
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.b, java.util.concurrent.Future
        public final V get(long j2, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
            return (V) super.get(j2, timeUnit);
        }
    }
}
