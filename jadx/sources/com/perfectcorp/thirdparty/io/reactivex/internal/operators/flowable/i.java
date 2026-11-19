package com.perfectcorp.thirdparty.io.reactivex.internal.operators.flowable;

import com.perfectcorp.thirdparty.io.reactivex.Flowable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.c;
import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.internal.subscriptions.g;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes3.dex */
public final class i<T> extends Single<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Flowable f42699b;

    public static final class a<T> implements c<T>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public com.perfectcorp.thirdparty.io.reactivex.f f42700b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public com.perfectcorp.thirdparty.org.reactivestreams.c f42701c;
        public boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Object f42702e;

        @Override // com.perfectcorp.thirdparty.org.reactivestreams.b
        public final void a(Object obj) {
            if (this.d) {
                return;
            }
            if (this.f42702e == null) {
                this.f42702e = obj;
                return;
            }
            this.d = true;
            this.f42701c.e();
            this.f42701c = g.f43146a;
            this.f42700b.onError(new IllegalArgumentException("Sequence contains more than one element!"));
        }

        public final void b(Throwable th) {
            if (this.d) {
                com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
                return;
            }
            this.d = true;
            this.f42701c = g.f43146a;
            this.f42700b.onError(th);
        }

        @Override // com.perfectcorp.thirdparty.org.reactivestreams.b
        public final void c() {
            if (this.d) {
                return;
            }
            this.d = true;
            this.f42701c = g.f43146a;
            Object obj = this.f42702e;
            this.f42702e = null;
            if (obj == null) {
                obj = null;
            }
            com.perfectcorp.thirdparty.io.reactivex.f fVar = this.f42700b;
            if (obj != null) {
                fVar.onSuccess(obj);
            } else {
                fVar.onError(new NoSuchElementException());
            }
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final void dispose() {
            this.f42701c.e();
            this.f42701c = g.f43146a;
        }

        @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
        public final boolean isDisposed() {
            return this.f42701c == g.f43146a;
        }
    }

    public i(Flowable<T> flowable, T t) {
        this.f42699b = flowable;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Single
    public final void b(com.perfectcorp.thirdparty.io.reactivex.f fVar) {
        a aVar = new a();
        aVar.f42700b = fVar;
        Flowable flowable = this.f42699b;
        flowable.getClass();
        try {
            flowable.a(aVar);
        } catch (NullPointerException e2) {
            throw e2;
        } catch (Throwable th) {
            com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }
}
