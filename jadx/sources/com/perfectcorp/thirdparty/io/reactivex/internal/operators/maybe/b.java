package com.perfectcorp.thirdparty.io.reactivex.internal.operators.maybe;

import com.perfectcorp.thirdparty.io.reactivex.Maybe;
import com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c;

/* JADX INFO: loaded from: classes3.dex */
public final class b extends Maybe<Object> implements com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.g<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f42704a = new b();

    @Override // com.perfectcorp.thirdparty.io.reactivex.Maybe
    public final void a(com.perfectcorp.thirdparty.io.reactivex.d<? super Object> dVar) {
        dVar.onSubscribe(c.f42601a);
        dVar.onComplete();
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.g, java.util.concurrent.Callable
    public final Object call() {
        return null;
    }
}
