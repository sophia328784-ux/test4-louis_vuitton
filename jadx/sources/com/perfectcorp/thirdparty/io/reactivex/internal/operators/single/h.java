package com.perfectcorp.thirdparty.io.reactivex.internal.operators.single;

import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.exceptions.CompositeException;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;

/* JADX INFO: loaded from: classes3.dex */
public final class h<T> extends Single<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SingleSource f42996b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Consumer f42997c;

    public final class a implements com.perfectcorp.thirdparty.io.reactivex.f<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.io.reactivex.f f42998b;

        public a(com.perfectcorp.thirdparty.io.reactivex.f fVar) {
            this.f42998b = fVar;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onError(Throwable th) {
            try {
                h.this.f42997c.accept(th);
            } catch (Throwable th2) {
                th = new CompositeException(th, th2);
            }
            this.f42998b.onError(th);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onSubscribe(Disposable disposable) {
            this.f42998b.onSubscribe(disposable);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onSuccess(Object obj) {
            this.f42998b.onSuccess(obj);
        }
    }

    public h(SingleSource<T> singleSource, Consumer<? super Throwable> consumer) {
        this.f42996b = singleSource;
        this.f42997c = consumer;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Single
    public final void b(com.perfectcorp.thirdparty.io.reactivex.f fVar) {
        this.f42996b.a(new a(fVar));
    }
}
