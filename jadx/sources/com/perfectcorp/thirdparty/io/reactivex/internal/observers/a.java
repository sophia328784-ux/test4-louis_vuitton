package com.perfectcorp.thirdparty.io.reactivex.internal.observers;

import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a<T, R> implements com.perfectcorp.thirdparty.io.reactivex.e<T>, com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.d<R> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final com.perfectcorp.thirdparty.io.reactivex.e f42620b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Disposable f42621c;
    public com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.d d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f42622e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f42623f;

    public a(com.perfectcorp.thirdparty.io.reactivex.e<? super R> eVar) {
        this.f42620b = eVar;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.e
    public int a(int i2) {
        com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.d dVar = this.d;
        if (dVar == null || (i2 & 4) != 0) {
            return 0;
        }
        int iA = dVar.a(i2);
        if (iA == 0) {
            return iA;
        }
        this.f42623f = iA;
        return iA;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
    public final boolean b() {
        return this.d.b();
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
    public final void c() {
        this.d.c();
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
    public final void dispose() {
        this.f42621c.dispose();
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return this.f42621c.isDisposed();
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.e
    public final void onComplete() {
        if (this.f42622e) {
            return;
        }
        this.f42622e = true;
        this.f42620b.onComplete();
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.e
    public final void onError(Throwable th) {
        if (this.f42622e) {
            com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
        } else {
            this.f42622e = true;
            this.f42620b.onError(th);
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.e
    public final void onSubscribe(Disposable disposable) {
        if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.c(this.f42621c, disposable)) {
            this.f42621c = disposable;
            if (disposable instanceof com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.d) {
                this.d = (com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.d) disposable;
            }
            this.f42620b.onSubscribe(this);
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
    public final boolean a(Object obj) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
