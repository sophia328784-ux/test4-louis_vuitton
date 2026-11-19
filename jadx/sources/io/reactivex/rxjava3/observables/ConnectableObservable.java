package io.reactivex.rxjava3.observables;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ConnectableObservable<T> extends Observable<T> {
    public abstract void c(Consumer consumer);

    public abstract void d();
}
