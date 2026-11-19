package com.perfectcorp.thirdparty.io.reactivex.internal.operators.single;

import com.perfectcorp.thirdparty.io.reactivex.Completable;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class n<T> extends Completable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SingleSource f43019b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f43020c;

    public static final class a<T> extends AtomicReference<Disposable> implements com.perfectcorp.thirdparty.io.reactivex.a, Disposable, com.perfectcorp.thirdparty.io.reactivex.f<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.a f43021b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Function f43022c;

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
            this.f43021b.onComplete();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.a
        public final void onError(Throwable th) {
            this.f43021b.onError(th);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.a
        public final void onSubscribe(Disposable disposable) {
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.e(this, disposable);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onSuccess(Object obj) {
            try {
                com.perfectcorp.thirdparty.io.reactivex.b bVar = (com.perfectcorp.thirdparty.io.reactivex.b) this.f43022c.apply(obj);
                com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(bVar, "The mapper returned a null CompletableSource");
                if (isDisposed()) {
                    return;
                }
                bVar.a(this);
            } catch (Throwable th) {
                onError(th);
            }
        }
    }

    public n(SingleSource<T> singleSource, Function<? super T, ? extends com.perfectcorp.thirdparty.io.reactivex.b> function) {
        this.f43019b = singleSource;
        this.f43020c = function;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Completable
    public final void c(com.perfectcorp.thirdparty.io.reactivex.a aVar) {
        a aVar2 = new a();
        aVar2.f43021b = aVar;
        aVar2.f43022c = this.f43020c;
        aVar.onSubscribe(aVar2);
        this.f43019b.a(aVar2);
    }
}
