package com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable;

import com.perfectcorp.thirdparty.io.reactivex.Completable;
import com.perfectcorp.thirdparty.io.reactivex.Scheduler;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class m extends Completable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final com.perfectcorp.thirdparty.io.reactivex.b f42667b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Scheduler f42668c;

    public static final class a extends AtomicReference<Disposable> implements com.perfectcorp.thirdparty.io.reactivex.a, Disposable, Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private com.perfectcorp.thirdparty.io.reactivex.a f42669a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Scheduler f42670b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Throwable f42671c;

        public a(com.perfectcorp.thirdparty.io.reactivex.a aVar, Scheduler scheduler) {
            this.f42669a = aVar;
            this.f42670b = scheduler;
        }

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
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.e(this, this.f42670b.b(this));
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.a
        public final void onError(Throwable th) {
            this.f42671c = th;
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.e(this, this.f42670b.b(this));
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.a
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.d(this, disposable)) {
                this.f42669a.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public final void run() {
            Throwable th = this.f42671c;
            if (th == null) {
                this.f42669a.onComplete();
            } else {
                this.f42671c = null;
                this.f42669a.onError(th);
            }
        }
    }

    public m(com.perfectcorp.thirdparty.io.reactivex.b bVar, Scheduler scheduler) {
        this.f42667b = bVar;
        this.f42668c = scheduler;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Completable
    public final void c(com.perfectcorp.thirdparty.io.reactivex.a aVar) {
        this.f42667b.a(new a(aVar, this.f42668c));
    }
}
