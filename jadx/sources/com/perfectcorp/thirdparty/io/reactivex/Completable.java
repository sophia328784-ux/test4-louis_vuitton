package com.perfectcorp.thirdparty.io.reactivex;

import com.perfectcorp.thirdparty.io.reactivex.functions.Action;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import com.perfectcorp.thirdparty.io.reactivex.internal.functions.Functions;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.l;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.n;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.p;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.r;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Completable implements b {
    public static Completable d(b... bVarArr) {
        if (bVarArr.length == 0) {
            return com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.g.f42660b;
        }
        if (bVarArr.length != 1) {
            return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.completable.c(bVarArr);
        }
        b bVar = bVarArr[0];
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(bVar, "source is null");
        return bVar instanceof Completable ? (Completable) bVar : new l(bVar);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.b
    public final void a(a aVar) {
        try {
            c(aVar);
        } catch (NullPointerException e2) {
            throw e2;
        } catch (Throwable th) {
            com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't pass out an exception otherwise...");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    public final n b(Consumer consumer, Consumer consumer2, Action action, Action action2, Action action3, Action action4) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(consumer, "onSubscribe is null");
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(consumer2, "onError is null");
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(action, "onComplete is null");
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(action2, "onTerminate is null");
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(action3, "onAfterTerminate is null");
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(action4, "onDispose is null");
        return new n(this, consumer, consumer2, action, action2, action3, action4);
    }

    public abstract void c(a aVar);

    public final n e(Action action) {
        Consumer consumer = Functions.d;
        Action action2 = Functions.f42607c;
        return b(consumer, consumer, action, action2, action2, action2);
    }

    public final n f(Action action) {
        Consumer consumer = Functions.d;
        Action action2 = Functions.f42607c;
        return b(consumer, consumer, action2, action2, action2, action);
    }

    public final n g(Consumer consumer) {
        Consumer consumer2 = Functions.d;
        Action action = Functions.f42607c;
        return b(consumer2, consumer, action, action, action, action);
    }

    public final n h(Action action) {
        Consumer consumer = Functions.d;
        Action action2 = Functions.f42607c;
        return b(consumer, consumer, action2, action, action2, action2);
    }

    public final p i(Scheduler scheduler) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(scheduler, "scheduler is null");
        return new p(this, scheduler);
    }

    public final r j(Object obj) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(obj, "completionValue is null");
        return new r(this, null, obj);
    }
}
