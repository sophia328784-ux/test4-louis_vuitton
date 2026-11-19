package com.perfectcorp.thirdparty.io.reactivex.internal.operators.single;

import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.e;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public final class o<T, R> extends Observable<R> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SingleSource f43023b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f43024c;

    public o(SingleSource<T> singleSource, Function<? super T, ? extends Iterable<? extends R>> function) {
        this.f43023b = singleSource;
        this.f43024c = function;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Observable
    public final void a(e eVar) {
        a aVar = new a();
        aVar.l = eVar;
        aVar.m = this.f43024c;
        this.f43023b.a(aVar);
    }

    public static final class a<T, R> extends com.perfectcorp.thirdparty.io.reactivex.internal.observers.b<R> implements com.perfectcorp.thirdparty.io.reactivex.f<T> {
        public e l;
        public Function m;
        public Disposable n;
        public volatile Iterator o;
        public volatile boolean p;
        public boolean q;

        @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
        public final Object a() {
            Iterator it = this.o;
            if (it == null) {
                return null;
            }
            Object next = it.next();
            com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(next, "The iterator returned a null value");
            if (!it.hasNext()) {
                this.o = null;
            }
            return next;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
        public final boolean b() {
            return this.o == null;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
        public final void c() {
            this.o = null;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            this.p = true;
            this.n.dispose();
            this.n = com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.p;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onError(Throwable th) {
            this.n = com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a;
            this.l.onError(th);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onSubscribe(Disposable disposable) {
            if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.c(this.n, disposable)) {
                this.n = disposable;
                this.l.onSubscribe(this);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.f
        public final void onSuccess(Object obj) {
            e eVar = this.l;
            try {
                Iterator<T> it = ((Iterable) this.m.apply(obj)).iterator();
                if (!it.hasNext()) {
                    eVar.onComplete();
                    return;
                }
                if (this.q) {
                    this.o = it;
                    eVar.onNext(null);
                    eVar.onComplete();
                    return;
                }
                while (!this.p) {
                    try {
                        eVar.onNext(it.next());
                        if (this.p) {
                            return;
                        }
                        try {
                            if (!it.hasNext()) {
                                eVar.onComplete();
                                return;
                            }
                        } catch (Throwable th) {
                            eVar.onError(th);
                            return;
                        }
                    } catch (Throwable th2) {
                        eVar.onError(th2);
                        return;
                    }
                }
            } catch (Throwable th3) {
                this.l.onError(th3);
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.e
        public final int a(int i2) {
            this.q = true;
            return 2;
        }
    }
}
