package com.perfectcorp.thirdparty.io.reactivex.internal.operators.single;

import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.exceptions.CompositeException;
import com.perfectcorp.thirdparty.io.reactivex.functions.Action;

/* JADX INFO: loaded from: classes3.dex */
public final class k<T> extends Single<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SingleSource f43008b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Action f43009c;

    public final class a implements com.perfectcorp.thirdparty.io.reactivex.f<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.f f43010b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public /* synthetic */ k f43011c;

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onError(Throwable th) {
            try {
                this.f43011c.f43009c.run();
            } catch (Throwable th2) {
                th = new CompositeException(th, th2);
            }
            this.f43010b.onError(th);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onSubscribe(Disposable disposable) {
            this.f43010b.onSubscribe(disposable);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onSuccess(Object obj) {
            com.perfectcorp.thirdparty.io.reactivex.f fVar = this.f43010b;
            try {
                this.f43011c.f43009c.run();
                fVar.onSuccess(obj);
            } catch (Throwable th) {
                fVar.onError(th);
            }
        }
    }

    public k(SingleSource<T> singleSource, Action action) {
        this.f43008b = singleSource;
        this.f43009c = action;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Single
    public final void b(com.perfectcorp.thirdparty.io.reactivex.f fVar) {
        a aVar = new a();
        aVar.f43011c = this;
        aVar.f43010b = fVar;
        this.f43008b.a(aVar);
    }
}
