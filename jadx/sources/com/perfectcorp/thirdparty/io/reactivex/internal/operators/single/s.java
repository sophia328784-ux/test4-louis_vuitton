package com.perfectcorp.thirdparty.io.reactivex.internal.operators.single;

import com.perfectcorp.thirdparty.io.reactivex.Single;

/* JADX INFO: loaded from: classes3.dex */
public final class s<T> extends Single<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f43026b;

    public s(T t) {
        this.f43026b = t;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Single
    public final void b(com.perfectcorp.thirdparty.io.reactivex.f fVar) {
        fVar.onSubscribe(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a);
        fVar.onSuccess(this.f43026b);
    }
}
