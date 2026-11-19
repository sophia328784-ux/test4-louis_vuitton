package com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable;

import com.perfectcorp.thirdparty.io.reactivex.ObservableSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.exceptions.CompositeException;
import com.perfectcorp.thirdparty.io.reactivex.functions.Action;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;

/* JADX INFO: loaded from: classes3.dex */
public final class k<T> extends com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.a<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Consumer f42866c;
    public final Consumer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Action f42867e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Action f42868f;

    public static final class a<T> implements Disposable, com.perfectcorp.thirdparty.io.reactivex.e<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.e f42869b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Consumer f42870c;
        public Consumer d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Action f42871e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Action f42872f;
        public Disposable g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f42873h;

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            this.g.dispose();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.g.isDisposed();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onComplete() {
            if (this.f42873h) {
                return;
            }
            try {
                this.f42871e.run();
                this.f42873h = true;
                this.f42869b.onComplete();
                try {
                    this.f42872f.run();
                } catch (Throwable th) {
                    com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
                }
            } catch (Throwable th2) {
                onError(th2);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onError(Throwable th) {
            if (this.f42873h) {
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
                return;
            }
            this.f42873h = true;
            try {
                this.d.accept(th);
            } catch (Throwable th2) {
                th = new CompositeException(th, th2);
            }
            this.f42869b.onError(th);
            try {
                this.f42872f.run();
            } catch (Throwable th3) {
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th3);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onNext(Object obj) {
            if (this.f42873h) {
                return;
            }
            try {
                this.f42870c.accept(obj);
                this.f42869b.onNext(obj);
            } catch (Throwable th) {
                this.g.dispose();
                onError(th);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.c(this.g, disposable)) {
                this.g = disposable;
                this.f42869b.onSubscribe(this);
            }
        }
    }

    public k(ObservableSource<T> observableSource, Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action, Action action2) {
        super(observableSource);
        this.f42866c = consumer;
        this.d = consumer2;
        this.f42867e = action;
        this.f42868f = action2;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Observable
    public final void a(com.perfectcorp.thirdparty.io.reactivex.e eVar) {
        a aVar = new a();
        aVar.f42869b = eVar;
        aVar.f42870c = this.f42866c;
        aVar.d = this.d;
        aVar.f42871e = this.f42867e;
        aVar.f42872f = this.f42868f;
        this.f42749b.subscribe(aVar);
    }
}
