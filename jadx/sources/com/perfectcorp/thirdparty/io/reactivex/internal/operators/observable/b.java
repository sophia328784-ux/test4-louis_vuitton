package com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable;

import com.perfectcorp.thirdparty.io.reactivex.ObservableSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Predicate;

/* JADX INFO: loaded from: classes3.dex */
public final class b<T> extends com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.a<T, Boolean> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Predicate f42807c;

    public static final class a<T> implements Disposable, com.perfectcorp.thirdparty.io.reactivex.e<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.e f42808b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Predicate f42809c;
        public Disposable d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f42810e;

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
            com.perfectcorp.thirdparty.io.reactivex.e eVar = this.f42808b;
            if (this.f42810e) {
                return;
            }
            this.f42810e = true;
            eVar.onNext(Boolean.FALSE);
            eVar.onComplete();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onError(Throwable th) {
            if (this.f42810e) {
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
            } else {
                this.f42810e = true;
                this.f42808b.onError(th);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onNext(Object obj) {
            com.perfectcorp.thirdparty.io.reactivex.e eVar = this.f42808b;
            if (this.f42810e) {
                return;
            }
            try {
                if (this.f42809c.test(obj)) {
                    this.f42810e = true;
                    this.d.dispose();
                    eVar.onNext(Boolean.TRUE);
                    eVar.onComplete();
                }
            } catch (Throwable th) {
                this.d.dispose();
                onError(th);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.c(this.d, disposable)) {
                this.d = disposable;
                this.f42808b.onSubscribe(this);
            }
        }
    }

    public b(ObservableSource<T> observableSource, Predicate<? super T> predicate) {
        super(observableSource);
        this.f42807c = predicate;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Observable
    public final void a(com.perfectcorp.thirdparty.io.reactivex.e eVar) {
        a aVar = new a();
        aVar.f42808b = eVar;
        aVar.f42809c = this.f42807c;
        this.f42749b.subscribe(aVar);
    }
}
