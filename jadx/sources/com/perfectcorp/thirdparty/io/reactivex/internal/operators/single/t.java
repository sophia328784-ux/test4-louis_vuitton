package com.perfectcorp.thirdparty.io.reactivex.internal.operators.single;

import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;

/* JADX INFO: loaded from: classes3.dex */
public final class t<T, R> extends Single<R> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SingleSource f43027b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f43028c;

    public static final class a<T, R> implements com.perfectcorp.thirdparty.io.reactivex.f<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.io.reactivex.f f43029b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function f43030c;

        public a(com.perfectcorp.thirdparty.io.reactivex.f fVar, Function function) {
            this.f43029b = fVar;
            this.f43030c = function;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onError(Throwable th) {
            this.f43029b.onError(th);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onSubscribe(Disposable disposable) {
            this.f43029b.onSubscribe(disposable);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onSuccess(Object obj) {
            try {
                Object objApply = this.f43030c.apply(obj);
                com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(objApply, "The mapper function returned a null value.");
                this.f43029b.onSuccess(objApply);
            } catch (Throwable th) {
                onError(th);
            }
        }
    }

    public t(SingleSource<? extends T> singleSource, Function<? super T, ? extends R> function) {
        this.f43027b = singleSource;
        this.f43028c = function;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Single
    public final void b(com.perfectcorp.thirdparty.io.reactivex.f fVar) {
        this.f43027b.a(new a(fVar, this.f43028c));
    }
}
