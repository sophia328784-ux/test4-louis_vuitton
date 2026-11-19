package com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable;

import com.perfectcorp.thirdparty.io.reactivex.ObservableSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.observables.GroupedObservable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class z<T, K, V> extends com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.a<T, GroupedObservable<K, V>> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f42945c;
    public final Function d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f42946e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f42947f;

    public static final class a<T, K, V> extends AtomicInteger implements Disposable, com.perfectcorp.thirdparty.io.reactivex.e<T> {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final Object f42948j = new Object();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.io.reactivex.e f42949b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function f42950c;
        public final Function d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f42951e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f42952f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Disposable f42953h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final AtomicBoolean f42954i = new AtomicBoolean();
        public final ConcurrentHashMap g = new ConcurrentHashMap();

        public a(com.perfectcorp.thirdparty.io.reactivex.e<? super GroupedObservable<K, V>> eVar, Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, int i2, boolean z) {
            this.f42949b = eVar;
            this.f42950c = function;
            this.d = function2;
            this.f42951e = i2;
            this.f42952f = z;
            lazySet(1);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            if (this.f42954i.compareAndSet(false, true) && decrementAndGet() == 0) {
                this.f42953h.dispose();
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.f42954i.get();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onComplete() {
            ArrayList arrayList = new ArrayList(this.g.values());
            this.g.clear();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                c cVar = ((b) it.next()).f42955c;
                cVar.f42959f = true;
                cVar.a();
            }
            this.f42949b.onComplete();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onError(Throwable th) {
            ArrayList arrayList = new ArrayList(this.g.values());
            this.g.clear();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                c cVar = ((b) it.next()).f42955c;
                cVar.g = th;
                cVar.f42959f = true;
                cVar.a();
            }
            this.f42949b.onError(th);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onNext(Object obj) {
            try {
                Object objApply = this.f42950c.apply(obj);
                Object obj2 = objApply != null ? objApply : f42948j;
                ConcurrentHashMap concurrentHashMap = this.g;
                b bVar = (b) concurrentHashMap.get(obj2);
                if (bVar == null) {
                    if (this.f42954i.get()) {
                        return;
                    }
                    b bVar2 = new b(objApply, new c(this.f42951e, this, objApply, this.f42952f));
                    concurrentHashMap.put(obj2, bVar2);
                    getAndIncrement();
                    this.f42949b.onNext(bVar2);
                    bVar = bVar2;
                }
                try {
                    Object objApply2 = this.d.apply(obj);
                    com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(objApply2, "The value supplied is null");
                    c cVar = bVar.f42955c;
                    cVar.f42957c.a(objApply2);
                    cVar.a();
                } catch (Throwable th) {
                    this.f42953h.dispose();
                    onError(th);
                }
            } catch (Throwable th2) {
                this.f42953h.dispose();
                onError(th2);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.c(this.f42953h, disposable)) {
                this.f42953h = disposable;
                this.f42949b.onSubscribe(this);
            }
        }
    }

    public static final class b<K, T> extends GroupedObservable<K, T> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final c f42955c;

        public b(Object obj, c cVar) {
            this.f43162b = obj;
            this.f42955c = cVar;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.Observable
        public final void a(com.perfectcorp.thirdparty.io.reactivex.e eVar) {
            this.f42955c.subscribe(eVar);
        }
    }

    public static final class c<T, K> extends AtomicInteger implements ObservableSource<T>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f42956b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.io.reactivex.internal.queue.c f42957c;
        public final a d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f42958e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public volatile boolean f42959f;
        public Throwable g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final AtomicBoolean f42960h = new AtomicBoolean();

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final AtomicBoolean f42961i = new AtomicBoolean();

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final AtomicReference f42962j = new AtomicReference();

        public c(int i2, a aVar, Object obj, boolean z) {
            this.f42957c = new com.perfectcorp.thirdparty.io.reactivex.internal.queue.c(i2);
            this.d = aVar;
            this.f42956b = obj;
            this.f42958e = z;
        }

        public final void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            com.perfectcorp.thirdparty.io.reactivex.internal.queue.c cVar = this.f42957c;
            boolean z = this.f42958e;
            com.perfectcorp.thirdparty.io.reactivex.e eVar = (com.perfectcorp.thirdparty.io.reactivex.e) this.f42962j.get();
            int iAddAndGet = 1;
            while (true) {
                if (eVar != null) {
                    while (true) {
                        boolean z2 = this.f42959f;
                        Object objA = cVar.a();
                        boolean z3 = objA == null;
                        com.perfectcorp.thirdparty.io.reactivex.internal.queue.c cVar2 = this.f42957c;
                        AtomicReference atomicReference = this.f42962j;
                        if (!this.f42960h.get()) {
                            if (z2) {
                                if (!z) {
                                    Throwable th = this.g;
                                    if (th != null) {
                                        cVar2.c();
                                        atomicReference.lazySet(null);
                                        eVar.onError(th);
                                        return;
                                    } else if (z3) {
                                        atomicReference.lazySet(null);
                                        eVar.onComplete();
                                        return;
                                    }
                                } else if (z3) {
                                    Throwable th2 = this.g;
                                    atomicReference.lazySet(null);
                                    if (th2 != null) {
                                        eVar.onError(th2);
                                        return;
                                    } else {
                                        eVar.onComplete();
                                        return;
                                    }
                                }
                            }
                            if (z3) {
                                break;
                            } else {
                                eVar.onNext(objA);
                            }
                        } else {
                            cVar2.c();
                            a aVar = this.d;
                            Object obj = this.f42956b;
                            aVar.getClass();
                            if (obj == null) {
                                obj = a.f42948j;
                            }
                            aVar.g.remove(obj);
                            if (aVar.decrementAndGet() == 0) {
                                aVar.f42953h.dispose();
                            }
                            atomicReference.lazySet(null);
                            return;
                        }
                    }
                }
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
                if (eVar == null) {
                    eVar = (com.perfectcorp.thirdparty.io.reactivex.e) this.f42962j.get();
                }
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            if (this.f42960h.compareAndSet(false, true) && getAndIncrement() == 0) {
                this.f42962j.lazySet(null);
                a aVar = this.d;
                aVar.getClass();
                Object obj = this.f42956b;
                if (obj == null) {
                    obj = a.f42948j;
                }
                aVar.g.remove(obj);
                if (aVar.decrementAndGet() == 0) {
                    aVar.f42953h.dispose();
                }
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.f42960h.get();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.ObservableSource
        public final void subscribe(com.perfectcorp.thirdparty.io.reactivex.e eVar) {
            if (!this.f42961i.compareAndSet(false, true)) {
                com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.c(new IllegalStateException("Only one Observer allowed!"), eVar);
                return;
            }
            eVar.onSubscribe(this);
            AtomicReference atomicReference = this.f42962j;
            atomicReference.lazySet(eVar);
            if (this.f42960h.get()) {
                atomicReference.lazySet(null);
            } else {
                a();
            }
        }
    }

    public z(ObservableSource<T> observableSource, Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, int i2, boolean z) {
        super(observableSource);
        this.f42945c = function;
        this.d = function2;
        this.f42946e = i2;
        this.f42947f = z;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Observable
    public final void a(com.perfectcorp.thirdparty.io.reactivex.e eVar) {
        this.f42749b.subscribe(new a(eVar, this.f42945c, this.d, this.f42946e, this.f42947f));
    }
}
