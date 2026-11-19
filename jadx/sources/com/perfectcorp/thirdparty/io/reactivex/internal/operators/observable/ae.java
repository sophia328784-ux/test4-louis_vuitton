package com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable;

import com.perfectcorp.thirdparty.io.reactivex.ObservableSource;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;

/* JADX INFO: loaded from: classes3.dex */
public final class ae<T, U> extends com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.a<T, U> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f42758c;

    public static final class a<T, U> extends com.perfectcorp.thirdparty.io.reactivex.internal.observers.a<T, U> {
        public Function g;

        @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
        public final Object a() {
            Object objA = this.d.a();
            if (objA == null) {
                return null;
            }
            Object objApply = this.g.apply(objA);
            com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(objApply, "The mapper function returned a null value.");
            return objApply;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onNext(Object obj) {
            if (this.f42622e) {
                return;
            }
            int i2 = this.f42623f;
            com.perfectcorp.thirdparty.io.reactivex.e eVar = this.f42620b;
            if (i2 != 0) {
                eVar.onNext(null);
                return;
            }
            try {
                Object objApply = this.g.apply(obj);
                com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(objApply, "The mapper function returned a null value.");
                eVar.onNext(objApply);
            } catch (Throwable th) {
                this.f42621c.dispose();
                onError(th);
            }
        }
    }

    public ae(ObservableSource<T> observableSource, Function<? super T, ? extends U> function) {
        super(observableSource);
        this.f42758c = function;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Observable
    public final void a(com.perfectcorp.thirdparty.io.reactivex.e eVar) {
        a aVar = new a(eVar);
        aVar.g = this.f42758c;
        this.f42749b.subscribe(aVar);
    }
}
