package com.perfectcorp.common.guava;

import com.perfectcorp.thirdparty.com.google.common.base.Function;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.Futures;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.i;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.p;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.w;

/* JADX INFO: loaded from: classes3.dex */
public final class FluentFuture<V> extends p.a<V> {
    public static FluentFuture a(ListenableFuture listenableFuture) {
        return listenableFuture instanceof FluentFuture ? (FluentFuture) listenableFuture : new FluentFuture(listenableFuture);
    }

    public final FluentFuture b(Function function) {
        return a(Futures.h(this.n, function, w.a()));
    }

    public final FluentFuture c(i iVar) {
        return a(Futures.i(this.n, iVar, w.a()));
    }
}
