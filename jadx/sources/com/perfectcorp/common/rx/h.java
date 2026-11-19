package com.perfectcorp.common.rx;

import com.perfectcorp.thirdparty.io.reactivex.SingleEmitter;

/* JADX INFO: loaded from: classes3.dex */
final class h extends com.perfectcorp.common.guava.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SingleEmitter f39391b;

    public h(SingleEmitter singleEmitter) {
        this.f39391b = singleEmitter;
    }

    @Override // com.perfectcorp.common.guava.a, com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
    public final void onFailure(Throwable th) {
        this.f39391b.a(th);
    }

    @Override // com.perfectcorp.thirdparty.com.google.common.util.concurrent.FutureCallback
    public final void onSuccess(Object obj) {
        this.f39391b.onSuccess(obj);
    }
}
