package com.perfectcorp.thirdparty.io.reactivex.internal.operators.single;

import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.internal.observers.e;

/* JADX INFO: loaded from: classes3.dex */
public final class z<T> extends Observable<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SingleSource f43049b;

    public static final class a<T> extends e<T> implements com.perfectcorp.thirdparty.io.reactivex.f<T> {
        public Disposable n;

        @Override // com.perfectcorp.thirdparty.io.reactivex.internal.observers.e, com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            super.dispose();
            this.n.dispose();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onError(Throwable th) {
            if ((get() & 54) != 0) {
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
            } else {
                lazySet(2);
                this.l.onError(th);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.c(this.n, disposable)) {
                this.n = disposable;
                this.l.onSubscribe(this);
            }
        }
    }

    public z(SingleSource<? extends T> singleSource) {
        this.f43049b = singleSource;
    }

    public static com.perfectcorp.thirdparty.io.reactivex.f d(com.perfectcorp.thirdparty.io.reactivex.e eVar) {
        return new a(eVar);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Observable
    public final void a(com.perfectcorp.thirdparty.io.reactivex.e eVar) {
        this.f43049b.a(new a(eVar));
    }
}
