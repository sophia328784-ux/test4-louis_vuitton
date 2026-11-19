package com.perfectcorp.thirdparty.io.reactivex.subjects;

import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.e;
import com.perfectcorp.thirdparty.io.reactivex.internal.util.f;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class ReplaySubject<T> extends Subject<T> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final c[] f43180e = new c[0];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final c[] f43181f = new c[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public d f43182b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AtomicReference f43183c;
    public boolean d;

    public static final class a<T> extends AtomicReference<a<T>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f43184b;

        public a(Object obj) {
            this.f43184b = obj;
        }
    }

    public interface b<T> {
    }

    public static final class c<T> extends AtomicInteger implements Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final e f43185b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ReplaySubject f43186c;
        public Object d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public volatile boolean f43187e;

        public c(e eVar, ReplaySubject replaySubject) {
            this.f43185b = eVar;
            this.f43186c = replaySubject;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            if (this.f43187e) {
                return;
            }
            this.f43187e = true;
            this.f43186c.e(this);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.f43187e;
        }
    }

    public static final class d<T> extends AtomicReference<Object> implements b<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f43188b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f43189c;
        public volatile a d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public a f43190e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public volatile boolean f43191f;

        public final void a(c cVar) {
            if (cVar.getAndIncrement() != 0) {
                return;
            }
            e eVar = cVar.f43185b;
            a<T> aVar = (a) cVar.d;
            if (aVar == null) {
                aVar = this.d;
            }
            int iAddAndGet = 1;
            while (!cVar.f43187e) {
                a<T> aVar2 = aVar.get();
                if (aVar2 != null) {
                    Object obj = aVar2.f43184b;
                    if (this.f43191f && aVar2.get() == null) {
                        if (f.e(obj)) {
                            eVar.onComplete();
                        } else {
                            eVar.onError(f.f(obj));
                        }
                        cVar.d = null;
                        cVar.f43187e = true;
                        return;
                    }
                    eVar.onNext(obj);
                    aVar = aVar2;
                } else if (aVar.get() == null) {
                    cVar.d = aVar;
                    iAddAndGet = cVar.addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    continue;
                }
            }
            cVar.d = null;
        }

        public final void b(Serializable serializable) {
            a aVar = new a(serializable);
            a aVar2 = this.f43190e;
            this.f43190e = aVar;
            this.f43189c++;
            aVar2.lazySet(aVar);
            a aVar3 = this.d;
            if (aVar3.f43184b != null) {
                a aVar4 = new a(null);
                aVar4.lazySet(aVar3.get());
                this.d = aVar4;
            }
            this.f43191f = true;
        }
    }

    public static ReplaySubject f() {
        d dVar = new d();
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.a(1, "maxSize");
        dVar.f43188b = 1;
        a aVar = new a(null);
        dVar.f43190e = aVar;
        dVar.d = aVar;
        ReplaySubject replaySubject = new ReplaySubject();
        replaySubject.f43182b = dVar;
        replaySubject.f43183c = new AtomicReference(f43180e);
        return replaySubject;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.perfectcorp.thirdparty.io.reactivex.Observable
    public final void a(e eVar) {
        c cVar = new c(eVar, this);
        eVar.onSubscribe(cVar);
        if (cVar.f43187e) {
            return;
        }
        loop0: while (true) {
            c[] cVarArr = (c[]) this.f43183c.get();
            if (cVarArr == f43181f) {
                break;
            }
            int length = cVarArr.length;
            c[] cVarArr2 = new c[length + 1];
            System.arraycopy(cVarArr, 0, cVarArr2, 0, length);
            cVarArr2[length] = cVar;
            AtomicReference atomicReference = this.f43183c;
            do {
                if (atomicReference.compareAndSet(cVarArr, cVarArr2)) {
                    if (!cVar.f43187e) {
                        break loop0;
                    }
                    e(cVar);
                    return;
                }
            } while (atomicReference.get() == cVarArr);
        }
        this.f43182b.a(cVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void e(c cVar) {
        c[] cVarArr;
        AtomicReference atomicReference = this.f43183c;
        while (true) {
            c[] cVarArr2 = (c[]) atomicReference.get();
            if (cVarArr2 == f43181f || cVarArr2 == (cVarArr = f43180e)) {
                return;
            }
            int length = cVarArr2.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    i2 = -1;
                    break;
                } else if (cVarArr2[i2] == cVar) {
                    break;
                } else {
                    i2++;
                }
            }
            if (i2 < 0) {
                return;
            }
            if (length != 1) {
                cVarArr = new c[length - 1];
                System.arraycopy(cVarArr2, 0, cVarArr, 0, i2);
                System.arraycopy(cVarArr2, i2 + 1, cVarArr, i2, (length - i2) - 1);
            }
            while (!atomicReference.compareAndSet(cVarArr2, cVarArr)) {
                if (atomicReference.get() != cVarArr2) {
                }
            }
            return;
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.e
    public final void onComplete() {
        d dVar = this.f43182b;
        if (this.d) {
            return;
        }
        this.d = true;
        f fVarA = f.a();
        dVar.b(fVarA);
        boolean zCompareAndSet = dVar.compareAndSet(null, fVarA);
        c[] cVarArr = f43181f;
        if (zCompareAndSet) {
            cVarArr = (c[]) this.f43183c.getAndSet(cVarArr);
        }
        for (c cVar : cVarArr) {
            dVar.a(cVar);
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.e
    public final void onError(Throwable th) {
        d dVar = this.f43182b;
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.d) {
            com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
            return;
        }
        this.d = true;
        Serializable serializable = (Serializable) f.c(th);
        dVar.b(serializable);
        boolean zCompareAndSet = dVar.compareAndSet(null, serializable);
        c[] cVarArr = f43181f;
        if (zCompareAndSet) {
            cVarArr = (c[]) this.f43183c.getAndSet(cVarArr);
        }
        for (c cVar : cVarArr) {
            dVar.a(cVar);
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.e
    public final void onNext(Object obj) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(obj, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        if (this.d) {
            return;
        }
        d dVar = this.f43182b;
        dVar.getClass();
        a aVar = new a(obj);
        a aVar2 = dVar.f43190e;
        dVar.f43190e = aVar;
        dVar.f43189c++;
        aVar2.set(aVar);
        int i2 = dVar.f43189c;
        if (i2 > dVar.f43188b) {
            dVar.f43189c = i2 - 1;
            dVar.d = dVar.d.get();
        }
        for (c cVar : (c[]) this.f43183c.get()) {
            dVar.a(cVar);
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.e
    public final void onSubscribe(Disposable disposable) {
        if (this.d) {
            disposable.dispose();
        }
    }
}
