package com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable;

import com.perfectcorp.thirdparty.io.reactivex.Completable;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.exceptions.CompositeException;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class s<R> extends Completable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Callable f42692b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f42693c;
    public final Consumer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f42694e;

    public static final class a<R> extends AtomicReference<Object> implements com.perfectcorp.thirdparty.io.reactivex.a, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.a f42695b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Consumer f42696c;
        public boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Disposable f42697e;

        public final void a() {
            Object andSet = getAndSet(this);
            if (andSet != this) {
                try {
                    this.f42696c.accept(andSet);
                } catch (Throwable th) {
                    com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
                }
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            this.f42697e.dispose();
            this.f42697e = com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a;
            a();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.f42697e.isDisposed();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.a
        public final void onComplete() {
            com.perfectcorp.thirdparty.io.reactivex.a aVar = this.f42695b;
            this.f42697e = com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a;
            boolean z = this.d;
            if (z) {
                Object andSet = getAndSet(this);
                if (andSet == this) {
                    return;
                }
                try {
                    this.f42696c.accept(andSet);
                } catch (Throwable th) {
                    aVar.onError(th);
                    return;
                }
            }
            aVar.onComplete();
            if (z) {
                return;
            }
            a();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.a
        public final void onError(Throwable th) {
            this.f42697e = com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a;
            boolean z = this.d;
            if (z) {
                Object andSet = getAndSet(this);
                if (andSet == this) {
                    return;
                }
                try {
                    this.f42696c.accept(andSet);
                } catch (Throwable th2) {
                    th = new CompositeException(th, th2);
                }
            }
            this.f42695b.onError(th);
            if (z) {
                return;
            }
            a();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.a
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.c(this.f42697e, disposable)) {
                this.f42697e = disposable;
                this.f42695b.onSubscribe(this);
            }
        }
    }

    public s(Callable<R> callable, Function<? super R, ? extends com.perfectcorp.thirdparty.io.reactivex.b> function, Consumer<? super R> consumer, boolean z) {
        this.f42692b = callable;
        this.f42693c = function;
        this.d = consumer;
        this.f42694e = z;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Completable
    public final void c(com.perfectcorp.thirdparty.io.reactivex.a aVar) {
        boolean z = this.f42694e;
        Consumer consumer = this.d;
        try {
            Object objCall = this.f42692b.call();
            try {
                com.perfectcorp.thirdparty.io.reactivex.b bVar = (com.perfectcorp.thirdparty.io.reactivex.b) this.f42693c.apply(objCall);
                com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(bVar, "The completableFunction returned a null CompletableSource");
                a aVar2 = new a(objCall);
                aVar2.f42695b = aVar;
                aVar2.f42696c = consumer;
                aVar2.d = z;
                bVar.a(aVar2);
            } catch (Throwable th) {
                if (z) {
                    try {
                        consumer.accept(objCall);
                    } catch (Throwable th2) {
                        CompositeException compositeException = new CompositeException(th, th2);
                        aVar.onSubscribe(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a);
                        aVar.onError(compositeException);
                        return;
                    }
                }
                aVar.onSubscribe(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a);
                aVar.onError(th);
                if (z) {
                    return;
                }
                try {
                    consumer.accept(objCall);
                } catch (Throwable th3) {
                    com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th3);
                }
            }
        } catch (Throwable th4) {
            aVar.onSubscribe(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a);
            aVar.onError(th4);
        }
    }
}
