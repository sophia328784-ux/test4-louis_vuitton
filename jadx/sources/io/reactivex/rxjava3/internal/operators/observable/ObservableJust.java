package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.operators.ScalarSupplier;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableJust<T> extends Observable<T> implements ScalarSupplier<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f70643b;

    public ObservableJust(T t) {
        this.f70643b = t;
    }

    @Override // io.reactivex.rxjava3.functions.Supplier
    public final Object get() {
        return this.f70643b;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        ObservableScalarXMap.ScalarDisposable scalarDisposable = new ObservableScalarXMap.ScalarDisposable(observer, this.f70643b);
        observer.onSubscribe(scalarDisposable);
        scalarDisposable.run();
    }
}
