package com.perfectcorp.thirdparty.io.reactivex.internal.operators.maybe;

import com.perfectcorp.thirdparty.io.reactivex.Maybe;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;

/* JADX INFO: loaded from: classes3.dex */
public final class e<T> extends Maybe<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SingleSource f42709b;

    public static final class a<T> implements Disposable, com.perfectcorp.thirdparty.io.reactivex.f<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.d f42710b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Disposable f42711c;

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            this.f42711c.dispose();
            this.f42711c = com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.f42711c.isDisposed();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onError(Throwable th) {
            this.f42711c = com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a;
            this.f42710b.onError(th);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.c(this.f42711c, disposable)) {
                this.f42711c = disposable;
                this.f42710b.onSubscribe(this);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onSuccess(Object obj) {
            this.f42711c = com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a;
            this.f42710b.onSuccess(obj);
        }
    }

    public e(SingleSource<T> singleSource) {
        this.f42709b = singleSource;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Maybe
    public final void a(com.perfectcorp.thirdparty.io.reactivex.d dVar) {
        a aVar = new a();
        aVar.f42710b = dVar;
        this.f42709b.a(aVar);
    }
}
