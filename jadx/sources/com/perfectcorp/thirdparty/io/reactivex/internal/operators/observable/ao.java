package com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable;

import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.ObservableSource;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.internal.functions.Functions;
import java.util.Collection;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final class ao<T, U extends Collection<? super T>> extends Single<U> implements com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.c<U> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ObservableSource f42803b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Callable f42804c;

    public static final class a<T, U extends Collection<? super T>> implements Disposable, com.perfectcorp.thirdparty.io.reactivex.e<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.f f42805b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Collection f42806c;
        public Disposable d;

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            this.d.dispose();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.d.isDisposed();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onComplete() {
            Collection collection = this.f42806c;
            this.f42806c = null;
            this.f42805b.onSuccess(collection);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onError(Throwable th) {
            this.f42806c = null;
            this.f42805b.onError(th);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onNext(Object obj) {
            this.f42806c.add(obj);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.c(this.d, disposable)) {
                this.d = disposable;
                this.f42805b.onSubscribe(this);
            }
        }
    }

    public ao(ObservableSource<T> observableSource, int i2) {
        this.f42803b = observableSource;
        this.f42804c = Functions.d(i2);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.c
    public final Observable a() {
        return new an(this.f42803b, this.f42804c);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Single
    public final void b(com.perfectcorp.thirdparty.io.reactivex.f fVar) {
        try {
            Collection collection = (Collection) this.f42804c.call();
            com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(collection, "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.");
            Collection collection2 = collection;
            a aVar = new a();
            aVar.f42805b = fVar;
            aVar.f42806c = collection2;
            this.f42803b.subscribe(aVar);
        } catch (Throwable th) {
            fVar.onSubscribe(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a);
            fVar.onError(th);
        }
    }

    public ao(ObservableSource<T> observableSource, Callable<U> callable) {
        this.f42803b = observableSource;
        this.f42804c = callable;
    }
}
