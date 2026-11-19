package com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable;

import com.perfectcorp.thirdparty.io.reactivex.ObservableSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;

/* JADX INFO: loaded from: classes3.dex */
public final class am<T> extends com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.a<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f42796c;

    public static final class a<T> implements Disposable, com.perfectcorp.thirdparty.io.reactivex.e<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.e f42797b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f42798c;
        public Disposable d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f42799e;

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
            if (this.f42798c) {
                return;
            }
            this.f42798c = true;
            this.d.dispose();
            this.f42797b.onComplete();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onError(Throwable th) {
            if (this.f42798c) {
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
                return;
            }
            this.f42798c = true;
            this.d.dispose();
            this.f42797b.onError(th);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onNext(Object obj) {
            if (this.f42798c) {
                return;
            }
            long j2 = this.f42799e;
            long j3 = j2 - 1;
            this.f42799e = j3;
            if (j2 > 0) {
                boolean z = j3 == 0;
                this.f42797b.onNext(obj);
                if (z) {
                    onComplete();
                }
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onSubscribe(Disposable disposable) {
            com.perfectcorp.thirdparty.io.reactivex.e eVar = this.f42797b;
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.c(this.d, disposable)) {
                this.d = disposable;
                if (this.f42799e != 0) {
                    eVar.onSubscribe(this);
                    return;
                }
                this.f42798c = true;
                disposable.dispose();
                com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.b(eVar);
            }
        }
    }

    public am(ObservableSource<T> observableSource, long j2) {
        super(observableSource);
        this.f42796c = j2;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Observable
    public final void a(com.perfectcorp.thirdparty.io.reactivex.e eVar) {
        a aVar = new a();
        aVar.f42797b = eVar;
        aVar.f42799e = this.f42796c;
        this.f42749b.subscribe(aVar);
    }
}
