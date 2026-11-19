package com.perfectcorp.thirdparty.com.google.common.util.concurrent;

import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes3.dex */
public abstract class p<V> extends o<V> implements ListenableFuture<V> {

    public static abstract class a<V> extends p<V> {
        public final ListenableFuture n;

        public a(ListenableFuture listenableFuture) {
            listenableFuture.getClass();
            this.n = listenableFuture;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.collect.af
        public final /* bridge */ /* synthetic */ Object delegate() {
            return this.n;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.p
        public final ListenableFuture e() {
            return this.n;
        }

        @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.o
        public final /* bridge */ /* synthetic */ Future l() {
            return this.n;
        }
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture
    public void addListener(Runnable runnable, Executor executor) {
        e().addListener(runnable, executor);
    }

    public abstract ListenableFuture e();
}
