package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableNever extends Observable<Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ObservableNever f70686b = new ObservableNever();

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        observer.onSubscribe(EmptyDisposable.NEVER);
    }
}
