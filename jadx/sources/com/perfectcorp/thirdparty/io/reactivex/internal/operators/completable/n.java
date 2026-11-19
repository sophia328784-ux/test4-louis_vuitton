package com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable;

import com.perfectcorp.thirdparty.io.reactivex.Completable;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.exceptions.CompositeException;
import com.perfectcorp.thirdparty.io.reactivex.functions.Action;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;

/* JADX INFO: loaded from: classes3.dex */
public final class n extends Completable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final com.perfectcorp.thirdparty.io.reactivex.b f42672b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Consumer f42673c;
    public final Consumer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Action f42674e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Action f42675f;
    public final Action g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Action f42676h;

    public final class a implements com.perfectcorp.thirdparty.io.reactivex.a, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.a f42677b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Disposable f42678c;
        public /* synthetic */ n d;

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            try {
                this.d.f42676h.run();
            } catch (Throwable th) {
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
            }
            this.f42678c.dispose();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.f42678c.isDisposed();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.a
        public final void onComplete() {
            com.perfectcorp.thirdparty.io.reactivex.a aVar = this.f42677b;
            n nVar = this.d;
            if (this.f42678c == com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a) {
                return;
            }
            try {
                nVar.f42674e.run();
                nVar.f42675f.run();
                aVar.onComplete();
                try {
                    nVar.g.run();
                } catch (Throwable th) {
                    com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
                }
            } catch (Throwable th2) {
                aVar.onError(th2);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.a
        public final void onError(Throwable th) {
            n nVar = this.d;
            if (this.f42678c == com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a) {
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
                return;
            }
            try {
                nVar.d.accept(th);
                nVar.f42675f.run();
            } catch (Throwable th2) {
                th = new CompositeException(th, th2);
            }
            this.f42677b.onError(th);
            try {
                nVar.g.run();
            } catch (Throwable th3) {
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th3);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.a
        public final void onSubscribe(Disposable disposable) {
            com.perfectcorp.thirdparty.io.reactivex.a aVar = this.f42677b;
            try {
                this.d.f42673c.accept(disposable);
                if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.c(this.f42678c, disposable)) {
                    this.f42678c = disposable;
                    aVar.onSubscribe(this);
                }
            } catch (Throwable th) {
                disposable.dispose();
                this.f42678c = com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a;
                aVar.onSubscribe(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a);
                aVar.onError(th);
            }
        }
    }

    public n(com.perfectcorp.thirdparty.io.reactivex.b bVar, Consumer<? super Disposable> consumer, Consumer<? super Throwable> consumer2, Action action, Action action2, Action action3, Action action4) {
        this.f42672b = bVar;
        this.f42673c = consumer;
        this.d = consumer2;
        this.f42674e = action;
        this.f42675f = action2;
        this.g = action3;
        this.f42676h = action4;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Completable
    public final void c(com.perfectcorp.thirdparty.io.reactivex.a aVar) {
        a aVar2 = new a();
        aVar2.d = this;
        aVar2.f42677b = aVar;
        this.f42672b.a(aVar2);
    }
}
