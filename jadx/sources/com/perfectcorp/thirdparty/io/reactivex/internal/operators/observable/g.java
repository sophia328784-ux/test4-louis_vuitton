package com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable;

import com.perfectcorp.thirdparty.io.reactivex.ObservableSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class g<T, U> extends com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.a<T, U> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f42838c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f42839e;

    public static final class a<T, R> extends AtomicInteger implements Disposable, com.perfectcorp.thirdparty.io.reactivex.e<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.io.reactivex.e f42840b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function f42841c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.io.reactivex.internal.util.c f42842e = new com.perfectcorp.thirdparty.io.reactivex.internal.util.c();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final C0218a f42843f;
        public final boolean g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i f42844h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Disposable f42845i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public volatile boolean f42846j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public volatile boolean f42847k;
        public volatile boolean l;
        public int m;

        /* JADX INFO: renamed from: com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.g$a$a, reason: collision with other inner class name */
        public static final class C0218a<R> extends AtomicReference<Disposable> implements com.perfectcorp.thirdparty.io.reactivex.e<R> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public com.perfectcorp.thirdparty.io.reactivex.e f42848b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public a f42849c;

            @Override // com.perfectcorp.thirdparty.io.reactivex.e
            public final void onComplete() {
                a aVar = this.f42849c;
                aVar.f42846j = false;
                aVar.a();
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.e
            public final void onError(Throwable th) {
                a aVar = this.f42849c;
                if (!com.perfectcorp.thirdparty.io.reactivex.internal.util.e.c(aVar.f42842e, th)) {
                    com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
                    return;
                }
                if (!aVar.g) {
                    aVar.f42845i.dispose();
                }
                aVar.f42846j = false;
                aVar.a();
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.e
            public final void onNext(Object obj) {
                this.f42848b.onNext(obj);
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.e
            public final void onSubscribe(Disposable disposable) {
                com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.e(this, disposable);
            }
        }

        public a(com.perfectcorp.thirdparty.io.reactivex.e eVar, Function function, int i2, boolean z) {
            this.f42840b = eVar;
            this.f42841c = function;
            this.d = i2;
            this.g = z;
            C0218a c0218a = new C0218a();
            c0218a.f42848b = eVar;
            c0218a.f42849c = this;
            this.f42843f = c0218a;
        }

        public final void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            com.perfectcorp.thirdparty.io.reactivex.e eVar = this.f42840b;
            com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i iVar = this.f42844h;
            com.perfectcorp.thirdparty.io.reactivex.internal.util.c cVar = this.f42842e;
            while (true) {
                if (!this.f42846j) {
                    if (this.l) {
                        iVar.c();
                        return;
                    }
                    if (this.g || cVar.get() == null) {
                        boolean z = this.f42847k;
                        try {
                            Object objA = iVar.a();
                            boolean z2 = objA == null;
                            if (z && z2) {
                                this.l = true;
                                Throwable thB = com.perfectcorp.thirdparty.io.reactivex.internal.util.e.b(cVar);
                                if (thB != null) {
                                    eVar.onError(thB);
                                    return;
                                } else {
                                    eVar.onComplete();
                                    return;
                                }
                            }
                            if (!z2) {
                                try {
                                    ObservableSource observableSource = (ObservableSource) this.f42841c.apply(objA);
                                    com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(observableSource, "The mapper returned a null ObservableSource");
                                    if (observableSource instanceof Callable) {
                                        try {
                                            Object objCall = ((Callable) observableSource).call();
                                            if (objCall != null && !this.l) {
                                                eVar.onNext(objCall);
                                            }
                                        } catch (Throwable th) {
                                            com.perfectcorp.thirdparty.io.reactivex.internal.util.e.c(cVar, th);
                                        }
                                    } else {
                                        this.f42846j = true;
                                        observableSource.subscribe(this.f42843f);
                                    }
                                } catch (Throwable th2) {
                                    this.l = true;
                                    this.f42845i.dispose();
                                    iVar.c();
                                    com.perfectcorp.thirdparty.io.reactivex.internal.util.e.c(cVar, th2);
                                }
                            }
                        } catch (Throwable th3) {
                            this.l = true;
                            this.f42845i.dispose();
                            com.perfectcorp.thirdparty.io.reactivex.internal.util.e.c(cVar, th3);
                        }
                    } else {
                        iVar.c();
                        this.l = true;
                    }
                    eVar.onError(com.perfectcorp.thirdparty.io.reactivex.internal.util.e.b(cVar));
                    return;
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            this.l = true;
            this.f42845i.dispose();
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.a(this.f42843f);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.l;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onComplete() {
            this.f42847k = true;
            a();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onError(Throwable th) {
            if (!com.perfectcorp.thirdparty.io.reactivex.internal.util.e.c(this.f42842e, th)) {
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
            } else {
                this.f42847k = true;
                a();
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onNext(Object obj) {
            if (this.m == 0) {
                this.f42844h.a(obj);
            }
            a();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.c(this.f42845i, disposable)) {
                this.f42845i = disposable;
                if (disposable instanceof com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.d) {
                    com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.d dVar = (com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.d) disposable;
                    int iA = dVar.a(3);
                    if (iA == 1) {
                        this.m = iA;
                        this.f42844h = dVar;
                        this.f42847k = true;
                        this.f42840b.onSubscribe(this);
                        a();
                        return;
                    }
                    if (iA == 2) {
                        this.m = iA;
                        this.f42844h = dVar;
                        this.f42840b.onSubscribe(this);
                        return;
                    }
                }
                this.f42844h = new com.perfectcorp.thirdparty.io.reactivex.internal.queue.c(this.d);
                this.f42840b.onSubscribe(this);
            }
        }
    }

    public static final class b<T, U> extends AtomicInteger implements Disposable, com.perfectcorp.thirdparty.io.reactivex.e<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.observers.a f42850b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Function f42851c;
        public a d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f42852e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i f42853f;
        public Disposable g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public volatile boolean f42854h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public volatile boolean f42855i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public volatile boolean f42856j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f42857k;

        public static final class a<U> extends AtomicReference<Disposable> implements com.perfectcorp.thirdparty.io.reactivex.e<U> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public com.perfectcorp.thirdparty.io.reactivex.observers.a f42858b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public b f42859c;

            @Override // com.perfectcorp.thirdparty.io.reactivex.e
            public final void onComplete() {
                b bVar = this.f42859c;
                bVar.f42854h = false;
                bVar.a();
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.e
            public final void onError(Throwable th) {
                this.f42859c.dispose();
                this.f42858b.onError(th);
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.e
            public final void onNext(Object obj) {
                this.f42858b.onNext(obj);
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.e
            public final void onSubscribe(Disposable disposable) {
                com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.e(this, disposable);
            }
        }

        public final void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            while (!this.f42855i) {
                if (!this.f42854h) {
                    boolean z = this.f42856j;
                    try {
                        Object objA = this.f42853f.a();
                        boolean z2 = objA == null;
                        if (z && z2) {
                            this.f42855i = true;
                            this.f42850b.onComplete();
                            return;
                        } else if (!z2) {
                            try {
                                ObservableSource observableSource = (ObservableSource) this.f42851c.apply(objA);
                                com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(observableSource, "The mapper returned a null ObservableSource");
                                this.f42854h = true;
                                observableSource.subscribe(this.d);
                            } catch (Throwable th) {
                                dispose();
                                this.f42853f.c();
                                this.f42850b.onError(th);
                                return;
                            }
                        }
                    } catch (Throwable th2) {
                        dispose();
                        this.f42853f.c();
                        this.f42850b.onError(th2);
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
            this.f42853f.c();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            this.f42855i = true;
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.a(this.d);
            this.g.dispose();
            if (getAndIncrement() == 0) {
                this.f42853f.c();
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.f42855i;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onComplete() {
            if (this.f42856j) {
                return;
            }
            this.f42856j = true;
            a();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onError(Throwable th) {
            if (this.f42856j) {
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
                return;
            }
            this.f42856j = true;
            dispose();
            this.f42850b.onError(th);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onNext(Object obj) {
            if (this.f42856j) {
                return;
            }
            if (this.f42857k == 0) {
                this.f42853f.a(obj);
            }
            a();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.c(this.g, disposable)) {
                this.g = disposable;
                if (disposable instanceof com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.d) {
                    com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.d dVar = (com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.d) disposable;
                    int iA = dVar.a(3);
                    if (iA == 1) {
                        this.f42857k = iA;
                        this.f42853f = dVar;
                        this.f42856j = true;
                        this.f42850b.onSubscribe(this);
                        a();
                        return;
                    }
                    if (iA == 2) {
                        this.f42857k = iA;
                        this.f42853f = dVar;
                        this.f42850b.onSubscribe(this);
                        return;
                    }
                }
                this.f42853f = new com.perfectcorp.thirdparty.io.reactivex.internal.queue.c(this.f42852e);
                this.f42850b.onSubscribe(this);
            }
        }
    }

    public g(ObservableSource<T> observableSource, Function<? super T, ? extends ObservableSource<? extends U>> function, int i2, int i3) {
        super(observableSource);
        this.f42838c = function;
        this.f42839e = i3;
        this.d = Math.max(8, i2);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Observable
    public final void a(com.perfectcorp.thirdparty.io.reactivex.e eVar) {
        ObservableSource observableSource = this.f42749b;
        Function function = this.f42838c;
        if (aj.b(observableSource, eVar, function)) {
            return;
        }
        int i2 = com.perfectcorp.thirdparty.io.reactivex.internal.util.d.f43151a;
        int i3 = this.d;
        int i4 = this.f42839e;
        if (i4 != i2) {
            observableSource.subscribe(new a(eVar, function, i3, i4 == com.perfectcorp.thirdparty.io.reactivex.internal.util.d.f43153c));
            return;
        }
        com.perfectcorp.thirdparty.io.reactivex.observers.a aVar = new com.perfectcorp.thirdparty.io.reactivex.observers.a(eVar);
        b bVar = new b();
        bVar.f42850b = aVar;
        bVar.f42851c = function;
        bVar.f42852e = i3;
        b.a aVar2 = new b.a();
        aVar2.f42858b = aVar;
        aVar2.f42859c = bVar;
        bVar.d = aVar2;
        observableSource.subscribe(bVar);
    }
}
