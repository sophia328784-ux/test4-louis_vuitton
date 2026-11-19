package com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable;

import com.perfectcorp.thirdparty.io.reactivex.ObservableSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Action;

/* JADX INFO: loaded from: classes3.dex */
public final class j<T> extends com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.a<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Action f42865c;

    public j(ObservableSource<T> observableSource, Action action) {
        super(observableSource);
        this.f42865c = action;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Observable
    public final void a(com.perfectcorp.thirdparty.io.reactivex.e eVar) {
        a aVar = new a();
        aVar.l = eVar;
        aVar.m = this.f42865c;
        this.f42749b.subscribe(aVar);
    }

    public static final class a<T> extends com.perfectcorp.thirdparty.io.reactivex.internal.observers.b<T> implements com.perfectcorp.thirdparty.io.reactivex.e<T> {
        public com.perfectcorp.thirdparty.io.reactivex.e l;
        public Action m;
        public Disposable n;
        public com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.d o;
        public boolean p;

        @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.e
        public final int a(int i2) {
            com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.d dVar = this.o;
            if (dVar == null || (i2 & 4) != 0) {
                return 0;
            }
            int iA = dVar.a(i2);
            if (iA != 0) {
                this.p = iA == 1;
            }
            return iA;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
        public final boolean b() {
            return this.o.b();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
        public final void c() {
            this.o.c();
        }

        public final void d() {
            if (compareAndSet(0, 1)) {
                try {
                    this.m.run();
                } catch (Throwable th) {
                    com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
                }
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            this.n.dispose();
            d();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.n.isDisposed();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onComplete() {
            this.l.onComplete();
            d();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onError(Throwable th) {
            this.l.onError(th);
            d();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onNext(Object obj) {
            this.l.onNext(obj);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.c(this.n, disposable)) {
                this.n = disposable;
                if (disposable instanceof com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.d) {
                    this.o = (com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.d) disposable;
                }
                this.l.onSubscribe(this);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
        public final Object a() {
            Object objA = this.o.a();
            if (objA == null && this.p) {
                d();
            }
            return objA;
        }
    }
}
