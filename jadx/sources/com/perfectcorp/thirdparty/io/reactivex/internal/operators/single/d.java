package com.perfectcorp.thirdparty.io.reactivex.internal.operators.single;

import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class d<T> extends Single<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SingleSource f42984b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.perfectcorp.thirdparty.io.reactivex.b f42985c;

    public static final class a<T> extends AtomicReference<Disposable> implements com.perfectcorp.thirdparty.io.reactivex.a, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.f f42986b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public SingleSource f42987c;

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.a(this);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.b(get());
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.a
        public final void onComplete() {
            this.f42987c.a(new com.perfectcorp.thirdparty.io.reactivex.internal.observers.i(this, this.f42986b));
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.a
        public final void onError(Throwable th) {
            this.f42986b.onError(th);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.a
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.d(this, disposable)) {
                this.f42986b.onSubscribe(this);
            }
        }
    }

    public d(SingleSource<T> singleSource, com.perfectcorp.thirdparty.io.reactivex.b bVar) {
        this.f42984b = singleSource;
        this.f42985c = bVar;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Single
    public final void b(com.perfectcorp.thirdparty.io.reactivex.f fVar) {
        a aVar = new a();
        aVar.f42986b = fVar;
        aVar.f42987c = this.f42984b;
        this.f42985c.a(aVar);
    }
}
