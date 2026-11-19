package com.perfectcorp.thirdparty.io.reactivex;

import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Action;
import com.perfectcorp.thirdparty.io.reactivex.functions.BiConsumer;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.functions.Predicate;
import com.perfectcorp.thirdparty.io.reactivex.internal.functions.Functions;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.aa;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.ac;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.ad;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.ae;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.af;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.ag;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.ah;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.ai;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.aj;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.ak;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.al;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.am;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.ao;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.h;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.i;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.j;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.k;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.m;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.n;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.o;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.p;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.r;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.s;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.t;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.u;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.v;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.w;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.x;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.y;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.z;
import com.perfectcorp.thirdparty.io.reactivex.observables.GroupedObservable;
import defpackage.d21;
import defpackage.md;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Observable<T> implements ObservableSource<T> {
    public static int a() {
        return Flowable.f42583a;
    }

    public static <T> Observable<T> concat(ObservableSource<? extends T> observableSource, ObservableSource<? extends T> observableSource2, ObservableSource<? extends T> observableSource3, ObservableSource<? extends T> observableSource4) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(observableSource, "source1 is null");
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(observableSource2, "source2 is null");
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(observableSource3, "source3 is null");
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(observableSource4, "source4 is null");
        return concatArray(observableSource, observableSource2, observableSource3, observableSource4);
    }

    public static <T> Observable<T> concatArray(ObservableSource<? extends T>... observableSourceArr) {
        if (observableSourceArr.length == 0) {
            return empty();
        }
        if (observableSourceArr.length != 1) {
            return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.g(fromArray(observableSourceArr), Functions.f42605a, Flowable.f42583a, com.perfectcorp.thirdparty.io.reactivex.internal.util.d.f43152b);
        }
        ObservableSource<? extends T> observableSource = observableSourceArr[0];
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(observableSource, "source is null");
        return observableSource instanceof Observable ? (Observable) observableSource : new y(observableSource);
    }

    public static <T> Observable<T> defer(Callable<? extends ObservableSource<? extends T>> callable) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(callable, "supplier is null");
        return new h(callable);
    }

    public static <T> Observable<T> empty() {
        return (Observable<T>) n.f42885a;
    }

    public static <T> Observable<T> fromArray(T... tArr) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(tArr, "items is null");
        if (tArr.length == 0) {
            return empty();
        }
        return tArr.length == 1 ? just(tArr[0]) : new v(tArr);
    }

    public static <T> Observable<T> fromCallable(Callable<? extends T> callable) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(callable, "supplier is null");
        return new w(callable);
    }

    public static <T> Observable<T> fromIterable(Iterable<? extends T> iterable) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(iterable, "source is null");
        return new x(iterable);
    }

    public static <T> Observable<T> just(T t) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(t, "item is null");
        return new ad(t);
    }

    public static <T> Observable<T> merge(Iterable<? extends ObservableSource<? extends T>> iterable) {
        return fromIterable(iterable).flatMap(Functions.f42605a);
    }

    public abstract void a(e eVar);

    /* JADX WARN: Multi-variable type inference failed */
    public final Observable b(Function function, int i2) {
        int i3 = Flowable.f42583a;
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(function, "mapper is null");
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.a(i2, "maxConcurrency");
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.a(i3, "bufferSize");
        if (!(this instanceof com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.g)) {
            return new p(this, function, false, i2, i3);
        }
        Object objCall = ((com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.g) this).call();
        return objCall == null ? empty() : aj.a(objCall, function);
    }

    public final Observable<List<T>> buffer(int i2) {
        Callable callableA = com.perfectcorp.thirdparty.io.reactivex.internal.util.b.a();
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.a(i2, com.batch.android.s.b.a.f24018f);
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.a(i2, "skip");
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(callableA, "bufferSupplier is null");
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.d(this, i2, i2, callableA);
    }

    public final k c(Consumer consumer, Consumer consumer2, Action action, Action action2) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(consumer, "onNext is null");
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(consumer2, "onError is null");
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(action, "onComplete is null");
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(action2, "onAfterTerminate is null");
        return new k(this, consumer, consumer2, action, action2);
    }

    public final <U> Observable<U> cast(Class<U> cls) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(cls, "clazz is null");
        return (Observable<U>) map(Functions.c(cls));
    }

    public final <U> Single<U> collect(Callable<? extends U> callable, BiConsumer<? super U, ? super T> biConsumer) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(callable, "initialValueSupplier is null");
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(biConsumer, "collector is null");
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.f(this, callable, biConsumer);
    }

    public final <U> Single<U> collectInto(U u, BiConsumer<? super U, ? super T> biConsumer) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(u, "initialValue is null");
        return collect(Functions.e(u), biConsumer);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <R> Observable<R> concatMap(Function<? super T, ? extends ObservableSource<? extends R>> function) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(function, "mapper is null");
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.a(2, "prefetch");
        if (!(this instanceof com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.g)) {
            return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.g(this, function, 2, com.perfectcorp.thirdparty.io.reactivex.internal.util.d.f43151a);
        }
        Object objCall = ((com.perfectcorp.thirdparty.io.reactivex.internal.fuseable.g) this).call();
        return objCall == null ? empty() : aj.a(objCall, function);
    }

    public final <U> Observable<U> concatMapIterable(Function<? super T, ? extends Iterable<? extends U>> function) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(function, "mapper is null");
        return new u(this, function);
    }

    public final <R> Observable<R> concatMapSingle(Function<? super T, ? extends SingleSource<? extends R>> function) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(function, "mapper is null");
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.a(2, "prefetch");
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.mixed.b(this, function, com.perfectcorp.thirdparty.io.reactivex.internal.util.d.f43151a, 2);
    }

    public final Observable<T> concatWith(ObservableSource<? extends T> observableSource) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(observableSource, "other is null");
        return concatArray(this, observableSource);
    }

    public final Single<Boolean> contains(Object obj) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(obj, "element is null");
        return new com.perfectcorp.thirdparty.io.reactivex.internal.operators.observable.c(this, Functions.f(obj));
    }

    public final Observable<T> distinctUntilChanged() {
        return new i(this, Functions.f42605a, com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.f42615a);
    }

    public final Observable<T> doFinally(Action action) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(action, "onFinally is null");
        return new j(this, action);
    }

    public final Observable<T> doOnComplete(Action action) {
        Consumer consumer = Functions.d;
        return c(consumer, consumer, action, Functions.f42607c);
    }

    public final Observable<T> doOnError(Consumer<? super Throwable> consumer) {
        Consumer consumer2 = Functions.d;
        Action action = Functions.f42607c;
        return c(consumer2, consumer, action, action);
    }

    public final Observable<T> doOnNext(Consumer<? super T> consumer) {
        Consumer consumer2 = Functions.d;
        Action action = Functions.f42607c;
        return c(consumer, consumer2, action, action);
    }

    public final Observable<T> filter(Predicate<? super T> predicate) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(predicate, "predicate is null");
        return new o(this, predicate);
    }

    public final Maybe<T> firstElement() {
        return new m(this, 0L);
    }

    public final <R> Observable<R> flatMap(Function<? super T, ? extends ObservableSource<? extends R>> function) {
        return b(function, Integer.MAX_VALUE);
    }

    public final Completable flatMapCompletable(Function<? super T, ? extends b> function) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(function, "mapper is null");
        return new r(this, function, false);
    }

    public final <U> Observable<U> flatMapIterable(Function<? super T, ? extends Iterable<? extends U>> function) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(function, "mapper is null");
        return new u(this, function);
    }

    public final <R> Observable<R> flatMapMaybe(Function<? super T, ? extends MaybeSource<? extends R>> function) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(function, "mapper is null");
        return new s(this, function, false);
    }

    public final <R> Observable<R> flatMapSingle(Function<? super T, ? extends SingleSource<? extends R>> function) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(function, "mapper is null");
        return new t(this, function, false);
    }

    public final <K> Observable<GroupedObservable<K, T>> groupBy(Function<? super T, ? extends K> function) {
        Function function2 = Functions.f42605a;
        int i2 = Flowable.f42583a;
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(function, "keySelector is null");
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.a(i2, "bufferSize");
        return new z(this, function, function2, i2, false);
    }

    public final Observable<T> hide() {
        return new aa(this);
    }

    public final Completable ignoreElements() {
        return new ac(this);
    }

    public final <R> Observable<R> map(Function<? super T, ? extends R> function) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(function, "mapper is null");
        return new ae(this, function);
    }

    public final Observable<T> mergeWith(ObservableSource<? extends T> observableSource) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(observableSource, "other is null");
        return fromArray(this, observableSource).b(Functions.f42605a, 2);
    }

    public final Observable<T> observeOn(Scheduler scheduler) {
        int i2 = Flowable.f42583a;
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(scheduler, "scheduler is null");
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.a(i2, "bufferSize");
        return new af(this, scheduler, false, i2);
    }

    public final Observable<T> onErrorResumeNext(Function<? super Throwable, ? extends ObservableSource<? extends T>> function) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(function, "resumeFunction is null");
        return new ag(this, function, false);
    }

    public final Observable<T> onErrorReturn(Function<? super Throwable, ? extends T> function) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(function, "valueSupplier is null");
        return new ah(this, function);
    }

    public final Observable<T> retry(long j2) {
        Predicate predicate = Functions.f42608e;
        if (j2 >= 0) {
            com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(predicate, "predicate is null");
            return new ai(this, j2, predicate);
        }
        md.n(d21.g(j2, "times >= 0 required but it was "));
        return null;
    }

    public final Disposable subscribe(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2) {
        Action action = Functions.f42607c;
        Consumer consumer3 = Functions.d;
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(consumer, "onNext is null");
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(consumer2, "onError is null");
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(action, "onComplete is null");
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(consumer3, "onSubscribe is null");
        com.perfectcorp.thirdparty.io.reactivex.internal.observers.h hVar = new com.perfectcorp.thirdparty.io.reactivex.internal.observers.h(consumer, consumer2, action, consumer3);
        subscribe(hVar);
        return hVar;
    }

    public final Observable<T> subscribeOn(Scheduler scheduler) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(scheduler, "scheduler is null");
        return new al(this, scheduler);
    }

    public final Observable<T> take(long j2) {
        if (j2 >= 0) {
            return new am(this, j2);
        }
        md.n(d21.g(j2, "count >= 0 required but it was "));
        return null;
    }

    public final <R> R to(Function<? super Observable<T>, R> function) {
        try {
            com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(function, "converter is null");
            return (R) function.apply(this);
        } catch (Throwable th) {
            Throwable th2 = com.perfectcorp.thirdparty.io.reactivex.internal.util.e.f43154a;
            throw th;
        }
    }

    public final Future<T> toFuture() {
        com.perfectcorp.thirdparty.io.reactivex.internal.observers.f fVar = new com.perfectcorp.thirdparty.io.reactivex.internal.observers.f();
        subscribe(fVar);
        return fVar;
    }

    public final Single<List<T>> toList() {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.a(16, "capacityHint");
        return new ao(this, 16);
    }

    public final <U extends Collection<? super T>> Single<U> toList(Callable<U> callable) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(callable, "collectionSupplier is null");
        return new ao(this, callable);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.ObservableSource
    public final void subscribe(e<? super T> eVar) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(eVar, "observer is null");
        try {
            a(eVar);
        } catch (NullPointerException e2) {
            throw e2;
        } catch (Throwable th) {
            com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    public static <T> Observable<T> concat(ObservableSource<? extends T> observableSource, ObservableSource<? extends T> observableSource2, ObservableSource<? extends T> observableSource3) {
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(observableSource, "source1 is null");
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(observableSource2, "source2 is null");
        com.perfectcorp.thirdparty.io.reactivex.internal.functions.a.b(observableSource3, "source3 is null");
        return concatArray(observableSource, observableSource2, observableSource3);
    }

    public final Single<T> b() {
        return new ak(this, null);
    }
}
