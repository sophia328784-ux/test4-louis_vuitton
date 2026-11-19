package com.perfectcorp.thirdparty.io.reactivex.internal.operators.maybe;

import com.perfectcorp.thirdparty.io.reactivex.MaybeSource;
import com.perfectcorp.thirdparty.io.reactivex.Scheduler;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class h<T> extends com.perfectcorp.thirdparty.io.reactivex.internal.operators.maybe.a<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Scheduler f42716c;

    public static final class a<T> extends AtomicReference<Disposable> implements com.perfectcorp.thirdparty.io.reactivex.d<T>, Disposable, Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private com.perfectcorp.thirdparty.io.reactivex.d<? super T> f42717a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Scheduler f42718b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private T f42719c;
        private Throwable d;

        public a(com.perfectcorp.thirdparty.io.reactivex.d<? super T> dVar, Scheduler scheduler) {
            this.f42717a = dVar;
            this.f42718b = scheduler;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.a(this);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.b(get());
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.d
        public final void onComplete() {
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.e(this, this.f42718b.b(this));
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.d
        public final void onError(Throwable th) {
            this.d = th;
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.e(this, this.f42718b.b(this));
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.d
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.d(this, disposable)) {
                this.f42717a.onSubscribe(this);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.d, com.perfectcorp.thirdparty.io.reactivex.f
        public final void onSuccess(T t) {
            this.f42719c = t;
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.e(this, this.f42718b.b(this));
        }

        @Override // java.lang.Runnable
        public final void run() {
            Throwable th = this.d;
            if (th != null) {
                this.d = null;
                this.f42717a.onError(th);
                return;
            }
            T t = this.f42719c;
            if (t == null) {
                this.f42717a.onComplete();
            } else {
                this.f42719c = null;
                this.f42717a.onSuccess(t);
            }
        }
    }

    public h(MaybeSource<T> maybeSource, Scheduler scheduler) {
        super(maybeSource);
        this.f42716c = scheduler;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Maybe
    public final void a(com.perfectcorp.thirdparty.io.reactivex.d dVar) {
        this.f42703b.subscribe(new a(dVar, this.f42716c));
    }
}
