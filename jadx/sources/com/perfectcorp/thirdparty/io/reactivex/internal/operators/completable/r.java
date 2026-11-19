package com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable;

import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final class r<T> extends Single<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final com.perfectcorp.thirdparty.io.reactivex.b f42688b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f42689c;

    public final class a implements com.perfectcorp.thirdparty.io.reactivex.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.io.reactivex.f f42690b;

        public a(com.perfectcorp.thirdparty.io.reactivex.f fVar) {
            this.f42690b = fVar;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.a
        public final void onComplete() {
            Object obj = r.this.f42689c;
            com.perfectcorp.thirdparty.io.reactivex.f fVar = this.f42690b;
            if (obj == null) {
                fVar.onError(new NullPointerException("The value supplied is null"));
            } else {
                fVar.onSuccess(obj);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.a
        public final void onError(Throwable th) {
            this.f42690b.onError(th);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.a
        public final void onSubscribe(Disposable disposable) {
            this.f42690b.onSubscribe(disposable);
        }
    }

    public r(com.perfectcorp.thirdparty.io.reactivex.b bVar, Callable<? extends T> callable, T t) {
        this.f42688b = bVar;
        this.f42689c = t;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Single
    public final void b(com.perfectcorp.thirdparty.io.reactivex.f fVar) {
        this.f42688b.a(new a(fVar));
    }
}
