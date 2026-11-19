package com.perfectcorp.thirdparty.io.reactivex.internal.operators.single;

import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.exceptions.CompositeException;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class w<T> extends Single<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SingleSource f43040b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f43041c;

    public static final class a<T> extends AtomicReference<Disposable> implements Disposable, com.perfectcorp.thirdparty.io.reactivex.f<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.f f43042b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Function f43043c;

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
            com.perfectcorp.thirdparty.io.reactivex.f fVar = this.f43042b;
            try {
                SingleSource singleSource = (SingleSource) this.f43043c.apply(th);
                com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(singleSource, "The nextFunction returned a null SingleSource.");
                singleSource.a(new com.perfectcorp.thirdparty.io.reactivex.internal.observers.i(this, fVar));
            } catch (Throwable th2) {
                fVar.onError(new CompositeException(th, th2));
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.d(this, disposable)) {
                this.f43042b.onSubscribe(this);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onSuccess(Object obj) {
            this.f43042b.onSuccess(obj);
        }
    }

    public w(SingleSource<? extends T> singleSource, Function<? super Throwable, ? extends SingleSource<? extends T>> function) {
        this.f43040b = singleSource;
        this.f43041c = function;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Single
    public final void b(com.perfectcorp.thirdparty.io.reactivex.f fVar) {
        a aVar = new a();
        aVar.f43042b = fVar;
        aVar.f43043c = this.f43041c;
        this.f43040b.a(aVar);
    }
}
