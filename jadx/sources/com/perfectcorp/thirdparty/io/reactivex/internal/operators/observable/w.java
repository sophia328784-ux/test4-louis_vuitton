package com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable;

import com.perfectcorp.thirdparty.io.reactivex.Observable;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final class w<T> extends Observable<T> implements Callable<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Callable<? extends T> f42938a;

    public w(Callable<? extends T> callable) {
        this.f42938a = callable;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Observable
    public final void a(com.perfectcorp.thirdparty.io.reactivex.e<? super T> eVar) {
        com.perfectcorp.thirdparty.io.reactivex.internal.observers.e eVar2 = new com.perfectcorp.thirdparty.io.reactivex.internal.observers.e(eVar);
        eVar.onSubscribe(eVar2);
        if (eVar2.isDisposed()) {
            return;
        }
        try {
            T tCall = this.f42938a.call();
            com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(tCall, "Callable returned null");
            eVar2.b(tCall);
        } catch (Throwable th) {
            if (eVar2.isDisposed()) {
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
            } else {
                eVar.onError(th);
            }
        }
    }

    @Override // java.util.concurrent.Callable
    public final T call() throws Exception {
        T tCall = this.f42938a.call();
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(tCall, "The callable returned a null value");
        return tCall;
    }
}
