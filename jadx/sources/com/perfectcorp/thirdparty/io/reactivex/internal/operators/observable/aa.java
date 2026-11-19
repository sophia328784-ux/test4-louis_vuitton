package com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable;

import com.perfectcorp.thirdparty.io.reactivex.ObservableSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;

/* JADX INFO: loaded from: classes3.dex */
public final class aa<T> extends com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.a<T, T> {

    public static final class a<T> implements Disposable, com.perfectcorp.thirdparty.io.reactivex.e<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.e f42750b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Disposable f42751c;

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            this.f42751c.dispose();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.f42751c.isDisposed();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onComplete() {
            this.f42750b.onComplete();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onError(Throwable th) {
            this.f42750b.onError(th);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onNext(Object obj) {
            this.f42750b.onNext(obj);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.c(this.f42751c, disposable)) {
                this.f42751c = disposable;
                this.f42750b.onSubscribe(this);
            }
        }
    }

    public aa(ObservableSource<T> observableSource) {
        super(observableSource);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Observable
    public final void a(com.perfectcorp.thirdparty.io.reactivex.e eVar) {
        a aVar = new a();
        aVar.f42750b = eVar;
        this.f42749b.subscribe(aVar);
    }
}
