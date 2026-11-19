package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.operators.ScalarSupplier;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableEmpty extends Observable<Object> implements ScalarSupplier<Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ObservableEmpty f70481b = new ObservableEmpty();

    @Override // io.reactivex.rxjava3.functions.Supplier
    public final Object get() {
        return null;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        EmptyDisposable.a(observer);
    }
}
