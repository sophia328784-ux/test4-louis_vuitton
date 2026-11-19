package com.perfectcorp.thirdparty.io.reactivex.internal.operators.single;

import com.perfectcorp.thirdparty.io.reactivex.Scheduler;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class u<T> extends Single<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SingleSource f43031b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Scheduler f43032c;

    public static final class a<T> extends AtomicReference<Disposable> implements Disposable, com.perfectcorp.thirdparty.io.reactivex.f<T>, Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private com.perfectcorp.thirdparty.io.reactivex.f<? super T> f43033a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Scheduler f43034b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private T f43035c;
        private Throwable d;

        public a(com.perfectcorp.thirdparty.io.reactivex.f<? super T> fVar, Scheduler scheduler) {
            this.f43033a = fVar;
            this.f43034b = scheduler;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.a(this);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.b(get());
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onError(Throwable th) {
            this.d = th;
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.e(this, this.f43034b.b(this));
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.d(this, disposable)) {
                this.f43033a.onSubscribe(this);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onSuccess(T t) {
            this.f43035c = t;
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.e(this, this.f43034b.b(this));
        }

        @Override // java.lang.Runnable
        public final void run() {
            Throwable th = this.d;
            com.perfectcorp.thirdparty.io.reactivex.f<? super T> fVar = this.f43033a;
            if (th != null) {
                fVar.onError(th);
            } else {
                fVar.onSuccess(this.f43035c);
            }
        }
    }

    public u(SingleSource<T> singleSource, Scheduler scheduler) {
        this.f43031b = singleSource;
        this.f43032c = scheduler;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Single
    public final void b(com.perfectcorp.thirdparty.io.reactivex.f fVar) {
        this.f43031b.a(new a(fVar, this.f43032c));
    }
}
