package com.perfectcorp.thirdparty.io.reactivex;

import com.perfectcorp.thirdparty.io.reactivex.functions.BiFunction;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import com.perfectcorp.thirdparty.io.reactivex.internal.functions.Functions;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.aa;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.j;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.l;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.s;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.u;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.x;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.z;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Single<T> implements SingleSource<T> {
    public static com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c e(Callable callable) {
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c(callable);
    }

    public static l g(Throwable th) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(th, "exception is null");
        return new l(Functions.e(th));
    }

    public static s h(Object obj) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(obj, "item is null");
        return new s(obj);
    }

    public static Single m(Single single, Single single2, BiFunction biFunction) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(single, "source1 is null");
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(single2, "source2 is null");
        return new aa(new SingleSource[]{single, single2}, Functions.b(biFunction));
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.SingleSource
    public final void a(f fVar) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(fVar, "observer is null");
        try {
            b(fVar);
        } catch (NullPointerException e2) {
            throw e2;
        } catch (Throwable th) {
            NullPointerException nullPointerException = new NullPointerException("subscribeActual failed");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    public abstract void b(f fVar);

    public final Object c() {
        com.perfectcorp.thirdparty.io.reactivex.internal.observers.d dVar = new com.perfectcorp.thirdparty.io.reactivex.internal.observers.d();
        a(dVar);
        return dVar.a();
    }

    public final Single d(SingleTransformer singleTransformer) {
        SingleSource singleSourceA = singleTransformer.a(this);
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(singleSourceA, "source is null");
        return (Single) singleSourceA;
    }

    public final j f(Consumer consumer) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(consumer, "onSuccess is null");
        return new j(this, consumer);
    }

    public final u i(Scheduler scheduler) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(scheduler, "scheduler is null");
        return new u(this, scheduler);
    }

    public final x j(Scheduler scheduler) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(scheduler, "scheduler is null");
        return new x(this, scheduler);
    }

    public final Future k() {
        com.perfectcorp.thirdparty.io.reactivex.internal.observers.g gVar = new com.perfectcorp.thirdparty.io.reactivex.internal.observers.g();
        a(gVar);
        return gVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Observable l() {
        return this instanceof com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.c ? ((com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.c) this).a() : new z(this);
    }
}
