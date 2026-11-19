package com.google.android.gms.internal.measurement;

import com.google.common.base.Functions;
import com.google.common.util.concurrent.AsyncFunction;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import java.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
final class zzus implements zzth {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzut f30988a;

    public /* synthetic */ zzus(zztp zztpVar) {
        Objects.requireNonNull(zztpVar);
        this.f30988a = zztpVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzth
    public final ListenableFuture a(final zzwy zzwyVar, final Executor executor) {
        ListenableFuture listenableFutureI = Futures.i(this.f30988a.f30992e.a());
        AsyncFunction asyncFunction = new AsyncFunction() { // from class: com.google.android.gms.internal.measurement.zzur
            @Override // com.google.common.util.concurrent.AsyncFunction
            public final /* synthetic */ ListenableFuture apply(Object obj) {
                return this.f30985a.f30988a.f30991c.a(zzwyVar, executor);
            }
        };
        int i2 = zzxa.f31062a;
        return Futures.l(Futures.m(listenableFutureI, new zzwy(zzvy.a(), asyncFunction), MoreExecutors.b()), Functions.a(), MoreExecutors.b());
    }
}
