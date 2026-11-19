package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.core.SingleSource;

/* JADX INFO: loaded from: classes4.dex */
public final class SingleFromUnsafeSource<T> extends Single<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SingleSource f71061b;

    public SingleFromUnsafeSource(SingleSource<T> singleSource) {
        this.f71061b = singleSource;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public final void e(SingleObserver singleObserver) {
        this.f71061b.a(singleObserver);
    }
}
