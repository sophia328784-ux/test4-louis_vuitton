package com.perfectcorp.thirdparty.io.reactivex.internal.operators.maybe;

import com.perfectcorp.thirdparty.io.reactivex.Maybe;
import com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c;

/* JADX INFO: loaded from: classes3.dex */
public final class f<T> extends Maybe<T> implements com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.g<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private T f42712a;

    public f(T t) {
        this.f42712a = t;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Maybe
    public final void a(com.perfectcorp.thirdparty.io.reactivex.d<? super T> dVar) {
        dVar.onSubscribe(c.f42601a);
        dVar.onSuccess(this.f42712a);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.g, java.util.concurrent.Callable
    public final T call() {
        return this.f42712a;
    }
}
