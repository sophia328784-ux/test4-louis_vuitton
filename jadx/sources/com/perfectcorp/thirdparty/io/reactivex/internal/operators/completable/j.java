package com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable;

import com.perfectcorp.thirdparty.io.reactivex.Completable;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposables;
import com.perfectcorp.thirdparty.io.reactivex.internal.functions.Functions;

/* JADX INFO: loaded from: classes3.dex */
public final class j extends Completable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Runnable f42663b;

    public j(Runnable runnable) {
        this.f42663b = runnable;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Completable
    public final void c(com.perfectcorp.thirdparty.io.reactivex.a aVar) {
        Disposable disposableB = Disposables.b(Functions.f42606b);
        aVar.onSubscribe(disposableB);
        try {
            this.f42663b.run();
            if (disposableB.isDisposed()) {
                return;
            }
            aVar.onComplete();
        } catch (Throwable th) {
            if (disposableB.isDisposed()) {
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
            } else {
                aVar.onError(th);
            }
        }
    }
}
