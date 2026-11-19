package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.core.CompletableSource;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.internal.operators.observable.ObservableFromCompletable;

/* JADX INFO: loaded from: classes4.dex */
public final class CompletableToObservable<T> extends Observable<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CompletableSource f70134b;

    public CompletableToObservable(CompletableSource completableSource) {
        this.f70134b = completableSource;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        this.f70134b.a(new ObservableFromCompletable.FromCompletableObserver(observer));
    }
}
