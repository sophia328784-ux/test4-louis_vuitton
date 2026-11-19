package com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable;

import com.perfectcorp.thirdparty.io.reactivex.Observable;
import defpackage.n00;

/* JADX INFO: loaded from: classes3.dex */
public final class v<T> extends Observable<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object[] f42933b;

    public v(T[] tArr) {
        this.f42933b = tArr;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Observable
    public final void a(com.perfectcorp.thirdparty.io.reactivex.e eVar) {
        a aVar = new a(eVar, this.f42933b);
        eVar.onSubscribe(aVar);
        if (aVar.f42936e) {
            return;
        }
        Object[] objArr = aVar.f42935c;
        int length = objArr.length;
        for (int i2 = 0; i2 < length && !aVar.f42937f; i2++) {
            Object obj = objArr[i2];
            com.perfectcorp.thirdparty.io.reactivex.e eVar2 = aVar.f42934b;
            if (obj == null) {
                eVar2.onError(new NullPointerException(n00.m(i2, "The element at index ", " is null")));
                return;
            }
            eVar2.onNext(obj);
        }
        if (aVar.f42937f) {
            return;
        }
        aVar.f42934b.onComplete();
    }

    public static final class a<T> extends com.perfectcorp.thirdparty.io.reactivex.internal.observers.c<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.io.reactivex.e f42934b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Object[] f42935c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f42936e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public volatile boolean f42937f;

        public a(com.perfectcorp.thirdparty.io.reactivex.e eVar, Object[] objArr) {
            this.f42934b = eVar;
            this.f42935c = objArr;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
        public final Object a() {
            int i2 = this.d;
            Object[] objArr = this.f42935c;
            if (i2 == objArr.length) {
                return null;
            }
            this.d = i2 + 1;
            Object obj = objArr[i2];
            com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(obj, "The array element is null");
            return obj;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
        public final boolean b() {
            return this.d == this.f42935c.length;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
        public final void c() {
            this.d = this.f42935c.length;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            this.f42937f = true;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.f42937f;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.e
        public final int a(int i2) {
            this.f42936e = true;
            return 1;
        }
    }
}
