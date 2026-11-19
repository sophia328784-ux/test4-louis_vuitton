package com.perfectcorp.thirdparty.io.reactivex.internal.operators.single;

import com.perfectcorp.thirdparty.io.reactivex.Scheduler;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.internal.disposables.e;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class x<T> extends Single<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SingleSource f43044b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Scheduler f43045c;

    public static final class a<T> extends AtomicReference<Disposable> implements Disposable, com.perfectcorp.thirdparty.io.reactivex.f<T>, Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final e f43046a = new e();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private com.perfectcorp.thirdparty.io.reactivex.f<? super T> f43047b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private SingleSource<? extends T> f43048c;

        public a(com.perfectcorp.thirdparty.io.reactivex.f<? super T> fVar, SingleSource<? extends T> singleSource) {
            this.f43047b = fVar;
            this.f43048c = singleSource;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.a(this);
            e eVar = this.f43046a;
            eVar.getClass();
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.a(eVar);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.b(get());
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onError(Throwable th) {
            this.f43047b.onError(th);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onSubscribe(Disposable disposable) {
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.d(this, disposable);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onSuccess(T t) {
            this.f43047b.onSuccess(t);
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f43048c.a(this);
        }
    }

    public x(SingleSource<? extends T> singleSource, Scheduler scheduler) {
        this.f43044b = singleSource;
        this.f43045c = scheduler;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Single
    public final void b(com.perfectcorp.thirdparty.io.reactivex.f fVar) {
        a aVar = new a(fVar, this.f43044b);
        fVar.onSubscribe(aVar);
        com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.e(aVar.f43046a, this.f43045c.b(aVar));
    }
}
