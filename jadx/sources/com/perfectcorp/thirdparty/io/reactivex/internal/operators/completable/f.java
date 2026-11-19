package com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable;

import com.perfectcorp.thirdparty.io.reactivex.Completable;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Action;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final class f extends Completable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final com.perfectcorp.thirdparty.io.reactivex.b f42656b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Action f42657c;

    public static final class a extends AtomicInteger implements com.perfectcorp.thirdparty.io.reactivex.a, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.a f42658b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Action f42659c;
        public Disposable d;

        public final void a() {
            if (compareAndSet(0, 1)) {
                try {
                    this.f42659c.run();
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

        @Override // com.perfectcorp.thirdparty.io.reactivex.a
        public final void onComplete() {
            this.f42658b.onComplete();
            a();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.a
        public final void onError(Throwable th) {
            this.f42658b.onError(th);
            a();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.a
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.c(this.d, disposable)) {
                this.d = disposable;
                this.f42658b.onSubscribe(this);
            }
        }
    }

    public f(com.perfectcorp.thirdparty.io.reactivex.b bVar, Action action) {
        this.f42656b = bVar;
        this.f42657c = action;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Completable
    public final void c(com.perfectcorp.thirdparty.io.reactivex.a aVar) {
        a aVar2 = new a();
        aVar2.f42658b = aVar;
        aVar2.f42659c = this.f42657c;
        this.f42656b.a(aVar2);
    }
}
