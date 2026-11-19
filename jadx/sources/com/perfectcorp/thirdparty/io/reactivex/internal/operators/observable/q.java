package com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable;

import com.perfectcorp.thirdparty.io.reactivex.ObservableSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.CompositeDisposable;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class q<T> extends com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.a<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f42902c;
    public final boolean d;

    public static final class a<T> extends com.perfectcorp.thirdparty.io.reactivex.internal.observers.b<T> implements com.perfectcorp.thirdparty.io.reactivex.e<T> {
        public final com.perfectcorp.thirdparty.io.reactivex.e l;
        public final Function n;
        public final boolean o;
        public Disposable q;
        public volatile boolean r;
        public final com.perfectcorp.thirdparty.io.reactivex.internal.util.c m = new com.perfectcorp.thirdparty.io.reactivex.internal.util.c();
        public final CompositeDisposable p = new CompositeDisposable();

        /* JADX INFO: renamed from: com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.q$a$a, reason: collision with other inner class name */
        public final class C0219a extends AtomicReference<Disposable> implements com.perfectcorp.thirdparty.io.reactivex.a, Disposable {
            public C0219a() {
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
            public final void dispose() {
                com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.a(this);
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
            public final boolean isDisposed() {
                return com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.b(get());
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.a
            public final void onComplete() {
                a aVar = a.this;
                aVar.p.c(this);
                aVar.onComplete();
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.a
            public final void onError(Throwable th) throws Throwable {
                a aVar = a.this;
                aVar.p.c(this);
                aVar.onError(th);
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.a
            public final void onSubscribe(Disposable disposable) {
                com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.d(this, disposable);
            }
        }

        public a(com.perfectcorp.thirdparty.io.reactivex.e eVar, Function function, boolean z) {
            this.l = eVar;
            this.n = function;
            this.o = z;
            lazySet(1);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.e
        public final int a(int i2) {
            return 2;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
        public final boolean b() {
            return true;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
        public final void c() {
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() throws Throwable {
            this.r = true;
            this.q.dispose();
            this.p.dispose();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.q.isDisposed();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onComplete() {
            if (decrementAndGet() == 0) {
                Throwable thB = com.perfectcorp.thirdparty.io.reactivex.internal.util.e.b(this.m);
                com.perfectcorp.thirdparty.io.reactivex.e eVar = this.l;
                if (thB != null) {
                    eVar.onError(thB);
                } else {
                    eVar.onComplete();
                }
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onError(Throwable th) throws Throwable {
            com.perfectcorp.thirdparty.io.reactivex.internal.util.c cVar = this.m;
            if (!com.perfectcorp.thirdparty.io.reactivex.internal.util.e.c(cVar, th)) {
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
                return;
            }
            boolean z = this.o;
            com.perfectcorp.thirdparty.io.reactivex.e eVar = this.l;
            if (!z) {
                dispose();
                if (getAndSet(0) <= 0) {
                    return;
                }
            } else if (decrementAndGet() != 0) {
                return;
            }
            eVar.onError(com.perfectcorp.thirdparty.io.reactivex.internal.util.e.b(cVar));
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onNext(Object obj) throws Throwable {
            try {
                com.perfectcorp.thirdparty.io.reactivex.b bVar = (com.perfectcorp.thirdparty.io.reactivex.b) this.n.apply(obj);
                com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(bVar, "The mapper returned a null CompletableSource");
                getAndIncrement();
                C0219a c0219a = new C0219a();
                if (this.r || !this.p.b(c0219a)) {
                    return;
                }
                bVar.a(c0219a);
            } catch (Throwable th) {
                this.q.dispose();
                onError(th);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.c(this.q, disposable)) {
                this.q = disposable;
                this.l.onSubscribe(this);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
        public final Object a() {
            return null;
        }
    }

    public q(ObservableSource<T> observableSource, Function<? super T, ? extends com.perfectcorp.thirdparty.io.reactivex.b> function, boolean z) {
        super(observableSource);
        this.f42902c = function;
        this.d = z;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Observable
    public final void a(com.perfectcorp.thirdparty.io.reactivex.e eVar) {
        this.f42749b.subscribe(new a(eVar, this.f42902c, this.d));
    }
}
