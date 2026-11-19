package com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable;

import com.perfectcorp.thirdparty.io.reactivex.Observable;

/* JADX INFO: loaded from: classes3.dex */
public final class ad<T> extends Observable<T> implements com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.g<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final T f42757a;

    public ad(T t) {
        this.f42757a = t;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Observable
    public final void a(com.perfectcorp.thirdparty.io.reactivex.e<? super T> eVar) {
        aj.a aVar = new aj.a(eVar, this.f42757a);
        eVar.onSubscribe(aVar);
        aVar.run();
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.g, java.util.concurrent.Callable
    public final T call() {
        return this.f42757a;
    }
}
