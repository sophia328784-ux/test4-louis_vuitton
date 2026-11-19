package com.perfectcorp.thirdparty.io.reactivex.internal.operators.single;

import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.SingleEmitter;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import defpackage.d21;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class b<T> extends Single<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final com.perfectcorp.thirdparty.io.reactivex.g f42981b;

    public static final class a<T> extends AtomicReference<Disposable> implements SingleEmitter<T>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.f f42982b;

        @Override // com.perfectcorp.thirdparty.io.reactivex.SingleEmitter
        public final boolean a(Throwable th) {
            Disposable andSet;
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            Disposable disposable = get();
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b bVar = com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a;
            if (disposable == bVar || (andSet = getAndSet(bVar)) == bVar) {
                return false;
            }
            try {
                this.f42982b.onError(th);
            } finally {
                if (andSet != null) {
                    andSet.dispose();
                }
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.a(this);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.b(get());
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.SingleEmitter
        public final void onError(Throwable th) {
            if (a(th)) {
                return;
            }
            com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.SingleEmitter
        public final void onSuccess(Object obj) {
            Disposable andSet;
            Disposable disposable = get();
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b bVar = com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a;
            if (disposable == bVar || (andSet = getAndSet(bVar)) == bVar) {
                return;
            }
            com.perfectcorp.thirdparty.io.reactivex.f fVar = this.f42982b;
            try {
                if (obj == null) {
                    fVar.onError(new NullPointerException("onSuccess called with null. Null values are generally not allowed in 2.x operators and sources."));
                } else {
                    fVar.onSuccess(obj);
                }
                if (andSet != null) {
                    andSet.dispose();
                }
            } catch (Throwable th) {
                if (andSet != null) {
                    andSet.dispose();
                }
                throw th;
            }
        }

        @Override // java.util.concurrent.atomic.AtomicReference
        public final String toString() {
            return d21.k(a.class.getSimpleName(), "{", super.toString(), "}");
        }
    }

    public b(com.perfectcorp.thirdparty.io.reactivex.g<T> gVar) {
        this.f42981b = gVar;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Single
    public final void b(com.perfectcorp.thirdparty.io.reactivex.f fVar) {
        a aVar = new a();
        aVar.f42982b = fVar;
        fVar.onSubscribe(aVar);
        try {
            this.f42981b.e(aVar);
        } catch (Throwable th) {
            aVar.onError(th);
        }
    }
}
