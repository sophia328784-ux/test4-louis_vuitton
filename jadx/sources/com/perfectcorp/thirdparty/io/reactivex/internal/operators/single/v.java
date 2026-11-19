package com.perfectcorp.thirdparty.io.reactivex.internal.operators.single;

import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.exceptions.CompositeException;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;

/* JADX INFO: loaded from: classes3.dex */
public final class v<T> extends Single<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SingleSource f43036b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f43037c;

    public final class a implements com.perfectcorp.thirdparty.io.reactivex.f<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.io.reactivex.f f43038b;

        public a(com.perfectcorp.thirdparty.io.reactivex.f fVar) {
            this.f43038b = fVar;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onError(Throwable th) {
            Object objApply;
            Function function = v.this.f43037c;
            com.perfectcorp.thirdparty.io.reactivex.f fVar = this.f43038b;
            if (function != null) {
                try {
                    objApply = function.apply(th);
                } catch (Throwable th2) {
                    fVar.onError(new CompositeException(th, th2));
                    return;
                }
            } else {
                objApply = null;
            }
            if (objApply != null) {
                fVar.onSuccess(objApply);
                return;
            }
            NullPointerException nullPointerException = new NullPointerException("Value supplied was null");
            nullPointerException.initCause(th);
            fVar.onError(nullPointerException);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onSubscribe(Disposable disposable) {
            this.f43038b.onSubscribe(disposable);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onSuccess(Object obj) {
            this.f43038b.onSuccess(obj);
        }
    }

    public v(SingleSource<? extends T> singleSource, Function<? super Throwable, ? extends T> function, T t) {
        this.f43036b = singleSource;
        this.f43037c = function;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Single
    public final void b(com.perfectcorp.thirdparty.io.reactivex.f fVar) {
        this.f43036b.a(new a(fVar));
    }
}
