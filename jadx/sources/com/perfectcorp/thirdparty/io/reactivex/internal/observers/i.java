package com.perfectcorp.thirdparty.io.reactivex.internal.observers;

import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class i<T> implements com.perfectcorp.thirdparty.io.reactivex.f<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicReference f42634b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.perfectcorp.thirdparty.io.reactivex.f f42635c;

    public i(AtomicReference<Disposable> atomicReference, com.perfectcorp.thirdparty.io.reactivex.f<? super T> fVar) {
        this.f42634b = atomicReference;
        this.f42635c = fVar;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.f
    public final void onError(Throwable th) {
        this.f42635c.onError(th);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.f
    public final void onSubscribe(Disposable disposable) {
        com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.e(this.f42634b, disposable);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.f
    public final void onSuccess(Object obj) {
        this.f42635c.onSuccess(obj);
    }
}
