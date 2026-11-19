package com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable;

import com.perfectcorp.thirdparty.io.reactivex.Completable;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final class d extends Completable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Iterable f42652b;

    public static final class a extends AtomicInteger implements com.perfectcorp.thirdparty.io.reactivex.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.io.reactivex.a f42653b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Iterator f42654c;
        public final com.perfectcorp.thirdparty.io.reactivex.internal.disposables.e d = new com.perfectcorp.thirdparty.io.reactivex.internal.disposables.e();

        public a(com.perfectcorp.thirdparty.io.reactivex.a aVar, Iterator it) {
            this.f42653b = aVar;
            this.f42654c = it;
        }

        public final void a() {
            com.perfectcorp.thirdparty.io.reactivex.a aVar = this.f42653b;
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.e eVar = this.d;
            if (!eVar.isDisposed() && getAndIncrement() == 0) {
                Iterator it = this.f42654c;
                while (!eVar.isDisposed()) {
                    try {
                        if (!it.hasNext()) {
                            aVar.onComplete();
                            return;
                        }
                        try {
                            com.perfectcorp.thirdparty.io.reactivex.b bVar = (com.perfectcorp.thirdparty.io.reactivex.b) it.next();
                            com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(bVar, "The CompletableSource returned is null");
                            bVar.a(this);
                            if (decrementAndGet() == 0) {
                                return;
                            }
                        } catch (Throwable th) {
                            aVar.onError(th);
                            return;
                        }
                    } catch (Throwable th2) {
                        aVar.onError(th2);
                        return;
                    }
                }
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.a
        public final void onComplete() {
            a();
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.a
        public final void onError(Throwable th) {
            this.f42653b.onError(th);
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.a
        public final void onSubscribe(Disposable disposable) {
            com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.e(this.d, disposable);
        }
    }

    public d(Iterable<? extends com.perfectcorp.thirdparty.io.reactivex.b> iterable) {
        this.f42652b = iterable;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Completable
    public final void c(com.perfectcorp.thirdparty.io.reactivex.a aVar) {
        try {
            Iterator it = this.f42652b.iterator();
            com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(it, "The iterator returned is null");
            a aVar2 = new a(aVar, it);
            aVar.onSubscribe(aVar2.d);
            aVar2.a();
        } catch (Throwable th) {
            aVar.onSubscribe(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a);
            aVar.onError(th);
        }
    }
}
