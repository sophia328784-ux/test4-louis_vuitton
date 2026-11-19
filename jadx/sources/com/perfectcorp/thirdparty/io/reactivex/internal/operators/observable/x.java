package com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable;

import com.perfectcorp.thirdparty.io.reactivex.Observable;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public final class x<T> extends Observable<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Iterable f42939b;

    public x(Iterable<? extends T> iterable) {
        this.f42939b = iterable;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Observable
    public final void a(com.perfectcorp.thirdparty.io.reactivex.e eVar) {
        try {
            Iterator<T> it = this.f42939b.iterator();
            try {
                if (!it.hasNext()) {
                    eVar.onSubscribe(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a);
                    eVar.onComplete();
                    return;
                }
                a aVar = new a(eVar, it);
                eVar.onSubscribe(aVar);
                if (aVar.f42942e) {
                    return;
                }
                while (!aVar.d) {
                    try {
                        Object next = aVar.f42941c.next();
                        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(next, "The iterator returned a null value");
                        aVar.f42940b.onNext(next);
                        if (aVar.d) {
                            return;
                        }
                        try {
                            if (!aVar.f42941c.hasNext()) {
                                if (aVar.d) {
                                    return;
                                }
                                aVar.f42940b.onComplete();
                                return;
                            }
                        } catch (Throwable th) {
                            aVar.f42940b.onError(th);
                            return;
                        }
                    } catch (Throwable th2) {
                        aVar.f42940b.onError(th2);
                        return;
                    }
                }
            } catch (Throwable th3) {
                eVar.onSubscribe(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a);
                eVar.onError(th3);
            }
        } catch (Throwable th4) {
            eVar.onSubscribe(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.c.f42601a);
            eVar.onError(th4);
        }
    }

    public static final class a<T> extends com.perfectcorp.thirdparty.io.reactivex.internal.observers.c<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final com.perfectcorp.thirdparty.io.reactivex.e f42940b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Iterator f42941c;
        public volatile boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f42942e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f42943f;
        public boolean g;

        public a(com.perfectcorp.thirdparty.io.reactivex.e eVar, Iterator it) {
            this.f42940b = eVar;
            this.f42941c = it;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
        public final Object a() {
            if (this.f42943f) {
                return null;
            }
            boolean z = this.g;
            Iterator it = this.f42941c;
            if (!z) {
                this.g = true;
            } else if (!it.hasNext()) {
                this.f42943f = true;
                return null;
            }
            Object next = it.next();
            com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(next, "The iterator returned a null value");
            return next;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
        public final boolean b() {
            return this.f42943f;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.i
        public final void c() {
            this.f42943f = true;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            this.d = true;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.d;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.e
        public final int a(int i2) {
            this.f42942e = true;
            return 1;
        }
    }
}
