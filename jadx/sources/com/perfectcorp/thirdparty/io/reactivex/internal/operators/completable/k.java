package com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable;

import com.perfectcorp.thirdparty.io.reactivex.Completable;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;

/* JADX INFO: loaded from: classes3.dex */
public final class k<T> extends Completable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SingleSource f42664b;

    public static final class a<T> implements com.perfectcorp.thirdparty.io.reactivex.f<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.a f42665b;

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onError(Throwable th) {
            this.f42665b.onError(th);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onSubscribe(Disposable disposable) {
            this.f42665b.onSubscribe(disposable);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onSuccess(Object obj) {
            this.f42665b.onComplete();
        }
    }

    public k(SingleSource<T> singleSource) {
        this.f42664b = singleSource;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Completable
    public final void c(com.perfectcorp.thirdparty.io.reactivex.a aVar) {
        a aVar2 = new a();
        aVar2.f42665b = aVar;
        this.f42664b.a(aVar2);
    }
}
