package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;

/* JADX INFO: loaded from: classes4.dex */
public final class SingleNever extends Single<Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SingleNever f71067b = new SingleNever();

    @Override // io.reactivex.rxjava3.core.Single
    public final void e(SingleObserver singleObserver) {
        singleObserver.onSubscribe(EmptyDisposable.NEVER);
    }
}
