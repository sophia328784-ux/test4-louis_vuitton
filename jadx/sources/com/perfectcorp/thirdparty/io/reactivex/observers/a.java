package com.perfectcorp.thirdparty.io.reactivex.observers;

import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.e;
import com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b;
import com.perfectcorp.thirdparty.io.reactivex.internal.util.f;

/* JADX INFO: loaded from: classes3.dex */
public final class a<T> implements Disposable, e<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final e f43163b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Disposable f43164c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public com.perfectcorp.thirdparty.io.reactivex.internal.util.a f43165e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile boolean f43166f;

    public a(e<? super T> eVar) {
        this.f43163b = eVar;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
    public final void dispose() {
        this.f43164c.dispose();
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return this.f43164c.isDisposed();
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.e
    public final void onComplete() {
        if (this.f43166f) {
            return;
        }
        synchronized (this) {
            try {
                if (!this.f43166f) {
                    if (!this.d) {
                        this.f43166f = true;
                        this.d = true;
                        this.f43163b.onComplete();
                    } else {
                        com.perfectcorp.thirdparty.io.reactivex.internal.util.a aVar = this.f43165e;
                        if (aVar == null) {
                            aVar = new com.perfectcorp.thirdparty.io.reactivex.internal.util.a(4);
                            this.f43165e = aVar;
                        }
                        aVar.a(f.a());
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.e
    public final void onError(Throwable th) {
        if (this.f43166f) {
            com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
            return;
        }
        synchronized (this) {
            try {
                boolean z = true;
                if (!this.f43166f) {
                    if (this.d) {
                        this.f43166f = true;
                        com.perfectcorp.thirdparty.io.reactivex.internal.util.a aVar = this.f43165e;
                        if (aVar == null) {
                            aVar = new com.perfectcorp.thirdparty.io.reactivex.internal.util.a(4);
                            this.f43165e = aVar;
                        }
                        aVar.f43147a[0] = f.c(th);
                        return;
                    }
                    this.f43166f = true;
                    this.d = true;
                    z = false;
                }
                if (z) {
                    com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
                } else {
                    this.f43163b.onError(th);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.e
    public final void onNext(Object obj) {
        if (this.f43166f) {
            return;
        }
        if (obj == null) {
            this.f43164c.dispose();
            onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            return;
        }
        synchronized (this) {
            try {
                if (!this.f43166f) {
                    if (this.d) {
                        com.perfectcorp.thirdparty.io.reactivex.internal.util.a aVar = this.f43165e;
                        if (aVar == null) {
                            aVar = new com.perfectcorp.thirdparty.io.reactivex.internal.util.a(4);
                            this.f43165e = aVar;
                        }
                        aVar.a(obj);
                    } else {
                        this.d = true;
                        this.f43163b.onNext(obj);
                        while (true) {
                            synchronized (this) {
                                try {
                                    com.perfectcorp.thirdparty.io.reactivex.internal.util.a aVar2 = this.f43165e;
                                    if (aVar2 == null) {
                                        this.d = false;
                                        return;
                                    }
                                    this.f43165e = null;
                                    e eVar = this.f43163b;
                                    for (Object[] objArr = aVar2.f43147a; objArr != null; objArr = objArr[4]) {
                                        for (int i2 = 0; i2 < 4; i2++) {
                                            Object[] objArr2 = objArr[i2];
                                            if (objArr2 == null) {
                                                break;
                                            } else {
                                                if (f.d(eVar, objArr2)) {
                                                    return;
                                                }
                                            }
                                        }
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.e
    public final void onSubscribe(Disposable disposable) {
        if (b.c(this.f43164c, disposable)) {
            this.f43164c = disposable;
            this.f43163b.onSubscribe(this);
        }
    }
}
