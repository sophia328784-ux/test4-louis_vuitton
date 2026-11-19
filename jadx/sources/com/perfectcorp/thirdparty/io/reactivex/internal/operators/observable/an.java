package com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable;

import com.perfectcorp.thirdparty.io.reactivex.ObservableSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import java.util.Collection;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final class an<T, U extends Collection<? super T>> extends com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.a<T, U> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Callable f42800c;

    public static final class a<T, U extends Collection<? super T>> implements Disposable, com.perfectcorp.thirdparty.io.reactivex.e<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.e f42801b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Disposable f42802c;
        public Collection d;

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            this.f42802c.dispose();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.f42802c.isDisposed();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onComplete() {
            Collection collection = this.d;
            this.d = null;
            com.perfectcorp.thirdparty.io.reactivex.e eVar = this.f42801b;
            eVar.onNext(collection);
            eVar.onComplete();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onError(Throwable th) {
            this.d = null;
            this.f42801b.onError(th);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onNext(Object obj) {
            this.d.add(obj);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.c(this.f42802c, disposable)) {
                this.f42802c = disposable;
                this.f42801b.onSubscribe(this);
            }
        }
    }

    public an(ObservableSource<T> observableSource, Callable<U> callable) {
        super(observableSource);
        this.f42800c = callable;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Observable
    public final void a(com.perfectcorp.thirdparty.io.reactivex.e eVar) {
        try {
            Collection collection = (Collection) this.f42800c.call();
            com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(collection, "The collectionSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources.");
            Collection collection2 = collection;
            a aVar = new a();
            aVar.f42801b = eVar;
            aVar.d = collection2;
            this.f42749b.subscribe(aVar);
        } catch (Throwable th) {
            eVar.onSubscribe(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a);
            eVar.onError(th);
        }
    }
}
