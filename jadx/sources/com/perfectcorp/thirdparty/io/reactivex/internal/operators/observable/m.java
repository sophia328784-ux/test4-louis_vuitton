package com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable;

import com.perfectcorp.thirdparty.io.reactivex.Maybe;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.ObservableSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;

/* JADX INFO: loaded from: classes3.dex */
public final class m<T> extends Maybe<T> implements com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.c<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ObservableSource f42879b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f42880c;

    public static final class a<T> implements Disposable, com.perfectcorp.thirdparty.io.reactivex.e<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.d f42881b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f42882c;
        public Disposable d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f42883e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f42884f;

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
            if (this.f42884f) {
                return;
            }
            this.f42884f = true;
            this.f42881b.onComplete();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onError(Throwable th) {
            if (this.f42884f) {
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
            } else {
                this.f42884f = true;
                this.f42881b.onError(th);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onNext(Object obj) {
            if (this.f42884f) {
                return;
            }
            long j2 = this.f42883e;
            if (j2 != this.f42882c) {
                this.f42883e = j2 + 1;
                return;
            }
            this.f42884f = true;
            this.d.dispose();
            this.f42881b.onSuccess(obj);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.c(this.d, disposable)) {
                this.d = disposable;
                this.f42881b.onSubscribe(this);
            }
        }
    }

    public m(ObservableSource<T> observableSource, long j2) {
        this.f42879b = observableSource;
        this.f42880c = j2;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Maybe
    public final void a(com.perfectcorp.thirdparty.io.reactivex.d dVar) {
        a aVar = new a();
        aVar.f42881b = dVar;
        aVar.f42882c = this.f42880c;
        this.f42879b.subscribe(aVar);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.c
    public final Observable a() {
        return new l(this.f42879b, this.f42880c, null, false);
    }
}
