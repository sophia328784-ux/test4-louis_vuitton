package com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable;

import com.perfectcorp.thirdparty.io.reactivex.Completable;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class a extends Completable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final com.perfectcorp.thirdparty.io.reactivex.b f42636b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.perfectcorp.thirdparty.io.reactivex.b f42637c;

    /* JADX INFO: renamed from: com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.a$a, reason: collision with other inner class name */
    public static final class C0214a implements com.perfectcorp.thirdparty.io.reactivex.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AtomicReference f42638b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.io.reactivex.a f42639c;

        public C0214a(AtomicReference<Disposable> atomicReference, com.perfectcorp.thirdparty.io.reactivex.a aVar) {
            this.f42638b = atomicReference;
            this.f42639c = aVar;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.a
        public final void onComplete() {
            this.f42639c.onComplete();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.a
        public final void onError(Throwable th) {
            this.f42639c.onError(th);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.a
        public final void onSubscribe(Disposable disposable) {
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.e(this.f42638b, disposable);
        }
    }

    public static final class b extends AtomicReference<Disposable> implements com.perfectcorp.thirdparty.io.reactivex.a, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.a f42640b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.b f42641c;

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
            this.f42641c.a(new C0214a(this, this.f42640b));
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.a
        public final void onError(Throwable th) {
            this.f42640b.onError(th);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.a
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.d(this, disposable)) {
                this.f42640b.onSubscribe(this);
            }
        }
    }

    public a(com.perfectcorp.thirdparty.io.reactivex.b bVar, com.perfectcorp.thirdparty.io.reactivex.b bVar2) {
        this.f42636b = bVar;
        this.f42637c = bVar2;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Completable
    public final void c(com.perfectcorp.thirdparty.io.reactivex.a aVar) {
        b bVar = new b();
        bVar.f42640b = aVar;
        bVar.f42641c = this.f42637c;
        this.f42636b.a(bVar);
    }
}
