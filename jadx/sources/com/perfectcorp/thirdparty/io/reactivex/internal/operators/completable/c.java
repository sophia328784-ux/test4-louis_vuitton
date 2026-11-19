package com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable;

import com.perfectcorp.thirdparty.io.reactivex.Completable;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final class c extends Completable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final com.perfectcorp.thirdparty.io.reactivex.b[] f42648b;

    public static final class a extends AtomicInteger implements com.perfectcorp.thirdparty.io.reactivex.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.io.reactivex.a f42649b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.io.reactivex.b[] f42650c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.io.reactivex.internal.disposables.e f42651e = new com.perfectcorp.thirdparty.io.reactivex.internal.disposables.e();

        public a(com.perfectcorp.thirdparty.io.reactivex.a aVar, com.perfectcorp.thirdparty.io.reactivex.b[] bVarArr) {
            this.f42649b = aVar;
            this.f42650c = bVarArr;
        }

        public final void a() {
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.e eVar = this.f42651e;
            if (!eVar.isDisposed() && getAndIncrement() == 0) {
                while (!eVar.isDisposed()) {
                    int i2 = this.d;
                    this.d = i2 + 1;
                    com.perfectcorp.thirdparty.io.reactivex.b[] bVarArr = this.f42650c;
                    if (i2 == bVarArr.length) {
                        this.f42649b.onComplete();
                        return;
                    } else {
                        bVarArr[i2].a(this);
                        if (decrementAndGet() == 0) {
                            return;
                        }
                    }
                }
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.a
        public final void onComplete() {
            a();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.a
        public final void onError(Throwable th) {
            this.f42649b.onError(th);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.a
        public final void onSubscribe(Disposable disposable) {
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.e(this.f42651e, disposable);
        }
    }

    public c(com.perfectcorp.thirdparty.io.reactivex.b[] bVarArr) {
        this.f42648b = bVarArr;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Completable
    public final void c(com.perfectcorp.thirdparty.io.reactivex.a aVar) {
        a aVar2 = new a(aVar, this.f42648b);
        aVar.onSubscribe(aVar2.f42651e);
        aVar2.a();
    }
}
