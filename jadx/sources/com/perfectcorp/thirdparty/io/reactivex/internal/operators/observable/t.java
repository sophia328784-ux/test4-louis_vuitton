package com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable;

import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.ObservableSource;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.CompositeDisposable;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class t<T, R> extends com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.a<T, R> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f42921c;
    public final boolean d;

    public static final class a<T, R> extends AtomicInteger implements Disposable, com.perfectcorp.thirdparty.io.reactivex.e<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.io.reactivex.e f42922b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f42923c;
        public final Function g;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Disposable f42927i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public volatile boolean f42928j;
        public final CompositeDisposable d = new CompositeDisposable();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.io.reactivex.internal.util.c f42925f = new com.perfectcorp.thirdparty.io.reactivex.internal.util.c();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final AtomicInteger f42924e = new AtomicInteger(1);

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final AtomicReference f42926h = new AtomicReference();

        /* JADX INFO: renamed from: com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.t$a$a, reason: collision with other inner class name */
        public final class C0222a extends AtomicReference<Disposable> implements Disposable, com.perfectcorp.thirdparty.io.reactivex.f<R> {
            public C0222a() {
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
            public final void dispose() {
                com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.a(this);
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
            public final boolean isDisposed() {
                return com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.b(get());
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.f
            public final void onError(Throwable th) throws Throwable {
                a aVar = a.this;
                CompositeDisposable compositeDisposable = aVar.d;
                compositeDisposable.c(this);
                if (!com.perfectcorp.thirdparty.io.reactivex.internal.util.e.c(aVar.f42925f, th)) {
                    com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
                    return;
                }
                if (!aVar.f42923c) {
                    aVar.f42927i.dispose();
                    compositeDisposable.dispose();
                }
                aVar.f42924e.decrementAndGet();
                aVar.a();
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.f
            public final void onSubscribe(Disposable disposable) {
                com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.d(this, disposable);
            }

            /* JADX WARN: Code duplicated, block: B:26:0x005a  */
            /* JADX WARN: Code duplicated, block: B:40:0x0084  */
            /* JADX WARN: Code duplicated, block: B:43:0x006e A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:45:0x0058 A[EDGE_INSN: B:45:0x0058->B:25:0x0058 BREAK  A[LOOP:0: B:23:0x004e->B:48:?], SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:46:0x0058 A[EDGE_INSN: B:46:0x0058->B:25:0x0058 BREAK  A[LOOP:0: B:23:0x004e->B:48:?, LOOP_LABEL: LOOP:0: B:23:0x004e->B:48:?], SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:47:? A[SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:51:? A[RETURN, SYNTHETIC] */
            @Override // com.perfectcorp.thirdparty.io.reactivex.f
            public final void onSuccess(Object obj) {
                com.perfectcorp.thirdparty.io.reactivex.internal.queue.c cVar;
                com.perfectcorp.thirdparty.io.reactivex.internal.queue.c cVar2;
                AtomicReference atomicReference;
                a aVar = a.this;
                aVar.d.c(this);
                if (aVar.get() == 0) {
                    if (aVar.compareAndSet(0, 1)) {
                        aVar.f42922b.onNext(obj);
                        boolean z = aVar.f42924e.decrementAndGet() == 0;
                        com.perfectcorp.thirdparty.io.reactivex.internal.queue.c cVar3 = (com.perfectcorp.thirdparty.io.reactivex.internal.queue.c) aVar.f42926h.get();
                        if (z && (cVar3 == null || cVar3.b())) {
                            Throwable thB = com.perfectcorp.thirdparty.io.reactivex.internal.util.e.b(aVar.f42925f);
                            com.perfectcorp.thirdparty.io.reactivex.e eVar = aVar.f42922b;
                            if (thB != null) {
                                eVar.onError(thB);
                                return;
                            } else {
                                eVar.onComplete();
                                return;
                            }
                        }
                        if (aVar.decrementAndGet() == 0) {
                            return;
                        }
                    } else {
                        loop0: while (true) {
                            cVar = (com.perfectcorp.thirdparty.io.reactivex.internal.queue.c) aVar.f42926h.get();
                            if (cVar != null) {
                                break;
                            }
                            cVar = new com.perfectcorp.thirdparty.io.reactivex.internal.queue.c(Observable.a());
                            atomicReference = aVar.f42926h;
                            do {
                                if (atomicReference.compareAndSet(null, cVar)) {
                                    break loop0;
                                }
                            } while (atomicReference.get() == null);
                        }
                        cVar2 = cVar;
                        synchronized (cVar2) {
                            cVar2.a(obj);
                        }
                        aVar.f42924e.decrementAndGet();
                        if (aVar.getAndIncrement() != 0) {
                            return;
                        }
                    }
                } else {
                    loop0: while (true) {
                        cVar = (com.perfectcorp.thirdparty.io.reactivex.internal.queue.c) aVar.f42926h.get();
                        if (cVar != null) {
                            break;
                            break;
                        }
                        cVar = new com.perfectcorp.thirdparty.io.reactivex.internal.queue.c(Observable.a());
                        atomicReference = aVar.f42926h;
                        do {
                            if (atomicReference.compareAndSet(null, cVar)) {
                                break loop0;
                                break loop0;
                            }
                        } while (atomicReference.get() == null);
                    }
                    cVar2 = cVar;
                    synchronized (cVar2) {
                        cVar2.a(obj);
                        aVar.f42924e.decrementAndGet();
                        if (aVar.getAndIncrement() != 0) {
                            return;
                        }
                    }
                }
                aVar.b();
            }
        }

        public a(com.perfectcorp.thirdparty.io.reactivex.e eVar, Function function, boolean z) {
            this.f42922b = eVar;
            this.g = function;
            this.f42923c = z;
        }

        public final void a() {
            if (getAndIncrement() == 0) {
                b();
            }
        }

        public final void b() {
            com.perfectcorp.thirdparty.io.reactivex.e eVar = this.f42922b;
            AtomicInteger atomicInteger = this.f42924e;
            AtomicReference atomicReference = this.f42926h;
            int iAddAndGet = 1;
            while (!this.f42928j) {
                if (!this.f42923c && this.f42925f.get() != null) {
                    Throwable thB = com.perfectcorp.thirdparty.io.reactivex.internal.util.e.b(this.f42925f);
                    com.perfectcorp.thirdparty.io.reactivex.internal.queue.c cVar = (com.perfectcorp.thirdparty.io.reactivex.internal.queue.c) this.f42926h.get();
                    if (cVar != null) {
                        cVar.c();
                    }
                    eVar.onError(thB);
                    return;
                }
                boolean z = atomicInteger.get() == 0;
                com.perfectcorp.thirdparty.io.reactivex.internal.queue.c cVar2 = (com.perfectcorp.thirdparty.io.reactivex.internal.queue.c) atomicReference.get();
                Object objA = cVar2 != null ? cVar2.a() : null;
                boolean z2 = objA == null;
                if (z && z2) {
                    Throwable thB2 = com.perfectcorp.thirdparty.io.reactivex.internal.util.e.b(this.f42925f);
                    if (thB2 != null) {
                        eVar.onError(thB2);
                        return;
                    } else {
                        eVar.onComplete();
                        return;
                    }
                }
                if (z2) {
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    eVar.onNext(objA);
                }
            }
            com.perfectcorp.thirdparty.io.reactivex.internal.queue.c cVar3 = (com.perfectcorp.thirdparty.io.reactivex.internal.queue.c) this.f42926h.get();
            if (cVar3 != null) {
                cVar3.c();
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() throws Throwable {
            this.f42928j = true;
            this.f42927i.dispose();
            this.d.dispose();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.f42928j;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onComplete() {
            this.f42924e.decrementAndGet();
            a();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onError(Throwable th) throws Throwable {
            this.f42924e.decrementAndGet();
            if (!com.perfectcorp.thirdparty.io.reactivex.internal.util.e.c(this.f42925f, th)) {
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
                return;
            }
            if (!this.f42923c) {
                this.d.dispose();
            }
            a();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onNext(Object obj) throws Throwable {
            try {
                SingleSource singleSource = (SingleSource) this.g.apply(obj);
                com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(singleSource, "The mapper returned a null SingleSource");
                this.f42924e.getAndIncrement();
                C0222a c0222a = new C0222a();
                if (this.f42928j || !this.d.b(c0222a)) {
                    return;
                }
                singleSource.a(c0222a);
            } catch (Throwable th) {
                this.f42927i.dispose();
                onError(th);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.c(this.f42927i, disposable)) {
                this.f42927i = disposable;
                this.f42922b.onSubscribe(this);
            }
        }
    }

    public t(ObservableSource<T> observableSource, Function<? super T, ? extends SingleSource<? extends R>> function, boolean z) {
        super(observableSource);
        this.f42921c = function;
        this.d = z;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Observable
    public final void a(com.perfectcorp.thirdparty.io.reactivex.e eVar) {
        this.f42749b.subscribe(new a(eVar, this.f42921c, this.d));
    }
}
