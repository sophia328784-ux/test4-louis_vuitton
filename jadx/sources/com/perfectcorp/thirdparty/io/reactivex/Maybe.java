package com.perfectcorp.thirdparty.io.reactivex;

import com.perfectcorp.thirdparty.io.reactivex.functions.Action;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.functions.Functions;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.maybe.h;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.maybe.i;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.maybe.j;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Maybe<T> implements MaybeSource<T> {
    public static <T> Maybe<T> empty() {
        return com.perfectcorp.thirdparty.io.reactivex.internal.operators.maybe.b.f42704a;
    }

    public static <T> Maybe<T> just(T t) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(t, "item is null");
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.maybe.f(t);
    }

    public abstract void a(d dVar);

    public final T blockingGet() {
        com.perfectcorp.thirdparty.io.reactivex.internal.observers.d dVar = new com.perfectcorp.thirdparty.io.reactivex.internal.observers.d();
        subscribe(dVar);
        return (T) dVar.a();
    }

    public final Maybe<T> doOnError(Consumer<? super Throwable> consumer) {
        Consumer consumer2 = Functions.d;
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(consumer, "onError is null");
        Action action = Functions.f42607c;
        return new i(this, consumer2, consumer2, consumer, action, action, action);
    }

    public final <R> Maybe<R> flatMap(Function<? super T, ? extends MaybeSource<? extends R>> function) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(function, "mapper is null");
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.maybe.d(this, function);
    }

    public final <R> Maybe<R> map(Function<? super T, ? extends R> function) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(function, "mapper is null");
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.maybe.g(this, function);
    }

    public final Maybe<T> observeOn(Scheduler scheduler) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(scheduler, "scheduler is null");
        return new h(this, scheduler);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.MaybeSource
    public final void subscribe(d<? super T> dVar) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(dVar, "observer is null");
        try {
            a(dVar);
        } catch (NullPointerException e2) {
            throw e2;
        } catch (Throwable th) {
            NullPointerException nullPointerException = new NullPointerException("subscribeActual failed");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    public final Single<T> toSingle() {
        return new j(this, null);
    }
}
