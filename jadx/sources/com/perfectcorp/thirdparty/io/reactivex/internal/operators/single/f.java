package com.perfectcorp.thirdparty.io.reactivex.internal.operators.single;

import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Action;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final class f<T> extends Single<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SingleSource f42988b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Action f42989c;

    public static final class a<T> extends AtomicInteger implements Disposable, com.perfectcorp.thirdparty.io.reactivex.f<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.f f42990b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Action f42991c;
        public Disposable d;

        public final void a() {
            if (compareAndSet(0, 1)) {
                try {
                    this.f42991c.run();
                } catch (Throwable th) {
                    com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
                }
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            this.d.dispose();
            a();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.d.isDisposed();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onError(Throwable th) {
            this.f42990b.onError(th);
            a();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.c(this.d, disposable)) {
                this.d = disposable;
                this.f42990b.onSubscribe(this);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onSuccess(Object obj) {
            this.f42990b.onSuccess(obj);
            a();
        }
    }

    public f(SingleSource<T> singleSource, Action action) {
        this.f42988b = singleSource;
        this.f42989c = action;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Single
    public final void b(com.perfectcorp.thirdparty.io.reactivex.f fVar) {
        a aVar = new a();
        aVar.f42990b = fVar;
        aVar.f42991c = this.f42989c;
        this.f42988b.a(aVar);
    }
}
