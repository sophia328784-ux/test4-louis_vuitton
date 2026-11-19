package com.perfectcorp.thirdparty.com.google.common.util.concurrent;

import com.perfectcorp.thirdparty.com.google.common.collect.af;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class o<V> extends af implements Future<V> {
    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return l().cancel(z);
    }

    @Override // java.util.concurrent.Future
    public V get() throws ExecutionException, InterruptedException {
        return (V) l().get();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return l().isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return l().isDone();
    }

    public abstract Future l();

    @Override // java.util.concurrent.Future
    public V get(long j2, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return (V) l().get(j2, timeUnit);
    }
}
