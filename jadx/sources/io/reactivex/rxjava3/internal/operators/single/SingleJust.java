package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;

/* JADX INFO: loaded from: classes4.dex */
public final class SingleJust<T> extends Single<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f71062b;

    public SingleJust(T t) {
        this.f71062b = t;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public final void e(SingleObserver singleObserver) {
        singleObserver.onSubscribe(EmptyDisposable.INSTANCE);
        singleObserver.onSuccess(this.f71062b);
    }
}
