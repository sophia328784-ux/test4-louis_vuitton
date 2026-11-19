package com.perfectcorp.thirdparty.io.reactivex.subjects;

import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.e;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class PublishSubject<T> extends Subject<T> {
    public static final a[] d = new a[0];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a[] f43175e = new a[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicReference f43176b = new AtomicReference(f43175e);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Throwable f43177c;

    public static final class a<T> extends AtomicBoolean implements Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final e f43178b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final PublishSubject f43179c;

        public a(e eVar, PublishSubject publishSubject) {
            this.f43178b = eVar;
            this.f43179c = publishSubject;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            if (compareAndSet(false, true)) {
                this.f43179c.e(this);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return get();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.perfectcorp.thirdparty.io.reactivex.Observable
    public final void a(e eVar) {
        a aVar = new a(eVar, this);
        eVar.onSubscribe(aVar);
        while (true) {
            AtomicReference atomicReference = this.f43176b;
            a[] aVarArr = (a[]) atomicReference.get();
            if (aVarArr == d) {
                Throwable th = this.f43177c;
                if (th != null) {
                    eVar.onError(th);
                    return;
                } else {
                    eVar.onComplete();
                    return;
                }
            }
            int length = aVarArr.length;
            a[] aVarArr2 = new a[length + 1];
            System.arraycopy(aVarArr, 0, aVarArr2, 0, length);
            aVarArr2[length] = aVar;
            do {
                if (atomicReference.compareAndSet(aVarArr, aVarArr2)) {
                    if (aVar.get()) {
                        e(aVar);
                        return;
                    }
                    return;
                }
            } while (atomicReference.get() == aVarArr);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void e(a aVar) {
        a[] aVarArr;
        while (true) {
            AtomicReference atomicReference = this.f43176b;
            a[] aVarArr2 = (a[]) atomicReference.get();
            if (aVarArr2 == d || aVarArr2 == (aVarArr = f43175e)) {
                return;
            }
            int length = aVarArr2.length;
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
            if (length != 1) {
                aVarArr = new a[length - 1];
                System.arraycopy(aVarArr2, 0, aVarArr, 0, i2);
                System.arraycopy(aVarArr2, i2 + 1, aVarArr, i2, (length - i2) - 1);
            }
            while (!atomicReference.compareAndSet(aVarArr2, aVarArr)) {
                if (atomicReference.get() != aVarArr2) {
                }
            }
            return;
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.e
    public final void onComplete() {
        AtomicReference atomicReference = this.f43176b;
        Object obj = atomicReference.get();
        Object obj2 = d;
        if (obj == obj2) {
            return;
        }
        a[] aVarArr = (a[]) atomicReference.getAndSet(obj2);
        for (a aVar : aVarArr) {
            if (!aVar.get()) {
                aVar.f43178b.onComplete();
            }
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.e
    public final void onError(Throwable th) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(th, "onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        AtomicReference atomicReference = this.f43176b;
        Object obj = atomicReference.get();
        Object obj2 = d;
        if (obj == obj2) {
            com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
            return;
        }
        this.f43177c = th;
        for (a aVar : (a[]) atomicReference.getAndSet(obj2)) {
            if (aVar.get()) {
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
            } else {
                aVar.f43178b.onError(th);
            }
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.e
    public final void onNext(Object obj) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(obj, "onNext called with null. Null values are generally not allowed in 2.x operators and sources.");
        for (a aVar : (a[]) this.f43176b.get()) {
            if (!aVar.get()) {
                aVar.f43178b.onNext(obj);
            }
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.e
    public final void onSubscribe(Disposable disposable) {
        if (this.f43176b.get() == d) {
            disposable.dispose();
        }
    }
}
