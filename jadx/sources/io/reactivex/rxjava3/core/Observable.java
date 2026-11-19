package io.reactivex.rxjava3.core;

import com.batch.android.s.b;
import defpackage.aa;
import defpackage.az;
import defpackage.b21;
import defpackage.d21;
import defpackage.et;
import defpackage.md;
import defpackage.pq0;
import defpackage.sg0;
import io.reactivex.rxjava3.annotations.BackpressureSupport;
import io.reactivex.rxjava3.annotations.CheckReturnValue;
import io.reactivex.rxjava3.annotations.SchedulerSupport;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.disposables.DisposableContainer;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.BiConsumer;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.functions.BiPredicate;
import io.reactivex.rxjava3.functions.BooleanSupplier;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Function3;
import io.reactivex.rxjava3.functions.Function4;
import io.reactivex.rxjava3.functions.Function5;
import io.reactivex.rxjava3.functions.Function6;
import io.reactivex.rxjava3.functions.Function7;
import io.reactivex.rxjava3.functions.Function8;
import io.reactivex.rxjava3.functions.Function9;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.functions.ObjectHelper;
import io.reactivex.rxjava3.internal.fuseable.FuseToObservable;
import io.reactivex.rxjava3.internal.jdk8.ObservableCollectWithCollectorSingle;
import io.reactivex.rxjava3.internal.jdk8.ObservableFirstStageObserver;
import io.reactivex.rxjava3.internal.jdk8.ObservableFlatMapStream;
import io.reactivex.rxjava3.internal.jdk8.ObservableFromCompletionStage;
import io.reactivex.rxjava3.internal.jdk8.ObservableFromStream;
import io.reactivex.rxjava3.internal.jdk8.ObservableLastStageObserver;
import io.reactivex.rxjava3.internal.jdk8.ObservableMapOptional;
import io.reactivex.rxjava3.internal.jdk8.ObservableSingleStageObserver;
import io.reactivex.rxjava3.internal.observers.BlockingFirstObserver;
import io.reactivex.rxjava3.internal.observers.BlockingLastObserver;
import io.reactivex.rxjava3.internal.observers.BlockingMultiObserver;
import io.reactivex.rxjava3.internal.observers.DisposableAutoReleaseObserver;
import io.reactivex.rxjava3.internal.observers.ForEachWhileObserver;
import io.reactivex.rxjava3.internal.observers.FutureObserver;
import io.reactivex.rxjava3.internal.observers.LambdaObserver;
import io.reactivex.rxjava3.internal.operators.completable.CompletableFromUnsafeSource;
import io.reactivex.rxjava3.internal.operators.completable.CompletableToObservable;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableFromObservable;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableOnBackpressureBuffer;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableOnBackpressureDrop;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableOnBackpressureError;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableOnBackpressureLatest;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeToObservable;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeUnsafeCreate;
import io.reactivex.rxjava3.internal.operators.mixed.ObservableConcatMapCompletable;
import io.reactivex.rxjava3.internal.operators.mixed.ObservableConcatMapMaybe;
import io.reactivex.rxjava3.internal.operators.mixed.ObservableConcatMapSingle;
import io.reactivex.rxjava3.internal.operators.mixed.ObservableSwitchMapCompletable;
import io.reactivex.rxjava3.internal.operators.mixed.ObservableSwitchMapMaybe;
import io.reactivex.rxjava3.internal.operators.mixed.ObservableSwitchMapSingle;
import io.reactivex.rxjava3.internal.operators.observable.BlockingObservableIterable;
import io.reactivex.rxjava3.internal.operators.observable.BlockingObservableLatest;
import io.reactivex.rxjava3.internal.operators.observable.BlockingObservableMostRecent;
import io.reactivex.rxjava3.internal.operators.observable.BlockingObservableNext;
import io.reactivex.rxjava3.internal.operators.observable.ObservableAllSingle;
import io.reactivex.rxjava3.internal.operators.observable.ObservableAmb;
import io.reactivex.rxjava3.internal.operators.observable.ObservableAnySingle;
import io.reactivex.rxjava3.internal.operators.observable.ObservableBlockingSubscribe;
import io.reactivex.rxjava3.internal.operators.observable.ObservableBuffer;
import io.reactivex.rxjava3.internal.operators.observable.ObservableBufferBoundary;
import io.reactivex.rxjava3.internal.operators.observable.ObservableBufferExactBoundary;
import io.reactivex.rxjava3.internal.operators.observable.ObservableBufferTimed;
import io.reactivex.rxjava3.internal.operators.observable.ObservableCache;
import io.reactivex.rxjava3.internal.operators.observable.ObservableCollectSingle;
import io.reactivex.rxjava3.internal.operators.observable.ObservableCombineLatest;
import io.reactivex.rxjava3.internal.operators.observable.ObservableConcatMap;
import io.reactivex.rxjava3.internal.operators.observable.ObservableConcatMapEager;
import io.reactivex.rxjava3.internal.operators.observable.ObservableConcatMapScheduler;
import io.reactivex.rxjava3.internal.operators.observable.ObservableConcatWithCompletable;
import io.reactivex.rxjava3.internal.operators.observable.ObservableConcatWithMaybe;
import io.reactivex.rxjava3.internal.operators.observable.ObservableConcatWithSingle;
import io.reactivex.rxjava3.internal.operators.observable.ObservableCountSingle;
import io.reactivex.rxjava3.internal.operators.observable.ObservableCreate;
import io.reactivex.rxjava3.internal.operators.observable.ObservableDebounce;
import io.reactivex.rxjava3.internal.operators.observable.ObservableDebounceTimed;
import io.reactivex.rxjava3.internal.operators.observable.ObservableDefer;
import io.reactivex.rxjava3.internal.operators.observable.ObservableDelay;
import io.reactivex.rxjava3.internal.operators.observable.ObservableDelaySubscriptionOther;
import io.reactivex.rxjava3.internal.operators.observable.ObservableDematerialize;
import io.reactivex.rxjava3.internal.operators.observable.ObservableDetach;
import io.reactivex.rxjava3.internal.operators.observable.ObservableDistinct;
import io.reactivex.rxjava3.internal.operators.observable.ObservableDistinctUntilChanged;
import io.reactivex.rxjava3.internal.operators.observable.ObservableDoAfterNext;
import io.reactivex.rxjava3.internal.operators.observable.ObservableDoFinally;
import io.reactivex.rxjava3.internal.operators.observable.ObservableDoOnEach;
import io.reactivex.rxjava3.internal.operators.observable.ObservableDoOnLifecycle;
import io.reactivex.rxjava3.internal.operators.observable.ObservableElementAtMaybe;
import io.reactivex.rxjava3.internal.operators.observable.ObservableElementAtSingle;
import io.reactivex.rxjava3.internal.operators.observable.ObservableEmpty;
import io.reactivex.rxjava3.internal.operators.observable.ObservableError;
import io.reactivex.rxjava3.internal.operators.observable.ObservableFilter;
import io.reactivex.rxjava3.internal.operators.observable.ObservableFlatMap;
import io.reactivex.rxjava3.internal.operators.observable.ObservableFlatMapCompletableCompletable;
import io.reactivex.rxjava3.internal.operators.observable.ObservableFlatMapMaybe;
import io.reactivex.rxjava3.internal.operators.observable.ObservableFlatMapSingle;
import io.reactivex.rxjava3.internal.operators.observable.ObservableFlattenIterable;
import io.reactivex.rxjava3.internal.operators.observable.ObservableFromAction;
import io.reactivex.rxjava3.internal.operators.observable.ObservableFromArray;
import io.reactivex.rxjava3.internal.operators.observable.ObservableFromCallable;
import io.reactivex.rxjava3.internal.operators.observable.ObservableFromCompletable;
import io.reactivex.rxjava3.internal.operators.observable.ObservableFromFuture;
import io.reactivex.rxjava3.internal.operators.observable.ObservableFromIterable;
import io.reactivex.rxjava3.internal.operators.observable.ObservableFromPublisher;
import io.reactivex.rxjava3.internal.operators.observable.ObservableFromRunnable;
import io.reactivex.rxjava3.internal.operators.observable.ObservableFromSupplier;
import io.reactivex.rxjava3.internal.operators.observable.ObservableFromUnsafeSource;
import io.reactivex.rxjava3.internal.operators.observable.ObservableGenerate;
import io.reactivex.rxjava3.internal.operators.observable.ObservableGroupBy;
import io.reactivex.rxjava3.internal.operators.observable.ObservableGroupJoin;
import io.reactivex.rxjava3.internal.operators.observable.ObservableHide;
import io.reactivex.rxjava3.internal.operators.observable.ObservableIgnoreElements;
import io.reactivex.rxjava3.internal.operators.observable.ObservableIgnoreElementsCompletable;
import io.reactivex.rxjava3.internal.operators.observable.ObservableInternalHelper;
import io.reactivex.rxjava3.internal.operators.observable.ObservableInterval;
import io.reactivex.rxjava3.internal.operators.observable.ObservableIntervalRange;
import io.reactivex.rxjava3.internal.operators.observable.ObservableJoin;
import io.reactivex.rxjava3.internal.operators.observable.ObservableJust;
import io.reactivex.rxjava3.internal.operators.observable.ObservableLastMaybe;
import io.reactivex.rxjava3.internal.operators.observable.ObservableLastSingle;
import io.reactivex.rxjava3.internal.operators.observable.ObservableLift;
import io.reactivex.rxjava3.internal.operators.observable.ObservableMap;
import io.reactivex.rxjava3.internal.operators.observable.ObservableMapNotification;
import io.reactivex.rxjava3.internal.operators.observable.ObservableMaterialize;
import io.reactivex.rxjava3.internal.operators.observable.ObservableMergeWithCompletable;
import io.reactivex.rxjava3.internal.operators.observable.ObservableMergeWithMaybe;
import io.reactivex.rxjava3.internal.operators.observable.ObservableMergeWithSingle;
import io.reactivex.rxjava3.internal.operators.observable.ObservableNever;
import io.reactivex.rxjava3.internal.operators.observable.ObservableObserveOn;
import io.reactivex.rxjava3.internal.operators.observable.ObservableOnErrorComplete;
import io.reactivex.rxjava3.internal.operators.observable.ObservableOnErrorNext;
import io.reactivex.rxjava3.internal.operators.observable.ObservableOnErrorReturn;
import io.reactivex.rxjava3.internal.operators.observable.ObservablePublish;
import io.reactivex.rxjava3.internal.operators.observable.ObservablePublishSelector;
import io.reactivex.rxjava3.internal.operators.observable.ObservableRange;
import io.reactivex.rxjava3.internal.operators.observable.ObservableRangeLong;
import io.reactivex.rxjava3.internal.operators.observable.ObservableReduceMaybe;
import io.reactivex.rxjava3.internal.operators.observable.ObservableReduceSeedSingle;
import io.reactivex.rxjava3.internal.operators.observable.ObservableReduceWithSingle;
import io.reactivex.rxjava3.internal.operators.observable.ObservableRefCount;
import io.reactivex.rxjava3.internal.operators.observable.ObservableRepeat;
import io.reactivex.rxjava3.internal.operators.observable.ObservableRepeatUntil;
import io.reactivex.rxjava3.internal.operators.observable.ObservableRepeatWhen;
import io.reactivex.rxjava3.internal.operators.observable.ObservableReplay;
import io.reactivex.rxjava3.internal.operators.observable.ObservableRetryBiPredicate;
import io.reactivex.rxjava3.internal.operators.observable.ObservableRetryPredicate;
import io.reactivex.rxjava3.internal.operators.observable.ObservableRetryWhen;
import io.reactivex.rxjava3.internal.operators.observable.ObservableSampleTimed;
import io.reactivex.rxjava3.internal.operators.observable.ObservableSampleWithObservable;
import io.reactivex.rxjava3.internal.operators.observable.ObservableScalarXMap;
import io.reactivex.rxjava3.internal.operators.observable.ObservableScan;
import io.reactivex.rxjava3.internal.operators.observable.ObservableScanSeed;
import io.reactivex.rxjava3.internal.operators.observable.ObservableSequenceEqualSingle;
import io.reactivex.rxjava3.internal.operators.observable.ObservableSerialized;
import io.reactivex.rxjava3.internal.operators.observable.ObservableSingleMaybe;
import io.reactivex.rxjava3.internal.operators.observable.ObservableSingleSingle;
import io.reactivex.rxjava3.internal.operators.observable.ObservableSkip;
import io.reactivex.rxjava3.internal.operators.observable.ObservableSkipLast;
import io.reactivex.rxjava3.internal.operators.observable.ObservableSkipLastTimed;
import io.reactivex.rxjava3.internal.operators.observable.ObservableSkipUntil;
import io.reactivex.rxjava3.internal.operators.observable.ObservableSkipWhile;
import io.reactivex.rxjava3.internal.operators.observable.ObservableSubscribeOn;
import io.reactivex.rxjava3.internal.operators.observable.ObservableSwitchIfEmpty;
import io.reactivex.rxjava3.internal.operators.observable.ObservableSwitchMap;
import io.reactivex.rxjava3.internal.operators.observable.ObservableTake;
import io.reactivex.rxjava3.internal.operators.observable.ObservableTakeLast;
import io.reactivex.rxjava3.internal.operators.observable.ObservableTakeLastOne;
import io.reactivex.rxjava3.internal.operators.observable.ObservableTakeLastTimed;
import io.reactivex.rxjava3.internal.operators.observable.ObservableTakeUntil;
import io.reactivex.rxjava3.internal.operators.observable.ObservableTakeUntilPredicate;
import io.reactivex.rxjava3.internal.operators.observable.ObservableTakeWhile;
import io.reactivex.rxjava3.internal.operators.observable.ObservableThrottleFirstTimed;
import io.reactivex.rxjava3.internal.operators.observable.ObservableThrottleLatest;
import io.reactivex.rxjava3.internal.operators.observable.ObservableTimeInterval;
import io.reactivex.rxjava3.internal.operators.observable.ObservableTimeout;
import io.reactivex.rxjava3.internal.operators.observable.ObservableTimeoutTimed;
import io.reactivex.rxjava3.internal.operators.observable.ObservableTimer;
import io.reactivex.rxjava3.internal.operators.observable.ObservableToListSingle;
import io.reactivex.rxjava3.internal.operators.observable.ObservableUnsubscribeOn;
import io.reactivex.rxjava3.internal.operators.observable.ObservableUsing;
import io.reactivex.rxjava3.internal.operators.observable.ObservableWindow;
import io.reactivex.rxjava3.internal.operators.observable.ObservableWindowBoundary;
import io.reactivex.rxjava3.internal.operators.observable.ObservableWindowBoundarySelector;
import io.reactivex.rxjava3.internal.operators.observable.ObservableWindowTimed;
import io.reactivex.rxjava3.internal.operators.observable.ObservableWithLatestFrom;
import io.reactivex.rxjava3.internal.operators.observable.ObservableWithLatestFromMany;
import io.reactivex.rxjava3.internal.operators.observable.ObservableZip;
import io.reactivex.rxjava3.internal.operators.observable.ObservableZipIterable;
import io.reactivex.rxjava3.internal.operators.single.SingleFromUnsafeSource;
import io.reactivex.rxjava3.internal.operators.single.SingleToObservable;
import io.reactivex.rxjava3.internal.util.ArrayListSupplier;
import io.reactivex.rxjava3.internal.util.BlockingIgnoringReceiver;
import io.reactivex.rxjava3.internal.util.ErrorMode;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.internal.util.HashMapSupplier;
import io.reactivex.rxjava3.observables.ConnectableObservable;
import io.reactivex.rxjava3.observables.GroupedObservable;
import io.reactivex.rxjava3.observers.SafeObserver;
import io.reactivex.rxjava3.observers.TestObserver;
import io.reactivex.rxjava3.operators.ScalarSupplier;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import io.reactivex.rxjava3.schedulers.Schedulers;
import io.reactivex.rxjava3.schedulers.Timed;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import java.util.Spliterators;
import java.util.concurrent.Callable;
import java.util.concurrent.CompletionStage;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collector;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;
import org.reactivestreams.Publisher;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Observable<T> implements ObservableSource<T> {

    /* JADX INFO: renamed from: io.reactivex.rxjava3.core.Observable$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f70025a;

        static {
            int[] iArr = new int[BackpressureStrategy.values().length];
            f70025a = iArr;
            try {
                iArr[BackpressureStrategy.DROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f70025a[BackpressureStrategy.LATEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f70025a[BackpressureStrategy.MISSING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f70025a[BackpressureStrategy.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> amb(Iterable<? extends ObservableSource<? extends T>> iterable) {
        Objects.requireNonNull(iterable, "sources is null");
        return new ObservableAmb(null, iterable);
    }

    @CheckReturnValue
    @SafeVarargs
    @SchedulerSupport
    public static <T> Observable<T> ambArray(ObservableSource<? extends T>... observableSourceArr) {
        Objects.requireNonNull(observableSourceArr, "sources is null");
        int length = observableSourceArr.length;
        if (length == 0) {
            return empty();
        }
        return length == 1 ? wrap(observableSourceArr[0]) : new ObservableAmb(observableSourceArr, null);
    }

    @CheckReturnValue
    public static int bufferSize() {
        return Flowable.f70022b;
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> Observable<R> combineLatest(ObservableSource<? extends T1> observableSource, ObservableSource<? extends T2> observableSource2, ObservableSource<? extends T3> observableSource3, ObservableSource<? extends T4> observableSource4, ObservableSource<? extends T5> observableSource5, ObservableSource<? extends T6> observableSource6, ObservableSource<? extends T7> observableSource7, ObservableSource<? extends T8> observableSource8, ObservableSource<? extends T9> observableSource9, Function9<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> function9) {
        Objects.requireNonNull(observableSource, "source1 is null");
        Objects.requireNonNull(observableSource2, "source2 is null");
        Objects.requireNonNull(observableSource3, "source3 is null");
        Objects.requireNonNull(observableSource4, "source4 is null");
        Objects.requireNonNull(observableSource5, "source5 is null");
        Objects.requireNonNull(observableSource6, "source6 is null");
        Objects.requireNonNull(observableSource7, "source7 is null");
        Objects.requireNonNull(observableSource8, "source8 is null");
        Objects.requireNonNull(observableSource9, "source9 is null");
        Objects.requireNonNull(function9, "combiner is null");
        return combineLatestArray(new ObservableSource[]{observableSource, observableSource2, observableSource3, observableSource4, observableSource5, observableSource6, observableSource7, observableSource8, observableSource9}, Functions.w(function9), bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T, R> Observable<R> combineLatestArray(ObservableSource<? extends T>[] observableSourceArr, Function<? super Object[], ? extends R> function, int i2) {
        Objects.requireNonNull(observableSourceArr, "sources is null");
        if (observableSourceArr.length == 0) {
            return empty();
        }
        Objects.requireNonNull(function, "combiner is null");
        ObjectHelper.a(i2, "bufferSize");
        return new ObservableCombineLatest(observableSourceArr, null, function, i2 << 1, false);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T, R> Observable<R> combineLatestArrayDelayError(ObservableSource<? extends T>[] observableSourceArr, Function<? super Object[], ? extends R> function, int i2) {
        Objects.requireNonNull(observableSourceArr, "sources is null");
        Objects.requireNonNull(function, "combiner is null");
        ObjectHelper.a(i2, "bufferSize");
        return observableSourceArr.length == 0 ? empty() : new ObservableCombineLatest(observableSourceArr, null, function, i2 << 1, true);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T, R> Observable<R> combineLatestDelayError(Iterable<? extends ObservableSource<? extends T>> iterable, Function<? super Object[], ? extends R> function, int i2) {
        Objects.requireNonNull(iterable, "sources is null");
        Objects.requireNonNull(function, "combiner is null");
        ObjectHelper.a(i2, "bufferSize");
        return new ObservableCombineLatest(null, iterable, function, i2 << 1, true);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> concat(ObservableSource<? extends T> observableSource, ObservableSource<? extends T> observableSource2, ObservableSource<? extends T> observableSource3, ObservableSource<? extends T> observableSource4) {
        Objects.requireNonNull(observableSource, "source1 is null");
        Objects.requireNonNull(observableSource2, "source2 is null");
        Objects.requireNonNull(observableSource3, "source3 is null");
        Objects.requireNonNull(observableSource4, "source4 is null");
        return concatArray(observableSource, observableSource2, observableSource3, observableSource4);
    }

    @CheckReturnValue
    @SafeVarargs
    @SchedulerSupport
    public static <T> Observable<T> concatArray(ObservableSource<? extends T>... observableSourceArr) {
        Objects.requireNonNull(observableSourceArr, "sources is null");
        if (observableSourceArr.length == 0) {
            return empty();
        }
        return observableSourceArr.length == 1 ? wrap(observableSourceArr[0]) : new ObservableConcatMap(fromArray(observableSourceArr), Functions.f70036a, bufferSize(), ErrorMode.BOUNDARY);
    }

    @CheckReturnValue
    @SafeVarargs
    @SchedulerSupport
    public static <T> Observable<T> concatArrayDelayError(ObservableSource<? extends T>... observableSourceArr) {
        Objects.requireNonNull(observableSourceArr, "sources is null");
        if (observableSourceArr.length == 0) {
            return empty();
        }
        return observableSourceArr.length == 1 ? wrap(observableSourceArr[0]) : concatDelayError(fromArray(observableSourceArr));
    }

    @CheckReturnValue
    @SafeVarargs
    @SchedulerSupport
    public static <T> Observable<T> concatArrayEager(ObservableSource<? extends T>... observableSourceArr) {
        return concatArrayEager(bufferSize(), bufferSize(), observableSourceArr);
    }

    @CheckReturnValue
    @SafeVarargs
    @SchedulerSupport
    public static <T> Observable<T> concatArrayEagerDelayError(ObservableSource<? extends T>... observableSourceArr) {
        return concatArrayEagerDelayError(bufferSize(), bufferSize(), observableSourceArr);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> concatDelayError(ObservableSource<? extends ObservableSource<? extends T>> observableSource, int i2, boolean z) {
        Objects.requireNonNull(observableSource, "sources is null");
        ObjectHelper.a(i2, "bufferSize is null");
        return new ObservableConcatMap(observableSource, Functions.f70036a, i2, z ? ErrorMode.END : ErrorMode.BOUNDARY);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> concatEager(Iterable<? extends ObservableSource<? extends T>> iterable) {
        return concatEager(iterable, bufferSize(), bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> concatEagerDelayError(Iterable<? extends ObservableSource<? extends T>> iterable) {
        return concatEagerDelayError(iterable, bufferSize(), bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> create(ObservableOnSubscribe<T> observableOnSubscribe) {
        Objects.requireNonNull(observableOnSubscribe, "source is null");
        return new ObservableCreate(observableOnSubscribe);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> defer(Supplier<? extends ObservableSource<? extends T>> supplier) {
        Objects.requireNonNull(supplier, "supplier is null");
        return new ObservableDefer(supplier);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> empty() {
        return ObservableEmpty.f70481b;
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> error(Throwable th) {
        Objects.requireNonNull(th, "throwable is null");
        return error((Supplier<? extends Throwable>) Functions.h(th));
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> fromAction(Action action) {
        Objects.requireNonNull(action, "action is null");
        return new ObservableFromAction(action);
    }

    @CheckReturnValue
    @SafeVarargs
    @SchedulerSupport
    public static <T> Observable<T> fromArray(T... tArr) {
        Objects.requireNonNull(tArr, "items is null");
        if (tArr.length == 0) {
            return empty();
        }
        return tArr.length == 1 ? just(tArr[0]) : new ObservableFromArray(tArr);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> fromCallable(Callable<? extends T> callable) {
        Objects.requireNonNull(callable, "callable is null");
        return new ObservableFromCallable(callable);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> fromCompletable(CompletableSource completableSource) {
        Objects.requireNonNull(completableSource, "completableSource is null");
        return new ObservableFromCompletable(completableSource);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> fromCompletionStage(CompletionStage<T> completionStage) {
        Objects.requireNonNull(completionStage, "stage is null");
        return new ObservableFromCompletionStage(completionStage);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> fromFuture(Future<? extends T> future, long j2, TimeUnit timeUnit) {
        Objects.requireNonNull(future, "future is null");
        Objects.requireNonNull(timeUnit, "unit is null");
        return new ObservableFromFuture(future, j2, timeUnit);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> fromIterable(Iterable<? extends T> iterable) {
        Objects.requireNonNull(iterable, "source is null");
        return new ObservableFromIterable(iterable);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> fromMaybe(MaybeSource<T> maybeSource) {
        Objects.requireNonNull(maybeSource, "maybe is null");
        return new MaybeToObservable(maybeSource);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> fromOptional(Optional<T> optional) {
        Objects.requireNonNull(optional, "optional is null");
        return (Observable) optional.map(new aa(3)).orElseGet(new sg0(0));
    }

    @BackpressureSupport
    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> fromPublisher(Publisher<? extends T> publisher) {
        Objects.requireNonNull(publisher, "publisher is null");
        return new ObservableFromPublisher(publisher);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> fromRunnable(Runnable runnable) {
        Objects.requireNonNull(runnable, "run is null");
        return new ObservableFromRunnable(runnable);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> fromSingle(SingleSource<T> singleSource) {
        Objects.requireNonNull(singleSource, "source is null");
        return new SingleToObservable(singleSource);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> fromStream(Stream<T> stream) {
        Objects.requireNonNull(stream, "stream is null");
        return new ObservableFromStream(stream);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> fromSupplier(Supplier<? extends T> supplier) {
        Objects.requireNonNull(supplier, "supplier is null");
        return new ObservableFromSupplier(supplier);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T, S> Observable<T> generate(Supplier<S> supplier, BiFunction<S, Emitter<T>, S> biFunction, Consumer<? super S> consumer) {
        Objects.requireNonNull(supplier, "initialState is null");
        Objects.requireNonNull(biFunction, "generator is null");
        Objects.requireNonNull(consumer, "disposeState is null");
        return new ObservableGenerate(supplier, biFunction, consumer);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static Observable<Long> interval(long j2, long j3, TimeUnit timeUnit, Scheduler scheduler) {
        Objects.requireNonNull(timeUnit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return new ObservableInterval(Math.max(0L, j2), Math.max(0L, j3), timeUnit, scheduler);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static Observable<Long> intervalRange(long j2, long j3, long j4, long j5, TimeUnit timeUnit, Scheduler scheduler) {
        if (j3 < 0) {
            md.n(d21.g(j3, "count >= 0 required but it was "));
            return null;
        }
        if (j3 == 0) {
            return empty().delay(j4, timeUnit, scheduler);
        }
        long j6 = (j3 - 1) + j2;
        if (j2 > 0 && j6 < 0) {
            md.n("Overflow! start + count is bigger than Long.MAX_VALUE");
            return null;
        }
        Objects.requireNonNull(timeUnit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return new ObservableIntervalRange(j2, j6, Math.max(0L, j4), Math.max(0L, j5), timeUnit, scheduler);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> just(T t, T t2, T t3, T t4, T t5, T t6, T t7, T t8, T t9, T t10) {
        Objects.requireNonNull(t, "item1 is null");
        Objects.requireNonNull(t2, "item2 is null");
        Objects.requireNonNull(t3, "item3 is null");
        Objects.requireNonNull(t4, "item4 is null");
        Objects.requireNonNull(t5, "item5 is null");
        Objects.requireNonNull(t6, "item6 is null");
        Objects.requireNonNull(t7, "item7 is null");
        Objects.requireNonNull(t8, "item8 is null");
        Objects.requireNonNull(t9, "item9 is null");
        Objects.requireNonNull(t10, "item10 is null");
        return fromArray(t, t2, t3, t4, t5, t6, t7, t8, t9, t10);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> merge(ObservableSource<? extends T> observableSource, ObservableSource<? extends T> observableSource2, ObservableSource<? extends T> observableSource3, ObservableSource<? extends T> observableSource4) {
        Objects.requireNonNull(observableSource, "source1 is null");
        Objects.requireNonNull(observableSource2, "source2 is null");
        Objects.requireNonNull(observableSource3, "source3 is null");
        Objects.requireNonNull(observableSource4, "source4 is null");
        return fromArray(observableSource, observableSource2, observableSource3, observableSource4).flatMap(Functions.f70036a, false, 4);
    }

    @CheckReturnValue
    @SafeVarargs
    @SchedulerSupport
    public static <T> Observable<T> mergeArray(int i2, int i3, ObservableSource<? extends T>... observableSourceArr) {
        return fromArray(observableSourceArr).flatMap(Functions.f70036a, false, i2, i3);
    }

    @CheckReturnValue
    @SafeVarargs
    @SchedulerSupport
    public static <T> Observable<T> mergeArrayDelayError(ObservableSource<? extends T>... observableSourceArr) {
        return fromArray(observableSourceArr).flatMap(Functions.f70036a, true, observableSourceArr.length);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> mergeDelayError(ObservableSource<? extends T> observableSource, ObservableSource<? extends T> observableSource2, ObservableSource<? extends T> observableSource3, ObservableSource<? extends T> observableSource4) {
        Objects.requireNonNull(observableSource, "source1 is null");
        Objects.requireNonNull(observableSource2, "source2 is null");
        Objects.requireNonNull(observableSource3, "source3 is null");
        Objects.requireNonNull(observableSource4, "source4 is null");
        return fromArray(observableSource, observableSource2, observableSource3, observableSource4).flatMap(Functions.f70036a, true, 4);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> never() {
        return ObservableNever.f70686b;
    }

    @CheckReturnValue
    @SchedulerSupport
    public static Observable<Integer> range(int i2, int i3) {
        if (i3 < 0) {
            md.n(pq0.k(i3, "count >= 0 required but it was "));
            return null;
        }
        if (i3 == 0) {
            return empty();
        }
        if (i3 == 1) {
            return just(Integer.valueOf(i2));
        }
        if (((long) i2) + ((long) (i3 - 1)) <= 2147483647L) {
            return new ObservableRange(i2, i3);
        }
        md.n("Integer overflow");
        return null;
    }

    @CheckReturnValue
    @SchedulerSupport
    public static Observable<Long> rangeLong(long j2, long j3) {
        if (j3 < 0) {
            md.n(d21.g(j3, "count >= 0 required but it was "));
            return null;
        }
        if (j3 == 0) {
            return empty();
        }
        if (j3 == 1) {
            return just(Long.valueOf(j2));
        }
        long j4 = (j3 - 1) + j2;
        if (j2 <= 0 || j4 >= 0) {
            return new ObservableRangeLong(j2, j3);
        }
        md.n("Overflow! start + count is bigger than Long.MAX_VALUE");
        return null;
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Single<Boolean> sequenceEqual(ObservableSource<? extends T> observableSource, ObservableSource<? extends T> observableSource2, BiPredicate<? super T, ? super T> biPredicate, int i2) {
        Objects.requireNonNull(observableSource, "source1 is null");
        Objects.requireNonNull(observableSource2, "source2 is null");
        Objects.requireNonNull(biPredicate, "isEqual is null");
        ObjectHelper.a(i2, "bufferSize");
        return new ObservableSequenceEqualSingle(observableSource, observableSource2, biPredicate, i2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> switchOnNext(ObservableSource<? extends ObservableSource<? extends T>> observableSource, int i2) {
        Objects.requireNonNull(observableSource, "sources is null");
        ObjectHelper.a(i2, "bufferSize");
        return new ObservableSwitchMap(observableSource, Functions.f70036a, i2, false);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> switchOnNextDelayError(ObservableSource<? extends ObservableSource<? extends T>> observableSource, int i2) {
        Objects.requireNonNull(observableSource, "sources is null");
        ObjectHelper.a(i2, "bufferSize");
        return new ObservableSwitchMap(observableSource, Functions.f70036a, i2, true);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static Observable<Long> timer(long j2, TimeUnit timeUnit, Scheduler scheduler) {
        Objects.requireNonNull(timeUnit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return new ObservableTimer(Math.max(j2, 0L), timeUnit, scheduler);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> unsafeCreate(ObservableSource<T> observableSource) {
        Objects.requireNonNull(observableSource, "onSubscribe is null");
        if (!(observableSource instanceof Observable)) {
            return new ObservableFromUnsafeSource(observableSource);
        }
        md.n("unsafeCreate(Observable) should be upgraded");
        return null;
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T, D> Observable<T> using(Supplier<? extends D> supplier, Function<? super D, ? extends ObservableSource<? extends T>> function, Consumer<? super D> consumer, boolean z) {
        Objects.requireNonNull(supplier, "resourceSupplier is null");
        Objects.requireNonNull(function, "sourceSupplier is null");
        Objects.requireNonNull(consumer, "resourceCleanup is null");
        return new ObservableUsing(supplier, function, consumer, z);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> wrap(ObservableSource<T> observableSource) {
        Objects.requireNonNull(observableSource, "source is null");
        return observableSource instanceof Observable ? (Observable) observableSource : new ObservableFromUnsafeSource(observableSource);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> Observable<R> zip(ObservableSource<? extends T1> observableSource, ObservableSource<? extends T2> observableSource2, ObservableSource<? extends T3> observableSource3, ObservableSource<? extends T4> observableSource4, ObservableSource<? extends T5> observableSource5, ObservableSource<? extends T6> observableSource6, ObservableSource<? extends T7> observableSource7, ObservableSource<? extends T8> observableSource8, ObservableSource<? extends T9> observableSource9, Function9<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> function9) {
        Objects.requireNonNull(observableSource, "source1 is null");
        Objects.requireNonNull(observableSource2, "source2 is null");
        Objects.requireNonNull(observableSource3, "source3 is null");
        Objects.requireNonNull(observableSource4, "source4 is null");
        Objects.requireNonNull(observableSource5, "source5 is null");
        Objects.requireNonNull(observableSource6, "source6 is null");
        Objects.requireNonNull(observableSource7, "source7 is null");
        Objects.requireNonNull(observableSource8, "source8 is null");
        Objects.requireNonNull(observableSource9, "source9 is null");
        Objects.requireNonNull(function9, "zipper is null");
        return zipArray(Functions.w(function9), false, bufferSize(), observableSource, observableSource2, observableSource3, observableSource4, observableSource5, observableSource6, observableSource7, observableSource8, observableSource9);
    }

    @CheckReturnValue
    @SafeVarargs
    @SchedulerSupport
    public static <T, R> Observable<R> zipArray(Function<? super Object[], ? extends R> function, boolean z, int i2, ObservableSource<? extends T>... observableSourceArr) {
        Objects.requireNonNull(observableSourceArr, "sources is null");
        if (observableSourceArr.length == 0) {
            return empty();
        }
        Objects.requireNonNull(function, "zipper is null");
        ObjectHelper.a(i2, "bufferSize");
        return new ObservableZip(observableSourceArr, null, function, i2, z);
    }

    public final ObservableDoOnEach a(Consumer consumer, Consumer consumer2, Action action, Action action2) {
        Objects.requireNonNull(consumer, "onNext is null");
        Objects.requireNonNull(consumer2, "onError is null");
        Objects.requireNonNull(action, "onComplete is null");
        Objects.requireNonNull(action2, "onAfterTerminate is null");
        return new ObservableDoOnEach(this, consumer, consumer2, action, action2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Single<Boolean> all(Predicate<? super T> predicate) {
        Objects.requireNonNull(predicate, "predicate is null");
        return new ObservableAllSingle(this, predicate);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> ambWith(ObservableSource<? extends T> observableSource) {
        Objects.requireNonNull(observableSource, "other is null");
        return ambArray(this, observableSource);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Single<Boolean> any(Predicate<? super T> predicate) {
        Objects.requireNonNull(predicate, "predicate is null");
        return new ObservableAnySingle(this, predicate);
    }

    public final ObservableTimeoutTimed b(long j2, TimeUnit timeUnit, Scheduler scheduler, ObservableSource observableSource) {
        Objects.requireNonNull(timeUnit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return new ObservableTimeoutTimed(this, j2, timeUnit, scheduler, observableSource);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final T blockingFirst(T t) {
        Objects.requireNonNull(t, "defaultItem is null");
        BlockingFirstObserver blockingFirstObserver = new BlockingFirstObserver();
        subscribe(blockingFirstObserver);
        T t2 = (T) blockingFirstObserver.a();
        return t2 != null ? t2 : t;
    }

    @SchedulerSupport
    public final void blockingForEach(Consumer<? super T> consumer, int i2) {
        Objects.requireNonNull(consumer, "onNext is null");
        Iterator<T> it = blockingIterable(i2).iterator();
        while (it.hasNext()) {
            try {
                consumer.accept(it.next());
            } catch (Throwable th) {
                Exceptions.a(th);
                ((Disposable) it).dispose();
                throw ExceptionHelper.e(th);
            }
        }
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Iterable<T> blockingIterable(int i2) {
        ObjectHelper.a(i2, "capacityHint");
        return new BlockingObservableIterable(this, i2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final T blockingLast(T t) {
        Objects.requireNonNull(t, "defaultItem is null");
        BlockingLastObserver blockingLastObserver = new BlockingLastObserver();
        subscribe(blockingLastObserver);
        T t2 = (T) blockingLastObserver.a();
        return t2 != null ? t2 : t;
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Iterable<T> blockingLatest() {
        return new BlockingObservableLatest(this);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Iterable<T> blockingMostRecent(T t) {
        Objects.requireNonNull(t, "initialItem is null");
        return new BlockingObservableMostRecent(this, t);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Iterable<T> blockingNext() {
        return new BlockingObservableNext(this);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final T blockingSingle() {
        Maybe<T> maybeSingleElement = singleElement();
        maybeSingleElement.getClass();
        BlockingMultiObserver blockingMultiObserver = new BlockingMultiObserver();
        maybeSingleElement.a(blockingMultiObserver);
        T t = (T) blockingMultiObserver.a();
        if (t != null) {
            return t;
        }
        b21.x();
        return null;
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Stream<T> blockingStream(int i2) {
        Iterator<T> it = blockingIterable(i2).iterator();
        Stream stream = StreamSupport.stream(Spliterators.spliteratorUnknownSize(it, 0), false);
        Disposable disposable = (Disposable) it;
        disposable.getClass();
        return (Stream) stream.onClose(new et(disposable, 28));
    }

    @SchedulerSupport
    public final void blockingSubscribe() {
        BlockingIgnoringReceiver blockingIgnoringReceiver = new BlockingIgnoringReceiver();
        Consumer consumer = Functions.d;
        LambdaObserver lambdaObserver = new LambdaObserver(consumer, blockingIgnoringReceiver, blockingIgnoringReceiver, consumer);
        subscribe(lambdaObserver);
        if (blockingIgnoringReceiver.getCount() != 0) {
            try {
                blockingIgnoringReceiver.await();
            } catch (InterruptedException e2) {
                lambdaObserver.dispose();
                Thread.currentThread().interrupt();
                az.s("Interrupted while waiting for subscription to complete.", e2);
                return;
            }
        }
        Throwable th = blockingIgnoringReceiver.f71117b;
        if (th != null) {
            throw ExceptionHelper.e(th);
        }
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <U extends Collection<? super T>> Observable<U> buffer(long j2, TimeUnit timeUnit, Scheduler scheduler, int i2, Supplier<U> supplier, boolean z) {
        Objects.requireNonNull(timeUnit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        Objects.requireNonNull(supplier, "bufferSupplier is null");
        ObjectHelper.a(i2, b.a.f24018f);
        return new ObservableBufferTimed(this, j2, j2, timeUnit, scheduler, supplier, i2, z);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> cache() {
        return cacheWithInitialCapacity(16);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> cacheWithInitialCapacity(int i2) {
        ObjectHelper.a(i2, "initialCapacity");
        return new ObservableCache(this, i2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <U> Observable<U> cast(Class<U> cls) {
        Objects.requireNonNull(cls, "clazz is null");
        return (Observable<U>) map(Functions.b(cls));
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <U> Single<U> collect(Supplier<? extends U> supplier, BiConsumer<? super U, ? super T> biConsumer) {
        Objects.requireNonNull(supplier, "initialItemSupplier is null");
        Objects.requireNonNull(biConsumer, "collector is null");
        return new ObservableCollectSingle(this, supplier, biConsumer);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <U> Single<U> collectInto(U u, BiConsumer<? super U, ? super T> biConsumer) {
        Objects.requireNonNull(u, "initialItem is null");
        return collect(Functions.h(u), biConsumer);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> compose(ObservableTransformer<? super T, ? extends R> observableTransformer) {
        Objects.requireNonNull(observableTransformer, "composer is null");
        return wrap(observableTransformer.apply());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> concatMap(Function<? super T, ? extends ObservableSource<? extends R>> function, int i2) {
        Objects.requireNonNull(function, "mapper is null");
        ObjectHelper.a(i2, "bufferSize");
        if (!(this instanceof ScalarSupplier)) {
            return new ObservableConcatMap(this, function, i2, ErrorMode.IMMEDIATE);
        }
        Object obj = ((ScalarSupplier) this).get();
        return obj == null ? empty() : ObservableScalarXMap.a(obj, function);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Completable concatMapCompletable(Function<? super T, ? extends CompletableSource> function, int i2) {
        Objects.requireNonNull(function, "mapper is null");
        ObjectHelper.a(i2, "capacityHint");
        return new ObservableConcatMapCompletable(this, function, ErrorMode.IMMEDIATE, i2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Completable concatMapCompletableDelayError(Function<? super T, ? extends CompletableSource> function, boolean z, int i2) {
        Objects.requireNonNull(function, "mapper is null");
        ObjectHelper.a(i2, "bufferSize");
        return new ObservableConcatMapCompletable(this, function, z ? ErrorMode.END : ErrorMode.BOUNDARY, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> concatMapDelayError(Function<? super T, ? extends ObservableSource<? extends R>> function, boolean z, int i2) {
        Objects.requireNonNull(function, "mapper is null");
        ObjectHelper.a(i2, "bufferSize");
        if (!(this instanceof ScalarSupplier)) {
            return new ObservableConcatMap(this, function, i2, z ? ErrorMode.END : ErrorMode.BOUNDARY);
        }
        Object obj = ((ScalarSupplier) this).get();
        return obj == null ? empty() : ObservableScalarXMap.a(obj, function);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> concatMapEager(Function<? super T, ? extends ObservableSource<? extends R>> function, int i2, int i3) {
        Objects.requireNonNull(function, "mapper is null");
        ObjectHelper.a(i2, "maxConcurrency");
        ObjectHelper.a(i3, "bufferSize");
        return new ObservableConcatMapEager(this, function, ErrorMode.IMMEDIATE, i2, i3);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> concatMapEagerDelayError(Function<? super T, ? extends ObservableSource<? extends R>> function, boolean z, int i2, int i3) {
        Objects.requireNonNull(function, "mapper is null");
        ObjectHelper.a(i2, "maxConcurrency");
        ObjectHelper.a(i3, "bufferSize");
        return new ObservableConcatMapEager(this, function, z ? ErrorMode.END : ErrorMode.BOUNDARY, i2, i3);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <U> Observable<U> concatMapIterable(Function<? super T, ? extends Iterable<? extends U>> function) {
        Objects.requireNonNull(function, "mapper is null");
        return new ObservableFlattenIterable(this, function);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> concatMapMaybe(Function<? super T, ? extends MaybeSource<? extends R>> function, int i2) {
        Objects.requireNonNull(function, "mapper is null");
        ObjectHelper.a(i2, "bufferSize");
        return new ObservableConcatMapMaybe(this, function, ErrorMode.IMMEDIATE, i2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> concatMapMaybeDelayError(Function<? super T, ? extends MaybeSource<? extends R>> function, boolean z, int i2) {
        Objects.requireNonNull(function, "mapper is null");
        ObjectHelper.a(i2, "bufferSize");
        return new ObservableConcatMapMaybe(this, function, z ? ErrorMode.END : ErrorMode.BOUNDARY, i2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> concatMapSingle(Function<? super T, ? extends SingleSource<? extends R>> function, int i2) {
        Objects.requireNonNull(function, "mapper is null");
        ObjectHelper.a(i2, "bufferSize");
        return new ObservableConcatMapSingle(this, function, ErrorMode.IMMEDIATE, i2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> concatMapSingleDelayError(Function<? super T, ? extends SingleSource<? extends R>> function, boolean z, int i2) {
        Objects.requireNonNull(function, "mapper is null");
        ObjectHelper.a(i2, "bufferSize");
        return new ObservableConcatMapSingle(this, function, z ? ErrorMode.END : ErrorMode.BOUNDARY, i2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> concatMapStream(Function<? super T, ? extends Stream<? extends R>> function) {
        return flatMapStream(function);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> concatWith(SingleSource<? extends T> singleSource) {
        Objects.requireNonNull(singleSource, "other is null");
        return new ObservableConcatWithSingle(this, singleSource);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Single<Boolean> contains(Object obj) {
        Objects.requireNonNull(obj, "item is null");
        return any(Functions.e(obj));
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Single<Long> count() {
        return new ObservableCountSingle(this);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> debounce(long j2, TimeUnit timeUnit, Scheduler scheduler, Consumer<? super T> consumer) {
        Objects.requireNonNull(timeUnit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        Objects.requireNonNull(consumer, "onDropped is null");
        return new ObservableDebounceTimed(this, j2, timeUnit, scheduler, consumer);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> defaultIfEmpty(T t) {
        Objects.requireNonNull(t, "defaultItem is null");
        return switchIfEmpty(just(t));
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> delay(long j2, TimeUnit timeUnit, Scheduler scheduler, boolean z) {
        Objects.requireNonNull(timeUnit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return new ObservableDelay(this, j2, timeUnit, scheduler, z);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <U> Observable<T> delaySubscription(ObservableSource<U> observableSource) {
        Objects.requireNonNull(observableSource, "subscriptionIndicator is null");
        return new ObservableDelaySubscriptionOther(this, observableSource);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> dematerialize(Function<? super T, Notification<R>> function) {
        Objects.requireNonNull(function, "selector is null");
        return new ObservableDematerialize(this, function);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <K> Observable<T> distinct(Function<? super T, K> function, Supplier<? extends Collection<? super K>> supplier) {
        Objects.requireNonNull(function, "keySelector is null");
        Objects.requireNonNull(supplier, "collectionSupplier is null");
        return new ObservableDistinct(this, function, supplier);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <K> Observable<T> distinctUntilChanged(Function<? super T, K> function) {
        Objects.requireNonNull(function, "keySelector is null");
        return new ObservableDistinctUntilChanged(this, function, ObjectHelper.f70067a);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> doAfterNext(Consumer<? super T> consumer) {
        Objects.requireNonNull(consumer, "onAfterNext is null");
        return new ObservableDoAfterNext(this, consumer);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> doAfterTerminate(Action action) {
        Objects.requireNonNull(action, "onAfterTerminate is null");
        Consumer consumer = Functions.d;
        return a(consumer, consumer, Functions.f70038c, action);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> doFinally(Action action) {
        Objects.requireNonNull(action, "onFinally is null");
        return new ObservableDoFinally(this, action);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> doOnComplete(Action action) {
        Consumer consumer = Functions.d;
        return a(consumer, consumer, action, Functions.f70038c);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> doOnDispose(Action action) {
        return doOnLifecycle(Functions.d, action);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> doOnEach(Consumer<? super Notification<T>> consumer) {
        Objects.requireNonNull(consumer, "onNotification is null");
        return a(Functions.m(consumer), Functions.l(consumer), Functions.k(consumer), Functions.f70038c);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> doOnError(Consumer<? super Throwable> consumer) {
        Consumer consumer2 = Functions.d;
        Action action = Functions.f70038c;
        return a(consumer2, consumer, action, action);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> doOnLifecycle(Consumer<? super Disposable> consumer, Action action) {
        Objects.requireNonNull(consumer, "onSubscribe is null");
        Objects.requireNonNull(action, "onDispose is null");
        return new ObservableDoOnLifecycle(this, consumer, action);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> doOnNext(Consumer<? super T> consumer) {
        Consumer consumer2 = Functions.d;
        Action action = Functions.f70038c;
        return a(consumer, consumer2, action, action);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> doOnSubscribe(Consumer<? super Disposable> consumer) {
        return doOnLifecycle(consumer, Functions.f70038c);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> doOnTerminate(Action action) {
        Objects.requireNonNull(action, "onTerminate is null");
        return a(Functions.d, Functions.a(action), action, Functions.f70038c);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Single<T> elementAt(long j2, T t) {
        if (j2 >= 0) {
            Objects.requireNonNull(t, "defaultItem is null");
            return new ObservableElementAtSingle(this, j2, t);
        }
        az.v(d21.g(j2, "index >= 0 required but it was "));
        return null;
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Single<T> elementAtOrError(long j2) {
        if (j2 >= 0) {
            return new ObservableElementAtSingle(this, j2, null);
        }
        az.v(d21.g(j2, "index >= 0 required but it was "));
        return null;
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> filter(Predicate<? super T> predicate) {
        Objects.requireNonNull(predicate, "predicate is null");
        return new ObservableFilter(this, predicate);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Single<T> first(T t) {
        return elementAt(0L, t);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Maybe<T> firstElement() {
        return elementAt(0L);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Single<T> firstOrError() {
        return elementAtOrError(0L);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final CompletionStage<T> firstOrErrorStage() {
        return (CompletionStage) subscribeWith(new ObservableFirstStageObserver(false, null));
    }

    @CheckReturnValue
    @SchedulerSupport
    public final CompletionStage<T> firstStage(T t) {
        return (CompletionStage) subscribeWith(new ObservableFirstStageObserver(true, t));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> flatMap(Function<? super T, ? extends ObservableSource<? extends R>> function, boolean z, int i2, int i3) {
        Objects.requireNonNull(function, "mapper is null");
        ObjectHelper.a(i2, "maxConcurrency");
        ObjectHelper.a(i3, "bufferSize");
        if (!(this instanceof ScalarSupplier)) {
            return new ObservableFlatMap(this, function, z, i2, i3);
        }
        Object obj = ((ScalarSupplier) this).get();
        return obj == null ? empty() : ObservableScalarXMap.a(obj, function);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Completable flatMapCompletable(Function<? super T, ? extends CompletableSource> function, boolean z) {
        Objects.requireNonNull(function, "mapper is null");
        return new ObservableFlatMapCompletableCompletable(this, function, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CheckReturnValue
    @SchedulerSupport
    public final <U, V> Observable<V> flatMapIterable(Function<? super T, ? extends Iterable<? extends U>> function, BiFunction<? super T, ? super U, ? extends V> biFunction) {
        Objects.requireNonNull(function, "mapper is null");
        Objects.requireNonNull(biFunction, "combiner is null");
        return (Observable<V>) flatMap(ObservableInternalHelper.a(function), biFunction, false, bufferSize(), bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> flatMapMaybe(Function<? super T, ? extends MaybeSource<? extends R>> function, boolean z) {
        Objects.requireNonNull(function, "mapper is null");
        return new ObservableFlatMapMaybe(this, function, z);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> flatMapSingle(Function<? super T, ? extends SingleSource<? extends R>> function, boolean z) {
        Objects.requireNonNull(function, "mapper is null");
        return new ObservableFlatMapSingle(this, function, z);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> flatMapStream(Function<? super T, ? extends Stream<? extends R>> function) {
        Objects.requireNonNull(function, "mapper is null");
        return new ObservableFlatMapStream(this, function);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Disposable forEach(Consumer<? super T> consumer) {
        return subscribe(consumer);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Disposable forEachWhile(Predicate<? super T> predicate, Consumer<? super Throwable> consumer, Action action) {
        Objects.requireNonNull(predicate, "onNext is null");
        Objects.requireNonNull(consumer, "onError is null");
        Objects.requireNonNull(action, "onComplete is null");
        ForEachWhileObserver forEachWhileObserver = new ForEachWhileObserver(predicate, consumer, action);
        subscribe(forEachWhileObserver);
        return forEachWhileObserver;
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <K, V> Observable<GroupedObservable<K, V>> groupBy(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, boolean z, int i2) {
        Objects.requireNonNull(function, "keySelector is null");
        Objects.requireNonNull(function2, "valueSelector is null");
        ObjectHelper.a(i2, "bufferSize");
        return new ObservableGroupBy(this, function, function2, i2, z);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <TRight, TLeftEnd, TRightEnd, R> Observable<R> groupJoin(ObservableSource<? extends TRight> observableSource, Function<? super T, ? extends ObservableSource<TLeftEnd>> function, Function<? super TRight, ? extends ObservableSource<TRightEnd>> function2, BiFunction<? super T, ? super Observable<TRight>, ? extends R> biFunction) {
        Objects.requireNonNull(observableSource, "other is null");
        Objects.requireNonNull(function, "leftEnd is null");
        Objects.requireNonNull(function2, "rightEnd is null");
        Objects.requireNonNull(biFunction, "resultSelector is null");
        return new ObservableGroupJoin(this, observableSource, function, function2, biFunction);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> hide() {
        return new ObservableHide(this);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Completable ignoreElements() {
        return new ObservableIgnoreElementsCompletable(this);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Single<Boolean> isEmpty() {
        return all(Functions.g);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <TRight, TLeftEnd, TRightEnd, R> Observable<R> join(ObservableSource<? extends TRight> observableSource, Function<? super T, ? extends ObservableSource<TLeftEnd>> function, Function<? super TRight, ? extends ObservableSource<TRightEnd>> function2, BiFunction<? super T, ? super TRight, ? extends R> biFunction) {
        Objects.requireNonNull(observableSource, "other is null");
        Objects.requireNonNull(function, "leftEnd is null");
        Objects.requireNonNull(function2, "rightEnd is null");
        Objects.requireNonNull(biFunction, "resultSelector is null");
        return new ObservableJoin(this, observableSource, function, function2, biFunction);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Single<T> last(T t) {
        Objects.requireNonNull(t, "defaultItem is null");
        return new ObservableLastSingle(this, t);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Maybe<T> lastElement() {
        return new ObservableLastMaybe(this);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Single<T> lastOrError() {
        return new ObservableLastSingle(this, null);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final CompletionStage<T> lastOrErrorStage() {
        return (CompletionStage) subscribeWith(new ObservableLastStageObserver(false, null));
    }

    @CheckReturnValue
    @SchedulerSupport
    public final CompletionStage<T> lastStage(T t) {
        return (CompletionStage) subscribeWith(new ObservableLastStageObserver(true, t));
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> lift(ObservableOperator<? extends R, ? super T> observableOperator) {
        Objects.requireNonNull(observableOperator, "lifter is null");
        return new ObservableLift(this, observableOperator);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> map(Function<? super T, ? extends R> function) {
        Objects.requireNonNull(function, "mapper is null");
        return new ObservableMap(this, function);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> mapOptional(Function<? super T, Optional<? extends R>> function) {
        Objects.requireNonNull(function, "mapper is null");
        return new ObservableMapOptional(this, function);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<Notification<T>> materialize() {
        return new ObservableMaterialize(this);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> mergeWith(SingleSource<? extends T> singleSource) {
        Objects.requireNonNull(singleSource, "other is null");
        return new ObservableMergeWithSingle(this, singleSource);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> observeOn(Scheduler scheduler, boolean z, int i2) {
        Objects.requireNonNull(scheduler, "scheduler is null");
        ObjectHelper.a(i2, "bufferSize");
        return new ObservableObserveOn(this, scheduler, z, i2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <U> Observable<U> ofType(Class<U> cls) {
        Objects.requireNonNull(cls, "clazz is null");
        return filter(Functions.f(cls)).cast(cls);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> onErrorComplete(Predicate<? super Throwable> predicate) {
        Objects.requireNonNull(predicate, "predicate is null");
        return new ObservableOnErrorComplete(this, predicate);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> onErrorResumeNext(Function<? super Throwable, ? extends ObservableSource<? extends T>> function) {
        Objects.requireNonNull(function, "fallbackSupplier is null");
        return new ObservableOnErrorNext(this, function);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> onErrorResumeWith(ObservableSource<? extends T> observableSource) {
        Objects.requireNonNull(observableSource, "fallback is null");
        return onErrorResumeNext(Functions.g(observableSource));
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> onErrorReturn(Function<? super Throwable, ? extends T> function) {
        Objects.requireNonNull(function, "itemSupplier is null");
        return new ObservableOnErrorReturn(this, function);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> onErrorReturnItem(T t) {
        Objects.requireNonNull(t, "item is null");
        return onErrorReturn(Functions.g(t));
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> onTerminateDetach() {
        return new ObservableDetach(this);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> publish(Function<? super Observable<T>, ? extends ObservableSource<R>> function) {
        Objects.requireNonNull(function, "selector is null");
        return new ObservablePublishSelector(this, function);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Single<R> reduce(R r, BiFunction<R, ? super T, R> biFunction) {
        Objects.requireNonNull(r, "seed is null");
        Objects.requireNonNull(biFunction, "reducer is null");
        return new ObservableReduceSeedSingle(this, r, biFunction);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Single<R> reduceWith(Supplier<R> supplier, BiFunction<R, ? super T, R> biFunction) {
        Objects.requireNonNull(supplier, "seedSupplier is null");
        Objects.requireNonNull(biFunction, "reducer is null");
        return new ObservableReduceWithSingle(this, supplier, biFunction);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> repeat(long j2) {
        if (j2 >= 0) {
            return j2 == 0 ? empty() : new ObservableRepeat(this, j2);
        }
        md.n(d21.g(j2, "times >= 0 required but it was "));
        return null;
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> repeatUntil(BooleanSupplier booleanSupplier) {
        Objects.requireNonNull(booleanSupplier, "stop is null");
        return new ObservableRepeatUntil(this, booleanSupplier);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> repeatWhen(Function<? super Observable<Object>, ? extends ObservableSource<?>> function) {
        Objects.requireNonNull(function, "handler is null");
        return new ObservableRepeatWhen(this, function);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> replay(Function<? super Observable<T>, ? extends ObservableSource<R>> function, int i2, long j2, TimeUnit timeUnit, Scheduler scheduler) {
        Objects.requireNonNull(function, "selector is null");
        ObjectHelper.a(i2, "bufferSize");
        Objects.requireNonNull(timeUnit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return ObservableReplay.i(function, ObservableInternalHelper.g(i2, j2, this, scheduler, timeUnit, false));
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> retry(long j2, Predicate<? super Throwable> predicate) {
        if (j2 >= 0) {
            Objects.requireNonNull(predicate, "predicate is null");
            return new ObservableRetryPredicate(this, j2, predicate);
        }
        md.n(d21.g(j2, "times >= 0 required but it was "));
        return null;
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> retryUntil(BooleanSupplier booleanSupplier) {
        Objects.requireNonNull(booleanSupplier, "stop is null");
        return retry(Long.MAX_VALUE, Functions.n(booleanSupplier));
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> retryWhen(Function<? super Observable<Throwable>, ? extends ObservableSource<?>> function) {
        Objects.requireNonNull(function, "handler is null");
        return new ObservableRetryWhen(this, function);
    }

    @SchedulerSupport
    public final void safeSubscribe(Observer<? super T> observer) {
        Objects.requireNonNull(observer, "observer is null");
        if (observer instanceof SafeObserver) {
            subscribe(observer);
        } else {
            subscribe(new SafeObserver(observer));
        }
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> sample(long j2, TimeUnit timeUnit, Scheduler scheduler, boolean z, Consumer<? super T> consumer) {
        Objects.requireNonNull(timeUnit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        Objects.requireNonNull(consumer, "onDropped is null");
        return new ObservableSampleTimed(this, j2, timeUnit, scheduler, z, consumer);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> scan(R r, BiFunction<R, ? super T, R> biFunction) {
        Objects.requireNonNull(r, "initialValue is null");
        return scanWith(Functions.h(r), biFunction);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> scanWith(Supplier<R> supplier, BiFunction<R, ? super T, R> biFunction) {
        Objects.requireNonNull(supplier, "seedSupplier is null");
        Objects.requireNonNull(biFunction, "accumulator is null");
        return new ObservableScanSeed(this, supplier, biFunction);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> serialize() {
        return new ObservableSerialized(this);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> share() {
        ConnectableObservable<T> connectableObservablePublish = publish();
        connectableObservablePublish.getClass();
        return new ObservableRefCount(connectableObservablePublish);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Single<T> single(T t) {
        Objects.requireNonNull(t, "defaultItem is null");
        return new ObservableSingleSingle(this, t);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Maybe<T> singleElement() {
        return new ObservableSingleMaybe(this);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Single<T> singleOrError() {
        return new ObservableSingleSingle(this, null);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final CompletionStage<T> singleOrErrorStage() {
        return (CompletionStage) subscribeWith(new ObservableSingleStageObserver(false, null));
    }

    @CheckReturnValue
    @SchedulerSupport
    public final CompletionStage<T> singleStage(T t) {
        return (CompletionStage) subscribeWith(new ObservableSingleStageObserver(true, t));
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> skip(long j2) {
        if (j2 >= 0) {
            return j2 == 0 ? this : new ObservableSkip(this, j2);
        }
        md.n(d21.g(j2, "count >= 0 expected but it was "));
        return null;
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> skipLast(long j2, TimeUnit timeUnit, Scheduler scheduler, boolean z, int i2) {
        Objects.requireNonNull(timeUnit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        ObjectHelper.a(i2, "bufferSize");
        return new ObservableSkipLastTimed(this, j2, timeUnit, scheduler, i2 << 1, z);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <U> Observable<T> skipUntil(ObservableSource<U> observableSource) {
        Objects.requireNonNull(observableSource, "other is null");
        return new ObservableSkipUntil(this, observableSource);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> skipWhile(Predicate<? super T> predicate) {
        Objects.requireNonNull(predicate, "predicate is null");
        return new ObservableSkipWhile(this, predicate);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> sorted(Comparator<? super T> comparator) {
        Objects.requireNonNull(comparator, "comparator is null");
        Single<List<T>> list = toList();
        list.getClass();
        return (list instanceof FuseToObservable ? ((FuseToObservable) list).b() : new SingleToObservable(list)).map(Functions.i(comparator)).flatMapIterable(Functions.f70036a);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> startWith(CompletableSource completableSource) {
        Objects.requireNonNull(completableSource, "other is null");
        CompletableSource completableFromUnsafeSource = completableSource instanceof Completable ? (Completable) completableSource : new CompletableFromUnsafeSource(completableSource);
        return concat(completableFromUnsafeSource instanceof FuseToObservable ? ((FuseToObservable) completableFromUnsafeSource).b() : new CompletableToObservable(completableFromUnsafeSource), this);
    }

    @CheckReturnValue
    @SafeVarargs
    @SchedulerSupport
    public final Observable<T> startWithArray(T... tArr) {
        Observable observableFromArray = fromArray(tArr);
        return observableFromArray == empty() ? this : concatArray(observableFromArray, this);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> startWithItem(T t) {
        return concatArray(just(t), this);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> startWithIterable(Iterable<? extends T> iterable) {
        return concatArray(fromIterable(iterable), this);
    }

    @SchedulerSupport
    public final Disposable subscribe(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action, DisposableContainer disposableContainer) {
        Objects.requireNonNull(consumer, "onNext is null");
        Objects.requireNonNull(consumer2, "onError is null");
        Objects.requireNonNull(action, "onComplete is null");
        Objects.requireNonNull(disposableContainer, "container is null");
        DisposableAutoReleaseObserver disposableAutoReleaseObserver = new DisposableAutoReleaseObserver(disposableContainer, consumer, consumer2, action);
        disposableContainer.b(disposableAutoReleaseObserver);
        subscribe(disposableAutoReleaseObserver);
        return disposableAutoReleaseObserver;
    }

    public abstract void subscribeActual(Observer observer);

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> subscribeOn(Scheduler scheduler) {
        Objects.requireNonNull(scheduler, "scheduler is null");
        return new ObservableSubscribeOn(this, scheduler);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <E extends Observer<? super T>> E subscribeWith(E e2) {
        subscribe(e2);
        return e2;
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> switchIfEmpty(ObservableSource<? extends T> observableSource) {
        Objects.requireNonNull(observableSource, "other is null");
        return new ObservableSwitchIfEmpty(this, observableSource);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> switchMap(Function<? super T, ? extends ObservableSource<? extends R>> function, int i2) {
        Objects.requireNonNull(function, "mapper is null");
        ObjectHelper.a(i2, "bufferSize");
        if (!(this instanceof ScalarSupplier)) {
            return new ObservableSwitchMap(this, function, i2, false);
        }
        Object obj = ((ScalarSupplier) this).get();
        return obj == null ? empty() : ObservableScalarXMap.a(obj, function);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Completable switchMapCompletable(Function<? super T, ? extends CompletableSource> function) {
        Objects.requireNonNull(function, "mapper is null");
        return new ObservableSwitchMapCompletable(this, function, false);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Completable switchMapCompletableDelayError(Function<? super T, ? extends CompletableSource> function) {
        Objects.requireNonNull(function, "mapper is null");
        return new ObservableSwitchMapCompletable(this, function, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> switchMapDelayError(Function<? super T, ? extends ObservableSource<? extends R>> function, int i2) {
        Objects.requireNonNull(function, "mapper is null");
        ObjectHelper.a(i2, "bufferSize");
        if (!(this instanceof ScalarSupplier)) {
            return new ObservableSwitchMap(this, function, i2, true);
        }
        Object obj = ((ScalarSupplier) this).get();
        return obj == null ? empty() : ObservableScalarXMap.a(obj, function);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> switchMapMaybe(Function<? super T, ? extends MaybeSource<? extends R>> function) {
        Objects.requireNonNull(function, "mapper is null");
        return new ObservableSwitchMapMaybe(this, function, false);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> switchMapMaybeDelayError(Function<? super T, ? extends MaybeSource<? extends R>> function) {
        Objects.requireNonNull(function, "mapper is null");
        return new ObservableSwitchMapMaybe(this, function, true);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> switchMapSingle(Function<? super T, ? extends SingleSource<? extends R>> function) {
        Objects.requireNonNull(function, "mapper is null");
        return new ObservableSwitchMapSingle(this, function, false);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> switchMapSingleDelayError(Function<? super T, ? extends SingleSource<? extends R>> function) {
        Objects.requireNonNull(function, "mapper is null");
        return new ObservableSwitchMapSingle(this, function, true);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> take(long j2) {
        if (j2 >= 0) {
            return new ObservableTake(this, j2);
        }
        md.n(d21.g(j2, "count >= 0 required but it was "));
        return null;
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> takeLast(long j2, long j3, TimeUnit timeUnit, Scheduler scheduler, boolean z, int i2) {
        Objects.requireNonNull(timeUnit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        ObjectHelper.a(i2, "bufferSize");
        if (j2 >= 0) {
            return new ObservableTakeLastTimed(this, j2, j3, timeUnit, scheduler, i2, z);
        }
        md.n(d21.g(j2, "count >= 0 required but it was "));
        return null;
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <U> Observable<T> takeUntil(ObservableSource<U> observableSource) {
        Objects.requireNonNull(observableSource, "other is null");
        return new ObservableTakeUntil(this, observableSource);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> takeWhile(Predicate<? super T> predicate) {
        Objects.requireNonNull(predicate, "predicate is null");
        return new ObservableTakeWhile(this, predicate);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final TestObserver<T> test(boolean z) {
        TestObserver<T> testObserver = new TestObserver<>();
        if (z) {
            testObserver.dispose();
        }
        subscribe(testObserver);
        return testObserver;
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> throttleFirst(long j2, TimeUnit timeUnit, Scheduler scheduler, Consumer<? super T> consumer) {
        Objects.requireNonNull(timeUnit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        Objects.requireNonNull(consumer, "onDropped is null");
        return new ObservableThrottleFirstTimed(this, j2, timeUnit, scheduler, consumer);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> throttleLast(long j2, TimeUnit timeUnit, Scheduler scheduler, Consumer<? super T> consumer) {
        return sample(j2, timeUnit, scheduler, false, consumer);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> throttleLatest(long j2, TimeUnit timeUnit, Scheduler scheduler, boolean z, Consumer<? super T> consumer) {
        Objects.requireNonNull(timeUnit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        Objects.requireNonNull(consumer, "onDropped is null");
        return new ObservableThrottleLatest(this, j2, timeUnit, scheduler, z, consumer);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> throttleWithTimeout(long j2, TimeUnit timeUnit) {
        return debounce(j2, timeUnit);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<Timed<T>> timeInterval(TimeUnit timeUnit, Scheduler scheduler) {
        Objects.requireNonNull(timeUnit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return new ObservableTimeInterval(this, timeUnit, scheduler);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <U, V> Observable<T> timeout(ObservableSource<U> observableSource, Function<? super T, ? extends ObservableSource<V>> function, ObservableSource<? extends T> observableSource2) {
        Objects.requireNonNull(observableSource, "firstTimeoutIndicator is null");
        Objects.requireNonNull(observableSource2, "fallback is null");
        Objects.requireNonNull(function, "itemTimeoutIndicator is null");
        return new ObservableTimeout(this, observableSource, function, observableSource2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<Timed<T>> timestamp(TimeUnit timeUnit, Scheduler scheduler) {
        Objects.requireNonNull(timeUnit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return (Observable<Timed<T>>) map(Functions.o(timeUnit, scheduler));
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> R to(ObservableConverter<T, ? extends R> observableConverter) {
        Objects.requireNonNull(observableConverter, "converter is null");
        return (R) observableConverter.apply();
    }

    @BackpressureSupport
    @CheckReturnValue
    @SchedulerSupport
    public final Flowable<T> toFlowable(BackpressureStrategy backpressureStrategy) {
        Objects.requireNonNull(backpressureStrategy, "strategy is null");
        FlowableFromObservable flowableFromObservable = new FlowableFromObservable(this);
        int i2 = AnonymousClass1.f70025a[backpressureStrategy.ordinal()];
        if (i2 == 1) {
            return new FlowableOnBackpressureDrop(flowableFromObservable);
        }
        if (i2 == 2) {
            return new FlowableOnBackpressureLatest(flowableFromObservable, null);
        }
        if (i2 == 3) {
            return flowableFromObservable;
        }
        if (i2 == 4) {
            return new FlowableOnBackpressureError(flowableFromObservable);
        }
        int i3 = Flowable.f70022b;
        ObjectHelper.a(i3, "capacity");
        return new FlowableOnBackpressureBuffer(flowableFromObservable, i3, true, false, Functions.f70038c, Functions.d);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Future<T> toFuture() {
        return (Future) subscribeWith(new FutureObserver());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Single<List<T>> toList(int i2) {
        ObjectHelper.a(i2, "capacityHint");
        return new ObservableToListSingle(this, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CheckReturnValue
    @SchedulerSupport
    public final <K, V> Single<Map<K, V>> toMap(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, Supplier<? extends Map<K, V>> supplier) {
        Objects.requireNonNull(function, "keySelector is null");
        Objects.requireNonNull(function2, "valueSelector is null");
        Objects.requireNonNull(supplier, "mapSupplier is null");
        return (Single<Map<K, V>>) collect(supplier, Functions.y(function, function2));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CheckReturnValue
    @SchedulerSupport
    public final <K, V> Single<Map<K, Collection<V>>> toMultimap(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, Supplier<? extends Map<K, Collection<V>>> supplier, Function<? super K, ? extends Collection<? super V>> function3) {
        Objects.requireNonNull(function, "keySelector is null");
        Objects.requireNonNull(function2, "valueSelector is null");
        Objects.requireNonNull(supplier, "mapSupplier is null");
        Objects.requireNonNull(function3, "collectionFactory is null");
        return (Single<Map<K, Collection<V>>>) collect(supplier, Functions.z(function, function2, function3));
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Single<List<T>> toSortedList(Comparator<? super T> comparator) {
        Objects.requireNonNull(comparator, "comparator is null");
        return toList().d(Functions.i(comparator));
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> unsubscribeOn(Scheduler scheduler) {
        Objects.requireNonNull(scheduler, "scheduler is null");
        return new ObservableUnsubscribeOn(this, scheduler);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<Observable<T>> window(long j2, long j3, TimeUnit timeUnit, Scheduler scheduler, int i2) {
        ObjectHelper.b(j2, "timespan");
        ObjectHelper.b(j3, "timeskip");
        ObjectHelper.a(i2, "bufferSize");
        Objects.requireNonNull(scheduler, "scheduler is null");
        Objects.requireNonNull(timeUnit, "unit is null");
        return new ObservableWindowTimed(this, j2, j3, timeUnit, scheduler, Long.MAX_VALUE, i2, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CheckReturnValue
    @SchedulerSupport
    public final <T1, T2, T3, T4, R> Observable<R> withLatestFrom(ObservableSource<T1> observableSource, ObservableSource<T2> observableSource2, ObservableSource<T3> observableSource3, ObservableSource<T4> observableSource4, Function5<? super T, ? super T1, ? super T2, ? super T3, ? super T4, R> function5) {
        Objects.requireNonNull(observableSource, "source1 is null");
        Objects.requireNonNull(observableSource2, "source2 is null");
        Objects.requireNonNull(observableSource3, "source3 is null");
        Objects.requireNonNull(observableSource4, "source4 is null");
        Objects.requireNonNull(function5, "combiner is null");
        return withLatestFrom((ObservableSource<?>[]) new ObservableSource[]{observableSource, observableSource2, observableSource3, observableSource4}, Functions.s(function5));
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <U, R> Observable<R> zipWith(Iterable<U> iterable, BiFunction<? super T, ? super U, ? extends R> biFunction) {
        Objects.requireNonNull(iterable, "other is null");
        Objects.requireNonNull(biFunction, "zipper is null");
        return new ObservableZipIterable(this, iterable, biFunction);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> throttleWithTimeout(long j2, TimeUnit timeUnit, Scheduler scheduler) {
        return debounce(j2, timeUnit, scheduler);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> throttleWithTimeout(long j2, TimeUnit timeUnit, Scheduler scheduler, Consumer<? super T> consumer) {
        return debounce(j2, timeUnit, scheduler, consumer);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Iterable<T> blockingIterable() {
        return blockingIterable(bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> concatWith(ObservableSource<? extends T> observableSource) {
        Objects.requireNonNull(observableSource, "other is null");
        return concat(this, observableSource);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> delaySubscription(long j2, TimeUnit timeUnit) {
        return delaySubscription(j2, timeUnit, Schedulers.f71155a);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Completable flatMapCompletable(Function<? super T, ? extends CompletableSource> function) {
        return flatMapCompletable(function, false);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> flatMapMaybe(Function<? super T, ? extends MaybeSource<? extends R>> function) {
        return flatMapMaybe(function, false);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> flatMapSingle(Function<? super T, ? extends SingleSource<? extends R>> function) {
        return flatMapSingle(function, false);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> mergeWith(ObservableSource<? extends T> observableSource) {
        Objects.requireNonNull(observableSource, "other is null");
        return merge(this, observableSource);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> onErrorComplete() {
        return onErrorComplete(Functions.f70040f);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final ConnectableObservable<T> publish() {
        return new ObservablePublish(this);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> takeUntil(Predicate<? super T> predicate) {
        Objects.requireNonNull(predicate, "stopPredicate is null");
        return new ObservableTakeUntilPredicate(this, predicate);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> throttleLast(long j2, TimeUnit timeUnit) {
        return sample(j2, timeUnit);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Single<List<T>> toList() {
        return toList(16);
    }

    @CheckReturnValue
    @SafeVarargs
    @SchedulerSupport
    public static <T> Observable<T> mergeArray(ObservableSource<? extends T>... observableSourceArr) {
        return fromArray(observableSourceArr).flatMap(Functions.f70036a, observableSourceArr.length);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> throttleLast(long j2, TimeUnit timeUnit, Scheduler scheduler) {
        return sample(j2, timeUnit, scheduler);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <U extends Collection<? super T>> Single<U> toList(Supplier<U> supplier) {
        Objects.requireNonNull(supplier, "collectionSupplier is null");
        return new ObservableToListSingle(this, supplier);
    }

    @CheckReturnValue
    @SafeVarargs
    @SchedulerSupport
    public static <T> Observable<T> concatArrayEager(int i2, int i3, ObservableSource<? extends T>... observableSourceArr) {
        return fromArray(observableSourceArr).concatMapEagerDelayError(Functions.f70036a, false, i2, i3);
    }

    @CheckReturnValue
    @SafeVarargs
    @SchedulerSupport
    public static <T> Observable<T> concatArrayEagerDelayError(int i2, int i3, ObservableSource<? extends T>... observableSourceArr) {
        return fromArray(observableSourceArr).concatMapEagerDelayError(Functions.f70036a, true, i2, i3);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> concatEager(Iterable<? extends ObservableSource<? extends T>> iterable, int i2, int i3) {
        return fromIterable(iterable).concatMapEagerDelayError(Functions.f70036a, false, i2, i3);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> concatEagerDelayError(Iterable<? extends ObservableSource<? extends T>> iterable, int i2, int i3) {
        return fromIterable(iterable).concatMapEagerDelayError(Functions.f70036a, true, i2, i3);
    }

    @CheckReturnValue
    @SafeVarargs
    @SchedulerSupport
    public static <T> Observable<T> mergeArrayDelayError(int i2, int i3, ObservableSource<? extends T>... observableSourceArr) {
        return fromArray(observableSourceArr).flatMap(Functions.f70036a, true, i2, i3);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> concatWith(MaybeSource<? extends T> maybeSource) {
        Objects.requireNonNull(maybeSource, "other is null");
        return new ObservableConcatWithMaybe(this, maybeSource);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> delaySubscription(long j2, TimeUnit timeUnit, Scheduler scheduler) {
        return delaySubscription(timer(j2, timeUnit, scheduler));
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> distinctUntilChanged() {
        return distinctUntilChanged(Functions.f70036a);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> mergeWith(MaybeSource<? extends T> maybeSource) {
        Objects.requireNonNull(maybeSource, "other is null");
        return new ObservableMergeWithMaybe(this, maybeSource);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> concatEager(ObservableSource<? extends ObservableSource<? extends T>> observableSource) {
        return concatEager(observableSource, bufferSize(), bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> concatEagerDelayError(ObservableSource<? extends ObservableSource<? extends T>> observableSource) {
        return concatEagerDelayError(observableSource, bufferSize(), bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> error(Supplier<? extends Throwable> supplier) {
        Objects.requireNonNull(supplier, "supplier is null");
        return new ObservableError(supplier);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> distinctUntilChanged(BiPredicate<? super T, ? super T> biPredicate) {
        Objects.requireNonNull(biPredicate, "comparer is null");
        return new ObservableDistinctUntilChanged(this, Functions.f70036a, biPredicate);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> scan(BiFunction<T, T, T> biFunction) {
        Objects.requireNonNull(biFunction, "accumulator is null");
        return new ObservableScan(this, biFunction);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final TestObserver<T> test() {
        TestObserver<T> testObserver = new TestObserver<>();
        subscribe(testObserver);
        return testObserver;
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> concatEager(ObservableSource<? extends ObservableSource<? extends T>> observableSource, int i2, int i3) {
        return wrap(observableSource).concatMapEager(Functions.f70036a, i2, i3);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> concatEagerDelayError(ObservableSource<? extends ObservableSource<? extends T>> observableSource, int i2, int i3) {
        return wrap(observableSource).concatMapEagerDelayError(Functions.f70036a, true, i2, i3);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> concatWith(CompletableSource completableSource) {
        Objects.requireNonNull(completableSource, "other is null");
        return new ObservableConcatWithCompletable(this, completableSource);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> mergeWith(CompletableSource completableSource) {
        Objects.requireNonNull(completableSource, "other is null");
        return new ObservableMergeWithCompletable(this, completableSource);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> fromFuture(Future<? extends T> future) {
        Objects.requireNonNull(future, "future is null");
        return new ObservableFromFuture(future, 0L, null);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R, A> Single<R> collect(Collector<? super T, A, R> collector) {
        Objects.requireNonNull(collector, "collector is null");
        return new ObservableCollectWithCollectorSingle(this, collector);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <K> Observable<T> distinct(Function<? super T, K> function) {
        return distinct(function, Functions.d());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> observeOn(Scheduler scheduler, boolean z) {
        return observeOn(scheduler, z, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Maybe<T> reduce(BiFunction<T, T, T> biFunction) {
        Objects.requireNonNull(biFunction, "reducer is null");
        return new ObservableReduceMaybe(this, biFunction);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<Timed<T>> timeInterval() {
        return timeInterval(TimeUnit.MILLISECONDS, Schedulers.f71155a);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <U, R> Observable<R> zipWith(ObservableSource<? extends U> observableSource, BiFunction<? super T, ? super U, ? extends R> biFunction) {
        Objects.requireNonNull(observableSource, "other is null");
        return zip(this, observableSource, biFunction);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> distinct() {
        return distinct(Functions.f70036a, Functions.d());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> observeOn(Scheduler scheduler) {
        return observeOn(scheduler, false, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Completable concatMapCompletable(Function<? super T, ? extends CompletableSource> function) {
        return concatMapCompletable(function, 2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> concatMapMaybe(Function<? super T, ? extends MaybeSource<? extends R>> function) {
        return concatMapMaybe(function, 2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> concatMapSingle(Function<? super T, ? extends SingleSource<? extends R>> function) {
        return concatMapSingle(function, 2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Single<List<T>> toSortedList() {
        return toSortedList(Functions.j());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <U, R> Observable<R> zipWith(ObservableSource<? extends U> observableSource, BiFunction<? super T, ? super U, ? extends R> biFunction, boolean z) {
        return zip(this, observableSource, biFunction, z);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> switchOnNext(ObservableSource<? extends ObservableSource<? extends T>> observableSource) {
        return switchOnNext(observableSource, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> switchOnNextDelayError(ObservableSource<? extends ObservableSource<? extends T>> observableSource) {
        return switchOnNextDelayError(observableSource, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<Timed<T>> timeInterval(Scheduler scheduler) {
        return timeInterval(TimeUnit.MILLISECONDS, scheduler);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<Timed<T>> timestamp() {
        return timestamp(TimeUnit.MILLISECONDS, Schedulers.f71155a);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Single<List<T>> toSortedList(Comparator<? super T> comparator, int i2) {
        Objects.requireNonNull(comparator, "comparator is null");
        return toList(i2).d(Functions.i(comparator));
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <U, R> Observable<R> zipWith(ObservableSource<? extends U> observableSource, BiFunction<? super T, ? super U, ? extends R> biFunction, boolean z, int i2) {
        return zip(this, observableSource, biFunction, z, i2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<Timed<T>> timeInterval(TimeUnit timeUnit) {
        return timeInterval(timeUnit, Schedulers.f71155a);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> generate(Consumer<Emitter<T>> consumer) {
        Objects.requireNonNull(consumer, "generator is null");
        return generate(Functions.f70041h, ObservableInternalHelper.l(consumer), Functions.d);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T, D> Observable<T> using(Supplier<? extends D> supplier, Function<? super D, ? extends ObservableSource<? extends T>> function, Consumer<? super D> consumer) {
        return using(supplier, function, consumer, true);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final T blockingFirst() {
        BlockingFirstObserver blockingFirstObserver = new BlockingFirstObserver();
        subscribe(blockingFirstObserver);
        T t = (T) blockingFirstObserver.a();
        if (t != null) {
            return t;
        }
        b21.x();
        return null;
    }

    @CheckReturnValue
    @SchedulerSupport
    public final T blockingLast() {
        BlockingLastObserver blockingLastObserver = new BlockingLastObserver();
        subscribe(blockingLastObserver);
        T t = (T) blockingLastObserver.a();
        if (t != null) {
            return t;
        }
        b21.x();
        return null;
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> delay(long j2, TimeUnit timeUnit, boolean z) {
        return delay(j2, timeUnit, Schedulers.f71155a, z);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <V> Observable<T> timeout(Function<? super T, ? extends ObservableSource<V>> function, ObservableSource<? extends T> observableSource) {
        Objects.requireNonNull(observableSource, "fallback is null");
        Objects.requireNonNull(function, "itemTimeoutIndicator is null");
        return new ObservableTimeout(this, null, function, observableSource);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Single<List<T>> toSortedList(int i2) {
        return toSortedList(Functions.j(), i2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static Observable<Long> timer(long j2, TimeUnit timeUnit) {
        return timer(j2, timeUnit, Schedulers.f71155a);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<Timed<T>> timestamp(Scheduler scheduler) {
        return timestamp(TimeUnit.MILLISECONDS, scheduler);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Completable concatMapCompletableDelayError(Function<? super T, ? extends CompletableSource> function, boolean z) {
        return concatMapCompletableDelayError(function, z, 2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> concatMapMaybeDelayError(Function<? super T, ? extends MaybeSource<? extends R>> function, boolean z) {
        return concatMapMaybeDelayError(function, z, 2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> concatMapSingleDelayError(Function<? super T, ? extends SingleSource<? extends R>> function, boolean z) {
        return concatMapSingleDelayError(function, z, 2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <U> Observable<T> delay(Function<? super T, ? extends ObservableSource<U>> function) {
        Objects.requireNonNull(function, "itemDelayIndicator is null");
        return (Observable<T>) flatMap(ObservableInternalHelper.c(function));
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> take(long j2, TimeUnit timeUnit) {
        return takeUntil(timer(j2, timeUnit));
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<Timed<T>> timestamp(TimeUnit timeUnit) {
        return timestamp(timeUnit, Schedulers.f71155a);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Completable concatMapCompletableDelayError(Function<? super T, ? extends CompletableSource> function) {
        return concatMapCompletableDelayError(function, true, 2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> concatMapMaybeDelayError(Function<? super T, ? extends MaybeSource<? extends R>> function) {
        return concatMapMaybeDelayError(function, true, 2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> concatMapSingleDelayError(Function<? super T, ? extends SingleSource<? extends R>> function) {
        return concatMapSingleDelayError(function, true, 2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> doOnEach(Observer<? super T> observer) {
        Objects.requireNonNull(observer, "observer is null");
        return a(ObservableInternalHelper.f(observer), ObservableInternalHelper.e(observer), ObservableInternalHelper.d(observer), Functions.f70038c);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Disposable forEachWhile(Predicate<? super T> predicate, Consumer<? super Throwable> consumer) {
        return forEachWhile(predicate, consumer, Functions.f70038c);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> take(long j2, TimeUnit timeUnit, Scheduler scheduler) {
        return takeUntil(timer(j2, timeUnit, scheduler));
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> timeout(long j2, TimeUnit timeUnit, ObservableSource<? extends T> observableSource) {
        Objects.requireNonNull(observableSource, "fallback is null");
        return b(j2, timeUnit, Schedulers.f71155a, observableSource);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <K, V> Single<Map<K, V>> toMap(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2) {
        Objects.requireNonNull(function, "keySelector is null");
        Objects.requireNonNull(function2, "valueSelector is null");
        return (Single<Map<K, V>>) collect(HashMapSupplier.INSTANCE, Functions.y(function, function2));
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> concatDelayError(ObservableSource<? extends ObservableSource<? extends T>> observableSource) {
        return concatDelayError(observableSource, bufferSize(), true);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> delay(long j2, TimeUnit timeUnit, Scheduler scheduler) {
        return delay(j2, timeUnit, scheduler, false);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Disposable forEachWhile(Predicate<? super T> predicate) {
        return forEachWhile(predicate, Functions.f70039e, Functions.f70038c);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> concatDelayError(Iterable<? extends ObservableSource<? extends T>> iterable) {
        Objects.requireNonNull(iterable, "sources is null");
        return concatDelayError(fromIterable(iterable));
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T, S> Observable<T> generate(Supplier<S> supplier, BiConsumer<S, Emitter<T>> biConsumer) {
        Objects.requireNonNull(biConsumer, "generator is null");
        return generate(supplier, ObservableInternalHelper.k(biConsumer), Functions.d);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Single<Boolean> sequenceEqual(ObservableSource<? extends T> observableSource, ObservableSource<? extends T> observableSource2, BiPredicate<? super T, ? super T> biPredicate) {
        return sequenceEqual(observableSource, observableSource2, biPredicate, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <U> Observable<T> debounce(Function<? super T, ? extends ObservableSource<U>> function) {
        Objects.requireNonNull(function, "debounceIndicator is null");
        return new ObservableDebounce(this, function);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> delay(long j2, TimeUnit timeUnit) {
        return delay(j2, timeUnit, Schedulers.f71155a, false);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <K> Observable<GroupedObservable<K, T>> groupBy(Function<? super T, ? extends K> function, boolean z) {
        return (Observable<GroupedObservable<K, T>>) groupBy(function, Functions.f70036a, z, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> skip(long j2, TimeUnit timeUnit) {
        return skipUntil(timer(j2, timeUnit));
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> throttleFirst(long j2, TimeUnit timeUnit, Scheduler scheduler) {
        Objects.requireNonNull(timeUnit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return new ObservableThrottleFirstTimed(this, j2, timeUnit, scheduler, null);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T, R> Observable<R> combineLatestDelayError(Iterable<? extends ObservableSource<? extends T>> iterable, Function<? super Object[], ? extends R> function) {
        return combineLatestDelayError(iterable, function, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Single<Boolean> sequenceEqual(ObservableSource<? extends T> observableSource, ObservableSource<? extends T> observableSource2) {
        return sequenceEqual(observableSource, observableSource2, ObjectHelper.f70067a, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final T blockingSingle(T t) {
        Single<T> single = single(t);
        single.getClass();
        BlockingMultiObserver blockingMultiObserver = new BlockingMultiObserver();
        single.a(blockingMultiObserver);
        return (T) blockingMultiObserver.a();
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> concatMapEager(Function<? super T, ? extends ObservableSource<? extends R>> function) {
        return concatMapEager(function, Integer.MAX_VALUE, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <K, V> Observable<GroupedObservable<K, V>> groupBy(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2) {
        return groupBy(function, function2, false, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> sample(long j2, TimeUnit timeUnit, boolean z) {
        return sample(j2, timeUnit, Schedulers.f71155a, z);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> skip(long j2, TimeUnit timeUnit, Scheduler scheduler) {
        return skipUntil(timer(j2, timeUnit, scheduler));
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> throttleLatest(long j2, TimeUnit timeUnit, boolean z) {
        return throttleLatest(j2, timeUnit, Schedulers.f71155a, z);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> timeout(long j2, TimeUnit timeUnit, Scheduler scheduler, ObservableSource<? extends T> observableSource) {
        Objects.requireNonNull(observableSource, "fallback is null");
        return b(j2, timeUnit, scheduler, observableSource);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Single<Boolean> sequenceEqual(ObservableSource<? extends T> observableSource, ObservableSource<? extends T> observableSource2, int i2) {
        return sequenceEqual(observableSource, observableSource2, ObjectHelper.f70067a, i2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> debounce(long j2, TimeUnit timeUnit, Scheduler scheduler) {
        Objects.requireNonNull(timeUnit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return new ObservableDebounceTimed(this, j2, timeUnit, scheduler, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CheckReturnValue
    @SchedulerSupport
    public final <U, V> Observable<T> delay(ObservableSource<U> observableSource, Function<? super T, ? extends ObservableSource<V>> function) {
        return delaySubscription(observableSource).delay(function);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Maybe<T> elementAt(long j2) {
        if (j2 >= 0) {
            return new ObservableElementAtMaybe(this, j2);
        }
        az.v(d21.g(j2, "index >= 0 required but it was "));
        return null;
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <K, V> Observable<GroupedObservable<K, V>> groupBy(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, boolean z) {
        return groupBy(function, function2, z, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> retry(long j2) {
        return retry(j2, Functions.f70040f);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> skipLast(long j2, TimeUnit timeUnit, boolean z) {
        return skipLast(j2, timeUnit, Schedulers.f71157c, z, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <K> Single<Map<K, T>> toMap(Function<? super T, ? extends K> function) {
        Objects.requireNonNull(function, "keySelector is null");
        return (Single<Map<K, T>>) collect(HashMapSupplier.INSTANCE, Functions.x(function));
    }

    @CheckReturnValue
    @SchedulerSupport
    public static Observable<Long> interval(long j2, TimeUnit timeUnit) {
        return interval(j2, j2, timeUnit, Schedulers.f71155a);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <K> Observable<GroupedObservable<K, T>> groupBy(Function<? super T, ? extends K> function) {
        return (Observable<GroupedObservable<K, T>>) groupBy(function, Functions.f70036a, false, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> sample(long j2, TimeUnit timeUnit, Scheduler scheduler) {
        Objects.requireNonNull(timeUnit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return new ObservableSampleTimed(this, j2, timeUnit, scheduler, false, null);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> throttleFirst(long j2, TimeUnit timeUnit) {
        return throttleFirst(j2, timeUnit, Schedulers.f71155a);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> throttleLatest(long j2, TimeUnit timeUnit, Scheduler scheduler) {
        return throttleLatest(j2, timeUnit, scheduler, false);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> timeout(long j2, TimeUnit timeUnit, Scheduler scheduler) {
        return b(j2, timeUnit, scheduler, null);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <K, V> Single<Map<K, Collection<V>>> toMultimap(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, Supplier<Map<K, Collection<V>>> supplier) {
        return toMultimap(function, function2, supplier, ArrayListSupplier.INSTANCE);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T, S> Observable<T> generate(Supplier<S> supplier, BiConsumer<S, Emitter<T>> biConsumer, Consumer<? super S> consumer) {
        Objects.requireNonNull(biConsumer, "generator is null");
        return generate(supplier, ObservableInternalHelper.k(biConsumer), consumer);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <U> Observable<U> flatMapIterable(Function<? super T, ? extends Iterable<? extends U>> function) {
        Objects.requireNonNull(function, "mapper is null");
        return new ObservableFlattenIterable(this, function);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> repeat() {
        return repeat(Long.MAX_VALUE);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> retry(BiPredicate<? super Integer, ? super Throwable> biPredicate) {
        Objects.requireNonNull(biPredicate, "predicate is null");
        return new ObservableRetryBiPredicate(this, biPredicate);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> skipLast(int i2) {
        if (i2 >= 0) {
            return i2 == 0 ? this : new ObservableSkipLast(this, i2);
        }
        md.n(pq0.k(i2, "count >= 0 required but it was "));
        return null;
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> throttleLatest(long j2, TimeUnit timeUnit, Scheduler scheduler, boolean z) {
        Objects.requireNonNull(timeUnit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return new ObservableThrottleLatest(this, j2, timeUnit, scheduler, z, null);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <U, V> Observable<T> timeout(ObservableSource<U> observableSource, Function<? super T, ? extends ObservableSource<V>> function) {
        Objects.requireNonNull(observableSource, "firstTimeoutIndicator is null");
        Objects.requireNonNull(function, "itemTimeoutIndicator is null");
        return new ObservableTimeout(this, observableSource, function, null);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static Observable<Long> interval(long j2, long j3, TimeUnit timeUnit) {
        return interval(j2, j3, timeUnit, Schedulers.f71155a);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> debounce(long j2, TimeUnit timeUnit) {
        return debounce(j2, timeUnit, Schedulers.f71155a);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <K> Single<Map<K, Collection<T>>> toMultimap(Function<? super T, ? extends K> function) {
        return (Single<Map<K, Collection<T>>>) toMultimap(function, Functions.f70036a, HashMapSupplier.INSTANCE, ArrayListSupplier.INSTANCE);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T, S> Observable<T> generate(Supplier<S> supplier, BiFunction<S, Emitter<T>, S> biFunction) {
        return generate(supplier, biFunction, Functions.d);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> retry() {
        return retry(Long.MAX_VALUE, Functions.f70040f);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> sample(long j2, TimeUnit timeUnit, Scheduler scheduler, boolean z) {
        Objects.requireNonNull(timeUnit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return new ObservableSampleTimed(this, j2, timeUnit, scheduler, z, null);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Disposable subscribe(Consumer<? super T> consumer) {
        return subscribe(consumer, Functions.f70039e, Functions.f70038c);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static Observable<Long> interval(long j2, TimeUnit timeUnit, Scheduler scheduler) {
        return interval(j2, j2, timeUnit, scheduler);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Disposable subscribe(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2) {
        return subscribe(consumer, consumer2, Functions.f70038c);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> throttleLatest(long j2, TimeUnit timeUnit) {
        return throttleLatest(j2, timeUnit, Schedulers.f71155a, false);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> timeout(long j2, TimeUnit timeUnit) {
        return b(j2, timeUnit, Schedulers.f71155a, null);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> concatMapEagerDelayError(Function<? super T, ? extends ObservableSource<? extends R>> function, boolean z) {
        return concatMapEagerDelayError(function, z, Integer.MAX_VALUE, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> retry(Predicate<? super Throwable> predicate) {
        return retry(Long.MAX_VALUE, predicate);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> skipLast(long j2, TimeUnit timeUnit, Scheduler scheduler) {
        return skipLast(j2, timeUnit, scheduler, false, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Disposable subscribe(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action) {
        Objects.requireNonNull(consumer, "onNext is null");
        Objects.requireNonNull(consumer2, "onError is null");
        Objects.requireNonNull(action, "onComplete is null");
        LambdaObserver lambdaObserver = new LambdaObserver(consumer, consumer2, action, Functions.d);
        subscribe(lambdaObserver);
        return lambdaObserver;
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T, R> Observable<R> combineLatestArray(ObservableSource<? extends T>[] observableSourceArr, Function<? super Object[], ? extends R> function) {
        return combineLatestArray(observableSourceArr, function, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T, R> Observable<R> combineLatestArrayDelayError(ObservableSource<? extends T>[] observableSourceArr, Function<? super Object[], ? extends R> function) {
        return combineLatestArrayDelayError(observableSourceArr, function, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> replay(Function<? super Observable<T>, ? extends ObservableSource<R>> function, int i2, long j2, TimeUnit timeUnit) {
        return replay(function, i2, j2, timeUnit, Schedulers.f71155a);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> sample(long j2, TimeUnit timeUnit) {
        return sample(j2, timeUnit, Schedulers.f71155a);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> skipLast(long j2, TimeUnit timeUnit, Scheduler scheduler, boolean z) {
        return skipLast(j2, timeUnit, scheduler, z, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <V> Observable<T> timeout(Function<? super T, ? extends ObservableSource<V>> function) {
        Objects.requireNonNull(function, "itemTimeoutIndicator is null");
        return new ObservableTimeout(this, null, function, null);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <K, V> Single<Map<K, Collection<V>>> toMultimap(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2) {
        return toMultimap(function, function2, HashMapSupplier.INSTANCE, ArrayListSupplier.INSTANCE);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Stream<T> blockingStream() {
        return blockingStream(bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> skipLast(long j2, TimeUnit timeUnit) {
        return skipLast(j2, timeUnit, Schedulers.f71157c, false, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> replay(Function<? super Observable<T>, ? extends ObservableSource<R>> function, long j2, TimeUnit timeUnit) {
        return replay(function, j2, timeUnit, Schedulers.f71155a);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <U> Observable<T> sample(ObservableSource<U> observableSource) {
        Objects.requireNonNull(observableSource, "sampler is null");
        return new ObservableSampleWithObservable(this, observableSource, false);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<List<T>> buffer(long j2, long j3, TimeUnit timeUnit, Scheduler scheduler) {
        return (Observable<List<T>>) buffer(j2, j3, timeUnit, scheduler, ArrayListSupplier.INSTANCE);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final ConnectableObservable<T> replay(int i2, long j2, TimeUnit timeUnit) {
        return replay(i2, j2, timeUnit, Schedulers.f71155a);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <U> Observable<T> sample(ObservableSource<U> observableSource, boolean z) {
        Objects.requireNonNull(observableSource, "sampler is null");
        return new ObservableSampleWithObservable(this, observableSource, z);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> switchMap(Function<? super T, ? extends ObservableSource<? extends R>> function) {
        return switchMap(function, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> switchMapDelayError(Function<? super T, ? extends ObservableSource<? extends R>> function) {
        return switchMapDelayError(function, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> concat(ObservableSource<? extends ObservableSource<? extends T>> observableSource) {
        return concat(observableSource, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<List<T>> buffer(long j2, TimeUnit timeUnit, Scheduler scheduler) {
        return (Observable<List<T>>) buffer(j2, timeUnit, scheduler, Integer.MAX_VALUE, ArrayListSupplier.INSTANCE, false);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> concatMap(Function<? super T, ? extends ObservableSource<? extends R>> function) {
        return concatMap(function, 2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> startWith(SingleSource<T> singleSource) {
        SingleSource singleFromUnsafeSource;
        Observable singleToObservable;
        Objects.requireNonNull(singleSource, "other is null");
        if (singleSource instanceof Single) {
            singleFromUnsafeSource = (Single) singleSource;
        } else {
            singleFromUnsafeSource = new SingleFromUnsafeSource(singleSource);
        }
        if (singleFromUnsafeSource instanceof FuseToObservable) {
            singleToObservable = ((FuseToObservable) singleFromUnsafeSource).b();
        } else {
            singleToObservable = new SingleToObservable(singleFromUnsafeSource);
        }
        return concat(singleToObservable, this);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> concat(ObservableSource<? extends ObservableSource<? extends T>> observableSource, int i2) {
        Objects.requireNonNull(observableSource, "sources is null");
        ObjectHelper.a(i2, "bufferSize");
        return new ObservableConcatMap(observableSource, Functions.f70036a, i2, ErrorMode.IMMEDIATE);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> concatMap(Function<? super T, ? extends ObservableSource<? extends R>> function, int i2, Scheduler scheduler) {
        Objects.requireNonNull(function, "mapper is null");
        ObjectHelper.a(i2, "bufferSize");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return new ObservableConcatMapScheduler(this, function, i2, ErrorMode.IMMEDIATE, scheduler);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final ConnectableObservable<T> replay(long j2, TimeUnit timeUnit) {
        return replay(j2, timeUnit, Schedulers.f71155a);
    }

    @SchedulerSupport
    public final Disposable subscribe() {
        return subscribe(Functions.d, Functions.f70039e, Functions.f70038c);
    }

    @SchedulerSupport
    public final void blockingForEach(Consumer<? super T> consumer) {
        blockingForEach(consumer, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<List<T>> buffer(long j2, TimeUnit timeUnit, Scheduler scheduler, int i2) {
        return (Observable<List<T>>) buffer(j2, timeUnit, scheduler, i2, ArrayListSupplier.INSTANCE, false);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> replay(Function<? super Observable<T>, ? extends ObservableSource<R>> function) {
        Objects.requireNonNull(function, "selector is null");
        return ObservableReplay.i(function, ObservableInternalHelper.h(this));
    }

    @Override // io.reactivex.rxjava3.core.ObservableSource
    @SchedulerSupport
    public final void subscribe(Observer<? super T> observer) {
        Objects.requireNonNull(observer, "observer is null");
        try {
            subscribeActual(observer);
        } catch (NullPointerException e2) {
            throw e2;
        } catch (Throwable th) {
            Exceptions.a(th);
            RxJavaPlugins.b(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> concat(ObservableSource<? extends T> observableSource, ObservableSource<? extends T> observableSource2) {
        Objects.requireNonNull(observableSource, "source1 is null");
        Objects.requireNonNull(observableSource2, "source2 is null");
        return concatArray(observableSource, observableSource2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <B> Observable<List<T>> buffer(ObservableSource<B> observableSource) {
        return (Observable<List<T>>) buffer((ObservableSource) observableSource, (Supplier) ArrayListSupplier.INSTANCE);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> sorted() {
        Observable singleToObservable;
        Single<List<T>> list = toList();
        list.getClass();
        if (list instanceof FuseToObservable) {
            singleToObservable = ((FuseToObservable) list).b();
        } else {
            singleToObservable = new SingleToObservable(list);
        }
        return singleToObservable.map(Functions.i(Functions.j())).flatMapIterable(Functions.f70036a);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> concatMapDelayError(Function<? super T, ? extends ObservableSource<? extends R>> function) {
        return concatMapDelayError(function, true, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> replay(Function<? super Observable<T>, ? extends ObservableSource<R>> function, int i2) {
        Objects.requireNonNull(function, "selector is null");
        ObjectHelper.a(i2, "bufferSize");
        return ObservableReplay.i(function, ObservableInternalHelper.i(this, i2, false));
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> merge(Iterable<? extends ObservableSource<? extends T>> iterable) {
        return fromIterable(iterable).flatMap(Functions.f70036a);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> mergeDelayError(Iterable<? extends ObservableSource<? extends T>> iterable, int i2, int i3) {
        return fromIterable(iterable).flatMap(Functions.f70036a, true, i2, i3);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <TOpening, TClosing> Observable<List<T>> buffer(ObservableSource<? extends TOpening> observableSource, Function<? super TOpening, ? extends ObservableSource<? extends TClosing>> function) {
        return (Observable<List<T>>) buffer(observableSource, function, ArrayListSupplier.INSTANCE);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> concatMapDelayError(Function<? super T, ? extends ObservableSource<? extends R>> function, boolean z, int i2, Scheduler scheduler) {
        Objects.requireNonNull(function, "mapper is null");
        ObjectHelper.a(i2, "bufferSize");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return new ObservableConcatMapScheduler(this, function, i2, z ? ErrorMode.END : ErrorMode.BOUNDARY, scheduler);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> concat(ObservableSource<? extends T> observableSource, ObservableSource<? extends T> observableSource2, ObservableSource<? extends T> observableSource3) {
        Objects.requireNonNull(observableSource, "source1 is null");
        Objects.requireNonNull(observableSource2, "source2 is null");
        Objects.requireNonNull(observableSource3, "source3 is null");
        return concatArray(observableSource, observableSource2, observableSource3);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> merge(Iterable<? extends ObservableSource<? extends T>> iterable, int i2) {
        return fromIterable(iterable).flatMap(Functions.f70036a, i2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> mergeDelayError(Iterable<? extends ObservableSource<? extends T>> iterable, int i2) {
        return fromIterable(iterable).flatMap(Functions.f70036a, true, i2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<Observable<T>> window(long j2, TimeUnit timeUnit) {
        return window(j2, timeUnit, Schedulers.f71155a, Long.MAX_VALUE, false);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> merge(ObservableSource<? extends ObservableSource<? extends T>> observableSource) {
        Objects.requireNonNull(observableSource, "sources is null");
        return new ObservableFlatMap(observableSource, Functions.f70036a, false, Integer.MAX_VALUE, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> mergeDelayError(ObservableSource<? extends ObservableSource<? extends T>> observableSource) {
        Objects.requireNonNull(observableSource, "sources is null");
        return new ObservableFlatMap(observableSource, Functions.f70036a, true, Integer.MAX_VALUE, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<List<T>> buffer(long j2, long j3, TimeUnit timeUnit) {
        return (Observable<List<T>>) buffer(j2, j3, timeUnit, Schedulers.f71155a, ArrayListSupplier.INSTANCE);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> flatMap(Function<? super T, ? extends ObservableSource<? extends R>> function, boolean z) {
        return flatMap(function, z, Integer.MAX_VALUE);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> replay(Function<? super Observable<T>, ? extends ObservableSource<R>> function, int i2, boolean z) {
        Objects.requireNonNull(function, "selector is null");
        ObjectHelper.a(i2, "bufferSize");
        return ObservableReplay.i(function, ObservableInternalHelper.i(this, i2, z));
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> startWith(MaybeSource<T> maybeSource) {
        MaybeSource maybeUnsafeCreate;
        Observable maybeToObservable;
        Objects.requireNonNull(maybeSource, "other is null");
        if (maybeSource instanceof Maybe) {
            maybeUnsafeCreate = (Maybe) maybeSource;
        } else {
            maybeUnsafeCreate = new MaybeUnsafeCreate(maybeSource);
        }
        if (maybeUnsafeCreate instanceof FuseToObservable) {
            maybeToObservable = ((FuseToObservable) maybeUnsafeCreate).b();
        } else {
            maybeToObservable = new MaybeToObservable(maybeUnsafeCreate);
        }
        return concat(maybeToObservable, this);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> takeLast(long j2, TimeUnit timeUnit) {
        return takeLast(j2, timeUnit, Schedulers.f71157c, false, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> flatMap(Function<? super T, ? extends ObservableSource<? extends R>> function, boolean z, int i2) {
        return flatMap(function, z, i2, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<Observable<T>> window(long j2, TimeUnit timeUnit, long j3) {
        return window(j2, timeUnit, Schedulers.f71155a, j3, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CheckReturnValue
    @SchedulerSupport
    public final <T1, T2, R> Observable<R> withLatestFrom(ObservableSource<T1> observableSource, ObservableSource<T2> observableSource2, Function3<? super T, ? super T1, ? super T2, R> function3) {
        Objects.requireNonNull(observableSource, "source1 is null");
        Objects.requireNonNull(observableSource2, "source2 is null");
        Objects.requireNonNull(function3, "combiner is null");
        return withLatestFrom((ObservableSource<?>[]) new ObservableSource[]{observableSource, observableSource2}, Functions.q(function3));
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> merge(ObservableSource<? extends ObservableSource<? extends T>> observableSource, int i2) {
        Objects.requireNonNull(observableSource, "sources is null");
        ObjectHelper.a(i2, "maxConcurrency");
        return new ObservableFlatMap(observableSource, Functions.f70036a, false, i2, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> mergeDelayError(ObservableSource<? extends ObservableSource<? extends T>> observableSource, int i2) {
        Objects.requireNonNull(observableSource, "sources is null");
        ObjectHelper.a(i2, "maxConcurrency");
        return new ObservableFlatMap(observableSource, Functions.f70036a, true, i2, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> flatMap(Function<? super T, ? extends ObservableSource<? extends R>> function) {
        return flatMap((Function) function, false);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> takeLast(long j2, TimeUnit timeUnit, boolean z) {
        return takeLast(j2, timeUnit, Schedulers.f71157c, z, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> concat(Iterable<? extends ObservableSource<? extends T>> iterable) {
        Objects.requireNonNull(iterable, "sources is null");
        return fromIterable(iterable).concatMapDelayError(Functions.f70036a, false, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<List<T>> buffer(long j2, TimeUnit timeUnit) {
        return buffer(j2, timeUnit, Schedulers.f71155a, Integer.MAX_VALUE);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> flatMap(Function<? super T, ? extends ObservableSource<? extends R>> function, Function<? super Throwable, ? extends ObservableSource<? extends R>> function2, Supplier<? extends ObservableSource<? extends R>> supplier) {
        Objects.requireNonNull(function, "onNextMapper is null");
        Objects.requireNonNull(function2, "onErrorMapper is null");
        Objects.requireNonNull(supplier, "onCompleteSupplier is null");
        return merge(new ObservableMapNotification(this, function, function2, supplier));
    }

    @CheckReturnValue
    @SchedulerSupport
    public final ConnectableObservable<T> replay() {
        return ObservableReplay.h(this, ObservableReplay.f70758f);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<Observable<T>> window(long j2, TimeUnit timeUnit, long j3, boolean z) {
        return window(j2, timeUnit, Schedulers.f71155a, j3, z);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> replay(Function<? super Observable<T>, ? extends ObservableSource<R>> function, int i2, long j2, TimeUnit timeUnit, Scheduler scheduler, boolean z) {
        Objects.requireNonNull(function, "selector is null");
        ObjectHelper.a(i2, "bufferSize");
        Objects.requireNonNull(timeUnit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return ObservableReplay.i(function, ObservableInternalHelper.g(i2, j2, this, scheduler, timeUnit, z));
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> takeLast(int i2) {
        if (i2 < 0) {
            md.n(pq0.k(i2, "count >= 0 required but it was "));
            return null;
        }
        if (i2 == 0) {
            return new ObservableIgnoreElements(this);
        }
        if (i2 == 1) {
            return new ObservableTakeLastOne(this);
        }
        return new ObservableTakeLast(this, i2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> merge(ObservableSource<? extends T> observableSource, ObservableSource<? extends T> observableSource2) {
        Objects.requireNonNull(observableSource, "source1 is null");
        Objects.requireNonNull(observableSource2, "source2 is null");
        return fromArray(observableSource, observableSource2).flatMap(Functions.f70036a, false, 2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> mergeDelayError(ObservableSource<? extends T> observableSource, ObservableSource<? extends T> observableSource2) {
        Objects.requireNonNull(observableSource, "source1 is null");
        Objects.requireNonNull(observableSource2, "source2 is null");
        return fromArray(observableSource, observableSource2).flatMap(Functions.f70036a, true, 2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<List<T>> buffer(long j2, TimeUnit timeUnit, int i2) {
        return buffer(j2, timeUnit, Schedulers.f71155a, i2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<Observable<T>> window(long j2) {
        return window(j2, j2, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<Observable<T>> window(long j2, long j3) {
        return window(j2, j3, bufferSize());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CheckReturnValue
    @SchedulerSupport
    public final <T1, T2, T3, R> Observable<R> withLatestFrom(ObservableSource<T1> observableSource, ObservableSource<T2> observableSource2, ObservableSource<T3> observableSource3, Function4<? super T, ? super T1, ? super T2, ? super T3, R> function4) {
        Objects.requireNonNull(observableSource, "source1 is null");
        Objects.requireNonNull(observableSource2, "source2 is null");
        Objects.requireNonNull(observableSource3, "source3 is null");
        Objects.requireNonNull(function4, "combiner is null");
        return withLatestFrom((ObservableSource<?>[]) new ObservableSource[]{observableSource, observableSource2, observableSource3}, Functions.r(function4));
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<List<T>> buffer(int i2) {
        return buffer(i2, i2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> flatMap(Function<? super T, ? extends ObservableSource<? extends R>> function, Function<Throwable, ? extends ObservableSource<? extends R>> function2, Supplier<? extends ObservableSource<? extends R>> supplier, int i2) {
        Objects.requireNonNull(function, "onNextMapper is null");
        Objects.requireNonNull(function2, "onErrorMapper is null");
        Objects.requireNonNull(supplier, "onCompleteSupplier is null");
        return merge(new ObservableMapNotification(this, function, function2, supplier), i2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<Observable<T>> window(long j2, long j3, int i2) {
        ObjectHelper.b(j2, b.a.f24018f);
        ObjectHelper.b(j3, "skip");
        ObjectHelper.a(i2, "bufferSize");
        return new ObservableWindow(this, j2, j3, i2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> merge(ObservableSource<? extends T> observableSource, ObservableSource<? extends T> observableSource2, ObservableSource<? extends T> observableSource3) {
        Objects.requireNonNull(observableSource, "source1 is null");
        Objects.requireNonNull(observableSource2, "source2 is null");
        Objects.requireNonNull(observableSource3, "source3 is null");
        return fromArray(observableSource, observableSource2, observableSource3).flatMap(Functions.f70036a, false, 3);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> mergeDelayError(ObservableSource<? extends T> observableSource, ObservableSource<? extends T> observableSource2, ObservableSource<? extends T> observableSource3) {
        Objects.requireNonNull(observableSource, "source1 is null");
        Objects.requireNonNull(observableSource2, "source2 is null");
        Objects.requireNonNull(observableSource3, "source3 is null");
        return fromArray(observableSource, observableSource2, observableSource3).flatMap(Functions.f70036a, true, 3);
    }

    @SchedulerSupport
    public final void blockingSubscribe(Consumer<? super T> consumer) {
        ObservableBlockingSubscribe.b(this, consumer, Functions.f70039e, Functions.f70038c);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <U extends Collection<? super T>> Observable<U> buffer(int i2, int i3, Supplier<U> supplier) {
        ObjectHelper.a(i2, b.a.f24018f);
        ObjectHelper.a(i3, "skip");
        Objects.requireNonNull(supplier, "bufferSupplier is null");
        return new ObservableBuffer(this, i2, i3, supplier);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> startWith(ObservableSource<? extends T> observableSource) {
        Objects.requireNonNull(observableSource, "other is null");
        return concatArray(observableSource, this);
    }

    @SchedulerSupport
    public final void blockingSubscribe(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2) {
        ObservableBlockingSubscribe.b(this, consumer, consumer2, Functions.f70038c);
    }

    @SchedulerSupport
    public final void blockingSubscribe(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action) {
        ObservableBlockingSubscribe.b(this, consumer, consumer2, action);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> replay(Function<? super Observable<T>, ? extends ObservableSource<R>> function, long j2, TimeUnit timeUnit, Scheduler scheduler) {
        Objects.requireNonNull(function, "selector is null");
        Objects.requireNonNull(timeUnit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return ObservableReplay.i(function, ObservableInternalHelper.j(this, j2, timeUnit, scheduler, false));
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> takeLast(long j2, long j3, TimeUnit timeUnit, Scheduler scheduler) {
        return takeLast(j2, j3, timeUnit, scheduler, false, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> just(T t, T t2) {
        Objects.requireNonNull(t, "item1 is null");
        Objects.requireNonNull(t2, "item2 is null");
        return fromArray(t, t2);
    }

    @SchedulerSupport
    public final void blockingSubscribe(Observer<? super T> observer) {
        Objects.requireNonNull(observer, "observer is null");
        ObservableBlockingSubscribe.a(this, observer);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> flatMap(Function<? super T, ? extends ObservableSource<? extends R>> function, int i2) {
        return flatMap((Function) function, false, i2, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> takeLast(long j2, long j3, TimeUnit timeUnit) {
        return takeLast(j2, j3, timeUnit, Schedulers.f71157c, false, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<Observable<T>> window(long j2, long j3, TimeUnit timeUnit, Scheduler scheduler) {
        return window(j2, j3, timeUnit, scheduler, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> merge(Iterable<? extends ObservableSource<? extends T>> iterable, int i2, int i3) {
        return fromIterable(iterable).flatMap(Functions.f70036a, false, i2, i3);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> mergeDelayError(Iterable<? extends ObservableSource<? extends T>> iterable) {
        return fromIterable(iterable).flatMap(Functions.f70036a, true);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <U extends Collection<? super T>> Observable<U> buffer(int i2, Supplier<U> supplier) {
        return buffer(i2, i2, supplier);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <U, R> Observable<R> flatMap(Function<? super T, ? extends ObservableSource<? extends U>> function, BiFunction<? super T, ? super U, ? extends R> biFunction) {
        return flatMap(function, biFunction, false, bufferSize(), bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<Observable<T>> window(long j2, long j3, TimeUnit timeUnit) {
        return window(j2, j3, timeUnit, Schedulers.f71155a, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <U, R> Observable<R> withLatestFrom(ObservableSource<? extends U> observableSource, BiFunction<? super T, ? super U, ? extends R> biFunction) {
        Objects.requireNonNull(observableSource, "other is null");
        Objects.requireNonNull(biFunction, "combiner is null");
        return new ObservableWithLatestFrom(this, biFunction, observableSource);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <U extends Collection<? super T>> Observable<U> buffer(long j2, long j3, TimeUnit timeUnit, Scheduler scheduler, Supplier<U> supplier) {
        Objects.requireNonNull(timeUnit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        Objects.requireNonNull(supplier, "bufferSupplier is null");
        return new ObservableBufferTimed(this, j2, j3, timeUnit, scheduler, supplier, Integer.MAX_VALUE, false);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <U, R> Observable<R> flatMap(Function<? super T, ? extends ObservableSource<? extends U>> function, BiFunction<? super T, ? super U, ? extends R> biFunction, boolean z) {
        return flatMap(function, biFunction, z, bufferSize(), bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> takeLast(long j2, TimeUnit timeUnit, Scheduler scheduler) {
        return takeLast(j2, timeUnit, scheduler, false, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> just(T t, T t2, T t3) {
        Objects.requireNonNull(t, "item1 is null");
        Objects.requireNonNull(t2, "item2 is null");
        Objects.requireNonNull(t3, "item3 is null");
        return fromArray(t, t2, t3);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <U, R> Observable<R> flatMap(Function<? super T, ? extends ObservableSource<? extends U>> function, BiFunction<? super T, ? super U, ? extends R> biFunction, boolean z, int i2) {
        return flatMap(function, biFunction, z, i2, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> replay(Function<? super Observable<T>, ? extends ObservableSource<R>> function, long j2, TimeUnit timeUnit, Scheduler scheduler, boolean z) {
        Objects.requireNonNull(function, "selector is null");
        Objects.requireNonNull(timeUnit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return ObservableReplay.i(function, ObservableInternalHelper.j(this, j2, timeUnit, scheduler, z));
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> takeLast(long j2, TimeUnit timeUnit, Scheduler scheduler, boolean z) {
        return takeLast(j2, timeUnit, scheduler, z, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<Observable<T>> window(long j2, TimeUnit timeUnit, Scheduler scheduler) {
        return window(j2, timeUnit, scheduler, Long.MAX_VALUE, false);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <U, R> Observable<R> flatMap(Function<? super T, ? extends ObservableSource<? extends U>> function, BiFunction<? super T, ? super U, ? extends R> biFunction, boolean z, int i2, int i3) {
        Objects.requireNonNull(function, "mapper is null");
        Objects.requireNonNull(biFunction, "combiner is null");
        return flatMap(ObservableInternalHelper.b(function, biFunction), z, i2, i3);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<T> takeLast(long j2, TimeUnit timeUnit, Scheduler scheduler, boolean z, int i2) {
        return takeLast(Long.MAX_VALUE, j2, timeUnit, scheduler, z, i2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<Observable<T>> window(long j2, TimeUnit timeUnit, Scheduler scheduler, long j3) {
        return window(j2, timeUnit, scheduler, j3, false);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> withLatestFrom(ObservableSource<?>[] observableSourceArr, Function<? super Object[], R> function) {
        Objects.requireNonNull(observableSourceArr, "others is null");
        Objects.requireNonNull(function, "combiner is null");
        return new ObservableWithLatestFromMany(this, observableSourceArr, function);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<Observable<T>> window(long j2, TimeUnit timeUnit, Scheduler scheduler, long j3, boolean z) {
        return window(j2, timeUnit, scheduler, j3, z, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<List<T>> buffer(int i2, int i3) {
        return (Observable<List<T>>) buffer(i2, i3, ArrayListSupplier.INSTANCE);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final Observable<Observable<T>> window(long j2, TimeUnit timeUnit, Scheduler scheduler, long j3, boolean z, int i2) {
        ObjectHelper.a(i2, "bufferSize");
        Objects.requireNonNull(scheduler, "scheduler is null");
        Objects.requireNonNull(timeUnit, "unit is null");
        ObjectHelper.b(j3, b.a.f24018f);
        return new ObservableWindowTimed(this, j2, j2, timeUnit, scheduler, j3, i2, z);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> just(T t, T t2, T t3, T t4) {
        Objects.requireNonNull(t, "item1 is null");
        Objects.requireNonNull(t2, "item2 is null");
        Objects.requireNonNull(t3, "item3 is null");
        Objects.requireNonNull(t4, "item4 is null");
        return fromArray(t, t2, t3, t4);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <U, R> Observable<R> flatMap(Function<? super T, ? extends ObservableSource<? extends U>> function, BiFunction<? super T, ? super U, ? extends R> biFunction, int i2) {
        return flatMap(function, biFunction, false, i2, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final ConnectableObservable<T> replay(int i2) {
        ObjectHelper.a(i2, "bufferSize");
        return ObservableReplay.g(this, i2, false);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <R> Observable<R> withLatestFrom(Iterable<? extends ObservableSource<?>> iterable, Function<? super Object[], R> function) {
        Objects.requireNonNull(iterable, "others is null");
        Objects.requireNonNull(function, "combiner is null");
        return new ObservableWithLatestFromMany(this, iterable, function);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <TOpening, TClosing, U extends Collection<? super T>> Observable<U> buffer(ObservableSource<? extends TOpening> observableSource, Function<? super TOpening, ? extends ObservableSource<? extends TClosing>> function, Supplier<U> supplier) {
        Objects.requireNonNull(observableSource, "openingIndicator is null");
        Objects.requireNonNull(function, "closingIndicator is null");
        Objects.requireNonNull(supplier, "bufferSupplier is null");
        return new ObservableBufferBoundary(this, observableSource, function, supplier);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final ConnectableObservable<T> replay(int i2, boolean z) {
        ObjectHelper.a(i2, "bufferSize");
        return ObservableReplay.g(this, i2, z);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final ConnectableObservable<T> replay(int i2, long j2, TimeUnit timeUnit, Scheduler scheduler) {
        ObjectHelper.a(i2, "bufferSize");
        Objects.requireNonNull(timeUnit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return ObservableReplay.e(i2, j2, this, scheduler, timeUnit, false);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <B> Observable<Observable<T>> window(ObservableSource<B> observableSource) {
        return window(observableSource, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> just(T t, T t2, T t3, T t4, T t5) {
        Objects.requireNonNull(t, "item1 is null");
        Objects.requireNonNull(t2, "item2 is null");
        Objects.requireNonNull(t3, "item3 is null");
        Objects.requireNonNull(t4, "item4 is null");
        Objects.requireNonNull(t5, "item5 is null");
        return fromArray(t, t2, t3, t4, t5);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <B> Observable<List<T>> buffer(ObservableSource<B> observableSource, int i2) {
        ObjectHelper.a(i2, "initialCapacity");
        return (Observable<List<T>>) buffer(observableSource, Functions.c(i2));
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <B> Observable<Observable<T>> window(ObservableSource<B> observableSource, int i2) {
        Objects.requireNonNull(observableSource, "boundaryIndicator is null");
        ObjectHelper.a(i2, "bufferSize");
        return new ObservableWindowBoundary(this, observableSource, i2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <B, U extends Collection<? super T>> Observable<U> buffer(ObservableSource<B> observableSource, Supplier<U> supplier) {
        Objects.requireNonNull(observableSource, "boundaryIndicator is null");
        Objects.requireNonNull(supplier, "bufferSupplier is null");
        return new ObservableBufferExactBoundary(this, observableSource, supplier);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final ConnectableObservable<T> replay(int i2, long j2, TimeUnit timeUnit, Scheduler scheduler, boolean z) {
        ObjectHelper.a(i2, "bufferSize");
        Objects.requireNonNull(timeUnit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return ObservableReplay.e(i2, j2, this, scheduler, timeUnit, z);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <U, V> Observable<Observable<T>> window(ObservableSource<U> observableSource, Function<? super U, ? extends ObservableSource<V>> function) {
        return window(observableSource, function, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public final <U, V> Observable<Observable<T>> window(ObservableSource<U> observableSource, Function<? super U, ? extends ObservableSource<V>> function, int i2) {
        Objects.requireNonNull(observableSource, "openingIndicator is null");
        Objects.requireNonNull(function, "closingIndicator is null");
        ObjectHelper.a(i2, "bufferSize");
        return new ObservableWindowBoundarySelector(this, observableSource, function, i2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> just(T t, T t2, T t3, T t4, T t5, T t6) {
        Objects.requireNonNull(t, "item1 is null");
        Objects.requireNonNull(t2, "item2 is null");
        Objects.requireNonNull(t3, "item3 is null");
        Objects.requireNonNull(t4, "item4 is null");
        Objects.requireNonNull(t5, "item5 is null");
        Objects.requireNonNull(t6, "item6 is null");
        return fromArray(t, t2, t3, t4, t5, t6);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final ConnectableObservable<T> replay(long j2, TimeUnit timeUnit, Scheduler scheduler) {
        Objects.requireNonNull(timeUnit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return ObservableReplay.e(Integer.MAX_VALUE, j2, this, scheduler, timeUnit, false);
    }

    @CheckReturnValue
    @SchedulerSupport
    public final ConnectableObservable<T> replay(long j2, TimeUnit timeUnit, Scheduler scheduler, boolean z) {
        Objects.requireNonNull(timeUnit, "unit is null");
        Objects.requireNonNull(scheduler, "scheduler is null");
        return ObservableReplay.e(Integer.MAX_VALUE, j2, this, scheduler, timeUnit, z);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> just(T t, T t2, T t3, T t4, T t5, T t6, T t7) {
        Objects.requireNonNull(t, "item1 is null");
        Objects.requireNonNull(t2, "item2 is null");
        Objects.requireNonNull(t3, "item3 is null");
        Objects.requireNonNull(t4, "item4 is null");
        Objects.requireNonNull(t5, "item5 is null");
        Objects.requireNonNull(t6, "item6 is null");
        Objects.requireNonNull(t7, "item7 is null");
        return fromArray(t, t2, t3, t4, t5, t6, t7);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static Observable<Long> intervalRange(long j2, long j3, long j4, long j5, TimeUnit timeUnit) {
        return intervalRange(j2, j3, j4, j5, timeUnit, Schedulers.f71155a);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> just(T t, T t2, T t3, T t4, T t5, T t6, T t7, T t8) {
        Objects.requireNonNull(t, "item1 is null");
        Objects.requireNonNull(t2, "item2 is null");
        Objects.requireNonNull(t3, "item3 is null");
        Objects.requireNonNull(t4, "item4 is null");
        Objects.requireNonNull(t5, "item5 is null");
        Objects.requireNonNull(t6, "item6 is null");
        Objects.requireNonNull(t7, "item7 is null");
        Objects.requireNonNull(t8, "item8 is null");
        return fromArray(t, t2, t3, t4, t5, t6, t7, t8);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T, R> Observable<R> combineLatest(Iterable<? extends ObservableSource<? extends T>> iterable, Function<? super Object[], ? extends R> function, int i2) {
        Objects.requireNonNull(iterable, "sources is null");
        Objects.requireNonNull(function, "combiner is null");
        ObjectHelper.a(i2, "bufferSize");
        return new ObservableCombineLatest(null, iterable, function, i2 << 1, false);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T, R> Observable<R> zip(Iterable<? extends ObservableSource<? extends T>> iterable, Function<? super Object[], ? extends R> function, boolean z, int i2) {
        Objects.requireNonNull(function, "zipper is null");
        Objects.requireNonNull(iterable, "sources is null");
        ObjectHelper.a(i2, "bufferSize");
        return new ObservableZip(null, iterable, function, i2, z);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T1, T2, R> Observable<R> combineLatest(ObservableSource<? extends T1> observableSource, ObservableSource<? extends T2> observableSource2, BiFunction<? super T1, ? super T2, ? extends R> biFunction) {
        Objects.requireNonNull(observableSource, "source1 is null");
        Objects.requireNonNull(observableSource2, "source2 is null");
        Objects.requireNonNull(biFunction, "combiner is null");
        return combineLatestArray(new ObservableSource[]{observableSource, observableSource2}, Functions.p(biFunction), bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T1, T2, R> Observable<R> zip(ObservableSource<? extends T1> observableSource, ObservableSource<? extends T2> observableSource2, BiFunction<? super T1, ? super T2, ? extends R> biFunction) {
        Objects.requireNonNull(observableSource, "source1 is null");
        Objects.requireNonNull(observableSource2, "source2 is null");
        Objects.requireNonNull(biFunction, "zipper is null");
        return zipArray(Functions.p(biFunction), false, bufferSize(), observableSource, observableSource2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> just(T t, T t2, T t3, T t4, T t5, T t6, T t7, T t8, T t9) {
        Objects.requireNonNull(t, "item1 is null");
        Objects.requireNonNull(t2, "item2 is null");
        Objects.requireNonNull(t3, "item3 is null");
        Objects.requireNonNull(t4, "item4 is null");
        Objects.requireNonNull(t5, "item5 is null");
        Objects.requireNonNull(t6, "item6 is null");
        Objects.requireNonNull(t7, "item7 is null");
        Objects.requireNonNull(t8, "item8 is null");
        Objects.requireNonNull(t9, "item9 is null");
        return fromArray(t, t2, t3, t4, t5, t6, t7, t8, t9);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T1, T2, T3, R> Observable<R> combineLatest(ObservableSource<? extends T1> observableSource, ObservableSource<? extends T2> observableSource2, ObservableSource<? extends T3> observableSource3, Function3<? super T1, ? super T2, ? super T3, ? extends R> function3) {
        Objects.requireNonNull(observableSource, "source1 is null");
        Objects.requireNonNull(observableSource2, "source2 is null");
        Objects.requireNonNull(observableSource3, "source3 is null");
        Objects.requireNonNull(function3, "combiner is null");
        return combineLatestArray(new ObservableSource[]{observableSource, observableSource2, observableSource3}, Functions.q(function3), bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T1, T2, R> Observable<R> zip(ObservableSource<? extends T1> observableSource, ObservableSource<? extends T2> observableSource2, BiFunction<? super T1, ? super T2, ? extends R> biFunction, boolean z) {
        Objects.requireNonNull(observableSource, "source1 is null");
        Objects.requireNonNull(observableSource2, "source2 is null");
        Objects.requireNonNull(biFunction, "zipper is null");
        return zipArray(Functions.p(biFunction), z, bufferSize(), observableSource, observableSource2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T1, T2, R> Observable<R> zip(ObservableSource<? extends T1> observableSource, ObservableSource<? extends T2> observableSource2, BiFunction<? super T1, ? super T2, ? extends R> biFunction, boolean z, int i2) {
        Objects.requireNonNull(observableSource, "source1 is null");
        Objects.requireNonNull(observableSource2, "source2 is null");
        Objects.requireNonNull(biFunction, "zipper is null");
        return zipArray(Functions.p(biFunction), z, i2, observableSource, observableSource2);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T1, T2, T3, T4, R> Observable<R> combineLatest(ObservableSource<? extends T1> observableSource, ObservableSource<? extends T2> observableSource2, ObservableSource<? extends T3> observableSource3, ObservableSource<? extends T4> observableSource4, Function4<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> function4) {
        Objects.requireNonNull(observableSource, "source1 is null");
        Objects.requireNonNull(observableSource2, "source2 is null");
        Objects.requireNonNull(observableSource3, "source3 is null");
        Objects.requireNonNull(observableSource4, "source4 is null");
        Objects.requireNonNull(function4, "combiner is null");
        return combineLatestArray(new ObservableSource[]{observableSource, observableSource2, observableSource3, observableSource4}, Functions.r(function4), bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T> Observable<T> just(T t) {
        Objects.requireNonNull(t, "item is null");
        return new ObservableJust(t);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T1, T2, T3, R> Observable<R> zip(ObservableSource<? extends T1> observableSource, ObservableSource<? extends T2> observableSource2, ObservableSource<? extends T3> observableSource3, Function3<? super T1, ? super T2, ? super T3, ? extends R> function3) {
        Objects.requireNonNull(observableSource, "source1 is null");
        Objects.requireNonNull(observableSource2, "source2 is null");
        Objects.requireNonNull(observableSource3, "source3 is null");
        Objects.requireNonNull(function3, "zipper is null");
        return zipArray(Functions.q(function3), false, bufferSize(), observableSource, observableSource2, observableSource3);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T1, T2, T3, T4, T5, R> Observable<R> combineLatest(ObservableSource<? extends T1> observableSource, ObservableSource<? extends T2> observableSource2, ObservableSource<? extends T3> observableSource3, ObservableSource<? extends T4> observableSource4, ObservableSource<? extends T5> observableSource5, Function5<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> function5) {
        Objects.requireNonNull(observableSource, "source1 is null");
        Objects.requireNonNull(observableSource2, "source2 is null");
        Objects.requireNonNull(observableSource3, "source3 is null");
        Objects.requireNonNull(observableSource4, "source4 is null");
        Objects.requireNonNull(observableSource5, "source5 is null");
        Objects.requireNonNull(function5, "combiner is null");
        return combineLatestArray(new ObservableSource[]{observableSource, observableSource2, observableSource3, observableSource4, observableSource5}, Functions.s(function5), bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T1, T2, T3, T4, R> Observable<R> zip(ObservableSource<? extends T1> observableSource, ObservableSource<? extends T2> observableSource2, ObservableSource<? extends T3> observableSource3, ObservableSource<? extends T4> observableSource4, Function4<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> function4) {
        Objects.requireNonNull(observableSource, "source1 is null");
        Objects.requireNonNull(observableSource2, "source2 is null");
        Objects.requireNonNull(observableSource3, "source3 is null");
        Objects.requireNonNull(observableSource4, "source4 is null");
        Objects.requireNonNull(function4, "zipper is null");
        return zipArray(Functions.r(function4), false, bufferSize(), observableSource, observableSource2, observableSource3, observableSource4);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T1, T2, T3, T4, T5, T6, R> Observable<R> combineLatest(ObservableSource<? extends T1> observableSource, ObservableSource<? extends T2> observableSource2, ObservableSource<? extends T3> observableSource3, ObservableSource<? extends T4> observableSource4, ObservableSource<? extends T5> observableSource5, ObservableSource<? extends T6> observableSource6, Function6<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> function6) {
        Objects.requireNonNull(observableSource, "source1 is null");
        Objects.requireNonNull(observableSource2, "source2 is null");
        Objects.requireNonNull(observableSource3, "source3 is null");
        Objects.requireNonNull(observableSource4, "source4 is null");
        Objects.requireNonNull(observableSource5, "source5 is null");
        Objects.requireNonNull(observableSource6, "source6 is null");
        Objects.requireNonNull(function6, "combiner is null");
        return combineLatestArray(new ObservableSource[]{observableSource, observableSource2, observableSource3, observableSource4, observableSource5, observableSource6}, Functions.t(function6), bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T1, T2, T3, T4, T5, R> Observable<R> zip(ObservableSource<? extends T1> observableSource, ObservableSource<? extends T2> observableSource2, ObservableSource<? extends T3> observableSource3, ObservableSource<? extends T4> observableSource4, ObservableSource<? extends T5> observableSource5, Function5<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> function5) {
        Objects.requireNonNull(observableSource, "source1 is null");
        Objects.requireNonNull(observableSource2, "source2 is null");
        Objects.requireNonNull(observableSource3, "source3 is null");
        Objects.requireNonNull(observableSource4, "source4 is null");
        Objects.requireNonNull(observableSource5, "source5 is null");
        Objects.requireNonNull(function5, "zipper is null");
        return zipArray(Functions.s(function5), false, bufferSize(), observableSource, observableSource2, observableSource3, observableSource4, observableSource5);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T1, T2, T3, T4, T5, T6, T7, R> Observable<R> combineLatest(ObservableSource<? extends T1> observableSource, ObservableSource<? extends T2> observableSource2, ObservableSource<? extends T3> observableSource3, ObservableSource<? extends T4> observableSource4, ObservableSource<? extends T5> observableSource5, ObservableSource<? extends T6> observableSource6, ObservableSource<? extends T7> observableSource7, Function7<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> function7) {
        Objects.requireNonNull(observableSource, "source1 is null");
        Objects.requireNonNull(observableSource2, "source2 is null");
        Objects.requireNonNull(observableSource3, "source3 is null");
        Objects.requireNonNull(observableSource4, "source4 is null");
        Objects.requireNonNull(observableSource5, "source5 is null");
        Objects.requireNonNull(observableSource6, "source6 is null");
        Objects.requireNonNull(observableSource7, "source7 is null");
        Objects.requireNonNull(function7, "combiner is null");
        return combineLatestArray(new ObservableSource[]{observableSource, observableSource2, observableSource3, observableSource4, observableSource5, observableSource6, observableSource7}, Functions.u(function7), bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T1, T2, T3, T4, T5, T6, R> Observable<R> zip(ObservableSource<? extends T1> observableSource, ObservableSource<? extends T2> observableSource2, ObservableSource<? extends T3> observableSource3, ObservableSource<? extends T4> observableSource4, ObservableSource<? extends T5> observableSource5, ObservableSource<? extends T6> observableSource6, Function6<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> function6) {
        Objects.requireNonNull(observableSource, "source1 is null");
        Objects.requireNonNull(observableSource2, "source2 is null");
        Objects.requireNonNull(observableSource3, "source3 is null");
        Objects.requireNonNull(observableSource4, "source4 is null");
        Objects.requireNonNull(observableSource5, "source5 is null");
        Objects.requireNonNull(observableSource6, "source6 is null");
        Objects.requireNonNull(function6, "zipper is null");
        return zipArray(Functions.t(function6), false, bufferSize(), observableSource, observableSource2, observableSource3, observableSource4, observableSource5, observableSource6);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T1, T2, T3, T4, T5, T6, T7, R> Observable<R> zip(ObservableSource<? extends T1> observableSource, ObservableSource<? extends T2> observableSource2, ObservableSource<? extends T3> observableSource3, ObservableSource<? extends T4> observableSource4, ObservableSource<? extends T5> observableSource5, ObservableSource<? extends T6> observableSource6, ObservableSource<? extends T7> observableSource7, Function7<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> function7) {
        Objects.requireNonNull(observableSource, "source1 is null");
        Objects.requireNonNull(observableSource2, "source2 is null");
        Objects.requireNonNull(observableSource3, "source3 is null");
        Objects.requireNonNull(observableSource4, "source4 is null");
        Objects.requireNonNull(observableSource5, "source5 is null");
        Objects.requireNonNull(observableSource6, "source6 is null");
        Objects.requireNonNull(observableSource7, "source7 is null");
        Objects.requireNonNull(function7, "zipper is null");
        return zipArray(Functions.u(function7), false, bufferSize(), observableSource, observableSource2, observableSource3, observableSource4, observableSource5, observableSource6, observableSource7);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> Observable<R> combineLatest(ObservableSource<? extends T1> observableSource, ObservableSource<? extends T2> observableSource2, ObservableSource<? extends T3> observableSource3, ObservableSource<? extends T4> observableSource4, ObservableSource<? extends T5> observableSource5, ObservableSource<? extends T6> observableSource6, ObservableSource<? extends T7> observableSource7, ObservableSource<? extends T8> observableSource8, Function8<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> function8) {
        Objects.requireNonNull(observableSource, "source1 is null");
        Objects.requireNonNull(observableSource2, "source2 is null");
        Objects.requireNonNull(observableSource3, "source3 is null");
        Objects.requireNonNull(observableSource4, "source4 is null");
        Objects.requireNonNull(observableSource5, "source5 is null");
        Objects.requireNonNull(observableSource6, "source6 is null");
        Objects.requireNonNull(observableSource7, "source7 is null");
        Objects.requireNonNull(observableSource8, "source8 is null");
        Objects.requireNonNull(function8, "combiner is null");
        return combineLatestArray(new ObservableSource[]{observableSource, observableSource2, observableSource3, observableSource4, observableSource5, observableSource6, observableSource7, observableSource8}, Functions.v(function8), bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> Observable<R> zip(ObservableSource<? extends T1> observableSource, ObservableSource<? extends T2> observableSource2, ObservableSource<? extends T3> observableSource3, ObservableSource<? extends T4> observableSource4, ObservableSource<? extends T5> observableSource5, ObservableSource<? extends T6> observableSource6, ObservableSource<? extends T7> observableSource7, ObservableSource<? extends T8> observableSource8, Function8<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> function8) {
        Objects.requireNonNull(observableSource, "source1 is null");
        Objects.requireNonNull(observableSource2, "source2 is null");
        Objects.requireNonNull(observableSource3, "source3 is null");
        Objects.requireNonNull(observableSource4, "source4 is null");
        Objects.requireNonNull(observableSource5, "source5 is null");
        Objects.requireNonNull(observableSource6, "source6 is null");
        Objects.requireNonNull(observableSource7, "source7 is null");
        Objects.requireNonNull(observableSource8, "source8 is null");
        Objects.requireNonNull(function8, "zipper is null");
        return zipArray(Functions.v(function8), false, bufferSize(), observableSource, observableSource2, observableSource3, observableSource4, observableSource5, observableSource6, observableSource7, observableSource8);
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T, R> Observable<R> combineLatest(Iterable<? extends ObservableSource<? extends T>> iterable, Function<? super Object[], ? extends R> function) {
        return combineLatest(iterable, function, bufferSize());
    }

    @CheckReturnValue
    @SchedulerSupport
    public static <T, R> Observable<R> zip(Iterable<? extends ObservableSource<? extends T>> iterable, Function<? super Object[], ? extends R> function) {
        Objects.requireNonNull(function, "zipper is null");
        Objects.requireNonNull(iterable, "sources is null");
        return new ObservableZip(null, iterable, function, bufferSize(), false);
    }
}
