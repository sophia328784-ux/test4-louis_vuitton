package com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable;

import com.perfectcorp.thirdparty.io.reactivex.ObservableSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;

/* JADX INFO: loaded from: classes3.dex */
public final class u<T, R> extends com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.a<T, R> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f42930c;

    public static final class a<T, R> implements Disposable, com.perfectcorp.thirdparty.io.reactivex.e<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.e f42931b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Function f42932c;
        public Disposable d;

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            this.d.dispose();
            this.d = com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.d.isDisposed();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onComplete() {
            Disposable disposable = this.d;
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b bVar = com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a;
            if (disposable == bVar) {
                return;
            }
            this.d = bVar;
            this.f42931b.onComplete();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onError(Throwable th) {
            Disposable disposable = this.d;
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b bVar = com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a;
            if (disposable == bVar) {
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
            } else {
                this.d = bVar;
                this.f42931b.onError(th);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onNext(Object obj) {
            if (this.d == com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a) {
                return;
            }
            try {
                com.perfectcorp.thirdparty.io.reactivex.e eVar = this.f42931b;
                for (T t : (Iterable) this.f42932c.apply(obj)) {
                    com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(t, "The iterator returned a null value");
                    eVar.onNext(t);
                }
            } catch (Throwable th) {
                this.d.dispose();
                onError(th);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.c(this.d, disposable)) {
                this.d = disposable;
                this.f42931b.onSubscribe(this);
            }
        }
    }

    public u(ObservableSource<T> observableSource, Function<? super T, ? extends Iterable<? extends R>> function) {
        super(observableSource);
        this.f42930c = function;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Observable
    public final void a(com.perfectcorp.thirdparty.io.reactivex.e eVar) {
        a aVar = new a();
        aVar.f42931b = eVar;
        aVar.f42932c = this.f42930c;
        this.f42749b.subscribe(aVar);
    }
}
