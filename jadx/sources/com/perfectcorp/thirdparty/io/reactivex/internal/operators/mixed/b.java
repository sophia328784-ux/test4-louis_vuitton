package com.perfectcorp.thirdparty.io.reactivex.internal.operators.mixed;

import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.ObservableSource;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.e;
import com.perfectcorp.thirdparty.io.reactivex.f;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.z;
import com.perfectcorp.thirdparty.io.reactivex.internal.util.c;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class b<T, R> extends Observable<R> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Observable f42733b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f42734c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f42735e;

    public static final class a<T, R> extends AtomicInteger implements Disposable, e<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final e f42736b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function f42737c;
        public final c d = new c();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final C0217a f42738e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.io.reactivex.internal.queue.c f42739f;
        public final int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Disposable f42740h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public volatile boolean f42741i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public volatile boolean f42742j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public Object f42743k;
        public volatile int l;

        /* JADX INFO: renamed from: com.perfectcorp.thirdparty.io.reactivex.internal.operators.mixed.b$a$a, reason: collision with other inner class name */
        public static final class C0217a<R> extends AtomicReference<Disposable> implements f<R> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public a f42744b;

            @Override // com.perfectcorp.thirdparty.io.reactivex.f
            public final void onError(Throwable th) {
                a aVar = this.f42744b;
                if (!com.perfectcorp.thirdparty.io.reactivex.internal.util.e.c(aVar.d, th)) {
                    com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
                    return;
                }
                if (aVar.g != com.perfectcorp.thirdparty.io.reactivex.internal.util.d.f43153c) {
                    aVar.f42740h.dispose();
                }
                aVar.l = 0;
                aVar.a();
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.f
            public final void onSubscribe(Disposable disposable) {
                com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.e(this, disposable);
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.f
            public final void onSuccess(Object obj) {
                a aVar = this.f42744b;
                aVar.f42743k = obj;
                aVar.l = 2;
                aVar.a();
            }
        }

        public a(e eVar, Function function, int i2, int i3) {
            this.f42736b = eVar;
            this.f42737c = function;
            this.g = i3;
            C0217a c0217a = new C0217a();
            c0217a.f42744b = this;
            this.f42738e = c0217a;
            this.f42739f = new com.perfectcorp.thirdparty.io.reactivex.internal.queue.c(i2);
        }

        public final void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            e eVar = this.f42736b;
            int i2 = this.g;
            com.perfectcorp.thirdparty.io.reactivex.internal.queue.c cVar = this.f42739f;
            c cVar2 = this.d;
            int iAddAndGet = 1;
            while (true) {
                if (!this.f42742j) {
                    int i3 = this.l;
                    if (cVar2.get() != null && (i2 == com.perfectcorp.thirdparty.io.reactivex.internal.util.d.f43151a || (i2 == com.perfectcorp.thirdparty.io.reactivex.internal.util.d.f43152b && i3 == 0))) {
                        break;
                    }
                    if (i3 == 0) {
                        boolean z = this.f42741i;
                        Object objA = cVar.a();
                        boolean z2 = objA == null;
                        if (z && z2) {
                            Throwable thB = com.perfectcorp.thirdparty.io.reactivex.internal.util.e.b(cVar2);
                            if (thB == null) {
                                eVar.onComplete();
                                return;
                            } else {
                                eVar.onError(thB);
                                return;
                            }
                        }
                        if (!z2) {
                            try {
                                SingleSource singleSource = (SingleSource) this.f42737c.apply(objA);
                                com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(singleSource, "The mapper returned a null SingleSource");
                                this.l = 1;
                                singleSource.a(this.f42738e);
                            } catch (Throwable th) {
                                this.f42740h.dispose();
                                cVar.c();
                                com.perfectcorp.thirdparty.io.reactivex.internal.util.e.c(cVar2, th);
                            }
                        }
                    } else if (i3 == 2) {
                        Object obj = this.f42743k;
                        this.f42743k = null;
                        eVar.onNext(obj);
                        this.l = 0;
                    }
                    eVar.onError(com.perfectcorp.thirdparty.io.reactivex.internal.util.e.b(cVar2));
                }
                cVar.c();
                this.f42743k = null;
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
            cVar.c();
            this.f42743k = null;
            eVar.onError(com.perfectcorp.thirdparty.io.reactivex.internal.util.e.b(cVar2));
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            this.f42742j = true;
            this.f42740h.dispose();
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.a(this.f42738e);
            if (getAndIncrement() == 0) {
                this.f42739f.c();
                this.f42743k = null;
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.f42742j;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onComplete() {
            this.f42741i = true;
            a();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onError(Throwable th) {
            if (!com.perfectcorp.thirdparty.io.reactivex.internal.util.e.c(this.d, th)) {
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
                return;
            }
            if (this.g == com.perfectcorp.thirdparty.io.reactivex.internal.util.d.f43151a) {
                com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.a(this.f42738e);
            }
            this.f42741i = true;
            a();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onNext(Object obj) {
            this.f42739f.a(obj);
            a();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.c(this.f42740h, disposable)) {
                this.f42740h = disposable;
                this.f42736b.onSubscribe(this);
            }
        }
    }

    public b(Observable<T> observable, Function<? super T, ? extends SingleSource<? extends R>> function, int i2, int i3) {
        this.f42733b = observable;
        this.f42734c = function;
        this.d = i2;
        this.f42735e = i3;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Observable
    public final void a(e eVar) {
        SingleSource singleSource;
        ObservableSource observableSource = this.f42733b;
        boolean z = observableSource instanceof Callable;
        Function function = this.f42734c;
        if (!z) {
            observableSource.subscribe(new a(eVar, function, this.f42735e, this.d));
            return;
        }
        try {
            Object objCall = ((Callable) observableSource).call();
            if (objCall != null) {
                singleSource = (SingleSource) function.apply(objCall);
                com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(singleSource, "The mapper returned a null SingleSource");
            } else {
                singleSource = null;
            }
            if (singleSource != null) {
                singleSource.a(z.d(eVar));
            } else {
                eVar.onSubscribe(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a);
                eVar.onComplete();
            }
        } catch (Throwable th) {
            eVar.onSubscribe(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a);
            eVar.onError(th);
        }
    }
}
