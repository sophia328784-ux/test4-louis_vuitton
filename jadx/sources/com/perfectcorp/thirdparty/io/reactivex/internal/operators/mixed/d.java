package com.perfectcorp.thirdparty.io.reactivex.internal.operators.mixed;

import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.ObservableSource;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.e;
import com.perfectcorp.thirdparty.io.reactivex.f;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class d<T, R> extends Observable<R> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SingleSource f42745b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f42746c;

    public static final class a<T, R> extends AtomicReference<Disposable> implements Disposable, e<R>, f<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public e f42747b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Function f42748c;

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.a(this);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.b(get());
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onComplete() {
            this.f42747b.onComplete();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onError(Throwable th) {
            this.f42747b.onError(th);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onNext(Object obj) {
            this.f42747b.onNext(obj);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onSubscribe(Disposable disposable) {
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.e(this, disposable);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onSuccess(Object obj) {
            try {
                ObservableSource observableSource = (ObservableSource) this.f42748c.apply(obj);
                com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(observableSource, "The mapper returned a null Publisher");
                observableSource.subscribe(this);
            } catch (Throwable th) {
                this.f42747b.onError(th);
            }
        }
    }

    public d(SingleSource<T> singleSource, Function<? super T, ? extends ObservableSource<? extends R>> function) {
        this.f42745b = singleSource;
        this.f42746c = function;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Observable
    public final void a(e eVar) {
        a aVar = new a();
        aVar.f42747b = eVar;
        aVar.f42748c = this.f42746c;
        eVar.onSubscribe(aVar);
        this.f42745b.a(aVar);
    }
}
