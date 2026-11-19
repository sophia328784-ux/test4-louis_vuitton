package com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable;

import com.perfectcorp.thirdparty.io.reactivex.ObservableSource;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes3.dex */
public final class ak<T> extends Single<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ObservableSource f42787b;

    public static final class a<T> implements Disposable, com.perfectcorp.thirdparty.io.reactivex.e<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.f f42788b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Disposable f42789c;
        public Object d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f42790e;

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            this.f42789c.dispose();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.f42789c.isDisposed();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onComplete() {
            if (this.f42790e) {
                return;
            }
            this.f42790e = true;
            Object obj = this.d;
            this.d = null;
            if (obj == null) {
                obj = null;
            }
            com.perfectcorp.thirdparty.io.reactivex.f fVar = this.f42788b;
            if (obj != null) {
                fVar.onSuccess(obj);
            } else {
                fVar.onError(new NoSuchElementException());
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onError(Throwable th) {
            if (this.f42790e) {
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
            } else {
                this.f42790e = true;
                this.f42788b.onError(th);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onNext(Object obj) {
            if (this.f42790e) {
                return;
            }
            if (this.d == null) {
                this.d = obj;
                return;
            }
            this.f42790e = true;
            this.f42789c.dispose();
            this.f42788b.onError(new IllegalArgumentException("Sequence contains more than one element!"));
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.c(this.f42789c, disposable)) {
                this.f42789c = disposable;
                this.f42788b.onSubscribe(this);
            }
        }
    }

    public ak(ObservableSource<? extends T> observableSource, T t) {
        this.f42787b = observableSource;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Single
    public final void b(com.perfectcorp.thirdparty.io.reactivex.f fVar) {
        a aVar = new a();
        aVar.f42788b = fVar;
        this.f42787b.subscribe(aVar);
    }
}
