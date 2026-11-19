package com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable;

import com.perfectcorp.thirdparty.io.reactivex.ObservableSource;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;

/* JADX INFO: loaded from: classes3.dex */
public final class i<T, K> extends com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.a<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f42861c;
    public final com.perfectcorp.thirdparty.io.reactivex.functions.a d;

    public static final class a<T, K> extends com.perfectcorp.thirdparty.io.reactivex.internal.observers.a<T, T> {
        public Function g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.functions.a f42862h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Object f42863i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f42864j;

        @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
        public final Object a() {
            Object objA;
            boolean zI;
            do {
                objA = this.d.a();
                if (objA == null) {
                    return null;
                }
                Object objApply = this.g.apply(objA);
                if (!this.f42864j) {
                    this.f42864j = true;
                    this.f42863i = objApply;
                    return objA;
                }
                zI = this.f42862h.i(this.f42863i, objApply);
                this.f42863i = objApply;
            } while (zI);
            return objA;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onNext(Object obj) {
            if (this.f42622e) {
                return;
            }
            int i2 = this.f42623f;
            com.perfectcorp.thirdparty.io.reactivex.e eVar = this.f42620b;
            if (i2 != 0) {
                eVar.onNext(obj);
                return;
            }
            try {
                Object objApply = this.g.apply(obj);
                if (this.f42864j) {
                    boolean zI = this.f42862h.i(this.f42863i, objApply);
                    this.f42863i = objApply;
                    if (zI) {
                        return;
                    }
                } else {
                    this.f42864j = true;
                    this.f42863i = objApply;
                }
                eVar.onNext(obj);
            } catch (Throwable th) {
                this.f42621c.dispose();
                onError(th);
            }
        }
    }

    public i(ObservableSource<T> observableSource, Function<? super T, K> function, com.perfectcorp.thirdparty.io.reactivex.functions.a<? super K, ? super K> aVar) {
        super(observableSource);
        this.f42861c = function;
        this.d = aVar;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Observable
    public final void a(com.perfectcorp.thirdparty.io.reactivex.e eVar) {
        a aVar = new a(eVar);
        aVar.g = this.f42861c;
        aVar.f42862h = this.d;
        this.f42749b.subscribe(aVar);
    }
}
