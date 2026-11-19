package com.perfectcorp.thirdparty.io.reactivex.internal.operators.single;

import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class m<T, R> extends Single<R> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SingleSource f43013b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f43014c;

    public static final class a<T, R> extends AtomicReference<Disposable> implements Disposable, com.perfectcorp.thirdparty.io.reactivex.f<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.f f43015b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Function f43016c;

        /* JADX INFO: renamed from: com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m$a$a, reason: collision with other inner class name */
        public static final class C0224a<R> implements com.perfectcorp.thirdparty.io.reactivex.f<R> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public AtomicReference f43017b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public com.perfectcorp.thirdparty.io.reactivex.f f43018c;

            @Override // com.perfectcorp.thirdparty.io.reactivex.f
            public final void onError(Throwable th) {
                this.f43018c.onError(th);
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.f
            public final void onSubscribe(Disposable disposable) {
                com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.e(this.f43017b, disposable);
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.f
            public final void onSuccess(Object obj) {
                this.f43018c.onSuccess(obj);
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

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onError(Throwable th) {
            this.f43015b.onError(th);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.d(this, disposable)) {
                this.f43015b.onSubscribe(this);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onSuccess(Object obj) {
            com.perfectcorp.thirdparty.io.reactivex.f fVar = this.f43015b;
            try {
                SingleSource singleSource = (SingleSource) this.f43016c.apply(obj);
                com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(singleSource, "The single returned by the mapper is null");
                if (isDisposed()) {
                    return;
                }
                C0224a c0224a = new C0224a();
                c0224a.f43017b = this;
                c0224a.f43018c = fVar;
                singleSource.a(c0224a);
            } catch (Throwable th) {
                fVar.onError(th);
            }
        }
    }

    public m(SingleSource<? extends T> singleSource, Function<? super T, ? extends SingleSource<? extends R>> function) {
        this.f43014c = function;
        this.f43013b = singleSource;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Single
    public final void b(com.perfectcorp.thirdparty.io.reactivex.f fVar) {
        a aVar = new a();
        aVar.f43015b = fVar;
        aVar.f43016c = this.f43014c;
        this.f43013b.a(aVar);
    }
}
