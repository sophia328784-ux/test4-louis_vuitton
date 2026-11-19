package com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable;

import com.perfectcorp.thirdparty.io.reactivex.MaybeSource;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.ObservableSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.CompositeDisposable;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class s<T, R> extends com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.a<T, R> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f42912c;
    public final boolean d;

    public static final class a<T, R> extends AtomicInteger implements Disposable, com.perfectcorp.thirdparty.io.reactivex.e<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.io.reactivex.e f42913b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f42914c;
        public final Function g;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Disposable f42918i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public volatile boolean f42919j;
        public final CompositeDisposable d = new CompositeDisposable();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.io.reactivex.internal.util.c f42916f = new com.perfectcorp.thirdparty.io.reactivex.internal.util.c();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final AtomicInteger f42915e = new AtomicInteger(1);

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final AtomicReference f42917h = new AtomicReference();

        /* JADX INFO: renamed from: com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.s$a$a, reason: collision with other inner class name */
        public final class C0221a extends AtomicReference<Disposable> implements com.perfectcorp.thirdparty.io.reactivex.d<R>, Disposable {
            public C0221a() {
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
            public final void dispose() {
                com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.a(this);
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
            public final boolean isDisposed() {
                return com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.b(get());
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.d
            public final void onComplete() {
                a aVar = a.this;
                CompositeDisposable compositeDisposable = aVar.d;
                AtomicInteger atomicInteger = aVar.f42915e;
                compositeDisposable.c(this);
                if (aVar.get() == 0) {
                    if (aVar.compareAndSet(0, 1)) {
                        boolean z = atomicInteger.decrementAndGet() == 0;
                        com.perfectcorp.thirdparty.io.reactivex.internal.queue.c cVar = (com.perfectcorp.thirdparty.io.reactivex.internal.queue.c) aVar.f42917h.get();
                        if (!z || (cVar != null && !cVar.b())) {
                            if (aVar.decrementAndGet() != 0) {
                                aVar.b();
                                return;
                            }
                            return;
                        } else {
                            Throwable thB = com.perfectcorp.thirdparty.io.reactivex.internal.util.e.b(aVar.f42916f);
                            com.perfectcorp.thirdparty.io.reactivex.e eVar = aVar.f42913b;
                            if (thB != null) {
                                eVar.onError(thB);
                                return;
                            } else {
                                eVar.onComplete();
                                return;
                            }
                        }
                    }
                }
                atomicInteger.decrementAndGet();
                aVar.a();
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.d
            public final void onError(Throwable th) throws Throwable {
                a aVar = a.this;
                CompositeDisposable compositeDisposable = aVar.d;
                compositeDisposable.c(this);
                if (!com.perfectcorp.thirdparty.io.reactivex.internal.util.e.c(aVar.f42916f, th)) {
                    com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
                    return;
                }
                if (!aVar.f42914c) {
                    aVar.f42918i.dispose();
                    compositeDisposable.dispose();
                }
                aVar.f42915e.decrementAndGet();
                aVar.a();
            }

            @Override // com.perfectcorp.thirdparty.io.reactivex.d
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
            @Override // com.perfectcorp.thirdparty.io.reactivex.d, com.perfectcorp.thirdparty.io.reactivex.f
            public final void onSuccess(Object obj) {
                com.perfectcorp.thirdparty.io.reactivex.internal.queue.c cVar;
                com.perfectcorp.thirdparty.io.reactivex.internal.queue.c cVar2;
                AtomicReference atomicReference;
                a aVar = a.this;
                aVar.d.c(this);
                if (aVar.get() == 0) {
                    if (aVar.compareAndSet(0, 1)) {
                        aVar.f42913b.onNext(obj);
                        boolean z = aVar.f42915e.decrementAndGet() == 0;
                        com.perfectcorp.thirdparty.io.reactivex.internal.queue.c cVar3 = (com.perfectcorp.thirdparty.io.reactivex.internal.queue.c) aVar.f42917h.get();
                        if (z && (cVar3 == null || cVar3.b())) {
                            Throwable thB = com.perfectcorp.thirdparty.io.reactivex.internal.util.e.b(aVar.f42916f);
                            com.perfectcorp.thirdparty.io.reactivex.e eVar = aVar.f42913b;
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
                            cVar = (com.perfectcorp.thirdparty.io.reactivex.internal.queue.c) aVar.f42917h.get();
                            if (cVar != null) {
                                break;
                            }
                            cVar = new com.perfectcorp.thirdparty.io.reactivex.internal.queue.c(Observable.a());
                            atomicReference = aVar.f42917h;
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
                        aVar.f42915e.decrementAndGet();
                        if (aVar.getAndIncrement() != 0) {
                            return;
                        }
                    }
                } else {
                    loop0: while (true) {
                        cVar = (com.perfectcorp.thirdparty.io.reactivex.internal.queue.c) aVar.f42917h.get();
                        if (cVar != null) {
                            break;
                            break;
                        }
                        cVar = new com.perfectcorp.thirdparty.io.reactivex.internal.queue.c(Observable.a());
                        atomicReference = aVar.f42917h;
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
                        aVar.f42915e.decrementAndGet();
                        if (aVar.getAndIncrement() != 0) {
                            return;
                        }
                    }
                }
                aVar.b();
            }
        }

        public a(com.perfectcorp.thirdparty.io.reactivex.e eVar, Function function, boolean z) {
            this.f42913b = eVar;
            this.g = function;
            this.f42914c = z;
        }

        public final void a() {
            if (getAndIncrement() == 0) {
                b();
            }
        }

        public final void b() {
            com.perfectcorp.thirdparty.io.reactivex.e eVar = this.f42913b;
            AtomicInteger atomicInteger = this.f42915e;
            AtomicReference atomicReference = this.f42917h;
            int iAddAndGet = 1;
            while (!this.f42919j) {
                if (!this.f42914c && this.f42916f.get() != null) {
                    Throwable thB = com.perfectcorp.thirdparty.io.reactivex.internal.util.e.b(this.f42916f);
                    com.perfectcorp.thirdparty.io.reactivex.internal.queue.c cVar = (com.perfectcorp.thirdparty.io.reactivex.internal.queue.c) this.f42917h.get();
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
                    Throwable thB2 = com.perfectcorp.thirdparty.io.reactivex.internal.util.e.b(this.f42916f);
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
            com.perfectcorp.thirdparty.io.reactivex.internal.queue.c cVar3 = (com.perfectcorp.thirdparty.io.reactivex.internal.queue.c) this.f42917h.get();
            if (cVar3 != null) {
                cVar3.c();
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() throws Throwable {
            this.f42919j = true;
            this.f42918i.dispose();
            this.d.dispose();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.f42919j;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onComplete() {
            this.f42915e.decrementAndGet();
            a();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onError(Throwable th) throws Throwable {
            this.f42915e.decrementAndGet();
            if (!com.perfectcorp.thirdparty.io.reactivex.internal.util.e.c(this.f42916f, th)) {
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
                return;
            }
            if (!this.f42914c) {
                this.d.dispose();
            }
            a();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onNext(Object obj) throws Throwable {
            try {
                MaybeSource maybeSource = (MaybeSource) this.g.apply(obj);
                com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(maybeSource, "The mapper returned a null MaybeSource");
                this.f42915e.getAndIncrement();
                C0221a c0221a = new C0221a();
                if (this.f42919j || !this.d.b(c0221a)) {
                    return;
                }
                maybeSource.subscribe(c0221a);
            } catch (Throwable th) {
                this.f42918i.dispose();
                onError(th);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.c(this.f42918i, disposable)) {
                this.f42918i = disposable;
                this.f42913b.onSubscribe(this);
            }
        }
    }

    public s(ObservableSource<T> observableSource, Function<? super T, ? extends MaybeSource<? extends R>> function, boolean z) {
        super(observableSource);
        this.f42912c = function;
        this.d = z;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Observable
    public final void a(com.perfectcorp.thirdparty.io.reactivex.e eVar) {
        this.f42749b.subscribe(new a(eVar, this.f42912c, this.d));
    }
}
