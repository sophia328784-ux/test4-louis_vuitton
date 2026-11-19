package com.perfectcorp.thirdparty.io.reactivex.internal.operators.single;

import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposables;
import com.perfectcorp.thirdparty.io.reactivex.internal.functions.Functions;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final class p<T> extends Single<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Callable f43025b;

    public p(Callable<? extends T> callable) {
        this.f43025b = callable;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Single
    public final void b(com.perfectcorp.thirdparty.io.reactivex.f fVar) {
        Disposable disposableB = Disposables.b(Functions.f42606b);
        fVar.onSubscribe(disposableB);
        if (disposableB.isDisposed()) {
            return;
        }
        try {
            Object objCall = this.f43025b.call();
            com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(objCall, "The callable returned a null value");
            if (disposableB.isDisposed()) {
                return;
            }
            fVar.onSuccess(objCall);
        } catch (Throwable th) {
            if (disposableB.isDisposed()) {
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
            } else {
                fVar.onError(th);
            }
        }
    }
}
