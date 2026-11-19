package com.sightcall.libraries.archi.nucleus;

import com.appsflyer.sdk_base.referrer.Payload;
import defpackage.on;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.internal.operators.mixed.SingleFlatMapObservable;
import io.reactivex.rxjava3.internal.util.ConnectConsumer;
import io.reactivex.rxjava3.kotlin.DisposableKt;
import io.reactivex.rxjava3.observables.ConnectableObservable;
import io.reactivex.rxjava3.subjects.PublishSubject;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0002Bþ\u0001\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012K\u0010\b\u001aG\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0000\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0004\u0012\u00020\u0007\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000b0\n0\tj\b\u0012\u0004\u0012\u00028\u0000`\r¢\u0006\u0002\b\f\u0012\u0081\u0001\b\u0002\u0010\u000e\u001a{\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0013\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0014\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0015\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0016\u0012\u0004\u0012\u00020\u00170\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u0018\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u001a¢\u0006\u0004\b\u001b\u0010\u001cBú\u0001\b\u0016\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012K\u0010\b\u001aG\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0000\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0004\u0012\u00020\u0007\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000b0\n0\tj\b\u0012\u0004\u0012\u00028\u0000`\r¢\u0006\u0002\b\f\u0012\u0081\u0001\b\u0002\u0010\u001d\u001a{\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0013\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0014\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0015\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0016\u0012\u0004\u0012\u00020\u00170\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u0018\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u001a¢\u0006\u0004\b\u001b\u0010\u001eB\u0080\u0002\b\u0016\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012K\u0010\b\u001aG\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0000\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0004\u0012\u00020\u0007\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000b0\n0\tj\b\u0012\u0004\u0012\u00028\u0000`\r¢\u0006\u0002\b\f\u0012\u0081\u0001\b\u0002\u0010\u001d\u001a{\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0013\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0014\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0015\u0012\u0013\u0012\u00110\u000b¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0016\u0012\u0004\u0012\u00020\u00170\u000fj\b\u0012\u0004\u0012\u00028\u0000`\u0018\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u001a¢\u0006\u0004\b\u001b\u0010\u001fJ\u0006\u0010-\u001a\u00020\u0017J\u0006\u0010.\u001a\u00020\u0017R\u000e\u0010 \u001a\u00020\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u0004¢\u0006\u0002\n\u0000R!\u0010#\u001a\u0015\u0012\f\u0012\n %*\u0004\u0018\u00010\u00070\u00070$¢\u0006\u0002\b&X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00070(X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010)\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000b0\n0(X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010*\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,¨\u0006/"}, d2 = {"Lcom/sightcall/libraries/archi/nucleus/Nucleus;", "S", "", "initialState", "Lio/reactivex/rxjava3/core/Single;", "viewActions", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "reducer", "Lkotlin/Function3;", "Lkotlin/Pair;", "Lcom/sightcall/libraries/archi/nucleus/Command;", "Lkotlin/ExtensionFunctionType;", "Lcom/sightcall/libraries/archi/nucleus/NucleusReducer;", "reducerHook", "Lkotlin/Function5;", "Lkotlin/ParameterName;", "name", "previousState", "previousCommand", "action", "nextState", "nextCommand", "", "Lcom/sightcall/libraries/archi/nucleus/NucleusReducerHook;", "autoStart", "", "<init>", "(Lio/reactivex/rxjava3/core/Single;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function5;Z)V", "hookReducer", "(Ljava/lang/Object;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function5;Z)V", "(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function5;Z)V", "isStarted", "disposables", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "cmdActions", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "kotlin.jvm.PlatformType", "Lio/reactivex/rxjava3/annotations/NonNull;", "actions", "Lio/reactivex/rxjava3/observables/ConnectableObservable;", Payload.TYPE_STORE, "state", "getState", "()Lio/reactivex/rxjava3/core/Observable;", "start", "clear", "archi_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class Nucleus<S> {
    private final ConnectableObservable<Action> actions;
    private final PublishSubject<Action> cmdActions;
    private final CompositeDisposable disposables;
    private boolean isStarted;
    private final Observable<S> state;
    private final ConnectableObservable<Pair<S, Command>> store;

    public Nucleus(Single<S> single, Observable<Action> observable, final Function3<? super Nucleus<S>, ? super Pair<? extends S, ? extends Command>, ? super Action, ? extends Pair<? extends S, ? extends Command>> function3, final Function5<? super S, ? super Command, ? super Action, ? super S, ? super Command, Unit> function5, boolean z) {
        single.getClass();
        observable.getClass();
        function3.getClass();
        function5.getClass();
        CompositeDisposable compositeDisposable = new CompositeDisposable();
        this.disposables = compositeDisposable;
        final PublishSubject<Action> publishSubject = new PublishSubject<>();
        this.cmdActions = publishSubject;
        ConnectableObservable<Action> connectableObservableReplay = Observable.merge(observable, publishSubject).startWith(Single.c(Initialization.INSTANCE)).replay();
        connectableObservableReplay.getClass();
        this.actions = connectableObservableReplay;
        ConnectableObservable<Pair<S, Command>> connectableObservable = (ConnectableObservable<Pair<S, Command>>) new SingleFlatMapObservable(single, new Function(this) { // from class: com.sightcall.libraries.archi.nucleus.Nucleus$store$1
            final /* synthetic */ Nucleus<S> this$0;

            /* JADX WARN: Multi-variable type inference failed */
            {
                this.this$0 = this;
            }

            @Override // io.reactivex.rxjava3.functions.Function
            public final ObservableSource<? extends Pair<S, Command>> apply(S s) {
                s.getClass();
                Observable<T> observableFilter = ((Nucleus) this.this$0).actions.filter(new Predicate() { // from class: com.sightcall.libraries.archi.nucleus.Nucleus$store$1.1
                    @Override // io.reactivex.rxjava3.functions.Predicate
                    public final boolean test(Action action) {
                        action.getClass();
                        return !(action instanceof DoNothing);
                    }
                });
                NoCommand noCommand = NoCommand.INSTANCE;
                noCommand.getClass();
                Pair pair = new Pair(s, noCommand);
                final Function3<Nucleus<S>, Pair<? extends S, ? extends Command>, Action, Pair<S, Command>> function4 = function3;
                final Nucleus<S> nucleus = this.this$0;
                final Function5<S, Command, Action, S, Command, Unit> function6 = function5;
                return observableFilter.scan(pair, new BiFunction() { // from class: com.sightcall.libraries.archi.nucleus.Nucleus$store$1.2
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
                    @Override // io.reactivex.rxjava3.functions.BiFunction
                    public final Pair<S, Command> apply(Pair<? extends S, ? extends Command> pair2, Action action) {
                        pair2.getClass();
                        action.getClass();
                        Object obj = pair2.f71705b;
                        obj.getClass();
                        Command command = (Command) pair2.f71706c;
                        Object objA = function4.A(nucleus, new Pair(obj, command), action);
                        Function5<S, Command, Action, S, Command, Unit> function7 = function6;
                        Pair<S, Command> pair3 = (Pair) objA;
                        Object obj2 = pair3.f71705b;
                        obj2.getClass();
                        function7.D(obj, command, action, obj2, (Command) pair3.f71706c);
                        return pair3;
                    }
                });
            }
        }).publish();
        connectableObservable.getClass();
        this.store = connectableObservable;
        ConnectableObservable connectableObservableReplay2 = connectableObservable.map(new Function() { // from class: com.sightcall.libraries.archi.nucleus.Nucleus$state$1
            /* JADX WARN: Type inference failed for: r0v1, types: [S, java.lang.Object] */
            @Override // io.reactivex.rxjava3.functions.Function
            public final S apply(Pair<? extends S, ? extends Command> pair) {
                pair.getClass();
                return pair.f71705b;
            }
        }).distinctUntilChanged().replay(1);
        connectableObservableReplay2.c(new Consumer(this) { // from class: com.sightcall.libraries.archi.nucleus.Nucleus$state$2
            final /* synthetic */ Nucleus<S> this$0;

            {
                this.this$0 = this;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Disposable disposable) {
                disposable.getClass();
                ((Nucleus) this.this$0).disposables.b(disposable);
            }
        });
        this.state = connectableObservableReplay2;
        Disposable disposableSubscribe = connectableObservable.map(new Function() { // from class: com.sightcall.libraries.archi.nucleus.Nucleus.4
            @Override // io.reactivex.rxjava3.functions.Function
            public final Command apply(Pair<? extends S, ? extends Command> pair) {
                pair.getClass();
                return (Command) pair.f71706c;
            }
        }).filter(new Predicate() { // from class: com.sightcall.libraries.archi.nucleus.Nucleus.5
            @Override // io.reactivex.rxjava3.functions.Predicate
            public final boolean test(Command command) {
                command.getClass();
                return !Intrinsics.c(command, NoCommand.INSTANCE);
            }
        }).distinctUntilChanged().flatMapSingle(new Function() { // from class: com.sightcall.libraries.archi.nucleus.Nucleus.6
            @Override // io.reactivex.rxjava3.functions.Function
            public final SingleSource<? extends Action> apply(Command command) {
                command.getClass();
                return command.execute();
            }
        }).subscribe(new Consumer() { // from class: com.sightcall.libraries.archi.nucleus.Nucleus.7
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Action action) {
                publishSubject.onNext(action);
            }
        });
        disposableSubscribe.getClass();
        compositeDisposable.b(disposableSubscribe);
        if (z) {
            start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit _init_$lambda$0(Object obj, Command command, Action action, Object obj2, Command command2) {
        obj.getClass();
        command.getClass();
        action.getClass();
        obj2.getClass();
        command2.getClass();
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit _init_$lambda$1(Object obj, Command command, Action action, Object obj2, Command command2) {
        obj.getClass();
        command.getClass();
        action.getClass();
        obj2.getClass();
        command2.getClass();
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit _init_$lambda$2(Object obj, Command command, Action action, Object obj2, Command command2) {
        obj.getClass();
        command.getClass();
        action.getClass();
        obj2.getClass();
        command2.getClass();
        return Unit.f71739a;
    }

    public final void clear() {
        this.disposables.d();
    }

    public final Observable<S> getState() {
        return this.state;
    }

    public final void start() {
        if (this.isStarted) {
            throw new AlreadyStartedException();
        }
        CompositeDisposable compositeDisposable = this.disposables;
        ConnectableObservable<Action> connectableObservable = this.actions;
        connectableObservable.getClass();
        ConnectConsumer connectConsumer = new ConnectConsumer();
        connectableObservable.c(connectConsumer);
        Disposable disposable = connectConsumer.f71118b;
        disposable.getClass();
        DisposableKt.a(compositeDisposable, disposable);
        CompositeDisposable compositeDisposable2 = this.disposables;
        ConnectableObservable<Pair<S, Command>> connectableObservable2 = this.store;
        connectableObservable2.getClass();
        ConnectConsumer connectConsumer2 = new ConnectConsumer();
        connectableObservable2.c(connectConsumer2);
        Disposable disposable2 = connectConsumer2.f71118b;
        disposable2.getClass();
        DisposableKt.a(compositeDisposable2, disposable2);
        this.isStarted = true;
    }

    public /* synthetic */ Nucleus(Single single, Observable observable, Function3 function3, Function5 function5, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(single, (Observable<Action>) observable, function3, (i2 & 8) != 0 ? new on(5) : function5, (i2 & 16) != 0 ? true : z);
    }

    public /* synthetic */ Nucleus(Object obj, Observable observable, Function3 function3, Function5 function5, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, (Observable<Action>) observable, (Function3<? super Nucleus<Object>, ? super Pair<? extends Object, ? extends Command>, ? super Action, ? extends Pair<? extends Object, ? extends Command>>) function3, (Function5<? super Object, ? super Command, ? super Action, ? super Object, ? super Command, Unit>) ((i2 & 8) != 0 ? new on(7) : function5), (i2 & 16) != 0 ? true : z);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Nucleus(S s, Observable<Action> observable, Function3<? super Nucleus<S>, ? super Pair<? extends S, ? extends Command>, ? super Action, ? extends Pair<? extends S, ? extends Command>> function3, Function5<? super S, ? super Command, ? super Action, ? super S, ? super Command, Unit> function5, boolean z) {
        this((Single) Single.c(s), (Observable) observable, (Function3) function3, (Function5) function5, false, 16, (DefaultConstructorMarker) null);
        s.getClass();
        observable.getClass();
        function3.getClass();
        function5.getClass();
    }

    public /* synthetic */ Nucleus(Observable observable, Observable observable2, Function3 function3, Function5 function5, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(observable, (Observable<Action>) observable2, function3, (i2 & 8) != 0 ? new on(6) : function5, (i2 & 16) != 0 ? true : z);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Nucleus(Observable<S> observable, Observable<Action> observable2, Function3<? super Nucleus<S>, ? super Pair<? extends S, ? extends Command>, ? super Action, ? extends Pair<? extends S, ? extends Command>> function3, Function5<? super S, ? super Command, ? super Action, ? super S, ? super Command, Unit> function5, boolean z) {
        observable.getClass();
        observable2.getClass();
        function3.getClass();
        function5.getClass();
        Single<S> singleFirstOrError = observable.firstOrError();
        singleFirstOrError.getClass();
        this((Single) singleFirstOrError, observable2, (Function3) function3, (Function5) function5, z);
    }
}
