package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableFromUnsafeSource<T> extends Observable<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ObservableSource f70556b;

    public ObservableFromUnsafeSource(ObservableSource<T> observableSource) {
        this.f70556b = observableSource;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        this.f70556b.subscribe(observer);
    }
}
