package com.sightcall.libraries.archi.nucleus;

import com.sightcall.libraries.archi.nucleus.NucleusInteractorImpl;
import defpackage.on;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.subjects.PublishSubject;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u00032\b\u0012\u0004\u0012\u0002H\u00010\u0004B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006¢\u0006\u0004\b\u0007\u0010\bB\u0011\b\u0016\u0012\u0006\u0010\t\u001a\u00028\u0000¢\u0006\u0004\b\u0007\u0010\nJ\b\u00103\u001a\u00020\u0017H\u0016R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\fX\u0084\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R3\u0010\u0014\u001a#\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0016\u0012\u0004\u0012\u00020\u00170\u0015j\b\u0012\u0004\u0012\u00028\u0000`\u0019¢\u0006\u0002\b\u0018X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR\u008d\u0001\u0010\u001c\u001a{\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b( \u0012\u0013\u0012\u00110!¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b(\"\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b(#\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b($\u0012\u0013\u0012\u00110!¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b(%\u0012\u0004\u0012\u00020\u00170\u001dj\b\u0012\u0004\u0012\u00028\u0000`&X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R!\u0010)\u001a\b\u0012\u0004\u0012\u00028\u00000*8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b+\u0010,R!\u0010/\u001a\b\u0012\u0004\u0012\u00028\u00000\u00068VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b2\u0010.\u001a\u0004\b0\u00101¨\u00064"}, d2 = {"Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;", "S", "", "Lcom/sightcall/libraries/archi/nucleus/ClearableInteractor;", "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;", "initialObservable", "Lio/reactivex/rxjava3/core/Observable;", "<init>", "(Lio/reactivex/rxjava3/core/Observable;)V", "initialState", "(Ljava/lang/Object;)V", "disposables", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "getDisposables", "()Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "actions", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "getActions", "()Lio/reactivex/rxjava3/subjects/PublishSubject;", "reducerConfigurator", "Lkotlin/Function1;", "Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;", "", "Lkotlin/ExtensionFunctionType;", "Lcom/sightcall/libraries/archi/nucleus/NucleusReducerConfigurator;", "getReducerConfigurator", "()Lkotlin/jvm/functions/Function1;", "reducerHook", "Lkotlin/Function5;", "Lkotlin/ParameterName;", "name", "previousState", "Lcom/sightcall/libraries/archi/nucleus/Command;", "previousCommand", "action", "nextState", "nextCommand", "Lcom/sightcall/libraries/archi/nucleus/NucleusReducerHook;", "getReducerHook", "()Lkotlin/jvm/functions/Function5;", "nucleus", "Lcom/sightcall/libraries/archi/nucleus/Nucleus;", "getNucleus", "()Lcom/sightcall/libraries/archi/nucleus/Nucleus;", "nucleus$delegate", "Lkotlin/Lazy;", "state", "getState", "()Lio/reactivex/rxjava3/core/Observable;", "state$delegate", "clear", "archi_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class NucleusInteractorImpl<S> implements ClearableInteractor, NucleusInteractor<S> {
    private final PublishSubject<Action> actions;
    private final CompositeDisposable disposables;
    private final Observable<S> initialObservable;

    /* JADX INFO: renamed from: nucleus$delegate, reason: from kotlin metadata */
    private final Lazy nucleus;
    private final Function5<S, Command, Action, S, Command, Unit> reducerHook;

    /* JADX INFO: renamed from: state$delegate, reason: from kotlin metadata */
    private final Lazy state;

    public NucleusInteractorImpl(Observable<S> observable) {
        observable.getClass();
        this.initialObservable = observable;
        this.disposables = new CompositeDisposable();
        this.actions = new PublishSubject<>();
        this.reducerHook = new on(8);
        final int i2 = 0;
        this.nucleus = LazyKt.b(new Function0(this) { // from class: rg0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ NucleusInteractorImpl f79524c;

            {
                this.f79524c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i3 = i2;
                NucleusInteractorImpl nucleusInteractorImpl = this.f79524c;
                switch (i3) {
                    case 0:
                        return NucleusInteractorImpl.nucleus_delegate$lambda$0(nucleusInteractorImpl);
                    default:
                        return NucleusInteractorImpl.state_delegate$lambda$0(nucleusInteractorImpl);
                }
            }
        });
        final int i3 = 1;
        this.state = LazyKt.b(new Function0(this) { // from class: rg0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ NucleusInteractorImpl f79524c;

            {
                this.f79524c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i4 = i3;
                NucleusInteractorImpl nucleusInteractorImpl = this.f79524c;
                switch (i4) {
                    case 0:
                        return NucleusInteractorImpl.nucleus_delegate$lambda$0(nucleusInteractorImpl);
                    default:
                        return NucleusInteractorImpl.state_delegate$lambda$0(nucleusInteractorImpl);
                }
            }
        });
    }

    private final Nucleus<S> getNucleus() {
        return (Nucleus) this.nucleus.getF71699b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Nucleus nucleus_delegate$lambda$0(NucleusInteractorImpl nucleusInteractorImpl) {
        Observable<S> observable = nucleusInteractorImpl.initialObservable;
        PublishSubject<Action> actions = nucleusInteractorImpl.getActions();
        NucleusReducerBuilder nucleusReducerBuilder = new NucleusReducerBuilder();
        nucleusInteractorImpl.getReducerConfigurator().invoke(nucleusReducerBuilder);
        return new Nucleus((Observable) observable, (Observable) actions, (Function3) nucleusReducerBuilder.build(), (Function5) nucleusInteractorImpl.getReducerHook(), false, 16, (DefaultConstructorMarker) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit reducerHook$lambda$0(Object obj, Command command, Action action, Object obj2, Command command2) {
        obj.getClass();
        command.getClass();
        action.getClass();
        obj2.getClass();
        command2.getClass();
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Observable state_delegate$lambda$0(NucleusInteractorImpl nucleusInteractorImpl) {
        return nucleusInteractorImpl.getNucleus().getState();
    }

    @Override // com.sightcall.libraries.archi.nucleus.ClearableInteractor
    public void clear() {
        this.disposables.d();
        getNucleus().clear();
    }

    public final CompositeDisposable getDisposables() {
        return this.disposables;
    }

    public abstract Function1<NucleusReducerBuilder<S>, Unit> getReducerConfigurator();

    public Function5<S, Command, Action, S, Command, Unit> getReducerHook() {
        return this.reducerHook;
    }

    @Override // com.sightcall.libraries.archi.nucleus.NucleusState
    public Observable<S> getState() {
        return (Observable) this.state.getF71699b();
    }

    @Override // com.sightcall.libraries.archi.nucleus.NucleusActions
    public PublishSubject<Action> getActions() {
        return this.actions;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public NucleusInteractorImpl(S s) {
        s.getClass();
        Observable observableJust = Observable.just(s);
        observableJust.getClass();
        this(observableJust);
    }
}
