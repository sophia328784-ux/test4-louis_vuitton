package com.perfectcorp.thirdparty.io.reactivex.internal.operators.single;

import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;

/* JADX INFO: loaded from: classes3.dex */
public final class i<T> extends Single<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SingleSource f43000b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Consumer f43001c;

    public static final class a<T> implements com.perfectcorp.thirdparty.io.reactivex.f<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.f f43002b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Consumer f43003c;
        public boolean d;

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onError(Throwable th) {
            if (this.d) {
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
            } else {
                this.f43002b.onError(th);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onSubscribe(Disposable disposable) {
            com.perfectcorp.thirdparty.io.reactivex.f fVar = this.f43002b;
            try {
                this.f43003c.accept(disposable);
                fVar.onSubscribe(disposable);
            } catch (Throwable th) {
                this.d = true;
                disposable.dispose();
                fVar.onSubscribe(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a);
                fVar.onError(th);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onSuccess(Object obj) {
            if (this.d) {
                return;
            }
            this.f43002b.onSuccess(obj);
        }
    }

    public i(SingleSource<T> singleSource, Consumer<? super Disposable> consumer) {
        this.f43000b = singleSource;
        this.f43001c = consumer;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Single
    public final void b(com.perfectcorp.thirdparty.io.reactivex.f fVar) {
        a aVar = new a();
        aVar.f43002b = fVar;
        aVar.f43003c = this.f43001c;
        this.f43000b.a(aVar);
    }
}
