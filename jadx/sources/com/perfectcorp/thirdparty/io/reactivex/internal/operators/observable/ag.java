package com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable;

import com.perfectcorp.thirdparty.io.reactivex.ObservableSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.exceptions.CompositeException;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;

/* JADX INFO: loaded from: classes3.dex */
public final class ag<T> extends com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.a<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f42770c;

    public static final class a<T> implements com.perfectcorp.thirdparty.io.reactivex.e<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.io.reactivex.e f42771b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function f42772c;
        public final com.perfectcorp.thirdparty.io.reactivex.internal.disposables.e d = new com.perfectcorp.thirdparty.io.reactivex.internal.disposables.e();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f42773e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f42774f;

        public a(com.perfectcorp.thirdparty.io.reactivex.e eVar, Function function) {
            this.f42771b = eVar;
            this.f42772c = function;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onComplete() {
            if (this.f42774f) {
                return;
            }
            this.f42774f = true;
            this.f42773e = true;
            this.f42771b.onComplete();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onError(Throwable th) {
            boolean z = this.f42773e;
            com.perfectcorp.thirdparty.io.reactivex.e eVar = this.f42771b;
            if (z) {
                if (this.f42774f) {
                    com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
                    return;
                } else {
                    eVar.onError(th);
                    return;
                }
            }
            this.f42773e = true;
            try {
                ObservableSource observableSource = (ObservableSource) this.f42772c.apply(th);
                if (observableSource != null) {
                    observableSource.subscribe(this);
                    return;
                }
                NullPointerException nullPointerException = new NullPointerException("Observable is null");
                nullPointerException.initCause(th);
                eVar.onError(nullPointerException);
            } catch (Throwable th2) {
                eVar.onError(new CompositeException(th, th2));
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onNext(Object obj) {
            if (this.f42774f) {
                return;
            }
            this.f42771b.onNext(obj);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onSubscribe(Disposable disposable) {
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.e(this.d, disposable);
        }
    }

    public ag(ObservableSource<T> observableSource, Function<? super Throwable, ? extends ObservableSource<? extends T>> function, boolean z) {
        super(observableSource);
        this.f42770c = function;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Observable
    public final void a(com.perfectcorp.thirdparty.io.reactivex.e eVar) {
        a aVar = new a(eVar, this.f42770c);
        eVar.onSubscribe(aVar.d);
        this.f42749b.subscribe(aVar);
    }
}
