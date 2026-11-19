package com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable;

import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.ObservableSource;

/* JADX INFO: loaded from: classes3.dex */
public final class y<T> extends Observable<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ObservableSource f42944b;

    public y(ObservableSource<T> observableSource) {
        this.f42944b = observableSource;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Observable
    public final void a(com.perfectcorp.thirdparty.io.reactivex.e eVar) {
        this.f42944b.subscribe(eVar);
    }
}
