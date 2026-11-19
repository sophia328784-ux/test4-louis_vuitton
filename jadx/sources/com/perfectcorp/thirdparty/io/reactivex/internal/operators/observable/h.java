package com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable;

import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.ObservableSource;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final class h<T> extends Observable<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Callable f42860b;

    public h(Callable<? extends ObservableSource<? extends T>> callable) {
        this.f42860b = callable;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Observable
    public final void a(com.perfectcorp.thirdparty.io.reactivex.e eVar) {
        try {
            ObservableSource observableSource = (ObservableSource) this.f42860b.call();
            com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(observableSource, "null ObservableSource supplied");
            observableSource.subscribe(eVar);
        } catch (Throwable th) {
            eVar.onSubscribe(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a);
            eVar.onError(th);
        }
    }
}
