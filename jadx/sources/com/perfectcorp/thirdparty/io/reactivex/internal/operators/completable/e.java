package com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable;

import com.perfectcorp.thirdparty.io.reactivex.Completable;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final class e extends Completable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Callable f42655b;

    public e(Callable<? extends com.perfectcorp.thirdparty.io.reactivex.b> callable) {
        this.f42655b = callable;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Completable
    public final void c(com.perfectcorp.thirdparty.io.reactivex.a aVar) {
        try {
            com.perfectcorp.thirdparty.io.reactivex.b bVar = (com.perfectcorp.thirdparty.io.reactivex.b) this.f42655b.call();
            com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(bVar, "The completableSupplier returned a null CompletableSource");
            bVar.a(aVar);
        } catch (Throwable th) {
            aVar.onSubscribe(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a);
            aVar.onError(th);
        }
    }
}
