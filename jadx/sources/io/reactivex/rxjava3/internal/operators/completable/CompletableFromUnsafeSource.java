package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.CompletableSource;

/* JADX INFO: loaded from: classes4.dex */
public final class CompletableFromUnsafeSource extends Completable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CompletableSource f70133b;

    public CompletableFromUnsafeSource(CompletableSource completableSource) {
        this.f70133b = completableSource;
    }

    @Override // io.reactivex.rxjava3.core.Completable
    public final void c(CompletableObserver completableObserver) {
        this.f70133b.a(completableObserver);
    }
}
