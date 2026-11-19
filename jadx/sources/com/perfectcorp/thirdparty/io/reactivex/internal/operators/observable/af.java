package com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable;

import com.perfectcorp.thirdparty.io.reactivex.ObservableSource;
import com.perfectcorp.thirdparty.io.reactivex.Scheduler;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;

/* JADX INFO: loaded from: classes3.dex */
public final class af<T> extends com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.a<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Scheduler f42759c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f42760e;

    public af(ObservableSource<T> observableSource, Scheduler scheduler, boolean z, int i2) {
        super(observableSource);
        this.f42759c = scheduler;
        this.d = z;
        this.f42760e = i2;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Observable
    public final void a(com.perfectcorp.thirdparty.io.reactivex.e eVar) {
        Scheduler scheduler = this.f42759c;
        boolean z = scheduler instanceof com.perfectcorp.thirdparty.io.reactivex.internal.schedulers.n;
        ObservableSource observableSource = this.f42749b;
        if (z) {
            observableSource.subscribe(eVar);
        } else {
            observableSource.subscribe(new a(eVar, scheduler.a(), this.d, this.f42760e));
        }
    }

    public static final class a<T> extends com.perfectcorp.thirdparty.io.reactivex.internal.observers.b<T> implements com.perfectcorp.thirdparty.io.reactivex.e<T>, Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private com.perfectcorp.thirdparty.io.reactivex.e<? super T> f42761a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Scheduler.b f42762b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f42763c;
        private int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i<T> f42764e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Disposable f42765f;
        private Throwable g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private volatile boolean f42766h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private volatile boolean f42767i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private int f42768j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private boolean f42769k;

        public a(com.perfectcorp.thirdparty.io.reactivex.e<? super T> eVar, Scheduler.b bVar, boolean z, int i2) {
            this.f42761a = eVar;
            this.f42762b = bVar;
            this.f42763c = z;
            this.d = i2;
        }

        private boolean a(boolean z, boolean z2, com.perfectcorp.thirdparty.io.reactivex.e<? super T> eVar) {
            if (this.f42767i) {
                this.f42764e.c();
                return true;
            }
            if (!z) {
                return false;
            }
            Throwable th = this.g;
            if (this.f42763c) {
                if (!z2) {
                    return false;
                }
                this.f42767i = true;
                if (th != null) {
                    eVar.onError(th);
                } else {
                    eVar.onComplete();
                }
                this.f42762b.dispose();
                return true;
            }
            if (th != null) {
                this.f42767i = true;
                this.f42764e.c();
                eVar.onError(th);
                this.f42762b.dispose();
                return true;
            }
            if (!z2) {
                return false;
            }
            this.f42767i = true;
            eVar.onComplete();
            this.f42762b.dispose();
            return true;
        }

        private void d() {
            if (getAndIncrement() == 0) {
                this.f42762b.a(this);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
        public final boolean b() {
            return this.f42764e.b();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
        public final void c() {
            this.f42764e.c();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            if (this.f42767i) {
                return;
            }
            this.f42767i = true;
            this.f42765f.dispose();
            this.f42762b.dispose();
            if (getAndIncrement() == 0) {
                this.f42764e.c();
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.f42767i;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onComplete() {
            if (this.f42766h) {
                return;
            }
            this.f42766h = true;
            d();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onError(Throwable th) {
            if (this.f42766h) {
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
                return;
            }
            this.g = th;
            this.f42766h = true;
            d();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onNext(T t) {
            if (this.f42766h) {
                return;
            }
            if (this.f42768j != 2) {
                this.f42764e.a(t);
            }
            d();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.c(this.f42765f, disposable)) {
                this.f42765f = disposable;
                if (disposable instanceof com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.d) {
                    com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.d dVar = (com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.d) disposable;
                    int iA = dVar.a(7);
                    if (iA == 1) {
                        this.f42768j = iA;
                        this.f42764e = dVar;
                        this.f42766h = true;
                        this.f42761a.onSubscribe(this);
                        d();
                        return;
                    }
                    if (iA == 2) {
                        this.f42768j = iA;
                        this.f42764e = dVar;
                        this.f42761a.onSubscribe(this);
                        return;
                    }
                }
                this.f42764e = new com.perfectcorp.thirdparty.io.reactivex.internal.queue.c(this.d);
                this.f42761a.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (!this.f42769k) {
                com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i<T> iVar = this.f42764e;
                com.perfectcorp.thirdparty.io.reactivex.e<? super T> eVar = this.f42761a;
                int iAddAndGet = 1;
                while (!a(this.f42766h, iVar.b(), eVar)) {
                    while (true) {
                        boolean z = this.f42766h;
                        try {
                            Object objA = iVar.a();
                            boolean z2 = objA == null;
                            if (a(z, z2, eVar)) {
                                return;
                            }
                            if (!z2) {
                                eVar.onNext(objA);
                            }
                        } catch (Throwable th) {
                            this.f42767i = true;
                            this.f42765f.dispose();
                            iVar.c();
                            eVar.onError(th);
                        }
                    }
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                }
                return;
            }
            int iAddAndGet2 = 1;
            while (!this.f42767i) {
                boolean z3 = this.f42766h;
                Throwable th2 = this.g;
                if (this.f42763c || !z3 || th2 == null) {
                    this.f42761a.onNext(null);
                    if (z3) {
                        this.f42767i = true;
                        Throwable th3 = this.g;
                        com.perfectcorp.thirdparty.io.reactivex.e<? super T> eVar2 = this.f42761a;
                        if (th3 != null) {
                            eVar2.onError(th3);
                        } else {
                            eVar2.onComplete();
                        }
                    } else {
                        iAddAndGet2 = addAndGet(-iAddAndGet2);
                        if (iAddAndGet2 == 0) {
                            return;
                        }
                    }
                } else {
                    this.f42767i = true;
                    this.f42761a.onError(this.g);
                }
            }
            return;
            this.f42762b.dispose();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
        public final T a() throws Exception {
            return (T) this.f42764e.a();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.e
        public final int a(int i2) {
            if ((i2 & 2) == 0) {
                return 0;
            }
            this.f42769k = true;
            return 2;
        }
    }
}
