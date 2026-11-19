package com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable;

import com.perfectcorp.thirdparty.io.reactivex.ObservableSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import java.util.ArrayDeque;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class p<T, U> extends com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.a<T, U> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f42887c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f42888e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f42889f;

    public static final class a<T, U> extends AtomicReference<Disposable> implements com.perfectcorp.thirdparty.io.reactivex.e<U> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f42890b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final b f42891c;
        public volatile boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public volatile com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i f42892e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f42893f;

        public a(b bVar, long j2) {
            this.f42890b = j2;
            this.f42891c = bVar;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onComplete() {
            this.d = true;
            this.f42891c.b();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onError(Throwable th) {
            if (!com.perfectcorp.thirdparty.io.reactivex.internal.util.e.c(this.f42891c.f42899i, th)) {
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
                return;
            }
            b bVar = this.f42891c;
            if (!bVar.d) {
                bVar.e();
            }
            this.d = true;
            this.f42891c.b();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onNext(Object obj) {
            int i2 = this.f42893f;
            b bVar = this.f42891c;
            if (i2 != 0) {
                bVar.b();
                return;
            }
            if (bVar.get() == 0 && bVar.compareAndSet(0, 1)) {
                bVar.f42894b.onNext(obj);
                if (bVar.decrementAndGet() == 0) {
                    return;
                }
            } else {
                com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i cVar = this.f42892e;
                if (cVar == null) {
                    cVar = new com.perfectcorp.thirdparty.io.reactivex.internal.queue.c(bVar.f42897f);
                    this.f42892e = cVar;
                }
                cVar.a(obj);
                if (bVar.getAndIncrement() != 0) {
                    return;
                }
            }
            bVar.c();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.d(this, disposable) && (disposable instanceof com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.d)) {
                com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.d dVar = (com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.d) disposable;
                int iA = dVar.a(7);
                if (iA == 1) {
                    this.f42893f = iA;
                    this.f42892e = dVar;
                    this.d = true;
                    this.f42891c.b();
                    return;
                }
                if (iA == 2) {
                    this.f42893f = iA;
                    this.f42892e = dVar;
                }
            }
        }
    }

    public static final class b<T, U> extends AtomicInteger implements Disposable, com.perfectcorp.thirdparty.io.reactivex.e<T> {
        public static final a[] r = new a[0];
        public static final a[] s = new a[0];

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.io.reactivex.e f42894b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function f42895c;
        public final boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f42896e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f42897f;
        public volatile com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.h g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public volatile boolean f42898h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.io.reactivex.internal.util.c f42899i = new com.perfectcorp.thirdparty.io.reactivex.internal.util.c();

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public volatile boolean f42900j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final AtomicReference f42901k;
        public Disposable l;
        public long m;
        public long n;
        public int o;
        public final ArrayDeque p;
        public int q;

        public b(com.perfectcorp.thirdparty.io.reactivex.e eVar, Function function, boolean z, int i2, int i3) {
            this.f42894b = eVar;
            this.f42895c = function;
            this.d = z;
            this.f42896e = i2;
            this.f42897f = i3;
            if (i2 != Integer.MAX_VALUE) {
                this.p = new ArrayDeque(i2);
            }
            this.f42901k = new AtomicReference(r);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void a(ObservableSource observableSource) {
            boolean z;
            do {
                z = false;
                if (observableSource instanceof Callable) {
                    try {
                        Object objCall = ((Callable) observableSource).call();
                        if (objCall != null) {
                            if (get() == 0 && compareAndSet(0, 1)) {
                                this.f42894b.onNext(objCall);
                                if (decrementAndGet() != 0) {
                                    c();
                                }
                            } else {
                                com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.h cVar = this.g;
                                if (cVar == null) {
                                    cVar = this.f42896e == Integer.MAX_VALUE ? new com.perfectcorp.thirdparty.io.reactivex.internal.queue.c(this.f42897f) : new com.perfectcorp.thirdparty.io.reactivex.internal.queue.b(this.f42896e);
                                    this.g = cVar;
                                }
                                if (cVar.a(objCall)) {
                                    if (getAndIncrement() != 0) {
                                        return;
                                    }
                                    c();
                                } else {
                                    onError(new IllegalStateException("Scalar queue full?!"));
                                }
                            }
                        }
                    } catch (Throwable th) {
                        com.perfectcorp.thirdparty.io.reactivex.internal.util.e.c(this.f42899i, th);
                        b();
                    }
                    if (this.f42896e == Integer.MAX_VALUE) {
                        return;
                    }
                    synchronized (this) {
                        try {
                            observableSource = (ObservableSource) this.p.poll();
                            if (observableSource == null) {
                                this.q--;
                                z = true;
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                } else {
                    long j2 = this.m;
                    this.m = 1 + j2;
                    a aVar = new a(this, j2);
                    AtomicReference atomicReference = this.f42901k;
                    while (true) {
                        a[] aVarArr = (a[]) atomicReference.get();
                        if (aVarArr == s) {
                            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.a(aVar);
                            return;
                        }
                        int length = aVarArr.length;
                        a[] aVarArr2 = new a[length + 1];
                        System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
                        aVarArr2[length] = aVar;
                        do {
                            if (atomicReference.compareAndSet(aVarArr, aVarArr2)) {
                                observableSource.subscribe(aVar);
                                return;
                            }
                        } while (atomicReference.get() == aVarArr);
                    }
                }
            } while (!z);
            b();
        }

        public final void b() {
            if (getAndIncrement() == 0) {
                c();
            }
        }

        /* JADX WARN: Code duplicated, block: B:119:0x012d A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:132:0x00f2 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:79:0x00eb  */
        /* JADX WARN: Code duplicated, block: B:82:0x00f1 A[PHI: r4
          0x00f1: PHI (r4v10 int) = (r4v8 int), (r4v11 int) binds: [B:69:0x00d0, B:81:0x00ef] A[DONT_GENERATE, DONT_INLINE]] */
        public final void c() {
            int size;
            boolean z;
            com.perfectcorp.thirdparty.io.reactivex.e eVar = this.f42894b;
            int iAddAndGet = 1;
            while (!f()) {
                com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.h hVar = this.g;
                if (hVar != null) {
                    while (!f()) {
                        Object objA = hVar.a();
                        if (objA != null) {
                            eVar.onNext(objA);
                        }
                    }
                    return;
                }
                boolean z2 = this.f42898h;
                com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.h hVar2 = this.g;
                a[] aVarArr = (a[]) this.f42901k.get();
                int length = aVarArr.length;
                int i2 = 0;
                if (this.f42896e != Integer.MAX_VALUE) {
                    synchronized (this) {
                        size = this.p.size();
                    }
                } else {
                    size = 0;
                }
                if (z2 && ((hVar2 == null || hVar2.b()) && length == 0 && size == 0)) {
                    Throwable thB = com.perfectcorp.thirdparty.io.reactivex.internal.util.e.b(this.f42899i);
                    if (thB != com.perfectcorp.thirdparty.io.reactivex.internal.util.e.f43154a) {
                        if (thB == null) {
                            eVar.onComplete();
                            return;
                        } else {
                            eVar.onError(thB);
                            return;
                        }
                    }
                    return;
                }
                if (length != 0) {
                    long j2 = this.n;
                    int i3 = this.o;
                    if (length <= i3 || aVarArr[i3].f42890b != j2) {
                        if (length <= i3) {
                            i3 = 0;
                        }
                        for (int i4 = 0; i4 < length && aVarArr[i3].f42890b != j2; i4++) {
                            i3++;
                            if (i3 == length) {
                                i3 = 0;
                            }
                        }
                        this.o = i3;
                        this.n = aVarArr[i3].f42890b;
                    }
                    int i5 = 0;
                    for (int i6 = 0; i6 < length; i6++) {
                        if (f()) {
                            return;
                        }
                        a aVar = aVarArr[i3];
                        com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i iVar = aVar.f42892e;
                        if (iVar != null) {
                            do {
                                try {
                                    Object objA2 = iVar.a();
                                    if (objA2 != null) {
                                        eVar.onNext(objA2);
                                    } else {
                                        z = aVar.d;
                                        com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i iVar2 = aVar.f42892e;
                                        if (z && (iVar2 == null || iVar2.b())) {
                                            d(aVar);
                                            if (f()) {
                                                return;
                                            } else {
                                                i5++;
                                            }
                                        }
                                        i3++;
                                        if (i3 == length) {
                                            i3 = 0;
                                        }
                                    }
                                } catch (Throwable th) {
                                    com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.a(aVar);
                                    com.perfectcorp.thirdparty.io.reactivex.internal.util.e.c(this.f42899i, th);
                                    if (f()) {
                                        return;
                                    }
                                    d(aVar);
                                    i5++;
                                    i3++;
                                    if (i3 == length) {
                                    }
                                }
                            } while (!f());
                            return;
                        }
                        z = aVar.d;
                        com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i iVar3 = aVar.f42892e;
                        if (z) {
                            d(aVar);
                            if (f()) {
                                return;
                            } else {
                                i5++;
                            }
                        }
                        i3++;
                        if (i3 == length) {
                            i3 = 0;
                        }
                    }
                    this.o = i3;
                    this.n = aVarArr[i3].f42890b;
                    i2 = i5;
                }
                if (i2 == 0) {
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else if (this.f42896e != Integer.MAX_VALUE) {
                    while (true) {
                        int i7 = i2 - 1;
                        if (i2 != 0) {
                            synchronized (this) {
                                try {
                                    ObservableSource observableSource = (ObservableSource) this.p.poll();
                                    if (observableSource == null) {
                                        this.q--;
                                    } else {
                                        a(observableSource);
                                    }
                                } catch (Throwable th2) {
                                    throw th2;
                                }
                            }
                            i2 = i7;
                        }
                    }
                } else {
                    continue;
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void d(a aVar) {
            a[] aVarArr;
            while (true) {
                AtomicReference atomicReference = this.f42901k;
                a[] aVarArr2 = (a[]) atomicReference.get();
                int length = aVarArr2.length;
                if (length == 0) {
                    return;
                }
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        i2 = -1;
                        break;
                    } else if (aVarArr2[i2] == aVar) {
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i2 < 0) {
                    return;
                }
                if (length == 1) {
                    aVarArr = r;
                } else {
                    a[] aVarArr3 = new a[length - 1];
                    System.arraycopy(aVarArr2, 0, aVarArr3, 0, i2);
                    System.arraycopy(aVarArr2, i2 + 1, aVarArr3, i2, (length - i2) - 1);
                    aVarArr = aVarArr3;
                }
                while (!atomicReference.compareAndSet(aVarArr2, aVarArr)) {
                    if (atomicReference.get() != aVarArr2) {
                    }
                }
                return;
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            Throwable thB;
            if (this.f42900j) {
                return;
            }
            this.f42900j = true;
            if (!e() || (thB = com.perfectcorp.thirdparty.io.reactivex.internal.util.e.b(this.f42899i)) == null || thB == com.perfectcorp.thirdparty.io.reactivex.internal.util.e.f43154a) {
                return;
            }
            com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(thB);
        }

        public final boolean e() {
            a[] aVarArr;
            this.l.dispose();
            AtomicReference atomicReference = this.f42901k;
            a[] aVarArr2 = (a[]) atomicReference.get();
            a[] aVarArr3 = s;
            if (aVarArr2 == aVarArr3 || (aVarArr = (a[]) atomicReference.getAndSet(aVarArr3)) == aVarArr3) {
                return false;
            }
            for (a aVar : aVarArr) {
                com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.a(aVar);
            }
            return true;
        }

        public final boolean f() {
            if (!this.f42900j) {
                Throwable th = this.f42899i.get();
                if (this.d || th == null) {
                    return false;
                }
                e();
                Throwable thB = com.perfectcorp.thirdparty.io.reactivex.internal.util.e.b(this.f42899i);
                if (thB != com.perfectcorp.thirdparty.io.reactivex.internal.util.e.f43154a) {
                    this.f42894b.onError(thB);
                }
            }
            return true;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.f42900j;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onComplete() {
            if (this.f42898h) {
                return;
            }
            this.f42898h = true;
            b();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onError(Throwable th) {
            if (this.f42898h) {
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
            } else if (!com.perfectcorp.thirdparty.io.reactivex.internal.util.e.c(this.f42899i, th)) {
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
            } else {
                this.f42898h = true;
                b();
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onNext(Object obj) {
            if (this.f42898h) {
                return;
            }
            try {
                ObservableSource observableSource = (ObservableSource) this.f42895c.apply(obj);
                com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(observableSource, "The mapper returned a null ObservableSource");
                if (this.f42896e != Integer.MAX_VALUE) {
                    synchronized (this) {
                        try {
                            int i2 = this.q;
                            if (i2 == this.f42896e) {
                                this.p.offer(observableSource);
                                return;
                            }
                            this.q = i2 + 1;
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                a(observableSource);
            } catch (Throwable th2) {
                this.l.dispose();
                onError(th2);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.c(this.l, disposable)) {
                this.l = disposable;
                this.f42894b.onSubscribe(this);
            }
        }
    }

    public p(ObservableSource<T> observableSource, Function<? super T, ? extends ObservableSource<? extends U>> function, boolean z, int i2, int i3) {
        super(observableSource);
        this.f42887c = function;
        this.d = z;
        this.f42888e = i2;
        this.f42889f = i3;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Observable
    public final void a(com.perfectcorp.thirdparty.io.reactivex.e eVar) {
        Function function = this.f42887c;
        ObservableSource observableSource = this.f42749b;
        if (aj.b(observableSource, eVar, function)) {
            return;
        }
        observableSource.subscribe(new b(eVar, this.f42887c, this.d, this.f42888e, this.f42889f));
    }
}
