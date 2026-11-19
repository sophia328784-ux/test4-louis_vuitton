package com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable;

import com.perfectcorp.thirdparty.io.reactivex.Completable;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.ObservableSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;

/* JADX INFO: loaded from: classes3.dex */
public final class ac<T> extends Completable implements com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.c<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ObservableSource f42754b;

    public static final class a<T> implements Disposable, com.perfectcorp.thirdparty.io.reactivex.e<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.a f42755b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Disposable f42756c;

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            this.f42756c.dispose();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.f42756c.isDisposed();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onComplete() {
            this.f42755b.onComplete();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onError(Throwable th) {
            this.f42755b.onError(th);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onNext(Object obj) {
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onSubscribe(Disposable disposable) {
            this.f42756c = disposable;
            this.f42755b.onSubscribe(this);
        }
    }

    public ac(ObservableSource<T> observableSource) {
        this.f42754b = observableSource;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.c
    public final Observable a() {
        return new ab(this.f42754b);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Completable
    public final void c(com.perfectcorp.thirdparty.io.reactivex.a aVar) {
        a aVar2 = new a();
        aVar2.f42755b = aVar;
        this.f42754b.subscribe(aVar2);
    }
}
