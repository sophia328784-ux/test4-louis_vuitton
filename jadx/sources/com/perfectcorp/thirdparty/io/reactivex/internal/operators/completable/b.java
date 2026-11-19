package com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable;

import com.perfectcorp.thirdparty.io.reactivex.Completable;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class b extends Completable implements com.perfectcorp.thirdparty.io.reactivex.a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a[] f42642f = new a[0];
    public static final a[] g = new a[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final com.perfectcorp.thirdparty.io.reactivex.b f42643b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicReference f42644c = new AtomicReference(f42642f);
    public final AtomicBoolean d = new AtomicBoolean();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Throwable f42645e;

    public final class a extends AtomicBoolean implements Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.io.reactivex.a f42646b;

        public a(com.perfectcorp.thirdparty.io.reactivex.a aVar) {
            this.f42646b = aVar;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            if (compareAndSet(false, true)) {
                b.this.k(this);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return get();
        }
    }

    public b(com.perfectcorp.thirdparty.io.reactivex.b bVar) {
        this.f42643b = bVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.perfectcorp.thirdparty.io.reactivex.Completable
    public final void c(com.perfectcorp.thirdparty.io.reactivex.a aVar) {
        a aVar2 = new a(aVar);
        aVar.onSubscribe(aVar2);
        while (true) {
            AtomicReference atomicReference = this.f42644c;
            a[] aVarArr = (a[]) atomicReference.get();
            if (aVarArr == g) {
                Throwable th = this.f42645e;
                if (th != null) {
                    aVar.onError(th);
                    return;
                } else {
                    aVar.onComplete();
                    return;
                }
            }
            int length = aVarArr.length;
            a[] aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = aVar2;
            do {
                if (atomicReference.compareAndSet(aVarArr, aVarArr2)) {
                    if (aVar2.get()) {
                        k(aVar2);
                    }
                    if (this.d.compareAndSet(false, true)) {
                        this.f42643b.a(this);
                        return;
                    }
                    return;
                }
            } while (atomicReference.get() == aVarArr);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void k(a aVar) {
        a[] aVarArr;
        while (true) {
            AtomicReference atomicReference = this.f42644c;
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
                aVarArr = f42642f;
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

    @Override // com.perfectcorp.thirdparty.io.reactivex.a
    public final void onComplete() {
        for (a aVar : (a[]) this.f42644c.getAndSet(g)) {
            if (!aVar.get()) {
                aVar.f42646b.onComplete();
            }
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.a
    public final void onError(Throwable th) {
        this.f42645e = th;
        for (a aVar : (a[]) this.f42644c.getAndSet(g)) {
            if (!aVar.get()) {
                aVar.f42646b.onError(th);
            }
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.a
    public final void onSubscribe(Disposable disposable) {
    }
}
