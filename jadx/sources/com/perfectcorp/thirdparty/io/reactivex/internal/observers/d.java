package com.perfectcorp.thirdparty.io.reactivex.internal.observers;

import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes3.dex */
public final class d<T> extends CountDownLatch implements com.perfectcorp.thirdparty.io.reactivex.a, com.perfectcorp.thirdparty.io.reactivex.d<T>, com.perfectcorp.thirdparty.io.reactivex.f<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f42624b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Throwable f42625c;
    public Disposable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile boolean f42626e;

    public d() {
        super(1);
    }

    public final Object a() throws Throwable {
        if (getCount() != 0) {
            try {
                await();
            } catch (InterruptedException e2) {
                this.f42626e = true;
                Disposable disposable = this.d;
                if (disposable != null) {
                    disposable.dispose();
                }
                Throwable th = com.perfectcorp.thirdparty.io.reactivex.internal.util.e.f43154a;
                throw e2;
            }
        }
        Throwable th2 = this.f42625c;
        if (th2 == null) {
            return this.f42624b;
        }
        Throwable th3 = com.perfectcorp.thirdparty.io.reactivex.internal.util.e.f43154a;
        throw th2;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.a
    public final void onComplete() {
        countDown();
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.a
    public final void onError(Throwable th) {
        this.f42625c = th;
        countDown();
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.a
    public final void onSubscribe(Disposable disposable) {
        this.d = disposable;
        if (this.f42626e) {
            disposable.dispose();
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.d, com.perfectcorp.thirdparty.io.reactivex.f
    public final void onSuccess(Object obj) {
        this.f42624b = obj;
        countDown();
    }
}
