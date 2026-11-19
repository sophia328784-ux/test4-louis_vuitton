package com.jakewharton.rxbinding4;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/jakewharton/rxbinding4/InitialValueObservable;", "T", "Lio/reactivex/rxjava3/core/Observable;", "<init>", "()V", "rxbinding_release"}, k = 1, mv = {1, 4, 0})
public abstract class InitialValueObservable<T> extends Observable<T> {
    public abstract Boolean c();

    public abstract void d(Observer observer);

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        observer.getClass();
        d(observer);
        observer.onNext(c());
    }
}
