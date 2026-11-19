package com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable;

import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.ObservableSource;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public abstract class aj {

    public static final class b<T, R> extends Observable<R> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f42785b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Function f42786c;

        @Override // com.perfectcorp.thirdparty.io.reactivex.Observable
        public final void a(com.perfectcorp.thirdparty.io.reactivex.e eVar) {
            try {
                ObservableSource observableSource = (ObservableSource) this.f42786c.apply(this.f42785b);
                com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(observableSource, "The mapper returned a null ObservableSource");
                if (!(observableSource instanceof Callable)) {
                    observableSource.subscribe(eVar);
                    return;
                }
                try {
                    Object objCall = ((Callable) observableSource).call();
                    if (objCall == null) {
                        eVar.onSubscribe(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a);
                        eVar.onComplete();
                    } else {
                        a aVar = new a(eVar, objCall);
                        eVar.onSubscribe(aVar);
                        aVar.run();
                    }
                } catch (Throwable th) {
                    eVar.onSubscribe(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a);
                    eVar.onError(th);
                }
            } catch (Throwable th2) {
                eVar.onSubscribe(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a);
                eVar.onError(th2);
            }
        }
    }

    public static Observable a(Object obj, Function function) {
        b bVar = new b();
        bVar.f42785b = obj;
        bVar.f42786c = function;
        return bVar;
    }

    public static boolean b(ObservableSource observableSource, com.perfectcorp.thirdparty.io.reactivex.e eVar, Function function) {
        if (!(observableSource instanceof Callable)) {
            return false;
        }
        try {
            Object objCall = ((Callable) observableSource).call();
            if (objCall == null) {
                eVar.onSubscribe(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a);
                eVar.onComplete();
                return true;
            }
            try {
                ObservableSource observableSource2 = (ObservableSource) function.apply(objCall);
                com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(observableSource2, "The mapper returned a null ObservableSource");
                if (!(observableSource2 instanceof Callable)) {
                    observableSource2.subscribe(eVar);
                    return true;
                }
                try {
                    Object objCall2 = ((Callable) observableSource2).call();
                    if (objCall2 == null) {
                        eVar.onSubscribe(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a);
                        eVar.onComplete();
                        return true;
                    }
                    a aVar = new a(eVar, objCall2);
                    eVar.onSubscribe(aVar);
                    aVar.run();
                    return true;
                } catch (Throwable th) {
                    eVar.onSubscribe(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a);
                    eVar.onError(th);
                    return true;
                }
            } catch (Throwable th2) {
                eVar.onSubscribe(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a);
                eVar.onError(th2);
                return true;
            }
        } catch (Throwable th3) {
            eVar.onSubscribe(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a);
            eVar.onError(th3);
            return true;
        }
    }

    public static final class a<T> extends AtomicInteger implements com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.d<T>, Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private com.perfectcorp.thirdparty.io.reactivex.e<? super T> f42783a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private T f42784b;

        public a(com.perfectcorp.thirdparty.io.reactivex.e<? super T> eVar, T t) {
            this.f42783a = eVar;
            this.f42784b = t;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
        public final T a() throws Exception {
            if (get() != 1) {
                return null;
            }
            lazySet(3);
            return this.f42784b;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
        public final boolean b() {
            return get() != 1;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
        public final void c() {
            lazySet(3);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            set(3);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return get() == 3;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (get() == 0 && compareAndSet(0, 2)) {
                this.f42783a.onNext(this.f42784b);
                if (get() == 2) {
                    lazySet(3);
                    this.f42783a.onComplete();
                }
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.e
        public final int a(int i2) {
            if ((i2 & 1) == 0) {
                return 0;
            }
            lazySet(1);
            return 1;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
        public final boolean a(T t) {
            throw new UnsupportedOperationException("Should not be called!");
        }
    }
}
