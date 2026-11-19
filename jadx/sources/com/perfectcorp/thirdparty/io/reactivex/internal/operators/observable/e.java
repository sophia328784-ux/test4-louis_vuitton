package com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable;

import com.perfectcorp.thirdparty.io.reactivex.ObservableSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.functions.BiConsumer;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final class e<T, U> extends com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.a<T, U> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Callable f42827c;
    public final BiConsumer d;

    public static final class a<T, U> implements Disposable, com.perfectcorp.thirdparty.io.reactivex.e<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.e f42828b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public BiConsumer f42829c;
        public Object d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Disposable f42830e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f42831f;

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            this.f42830e.dispose();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.f42830e.isDisposed();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onComplete() {
            com.perfectcorp.thirdparty.io.reactivex.e eVar = this.f42828b;
            if (this.f42831f) {
                return;
            }
            this.f42831f = true;
            eVar.onNext(this.d);
            eVar.onComplete();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onError(Throwable th) {
            if (this.f42831f) {
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
            } else {
                this.f42831f = true;
                this.f42828b.onError(th);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onNext(Object obj) {
            if (this.f42831f) {
                return;
            }
            try {
                this.f42829c.accept(this.d, obj);
            } catch (Throwable th) {
                this.f42830e.dispose();
                onError(th);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.c(this.f42830e, disposable)) {
                this.f42830e = disposable;
                this.f42828b.onSubscribe(this);
            }
        }
    }

    public e(ObservableSource<T> observableSource, Callable<? extends U> callable, BiConsumer<? super U, ? super T> biConsumer) {
        super(observableSource);
        this.f42827c = callable;
        this.d = biConsumer;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Observable
    public final void a(com.perfectcorp.thirdparty.io.reactivex.e eVar) {
        try {
            Object objCall = this.f42827c.call();
            com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(objCall, "The initialSupplier returned a null value");
            a aVar = new a();
            aVar.f42828b = eVar;
            aVar.f42829c = this.d;
            aVar.d = objCall;
            this.f42749b.subscribe(aVar);
        } catch (Throwable th) {
            eVar.onSubscribe(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a);
            eVar.onError(th);
        }
    }
}
