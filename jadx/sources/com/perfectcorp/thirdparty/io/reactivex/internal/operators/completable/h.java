package com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable;

import com.perfectcorp.thirdparty.io.reactivex.Completable;

/* JADX INFO: loaded from: classes3.dex */
public final class h extends Completable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Throwable f42661b;

    public h(Throwable th) {
        this.f42661b = th;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Completable
    public final void c(com.perfectcorp.thirdparty.io.reactivex.a aVar) {
        aVar.onSubscribe(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a);
        aVar.onError(this.f42661b);
    }
}
