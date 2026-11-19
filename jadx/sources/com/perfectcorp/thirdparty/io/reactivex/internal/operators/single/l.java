package com.perfectcorp.thirdparty.io.reactivex.internal.operators.single;

import com.perfectcorp.thirdparty.io.reactivex.Single;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final class l<T> extends Single<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Callable f43012b;

    public l(Callable<? extends Throwable> callable) {
        this.f43012b = callable;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Single
    public final void b(com.perfectcorp.thirdparty.io.reactivex.f fVar) {
        try {
            th = (Throwable) this.f43012b.call();
            com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(th, "Callable returned null throwable. Null values are generally not allowed in 2.x operators and sources.");
        } catch (Throwable th) {
            th = th;
        }
        fVar.onSubscribe(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a);
        fVar.onError(th);
    }
}
