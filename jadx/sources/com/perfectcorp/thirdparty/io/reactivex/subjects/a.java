package com.perfectcorp.thirdparty.io.reactivex.subjects;

import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.e;
import com.perfectcorp.thirdparty.io.reactivex.internal.util.f;

/* JADX INFO: loaded from: classes3.dex */
final class a<T> extends Subject<T> implements com.perfectcorp.thirdparty.io.reactivex.internal.util.a.InterfaceC0228a<Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ReplaySubject f43192b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f43193c;
    public com.perfectcorp.thirdparty.io.reactivex.internal.util.a d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile boolean f43194e;

    @Override // com.perfectcorp.thirdparty.io.reactivex.Observable
    public final void a(e eVar) {
        this.f43192b.subscribe(eVar);
    }

    public final void e() {
        com.perfectcorp.thirdparty.io.reactivex.internal.util.a aVar;
        Object[] objArr;
        while (true) {
            synchronized (this) {
                try {
                    aVar = this.d;
                    if (aVar == null) {
                        this.f43193c = false;
                        return;
                    }
                    this.d = null;
                } catch (Throwable th) {
                    throw th;
                }
            }
            for (Object[] objArr2 = aVar.f43147a; objArr2 != null; objArr2 = objArr2[4]) {
                for (int i2 = 0; i2 < 4 && (objArr = objArr2[i2]) != null; i2++) {
                    if (f.d(this.f43192b, objArr)) {
                        break;
                    }
                }
            }
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.e
    public final void onComplete() {
        if (this.f43194e) {
            return;
        }
        synchronized (this) {
            try {
                if (!this.f43194e) {
                    this.f43194e = true;
                    if (!this.f43193c) {
                        this.f43193c = true;
                        this.f43192b.onComplete();
                    } else {
                        com.perfectcorp.thirdparty.io.reactivex.internal.util.a aVar = this.d;
                        if (aVar == null) {
                            aVar = new com.perfectcorp.thirdparty.io.reactivex.internal.util.a(4);
                            this.d = aVar;
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
        if (this.f43194e) {
            com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
            return;
        }
        synchronized (this) {
            try {
                boolean z = true;
                if (!this.f43194e) {
                    this.f43194e = true;
                    if (this.f43193c) {
                        com.perfectcorp.thirdparty.io.reactivex.internal.util.a aVar = this.d;
                        if (aVar == null) {
                            aVar = new com.perfectcorp.thirdparty.io.reactivex.internal.util.a(4);
                            this.d = aVar;
                        }
                        aVar.f43147a[0] = f.c(th);
                        return;
                    }
                    this.f43193c = true;
                    z = false;
                }
                if (z) {
                    com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
                } else {
                    this.f43192b.onError(th);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.e
    public final void onNext(Object obj) {
        if (this.f43194e) {
            return;
        }
        synchronized (this) {
            try {
                if (!this.f43194e) {
                    if (!this.f43193c) {
                        this.f43193c = true;
                        this.f43192b.onNext(obj);
                        e();
                    } else {
                        com.perfectcorp.thirdparty.io.reactivex.internal.util.a aVar = this.d;
                        if (aVar == null) {
                            aVar = new com.perfectcorp.thirdparty.io.reactivex.internal.util.a(4);
                            this.d = aVar;
                        }
                        aVar.a(obj);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.e
    public final void onSubscribe(Disposable disposable) {
        boolean z = true;
        if (!this.f43194e) {
            synchronized (this) {
                try {
                    if (!this.f43194e) {
                        if (this.f43193c) {
                            com.perfectcorp.thirdparty.io.reactivex.internal.util.a aVar = this.d;
                            if (aVar == null) {
                                aVar = new com.perfectcorp.thirdparty.io.reactivex.internal.util.a(4);
                                this.d = aVar;
                            }
                            aVar.a(f.b(disposable));
                            return;
                        }
                        this.f43193c = true;
                        z = false;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (z) {
            disposable.dispose();
        } else {
            this.f43192b.onSubscribe(disposable);
            e();
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Predicate
    public final boolean test(Object obj) {
        return f.d(this.f43192b, obj);
    }
}
