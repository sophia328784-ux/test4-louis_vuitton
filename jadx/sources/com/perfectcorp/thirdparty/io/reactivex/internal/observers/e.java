package com.perfectcorp.thirdparty.io.reactivex.internal.observers;

/* JADX INFO: loaded from: classes3.dex */
public class e<T> extends b<T> {
    public final com.perfectcorp.thirdparty.io.reactivex.e l;
    public Object m;

    public e(com.perfectcorp.thirdparty.io.reactivex.e<? super T> eVar) {
        this.l = eVar;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
    public final Object a() {
        if (get() != 16) {
            return null;
        }
        Object obj = this.m;
        this.m = null;
        lazySet(32);
        return obj;
    }

    public final void b(Object obj) {
        int i2 = get();
        if ((i2 & 54) != 0) {
            return;
        }
        com.perfectcorp.thirdparty.io.reactivex.e eVar = this.l;
        if (i2 == 8) {
            this.m = obj;
            lazySet(16);
            obj = null;
        } else {
            lazySet(2);
        }
        eVar.onNext(obj);
        if (get() != 4) {
            eVar.onComplete();
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
    public final void c() {
        lazySet(32);
        this.m = null;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
    public void dispose() {
        set(4);
        this.m = null;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return get() == 4;
    }

    public void onSuccess(Object obj) {
        b(obj);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.e
    public final int a(int i2) {
        lazySet(8);
        return 2;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
    public final boolean b() {
        return get() != 16;
    }
}
