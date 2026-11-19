package com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable;

import com.perfectcorp.thirdparty.io.reactivex.ObservableSource;
import com.perfectcorp.thirdparty.io.reactivex.functions.Predicate;

/* JADX INFO: loaded from: classes3.dex */
public final class o<T> extends com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.a<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Predicate f42886c;

    public static final class a<T> extends com.perfectcorp.thirdparty.io.reactivex.internal.observers.a<T, T> {
        public Predicate g;

        @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
        public final Object a() {
            Object objA;
            do {
                objA = this.d.a();
                if (objA == null) {
                    break;
                }
            } while (!this.g.test(objA));
            return objA;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.e
        public final void onNext(Object obj) {
            int i2 = this.f42623f;
            com.perfectcorp.thirdparty.io.reactivex.e eVar = this.f42620b;
            if (i2 != 0) {
                eVar.onNext(null);
                return;
            }
            try {
                if (this.g.test(obj)) {
                    eVar.onNext(obj);
                }
            } catch (Throwable th) {
                this.f42621c.dispose();
                onError(th);
            }
        }
    }

    public o(ObservableSource<T> observableSource, Predicate<? super T> predicate) {
        super(observableSource);
        this.f42886c = predicate;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Observable
    public final void a(com.perfectcorp.thirdparty.io.reactivex.e eVar) {
        a aVar = new a(eVar);
        aVar.g = this.f42886c;
        this.f42749b.subscribe(aVar);
    }
}
