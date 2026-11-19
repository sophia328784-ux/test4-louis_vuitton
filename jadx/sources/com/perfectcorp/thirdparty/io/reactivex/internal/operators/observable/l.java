package com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable;

import com.perfectcorp.thirdparty.io.reactivex.ObservableSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;

/* JADX INFO: loaded from: classes3.dex */
public final class l<T> extends com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.a<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f42874c;

    public static final class a<T> implements Disposable, com.perfectcorp.thirdparty.io.reactivex.e<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.e f42875b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f42876c;
        public Disposable d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f42877e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f42878f;

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
            com.perfectcorp.thirdparty.io.reactivex.e eVar = this.f42875b;
            if (this.f42878f) {
                return;
            }
            this.f42878f = true;
            eVar.onComplete();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onError(Throwable th) {
            if (this.f42878f) {
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
            } else {
                this.f42878f = true;
                this.f42875b.onError(th);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onNext(Object obj) {
            com.perfectcorp.thirdparty.io.reactivex.e eVar = this.f42875b;
            if (this.f42878f) {
                return;
            }
            long j2 = this.f42877e;
            if (j2 != this.f42876c) {
                this.f42877e = j2 + 1;
                return;
            }
            this.f42878f = true;
            this.d.dispose();
            eVar.onNext(obj);
            eVar.onComplete();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.c(this.d, disposable)) {
                this.d = disposable;
                this.f42875b.onSubscribe(this);
            }
        }
    }

    public l(ObservableSource<T> observableSource, long j2, T t, boolean z) {
        super(observableSource);
        this.f42874c = j2;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Observable
    public final void a(com.perfectcorp.thirdparty.io.reactivex.e eVar) {
        a aVar = new a();
        aVar.f42875b = eVar;
        aVar.f42876c = this.f42874c;
        this.f42749b.subscribe(aVar);
    }
}
