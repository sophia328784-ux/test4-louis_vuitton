package com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable;

import com.perfectcorp.thirdparty.io.reactivex.Completable;
import com.perfectcorp.thirdparty.io.reactivex.Scheduler;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class p extends Completable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final com.perfectcorp.thirdparty.io.reactivex.b f42683b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Scheduler f42684c;

    public static final class a extends AtomicReference<Disposable> implements com.perfectcorp.thirdparty.io.reactivex.a, Disposable, Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final com.perfectcorp.thirdparty.io.reactivex.internal.disposables.e f42685a = new com.perfectcorp.thirdparty.io.reactivex.internal.disposables.e();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private com.perfectcorp.thirdparty.io.reactivex.a f42686b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private com.perfectcorp.thirdparty.io.reactivex.b f42687c;

        public a(com.perfectcorp.thirdparty.io.reactivex.a aVar, com.perfectcorp.thirdparty.io.reactivex.b bVar) {
            this.f42686b = aVar;
            this.f42687c = bVar;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.a(this);
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.e eVar = this.f42685a;
            eVar.getClass();
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.a(eVar);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.b(get());
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.a
        public final void onComplete() {
            this.f42686b.onComplete();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.a
        public final void onError(Throwable th) {
            this.f42686b.onError(th);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.a
        public final void onSubscribe(Disposable disposable) {
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.d(this, disposable);
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f42687c.a(this);
        }
    }

    public p(com.perfectcorp.thirdparty.io.reactivex.b bVar, Scheduler scheduler) {
        this.f42683b = bVar;
        this.f42684c = scheduler;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Completable
    public final void c(com.perfectcorp.thirdparty.io.reactivex.a aVar) {
        a aVar2 = new a(aVar, this.f42683b);
        aVar.onSubscribe(aVar2);
        com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.e(aVar2.f42685a, this.f42684c.b(aVar2));
    }
}
