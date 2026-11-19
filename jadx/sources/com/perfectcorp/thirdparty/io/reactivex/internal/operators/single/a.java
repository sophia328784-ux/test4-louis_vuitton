package com.perfectcorp.thirdparty.io.reactivex.internal.operators.single;

import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class a<T> extends Single<T> implements com.perfectcorp.thirdparty.io.reactivex.f<T> {
    public static final C0223a[] g = new C0223a[0];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final C0223a[] f42963h = new C0223a[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SingleSource f42964b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicInteger f42965c = new AtomicInteger();
    public final AtomicReference d = new AtomicReference(g);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f42966e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Throwable f42967f;

    /* JADX INFO: renamed from: com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.a$a, reason: collision with other inner class name */
    public static final class C0223a<T> extends AtomicBoolean implements Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.io.reactivex.f f42968b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final a f42969c;

        public C0223a(com.perfectcorp.thirdparty.io.reactivex.f fVar, a aVar) {
            this.f42968b = fVar;
            this.f42969c = aVar;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            if (compareAndSet(false, true)) {
                this.f42969c.n(this);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return get();
        }
    }

    public a(SingleSource<? extends T> singleSource) {
        this.f42964b = singleSource;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.perfectcorp.thirdparty.io.reactivex.Single
    public final void b(com.perfectcorp.thirdparty.io.reactivex.f fVar) {
        C0223a c0223a = new C0223a(fVar, this);
        fVar.onSubscribe(c0223a);
        while (true) {
            AtomicReference atomicReference = this.d;
            C0223a[] c0223aArr = (C0223a[]) atomicReference.get();
            if (c0223aArr == f42963h) {
                Throwable th = this.f42967f;
                if (th != null) {
                    fVar.onError(th);
                    return;
                } else {
                    fVar.onSuccess(this.f42966e);
                    return;
                }
            }
            int length = c0223aArr.length;
            C0223a[] c0223aArr2 = new C0223a[length + 1];
            System.arraycopy(c0223aArr, 0, c0223aArr2, 0, length);
            c0223aArr2[length] = c0223a;
            do {
                if (atomicReference.compareAndSet(c0223aArr, c0223aArr2)) {
                    if (c0223a.get()) {
                        n(c0223a);
                    }
                    if (this.f42965c.getAndIncrement() == 0) {
                        this.f42964b.a(this);
                        return;
                    }
                    return;
                }
            } while (atomicReference.get() == c0223aArr);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void n(C0223a c0223a) {
        C0223a[] c0223aArr;
        while (true) {
            AtomicReference atomicReference = this.d;
            C0223a[] c0223aArr2 = (C0223a[]) atomicReference.get();
            int length = c0223aArr2.length;
            if (length == 0) {
                return;
            }
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    i2 = -1;
                    break;
                } else if (c0223aArr2[i2] == c0223a) {
                    break;
                } else {
                    i2++;
                }
            }
            if (i2 < 0) {
                return;
            }
            if (length == 1) {
                c0223aArr = g;
            } else {
                C0223a[] c0223aArr3 = new C0223a[length - 1];
                System.arraycopy(c0223aArr2, 0, c0223aArr3, 0, i2);
                System.arraycopy(c0223aArr2, i2 + 1, c0223aArr3, i2, (length - i2) - 1);
                c0223aArr = c0223aArr3;
            }
            while (!atomicReference.compareAndSet(c0223aArr2, c0223aArr)) {
                if (atomicReference.get() != c0223aArr2) {
                }
            }
            return;
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.f
    public final void onError(Throwable th) {
        this.f42967f = th;
        for (C0223a c0223a : (C0223a[]) this.d.getAndSet(f42963h)) {
            if (!c0223a.get()) {
                c0223a.f42968b.onError(th);
            }
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.f
    public final void onSubscribe(Disposable disposable) {
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.f
    public final void onSuccess(Object obj) {
        this.f42966e = obj;
        for (C0223a c0223a : (C0223a[]) this.d.getAndSet(f42963h)) {
            if (!c0223a.get()) {
                c0223a.f42968b.onSuccess(obj);
            }
        }
    }
}
