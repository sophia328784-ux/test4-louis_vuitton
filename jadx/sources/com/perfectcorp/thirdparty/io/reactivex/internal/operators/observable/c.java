package com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable;

import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.ObservableSource;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Predicate;

/* JADX INFO: loaded from: classes3.dex */
public final class c<T> extends Single<Boolean> implements com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.c<Boolean> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ObservableSource f42811b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Predicate f42812c;

    public static final class a<T> implements Disposable, com.perfectcorp.thirdparty.io.reactivex.e<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.f f42813b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Predicate f42814c;
        public Disposable d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f42815e;

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
            if (this.f42815e) {
                return;
            }
            this.f42815e = true;
            this.f42813b.onSuccess(Boolean.FALSE);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onError(Throwable th) {
            if (this.f42815e) {
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
            } else {
                this.f42815e = true;
                this.f42813b.onError(th);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onNext(Object obj) {
            if (this.f42815e) {
                return;
            }
            try {
                if (this.f42814c.test(obj)) {
                    this.f42815e = true;
                    this.d.dispose();
                    this.f42813b.onSuccess(Boolean.TRUE);
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
                this.f42813b.onSubscribe(this);
            }
        }
    }

    public c(ObservableSource<T> observableSource, Predicate<? super T> predicate) {
        this.f42811b = observableSource;
        this.f42812c = predicate;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.c
    public final Observable a() {
        return new b(this.f42811b, this.f42812c);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Single
    public final void b(com.perfectcorp.thirdparty.io.reactivex.f fVar) {
        a aVar = new a();
        aVar.f42813b = fVar;
        aVar.f42814c = this.f42812c;
        this.f42811b.subscribe(aVar);
    }
}
