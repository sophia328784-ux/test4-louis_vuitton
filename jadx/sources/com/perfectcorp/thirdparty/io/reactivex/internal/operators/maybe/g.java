package com.perfectcorp.thirdparty.io.reactivex.internal.operators.maybe;

import com.perfectcorp.thirdparty.io.reactivex.MaybeSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;

/* JADX INFO: loaded from: classes3.dex */
public final class g<T, R> extends com.perfectcorp.thirdparty.io.reactivex.internal.operators.maybe.a<T, R> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f42713c;

    public static final class a<T, R> implements com.perfectcorp.thirdparty.io.reactivex.d<T>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.d f42714b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Function f42715c;
        public Disposable d;

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            Disposable disposable = this.d;
            this.d = com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a;
            disposable.dispose();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.d.isDisposed();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.d
        public final void onComplete() {
            this.f42714b.onComplete();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.d
        public final void onError(Throwable th) {
            this.f42714b.onError(th);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.d
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.c(this.d, disposable)) {
                this.d = disposable;
                this.f42714b.onSubscribe(this);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.d, com.perfectcorp.thirdparty.io.reactivex.f
        public final void onSuccess(Object obj) {
            com.perfectcorp.thirdparty.io.reactivex.d dVar = this.f42714b;
            try {
                Object objApply = this.f42715c.apply(obj);
                com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(objApply, "The mapper returned a null item");
                dVar.onSuccess(objApply);
            } catch (Throwable th) {
                dVar.onError(th);
            }
        }
    }

    public g(MaybeSource<T> maybeSource, Function<? super T, ? extends R> function) {
        super(maybeSource);
        this.f42713c = function;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Maybe
    public final void a(com.perfectcorp.thirdparty.io.reactivex.d dVar) {
        a aVar = new a();
        aVar.f42714b = dVar;
        aVar.f42715c = this.f42713c;
        this.f42703b.subscribe(aVar);
    }
}
