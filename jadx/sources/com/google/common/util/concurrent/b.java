package com.google.common.util.concurrent;

import com.google.common.collect.ImmutableCollection;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class b implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f33833b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CombinedFuture f33834c;
    public final /* synthetic */ Object d;

    public /* synthetic */ b(CombinedFuture combinedFuture, int i2, ListenableFuture listenableFuture) {
        this.f33834c = combinedFuture;
        this.d = listenableFuture;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f33833b;
        Object obj = this.d;
        CombinedFuture combinedFuture = this.f33834c;
        switch (i2) {
            case 0:
                LazyLogger lazyLogger = AggregateFuture.f33799h;
                combinedFuture.j((ListenableFuture) obj);
                break;
            default:
                LazyLogger lazyLogger2 = AggregateFuture.f33799h;
                combinedFuture.g((ImmutableCollection) obj);
                break;
        }
    }

    public /* synthetic */ b(CombinedFuture combinedFuture, ImmutableCollection immutableCollection) {
        this.f33834c = combinedFuture;
        this.d = immutableCollection;
    }
}
