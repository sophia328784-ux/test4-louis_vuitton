package com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable;

import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.ObservableSource;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.functions.BiConsumer;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final class f<T, U> extends Single<U> implements com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.c<U> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ObservableSource f42832b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Callable f42833c;
    public final BiConsumer d;

    public static final class a<T, U> implements Disposable, com.perfectcorp.thirdparty.io.reactivex.e<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.f f42834b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public BiConsumer f42835c;
        public Object d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Disposable f42836e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f42837f;

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            this.f42836e.dispose();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.f42836e.isDisposed();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onComplete() {
            if (this.f42837f) {
                return;
            }
            this.f42837f = true;
            this.f42834b.onSuccess(this.d);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onError(Throwable th) {
            if (this.f42837f) {
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
            } else {
                this.f42837f = true;
                this.f42834b.onError(th);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onNext(Object obj) {
            if (this.f42837f) {
                return;
            }
            try {
                this.f42835c.accept(this.d, obj);
            } catch (Throwable th) {
                this.f42836e.dispose();
                onError(th);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.c(this.f42836e, disposable)) {
                this.f42836e = disposable;
                this.f42834b.onSubscribe(this);
            }
        }
    }

    public f(ObservableSource<T> observableSource, Callable<? extends U> callable, BiConsumer<? super U, ? super T> biConsumer) {
        this.f42832b = observableSource;
        this.f42833c = callable;
        this.d = biConsumer;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.c
    public final Observable a() {
        return new e(this.f42832b, this.f42833c, this.d);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Single
    public final void b(com.perfectcorp.thirdparty.io.reactivex.f fVar) {
        try {
            Object objCall = this.f42833c.call();
            com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(objCall, "The initialSupplier returned a null value");
            a aVar = new a();
            aVar.f42834b = fVar;
            aVar.f42835c = this.d;
            aVar.d = objCall;
            this.f42832b.subscribe(aVar);
        } catch (Throwable th) {
            fVar.onSubscribe(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a);
            fVar.onError(th);
        }
    }
}
