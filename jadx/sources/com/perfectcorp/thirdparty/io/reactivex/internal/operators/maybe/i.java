package com.perfectcorp.thirdparty.io.reactivex.internal.operators.maybe;

import com.perfectcorp.thirdparty.io.reactivex.MaybeSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.exceptions.CompositeException;
import com.perfectcorp.thirdparty.io.reactivex.functions.Action;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c;

/* JADX INFO: loaded from: classes3.dex */
public final class i<T> extends com.perfectcorp.thirdparty.io.reactivex.internal.operators.maybe.a<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Consumer f42720c;
    public final Consumer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Consumer f42721e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Action f42722f;
    public final Action g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Action f42723h;

    public static final class a<T> implements com.perfectcorp.thirdparty.io.reactivex.d<T>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.d f42724b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public i f42725c;
        public Disposable d;

        public final void a(Throwable th) {
            try {
                this.f42725c.f42721e.accept(th);
            } catch (Throwable th2) {
                th = new CompositeException(th, th2);
            }
            this.d = com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a;
            this.f42724b.onError(th);
            b();
        }

        public final void b() {
            try {
                this.f42725c.g.run();
            } catch (Throwable th) {
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            try {
                this.f42725c.f42723h.run();
            } catch (Throwable th) {
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
            }
            this.d.dispose();
            this.d = com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.d.isDisposed();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.d
        public final void onComplete() {
            Disposable disposable = this.d;
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b bVar = com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a;
            if (disposable == bVar) {
                return;
            }
            try {
                this.f42725c.f42722f.run();
                this.d = bVar;
                this.f42724b.onComplete();
                b();
            } catch (Throwable th) {
                a(th);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.d
        public final void onError(Throwable th) {
            if (this.d == com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a) {
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
            } else {
                a(th);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.d
        public final void onSubscribe(Disposable disposable) {
            com.perfectcorp.thirdparty.io.reactivex.d dVar = this.f42724b;
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.c(this.d, disposable)) {
                try {
                    this.f42725c.f42720c.accept(disposable);
                    this.d = disposable;
                    dVar.onSubscribe(this);
                } catch (Throwable th) {
                    disposable.dispose();
                    this.d = com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a;
                    dVar.onSubscribe(c.f42601a);
                    dVar.onError(th);
                }
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.d, com.perfectcorp.thirdparty.io.reactivex.f
        public final void onSuccess(Object obj) {
            Disposable disposable = this.d;
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b bVar = com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a;
            if (disposable == bVar) {
                return;
            }
            try {
                this.f42725c.d.accept(obj);
                this.d = bVar;
                this.f42724b.onSuccess(obj);
                b();
            } catch (Throwable th) {
                a(th);
            }
        }
    }

    public i(MaybeSource<T> maybeSource, Consumer<? super Disposable> consumer, Consumer<? super T> consumer2, Consumer<? super Throwable> consumer3, Action action, Action action2, Action action3) {
        super(maybeSource);
        this.f42720c = consumer;
        this.d = consumer2;
        this.f42721e = consumer3;
        this.f42722f = action;
        this.g = action2;
        this.f42723h = action3;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Maybe
    public final void a(com.perfectcorp.thirdparty.io.reactivex.d dVar) {
        a aVar = new a();
        aVar.f42724b = dVar;
        aVar.f42725c = this;
        this.f42703b.subscribe(aVar);
    }
}
