package com.perfectcorp.thirdparty.io.reactivex.internal.operators.single;

import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final class c<T> extends Single<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Callable f42983b;

    public c(Callable<? extends SingleSource<? extends T>> callable) {
        this.f42983b = callable;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Single
    public final void b(com.perfectcorp.thirdparty.io.reactivex.f fVar) {
        try {
            SingleSource singleSource = (SingleSource) this.f42983b.call();
            com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(singleSource, "The singleSupplier returned a null SingleSource");
            singleSource.a(fVar);
        } catch (Throwable th) {
            fVar.onSubscribe(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a);
            fVar.onError(th);
        }
    }
}
