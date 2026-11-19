package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Emitter;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.BiConsumer;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.observables.ConnectableObservable;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ObservableInternalHelper {

    public static final class BufferedReplaySupplier<T> implements Supplier<ConnectableObservable<T>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observable f70603b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f70604c;
        public final boolean d;

        public BufferedReplaySupplier(Observable observable, int i2, boolean z) {
            this.f70603b = observable;
            this.f70604c = i2;
            this.d = z;
        }

        @Override // io.reactivex.rxjava3.functions.Supplier
        public final Object get() {
            return this.f70603b.replay(this.f70604c, this.d);
        }
    }

    public static final class BufferedTimedReplaySupplier<T> implements Supplier<ConnectableObservable<T>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observable f70605b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f70606c;
        public final long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final TimeUnit f70607e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final Scheduler f70608f;
        public final boolean g;

        public BufferedTimedReplaySupplier(int i2, long j2, Observable observable, Scheduler scheduler, TimeUnit timeUnit, boolean z) {
            this.f70605b = observable;
            this.f70606c = i2;
            this.d = j2;
            this.f70607e = timeUnit;
            this.f70608f = scheduler;
            this.g = z;
        }

        @Override // io.reactivex.rxjava3.functions.Supplier
        public final Object get() {
            return this.f70605b.replay(this.f70606c, this.d, this.f70607e, this.f70608f, this.g);
        }
    }

    public static final class FlatMapIntoIterable<T, U> implements Function<T, ObservableSource<U>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Function f70609b;

        public FlatMapIntoIterable(Function function) {
            this.f70609b = function;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public final Object apply(Object obj) {
            Object objApply = this.f70609b.apply(obj);
            Objects.requireNonNull(objApply, "The mapper returned a null Iterable");
            return new ObservableFromIterable((Iterable) objApply);
        }
    }

    public static final class FlatMapWithCombinerInner<U, R, T> implements Function<U, R> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final BiFunction f70610b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Object f70611c;

        public FlatMapWithCombinerInner(Object obj, BiFunction biFunction) {
            this.f70610b = biFunction;
            this.f70611c = obj;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public final Object apply(Object obj) {
            return this.f70610b.apply(this.f70611c, obj);
        }
    }

    public static final class FlatMapWithCombinerOuter<T, R, U> implements Function<T, ObservableSource<R>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final BiFunction f70612b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function f70613c;

        public FlatMapWithCombinerOuter(Function function, BiFunction biFunction) {
            this.f70612b = biFunction;
            this.f70613c = function;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public final Object apply(Object obj) {
            Object objApply = this.f70613c.apply(obj);
            Objects.requireNonNull(objApply, "The mapper returned a null ObservableSource");
            return new ObservableMap((ObservableSource) objApply, new FlatMapWithCombinerInner(obj, this.f70612b));
        }
    }

    public static final class ItemDelayFunction<T, U> implements Function<T, ObservableSource<T>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Function f70614b;

        public ItemDelayFunction(Function function) {
            this.f70614b = function;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public final Object apply(Object obj) {
            Object objApply = this.f70614b.apply(obj);
            Objects.requireNonNull(objApply, "The itemDelay returned a null ObservableSource");
            return new ObservableTake((ObservableSource) objApply, 1L).map(Functions.g(obj)).defaultIfEmpty(obj);
        }
    }

    public static final class ObserverOnComplete<T> implements Action {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70615b;

        public ObserverOnComplete(Observer observer) {
            this.f70615b = observer;
        }

        @Override // io.reactivex.rxjava3.functions.Action
        public final void run() {
            this.f70615b.onComplete();
        }
    }

    public static final class ObserverOnError<T> implements Consumer<Throwable> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70616b;

        public ObserverOnError(Observer observer) {
            this.f70616b = observer;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(Object obj) {
            this.f70616b.onError((Throwable) obj);
        }
    }

    public static final class ObserverOnNext<T> implements Consumer<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70617b;

        public ObserverOnNext(Observer observer) {
            this.f70617b = observer;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(Object obj) {
            this.f70617b.onNext(obj);
        }
    }

    public static final class ReplaySupplier<T> implements Supplier<ConnectableObservable<T>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observable f70618b;

        public ReplaySupplier(Observable observable) {
            this.f70618b = observable;
        }

        @Override // io.reactivex.rxjava3.functions.Supplier
        public final Object get() {
            return this.f70618b.replay();
        }
    }

    public static final class SimpleBiGenerator<T, S> implements BiFunction<S, Emitter<T>, S> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final BiConsumer f70619a;

        public SimpleBiGenerator(BiConsumer biConsumer) {
            this.f70619a = biConsumer;
        }

        @Override // io.reactivex.rxjava3.functions.BiFunction
        public final Object apply(Object obj, Object obj2) {
            this.f70619a.accept(obj, (Emitter) obj2);
            return obj;
        }
    }

    public static final class SimpleGenerator<T, S> implements BiFunction<S, Emitter<T>, S> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Consumer f70620a;

        public SimpleGenerator(Consumer consumer) {
            this.f70620a = consumer;
        }

        @Override // io.reactivex.rxjava3.functions.BiFunction
        public final Object apply(Object obj, Object obj2) {
            this.f70620a.accept((Emitter) obj2);
            return obj;
        }
    }

    public static final class TimedReplayCallable<T> implements Supplier<ConnectableObservable<T>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observable f70621b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f70622c;
        public final TimeUnit d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Scheduler f70623e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f70624f;

        public TimedReplayCallable(Observable observable, long j2, TimeUnit timeUnit, Scheduler scheduler, boolean z) {
            this.f70621b = observable;
            this.f70622c = j2;
            this.d = timeUnit;
            this.f70623e = scheduler;
            this.f70624f = z;
        }

        @Override // io.reactivex.rxjava3.functions.Supplier
        public final Object get() {
            return this.f70621b.replay(this.f70622c, this.d, this.f70623e, this.f70624f);
        }
    }

    public static Function a(Function function) {
        return new FlatMapIntoIterable(function);
    }

    public static Function b(Function function, BiFunction biFunction) {
        return new FlatMapWithCombinerOuter(function, biFunction);
    }

    public static Function c(Function function) {
        return new ItemDelayFunction(function);
    }

    public static Action d(Observer observer) {
        return new ObserverOnComplete(observer);
    }

    public static Consumer e(Observer observer) {
        return new ObserverOnError(observer);
    }

    public static Consumer f(Observer observer) {
        return new ObserverOnNext(observer);
    }

    public static Supplier g(int i2, long j2, Observable observable, Scheduler scheduler, TimeUnit timeUnit, boolean z) {
        return new BufferedTimedReplaySupplier(i2, j2, observable, scheduler, timeUnit, z);
    }

    public static Supplier h(Observable observable) {
        return new ReplaySupplier(observable);
    }

    public static Supplier i(Observable observable, int i2, boolean z) {
        return new BufferedReplaySupplier(observable, i2, z);
    }

    public static Supplier j(Observable observable, long j2, TimeUnit timeUnit, Scheduler scheduler, boolean z) {
        return new TimedReplayCallable(observable, j2, timeUnit, scheduler, z);
    }

    public static BiFunction k(BiConsumer biConsumer) {
        return new SimpleBiGenerator(biConsumer);
    }

    public static BiFunction l(Consumer consumer) {
        return new SimpleGenerator(consumer);
    }
}
