package com.google.common.util.concurrent;

/* JADX INFO: loaded from: classes2.dex */
public interface AsyncFunction<I, O> {
    ListenableFuture apply(Object obj);
}
