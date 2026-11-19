package com.perfectcorp.thirdparty.io.reactivex.internal.operators.flowable;

import com.perfectcorp.thirdparty.io.reactivex.Flowable;
import com.perfectcorp.thirdparty.io.reactivex.internal.subscriptions.c;
import com.perfectcorp.thirdparty.io.reactivex.plugins.a;
import com.perfectcorp.thirdparty.org.reactivestreams.b;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public final class f<T> extends Flowable<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Future f42698b;

    public f(Future<? extends T> future, long j2, TimeUnit timeUnit) {
        this.f42698b = future;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.Flowable
    public final void a(b bVar) {
        Object obj;
        c cVar = new c(bVar);
        i.a aVar = (i.a) bVar;
        com.perfectcorp.thirdparty.org.reactivestreams.c cVar2 = aVar.f42701c;
        b bVar2 = cVar.f43144b;
        if (cVar2 == null) {
            aVar.f42701c = cVar;
            aVar.f42700b.onSubscribe(aVar);
            do {
                int i2 = cVar.get();
                if ((i2 & (-2)) != 0) {
                    break;
                }
                if (i2 == 1) {
                    if (!cVar.compareAndSet(1, 3) || (obj = cVar.f43145c) == null) {
                        break;
                        break;
                    }
                    cVar.f43145c = null;
                    bVar2.a(obj);
                    if (cVar.get() == 4) {
                        break;
                    }
                    bVar2.c();
                    break;
                }
            } while (!cVar.compareAndSet(0, 2));
        } else {
            cVar.e();
            a.a(new com.perfectcorp.thirdparty.io.reactivex.exceptions.b("Subscription already set!"));
            break;
        }
        try {
            Object obj2 = this.f42698b.get();
            if (obj2 == null) {
                aVar.b(new NullPointerException("The future returned null"));
                return;
            }
            int i3 = cVar.get();
            while (i3 != 8) {
                if ((i3 & (-3)) != 0) {
                    return;
                }
                if (i3 == 2) {
                    cVar.lazySet(3);
                    bVar2.a(obj2);
                    if (cVar.get() != 4) {
                        bVar2.c();
                        return;
                    }
                    return;
                }
                cVar.f43145c = obj2;
                if (cVar.compareAndSet(0, 1)) {
                    return;
                }
                i3 = cVar.get();
                if (i3 == 4) {
                    cVar.f43145c = null;
                    return;
                }
            }
            cVar.f43145c = obj2;
            cVar.lazySet(16);
            bVar2.a(obj2);
            if (cVar.get() != 4) {
                bVar2.c();
            }
        } catch (Throwable th) {
            if (cVar.get() == 4) {
                return;
            }
            aVar.b(th);
        }
    }
}
