package com.perfectcorp.thirdparty.io.reactivex.internal.operators.single;

import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;

/* JADX INFO: loaded from: classes3.dex */
public final class j<T> extends Single<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SingleSource f43004b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Consumer f43005c;

    public final class a implements com.perfectcorp.thirdparty.io.reactivex.f<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.f f43006b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public /* synthetic */ j f43007c;

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onError(Throwable th) {
            this.f43006b.onError(th);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onSubscribe(Disposable disposable) {
            this.f43006b.onSubscribe(disposable);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onSuccess(Object obj) {
            com.perfectcorp.thirdparty.io.reactivex.f fVar = this.f43006b;
            try {
                this.f43007c.f43005c.accept(obj);
                fVar.onSuccess(obj);
            } catch (Throwable th) {
                fVar.onError(th);
            }
        }
    }

    public j(SingleSource<T> singleSource, Consumer<? super T> consumer) {
        this.f43004b = singleSource;
        this.f43005c = consumer;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Single
    public final void b(com.perfectcorp.thirdparty.io.reactivex.f fVar) {
        a aVar = new a();
        aVar.f43007c = this;
        aVar.f43006b = fVar;
        this.f43004b.a(aVar);
    }
}
