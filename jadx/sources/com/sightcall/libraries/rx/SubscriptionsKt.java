package com.sightcall.libraries.rx;

import defpackage.b21;
import io.reactivex.rxjava3.annotations.CheckReturnValue;
import io.reactivex.rxjava3.core.CompletableEmitter;
import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeEmitter;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableEmitter;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleEmitter;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.observers.ConsumerSingleObserver;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeCallbackObserver;
import io.reactivex.rxjava3.internal.operators.single.SingleObserveOn;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000p\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\u001a$\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u001a2\u0010\u0000\u001a\u00020\u0007\"\b\b\u0000\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00020\tH\u0007\u001a>\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0014\b\u0004\u0010\n\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00070\u000bH\u0087\bø\u0001\u0000\u001aT\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0014\b\u0004\u0010\n\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00070\u000b2\u0014\b\u0004\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00070\u000bH\u0087\bø\u0001\u0000\u001ad\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0014\b\u0004\u0010\n\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00070\u000b2\u0014\b\u0004\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00070\u000b2\u000e\b\u0004\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\u000fH\u0087\bø\u0001\u0000\u001a>\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00062\u0014\b\u0004\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00070\u000bH\u0087\bø\u0001\u0000\u001a,\u0010\u0012\u001a\u00020\u0001\"\b\b\u0000\u0010\u0013*\u00020\u0003*\n\u0012\u0006\b\u0001\u0012\u0002H\u00130\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00130\tH\u0007\u001a,\u0010\u0012\u001a\u00020\u0001\"\b\b\u0000\u0010\u0013*\u00020\u0003*\n\u0012\u0006\b\u0001\u0012\u0002H\u00130\u00102\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00130\tH\u0007\u001a,\u0010\u0012\u001a\u00020\u0001\"\b\b\u0000\u0010\u0013*\u00020\u0003*\n\u0012\u0006\b\u0001\u0012\u0002H\u00130\u00142\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00130\tH\u0007\u001a?\u0010\u0015\u001a\u00020\u0007\"\b\b\u0000\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00162\u001d\u0010\u0017\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0016\u0012\u0004\u0012\u00020\u00070\u000b¢\u0006\u0002\b\u0018H\u0086\bø\u0001\u0000\u001a?\u0010\u0015\u001a\u00020\u0007\"\b\b\u0000\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00192\u001d\u0010\u0017\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u0019\u0012\u0004\u0012\u00020\u00070\u000b¢\u0006\u0002\b\u0018H\u0086\bø\u0001\u0000\u001a)\u0010\u0015\u001a\u00020\u0007*\u00020\u001a2\u0017\u0010\u0017\u001a\u0013\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00070\u000b¢\u0006\u0002\b\u0018H\u0086\bø\u0001\u0000\u001a?\u0010\u0015\u001a\u00020\u0007\"\b\b\u0000\u0010\u0002*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u001b2\u001d\u0010\u0017\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u001b\u0012\u0004\u0012\u00020\u00070\u000b¢\u0006\u0002\b\u0018H\u0086\bø\u0001\u0000\u001aJ\u0010\u001c\u001a\b\u0012\u0004\u0012\u0002H\u001d0\u0004\"\u0004\b\u0000\u0010\u0002\"\b\b\u0001\u0010\u001d*\u00020\u0003*\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u001e0\u00042\u0014\b\u0004\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u001d0\u000bH\u0087\bø\u0001\u0000\u001a(\u0010\u001c\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004\"\b\b\u0000\u0010\u0002*\u00020\u0003*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u001e0\u0004H\u0007\u001a=\u0010 \u001a\b\u0012\u0004\u0012\u0002H\u00130\u0004\"\b\b\u0000\u0010\u0002*\u00020\u0003\"\n\b\u0001\u0010\u0013\u0018\u0001*\u0002H\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00042\f\u0010!\u001a\b\u0012\u0004\u0012\u0002H\u00130\"H\u0086\b\u001a`\u0010 \u001a\b\u0012\u0004\u0012\u0002H#0\u0004\"\b\b\u0000\u0010\u0002*\u00020\u0003\"\n\b\u0001\u0010\u0013\u0018\u0001*\u0002H\u0002\"\b\b\u0002\u0010#*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00042\f\u0010!\u001a\b\u0012\u0004\u0012\u0002H\u00130\"2\u0014\b\u0004\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u0002H\u0013\u0012\u0004\u0012\u0002H#0\u000bH\u0086\bø\u0001\u0000\u001aH\u0010$\u001a\b\u0012\u0004\u0012\u0002H#0\u0004\"\b\b\u0000\u0010\u0002*\u00020\u0003\"\b\b\u0001\u0010#*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00042\u0016\b\u0004\u0010%\u001a\u0010\u0012\u0004\u0012\u0002H\u0002\u0012\u0006\u0012\u0004\u0018\u0001H#0\u000bH\u0086\bø\u0001\u0000\u001ah\u0010$\u001a\b\u0012\u0004\u0012\u0002H&0\u0004\"\b\b\u0000\u0010\u0002*\u00020\u0003\"\b\b\u0001\u0010#*\u00020\u0003\"\b\b\u0002\u0010&*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00042\u0016\b\u0004\u0010%\u001a\u0010\u0012\u0004\u0012\u0002H\u0002\u0012\u0006\u0012\u0004\u0018\u0001H#0\u000b2\u0014\b\u0004\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u0002H#\u0012\u0004\u0012\u0002H&0\u000bH\u0086\bø\u0001\u0000\u001a\\\u0010'\u001a\b\u0012\u0004\u0012\u0002H#0\u0004\"\b\b\u0000\u0010\u0002*\u00020\u0003\"\b\b\u0001\u0010#*\u00020\u0003*\b\u0012\u0004\u0012\u0002H\u00020\u00042\u0014\b\u0004\u0010%\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020(0\u000b2\u0014\b\u0004\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H#0\u000bH\u0086\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006)"}, d2 = {"subscribeWithScheduler", "Lio/reactivex/rxjava3/disposables/Disposable;", "T", "", "Lio/reactivex/rxjava3/core/Observable;", "scheduler", "Lio/reactivex/rxjava3/core/Scheduler;", "", "observer", "Lio/reactivex/rxjava3/core/Observer;", "onNext", "Lkotlin/Function1;", "onError", "", "onComplete", "Lkotlin/Function0;", "Lio/reactivex/rxjava3/core/Single;", "onEvent", "relay", "O", "Lio/reactivex/rxjava3/core/Maybe;", "ifNotDisposed", "Lio/reactivex/rxjava3/core/MaybeEmitter;", "block", "Lkotlin/ExtensionFunctionType;", "Lio/reactivex/rxjava3/core/ObservableEmitter;", "Lio/reactivex/rxjava3/core/CompletableEmitter;", "Lio/reactivex/rxjava3/core/SingleEmitter;", "filterIfPresent", "R", "Lcom/sightcall/libraries/rx/Optional;", "mapper", "filterByCasting", "clazz", "Ljava/lang/Class;", "M", "filterNotNull", "predicate", "N", "filter", "", "rx_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class SubscriptionsKt {

    /* JADX INFO: renamed from: com.sightcall.libraries.rx.SubscriptionsKt$filterByCasting$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 176)
    public static final class C03761<T> implements Predicate {
        public static final C03761<T> INSTANCE = new C03761<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        public final boolean test(T t) {
            t.getClass();
            Intrinsics.g();
            throw null;
        }
    }

    /* JADX INFO: renamed from: com.sightcall.libraries.rx.SubscriptionsKt$filterByCasting$2, reason: invalid class name and case insensitive filesystem */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 176)
    public static final class C03772<T, R> implements Function {
        final /* synthetic */ Function1<O, M> $mapper;

        /* JADX WARN: Multi-variable type inference failed */
        public C03772(Function1<? super O, ? extends M> function1) {
            this.$mapper = function1;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [M, java.lang.Object] */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // io.reactivex.rxjava3.functions.Function
        public final M apply(O o) {
            o.getClass();
            return this.$mapper.invoke(o);
        }
    }

    /* JADX INFO: renamed from: com.sightcall.libraries.rx.SubscriptionsKt$filterNotNull$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 176)
    public static final class C03801<T> implements Predicate {
        final /* synthetic */ Function1<T, M> $predicate;

        /* JADX WARN: Multi-variable type inference failed */
        public C03801(Function1<? super T, ? extends M> function1) {
            this.$predicate = function1;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public final boolean test(T t) {
            t.getClass();
            return this.$predicate.invoke(t) != null;
        }
    }

    /* JADX INFO: renamed from: com.sightcall.libraries.rx.SubscriptionsKt$filterNotNull$2, reason: invalid class name and case insensitive filesystem */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 176)
    public static final class C03812<T, R> implements Function {
        final /* synthetic */ Function1<T, M> $predicate;

        /* JADX WARN: Multi-variable type inference failed */
        public C03812(Function1<? super T, ? extends M> function1) {
            this.$predicate = function1;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [M, java.lang.Object] */
        @Override // io.reactivex.rxjava3.functions.Function
        public final M apply(T t) {
            t.getClass();
            ?? Invoke = this.$predicate.invoke(t);
            Invoke.getClass();
            return Invoke;
        }
    }

    public static final <T, M> Observable<M> filter(Observable<T> observable, final Function1<? super T, Boolean> function1, final Function1<? super T, ? extends M> function2) {
        observable.getClass();
        function1.getClass();
        function2.getClass();
        Observable<M> observable2 = (Observable<M>) observable.filter(new Predicate() { // from class: com.sightcall.libraries.rx.SubscriptionsKt.filter.1
            @Override // io.reactivex.rxjava3.functions.Predicate
            public final boolean test(T t) {
                t.getClass();
                return ((Boolean) function1.invoke(t)).booleanValue();
            }
        }).map(new Function() { // from class: com.sightcall.libraries.rx.SubscriptionsKt.filter.2
            /* JADX WARN: Type inference failed for: r0v2, types: [M, java.lang.Object] */
            @Override // io.reactivex.rxjava3.functions.Function
            public final M apply(T t) {
                t.getClass();
                return function2.invoke(t);
            }
        });
        observable2.getClass();
        return observable2;
    }

    public static final <T, O extends T, M> Observable<M> filterByCasting(Observable<T> observable, Class<O> cls, Function1<? super O, ? extends M> function1) {
        observable.getClass();
        cls.getClass();
        function1.getClass();
        Intrinsics.g();
        throw null;
    }

    @CheckReturnValue
    public static final <T, R> Observable<R> filterIfPresent(Observable<Optional<? extends T>> observable, final Function1<? super T, ? extends R> function1) {
        observable.getClass();
        function1.getClass();
        Observable<R> map = observable.filter(new Predicate() { // from class: com.sightcall.libraries.rx.SubscriptionsKt.filterIfPresent.1
            @Override // io.reactivex.rxjava3.functions.Predicate
            public final boolean test(Optional<? extends T> optional) {
                optional.getClass();
                return optional.isPresent();
            }
        }).map(new Function() { // from class: com.sightcall.libraries.rx.SubscriptionsKt.filterIfPresent.2
            @Override // io.reactivex.rxjava3.functions.Function
            public final R apply(Optional<? extends T> optional) {
                optional.getClass();
                return (R) function1.invoke(optional.get());
            }
        });
        map.getClass();
        return map;
    }

    public static final <T, M, N> Observable<N> filterNotNull(Observable<T> observable, Function1<? super T, ? extends M> function1, final Function1<? super M, ? extends N> function2) {
        observable.getClass();
        function1.getClass();
        function2.getClass();
        Observable<R> map = observable.filter(new C03801(function1)).map(new C03812(function1));
        map.getClass();
        Observable<N> map2 = map.map(new Function() { // from class: com.sightcall.libraries.rx.SubscriptionsKt.filterNotNull.3
            /* JADX WARN: Type inference failed for: r0v2, types: [N, java.lang.Object] */
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // io.reactivex.rxjava3.functions.Function
            public final N apply(M m) {
                m.getClass();
                return function2.invoke(m);
            }
        });
        map2.getClass();
        return map2;
    }

    public static final <T> void ifNotDisposed(MaybeEmitter<T> maybeEmitter, Function1<? super MaybeEmitter<T>, Unit> function1) {
        maybeEmitter.getClass();
        function1.getClass();
        if (maybeEmitter.isDisposed()) {
            return;
        }
        function1.invoke(maybeEmitter);
    }

    @CheckReturnValue
    public static final <O> Disposable relay(Maybe<? extends O> maybe, final Observer<O> observer) {
        maybe.getClass();
        observer.getClass();
        Consumer consumer = new Consumer() { // from class: com.sightcall.libraries.rx.SubscriptionsKt.relay.6
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(O o) {
                o.getClass();
                observer.onNext(o);
            }
        };
        Consumer consumer2 = new Consumer() { // from class: com.sightcall.libraries.rx.SubscriptionsKt.relay.7
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Throwable th) {
                th.getClass();
            }
        };
        maybe.getClass();
        Action action = Functions.f70038c;
        Objects.requireNonNull(consumer2, "onError is null");
        Objects.requireNonNull(action, "onComplete is null");
        MaybeCallbackObserver maybeCallbackObserver = new MaybeCallbackObserver(consumer, consumer2, action);
        maybe.a(maybeCallbackObserver);
        return maybeCallbackObserver;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void relay$lambda$0() {
    }

    @CheckReturnValue
    public static final <T> Disposable subscribeWithScheduler(Observable<T> observable, Scheduler scheduler, final Function1<? super T, Unit> function1, final Function1<? super Throwable, Unit> function2, final Function0<Unit> function0) {
        observable.getClass();
        scheduler.getClass();
        function1.getClass();
        function2.getClass();
        function0.getClass();
        Disposable disposableSubscribe = observable.observeOn(scheduler).subscribe(new Consumer() { // from class: com.sightcall.libraries.rx.SubscriptionsKt.subscribeWithScheduler.4
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(T t) {
                t.getClass();
                function1.invoke(t);
            }
        }, new Consumer() { // from class: com.sightcall.libraries.rx.SubscriptionsKt.subscribeWithScheduler.5
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Throwable th) {
                th.getClass();
                function2.invoke(th);
            }
        }, new Action() { // from class: com.sightcall.libraries.rx.SubscriptionsKt.subscribeWithScheduler.6
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                function0.mo47invoke();
            }
        });
        disposableSubscribe.getClass();
        return disposableSubscribe;
    }

    public static final <T, O extends T> Observable<O> filterByCasting(Observable<T> observable, Class<O> cls) {
        observable.getClass();
        cls.getClass();
        Intrinsics.g();
        throw null;
    }

    public static final <T> void ifNotDisposed(ObservableEmitter<T> observableEmitter, Function1<? super ObservableEmitter<T>, Unit> function1) {
        observableEmitter.getClass();
        function1.getClass();
        if (observableEmitter.isDisposed()) {
            return;
        }
        function1.invoke(observableEmitter);
    }

    public static final void ifNotDisposed(CompletableEmitter completableEmitter, Function1<? super CompletableEmitter, Unit> function1) {
        completableEmitter.getClass();
        function1.getClass();
        if (completableEmitter.isDisposed()) {
            return;
        }
        function1.invoke(completableEmitter);
    }

    public static final <T> void ifNotDisposed(SingleEmitter<T> singleEmitter, Function1<? super SingleEmitter<T>, Unit> function1) {
        singleEmitter.getClass();
        function1.getClass();
        if (singleEmitter.isDisposed()) {
            return;
        }
        function1.invoke(singleEmitter);
    }

    @CheckReturnValue
    public static final <T> Observable<T> filterIfPresent(Observable<Optional<T>> observable) {
        observable.getClass();
        Observable<T> observable2 = (Observable<T>) observable.filter(new Predicate() { // from class: com.sightcall.libraries.rx.SubscriptionsKt.filterIfPresent.3
            @Override // io.reactivex.rxjava3.functions.Predicate
            public final boolean test(Optional<T> optional) {
                optional.getClass();
                return optional.isPresent();
            }
        }).map(new Function() { // from class: com.sightcall.libraries.rx.SubscriptionsKt.filterIfPresent.4
            @Override // io.reactivex.rxjava3.functions.Function
            public final T apply(Optional<T> optional) {
                optional.getClass();
                return optional.get();
            }
        });
        observable2.getClass();
        return observable2;
    }

    @CheckReturnValue
    public static final <O> Disposable relay(Single<? extends O> single, final Observer<O> observer) {
        single.getClass();
        observer.getClass();
        Consumer consumer = new Consumer() { // from class: com.sightcall.libraries.rx.SubscriptionsKt.relay.4
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(O o) {
                o.getClass();
                observer.onNext(o);
            }
        };
        Consumer consumer2 = new Consumer() { // from class: com.sightcall.libraries.rx.SubscriptionsKt.relay.5
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Throwable th) {
                th.getClass();
            }
        };
        Objects.requireNonNull(consumer2, "onError is null");
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(consumer, consumer2);
        single.a(consumerSingleObserver);
        return consumerSingleObserver;
    }

    @CheckReturnValue
    public static final <O> Disposable relay(Observable<? extends O> observable, final Observer<O> observer) {
        observable.getClass();
        observer.getClass();
        Disposable disposableSubscribe = observable.subscribe(new Consumer() { // from class: com.sightcall.libraries.rx.SubscriptionsKt.relay.1
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(O o) {
                o.getClass();
                observer.onNext(o);
            }
        }, new Consumer() { // from class: com.sightcall.libraries.rx.SubscriptionsKt.relay.2
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Throwable th) {
                th.getClass();
            }
        }, new b21(0));
        disposableSubscribe.getClass();
        return disposableSubscribe;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CheckReturnValue
    public static final <T> void subscribeWithScheduler(Observable<T> observable, Scheduler scheduler, Observer<T> observer) {
        observable.getClass();
        scheduler.getClass();
        observer.getClass();
        observable.observeOn(scheduler).subscribe(observer);
    }

    public static final <T, M> Observable<M> filterNotNull(Observable<T> observable, Function1<? super T, ? extends M> function1) {
        observable.getClass();
        function1.getClass();
        Observable<M> observable2 = (Observable<M>) observable.filter(new C03801(function1)).map(new C03812(function1));
        observable2.getClass();
        return observable2;
    }

    @CheckReturnValue
    public static final <T> Disposable subscribeWithScheduler(Observable<T> observable, Scheduler scheduler, final Function1<? super T, Unit> function1) {
        observable.getClass();
        scheduler.getClass();
        function1.getClass();
        Disposable disposableSubscribe = observable.observeOn(scheduler).subscribe(new Consumer() { // from class: com.sightcall.libraries.rx.SubscriptionsKt.subscribeWithScheduler.1
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(T t) {
                t.getClass();
                function1.invoke(t);
            }
        });
        disposableSubscribe.getClass();
        return disposableSubscribe;
    }

    @CheckReturnValue
    public static final <T> Disposable subscribeWithScheduler(Observable<T> observable, Scheduler scheduler, final Function1<? super T, Unit> function1, final Function1<? super Throwable, Unit> function2) {
        observable.getClass();
        scheduler.getClass();
        function1.getClass();
        function2.getClass();
        Disposable disposableSubscribe = observable.observeOn(scheduler).subscribe(new Consumer() { // from class: com.sightcall.libraries.rx.SubscriptionsKt.subscribeWithScheduler.2
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(T t) {
                t.getClass();
                function1.invoke(t);
            }
        }, new Consumer() { // from class: com.sightcall.libraries.rx.SubscriptionsKt.subscribeWithScheduler.3
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Throwable th) {
                th.getClass();
                function2.invoke(th);
            }
        });
        disposableSubscribe.getClass();
        return disposableSubscribe;
    }

    @CheckReturnValue
    public static final <T> Disposable subscribeWithScheduler(Observable<T> observable, Scheduler scheduler) {
        observable.getClass();
        scheduler.getClass();
        Disposable disposableSubscribe = observable.observeOn(scheduler).subscribe();
        disposableSubscribe.getClass();
        return disposableSubscribe;
    }

    @CheckReturnValue
    public static final <T> Disposable subscribeWithScheduler(Single<T> single, Scheduler scheduler, final Function1<? super T, Unit> function1) {
        single.getClass();
        scheduler.getClass();
        function1.getClass();
        SingleObserveOn singleObserveOn = new SingleObserveOn(single, scheduler);
        Consumer consumer = new Consumer() { // from class: com.sightcall.libraries.rx.SubscriptionsKt.subscribeWithScheduler.7
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(T t) {
                t.getClass();
                function1.invoke(t);
            }
        };
        Consumer consumer2 = Functions.f70039e;
        Objects.requireNonNull(consumer2, "onError is null");
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(consumer, consumer2);
        singleObserveOn.a(consumerSingleObserver);
        return consumerSingleObserver;
    }
}
