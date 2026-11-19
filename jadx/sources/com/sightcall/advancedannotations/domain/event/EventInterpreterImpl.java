package com.sightcall.advancedannotations.domain.event;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.sightcall.advancedannotations.domain.drawer.AnnotationCommand;
import com.sightcall.advancedannotations.domain.drawer.AnnotationCommandKt;
import com.sightcall.advancedannotations.domain.drawer.AnnotationId;
import com.sightcall.advancedannotations.domain.drawer.AnnotationPosition;
import com.sightcall.advancedannotations.domain.drawer.AnnotationSenderId;
import com.sightcall.advancedannotations.domain.drawingmode.DrawingModeSelector;
import com.sightcall.advancedannotations.domain.settings.Setting;
import com.sightcall.advancedannotations.domain.settings.SettingsInteractor;
import com.sightcall.libraries.rx.Optional;
import com.sightcall.libraries.rx.SubscriptionsKt;
import defpackage.ck;
import defpackage.fc;
import defpackage.v40;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.kotlin.DisposableKt;
import io.reactivex.rxjava3.kotlin.ObservablesKt;
import io.reactivex.rxjava3.observables.ConnectableObservable;
import io.reactivex.rxjava3.schedulers.Schedulers;
import io.reactivex.rxjava3.subjects.PublishSubject;
import io.reactivex.rxjava3.subjects.Subject;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000®\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000 L2\u00020\u00012\u00020\u0002:\u0003JKLB1\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0004\b\r\u0010\u000eJ\u0018\u00102\u001a\u00020\u00182\u0006\u00103\u001a\u00020&2\u0006\u00104\u001a\u000205H\u0002J \u00106\u001a\u00020\u00182\u0006\u00103\u001a\u00020&2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u00104\u001a\u000207H\u0002J&\u00108\u001a\u00020\u00182\u0006\u00103\u001a\u00020&2\u0006\u00104\u001a\u0002092\f\u0010:\u001a\b\u0012\u0004\u0012\u00020<0;H\u0002J\u0018\u0010=\u001a\u00020\u00182\u0006\u00103\u001a\u00020&2\u0006\u00104\u001a\u00020>H\u0002J\u001a\u0010?\u001a\u0004\u0018\u00010\u00182\u0006\u00103\u001a\u00020&2\u0006\u00104\u001a\u00020@H\u0002J\u0018\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020\u001e2\u0006\u00104\u001a\u00020@H\u0002J\b\u0010D\u001a\u00020\u0014H\u0016J\u0018\u0010E\u001a\u00020\f2\u0006\u0010F\u001a\u00020\u00162\u0006\u0010G\u001a\u00020HH\u0016J\b\u0010I\u001a\u00020\u0014H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\fX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00160\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00180\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00180\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010#\u001a\u0018\u0012\u000f\u0012\r\u0012\u0004\u0012\u00020&0%¢\u0006\u0002\b'0$¢\u0006\u0002\b(X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010)\u001a\b\u0012\u0004\u0012\u00020\f0$X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010+R\u001e\u0010,\u001a\u0012\u0012\t\u0012\u00070\u0018¢\u0006\u0002\b'0$¢\u0006\u0002\b(X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010-\u001a\u0012\u0012\t\u0012\u00070\u0018¢\u0006\u0002\b'0$¢\u0006\u0002\b(X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00180$X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010/\u001a\u0012\u0012\t\u0012\u00070\u0018¢\u0006\u0002\b'0$¢\u0006\u0002\b(X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u00100\u001a\b\u0012\u0004\u0012\u00020\u00180$X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b1\u0010+¨\u0006M"}, d2 = {"Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;", "Lcom/sightcall/advancedannotations/domain/event/EventInterpreter;", "Lcom/sightcall/advancedannotations/domain/event/EventInterpreter$Out;", "view", "Landroid/view/ViewGroup;", "mainScheduler", "Lio/reactivex/rxjava3/core/Scheduler;", "drawingModeSelector", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;", "settingsInteractor", "Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;", "isEphemeral", "", "<init>", "(Landroid/view/ViewGroup;Lio/reactivex/rxjava3/core/Scheduler;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;Z)V", "()Z", "setEphemeral", "(Z)V", "deleteAll", "Lio/reactivex/rxjava3/subjects/Subject;", "", "motionEvents", "Landroid/view/MotionEvent;", "standaloneDropCommand", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;", "standaloneLineCommand", "deleteCommand", "disposables", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "initialPosition", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;", "dropState", "Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState;", "annotationId", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;", "touchEvents", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/sightcall/libraries/rx/Optional;", "Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;", "Lkotlin/jvm/internal/EnhancedNullability;", "Lio/reactivex/rxjava3/annotations/NonNull;", "touchEventsHandled", "getTouchEventsHandled", "()Lio/reactivex/rxjava3/core/Observable;", "deleteAllCommands", "deleteCommands", "touchCommands", "drivenDropCommands", "annotationCommands", "getAnnotationCommands", "handleDrivenPointerModeEvent", MvelScriptManager.VAR_EVENT, "mode", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenPointer;", "handleDrivenDrawModeEvent", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDraw;", "handleDrivenDropModeEvent", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;", "settings", "", "Lcom/sightcall/advancedannotations/domain/settings/Setting;", "handleStandalonePointerModeEvent", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandalonePointer;", "handleStandaloneDrawDropModeEvent", "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandaloneDrawDrop;", "createStandaloneDropTimer", "Lio/reactivex/rxjava3/disposables/Disposable;", "annotationPosition", "clear", "processEvent", "motionEvent", "fromView", "Landroid/view/View;", "processDeleteAll", "DropState", "TouchEvent", "Companion", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class EventInterpreterImpl implements EventInterpreter, EventInterpreter.Out {
    private static final double DropMoveThreshold = 25.0d;
    private static final long DropTimerDuration = 500;
    private final Observable<AnnotationCommand> annotationCommands;
    private AnnotationId.Specific annotationId;
    private final Subject<Unit> deleteAll;
    private final Observable<AnnotationCommand> deleteAllCommands;
    private final Subject<AnnotationCommand> deleteCommand;
    private final Observable<AnnotationCommand> deleteCommands;
    private final CompositeDisposable disposables;
    private final Observable<AnnotationCommand> drivenDropCommands;
    private DropState dropState;
    private AnnotationPosition initialPosition;
    private boolean isEphemeral;
    private final Subject<MotionEvent> motionEvents;
    private final Subject<AnnotationCommand> standaloneDropCommand;
    private final Subject<AnnotationCommand> standaloneLineCommand;
    private final Observable<AnnotationCommand> touchCommands;
    private final Observable<Optional<TouchEvent>> touchEvents;
    private final Observable<Boolean> touchEventsHandled;
    private final ViewGroup view;

    /* JADX WARN: Multi-variable type inference failed */
    public EventInterpreterImpl(ViewGroup viewGroup, Scheduler scheduler, DrawingModeSelector drawingModeSelector, SettingsInteractor settingsInteractor, boolean z) {
        viewGroup.getClass();
        scheduler.getClass();
        drawingModeSelector.getClass();
        settingsInteractor.getClass();
        this.view = viewGroup;
        this.isEphemeral = z;
        PublishSubject publishSubject = new PublishSubject();
        this.deleteAll = publishSubject;
        PublishSubject publishSubject2 = new PublishSubject();
        this.motionEvents = publishSubject2;
        PublishSubject publishSubject3 = new PublishSubject();
        this.standaloneDropCommand = publishSubject3;
        PublishSubject publishSubject4 = new PublishSubject();
        this.standaloneLineCommand = publishSubject4;
        PublishSubject publishSubject5 = new PublishSubject();
        this.deleteCommand = publishSubject5;
        this.disposables = new CompositeDisposable();
        this.dropState = DropState.UnDetected.INSTANCE;
        this.annotationId = new AnnotationId.Specific(1);
        ConnectableObservable connectableObservableReplay = publishSubject2.subscribeOn(Schedulers.d).map(new Function() { // from class: com.sightcall.advancedannotations.domain.event.EventInterpreterImpl$touchEvents$1
            /* JADX WARN: Code duplicated, block: B:13:0x002c  */
            /* JADX WARN: Multi-variable type inference failed */
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
            public final Optional<EventInterpreterImpl.TouchEvent> apply(MotionEvent motionEvent) {
                motionEvent.getClass();
                Optional.Companion companion = Optional.INSTANCE;
                Object down = null;
                if (motionEvent.getPointerCount() == 1) {
                    int actionMasked = motionEvent.getActionMasked();
                    if (actionMasked == 0) {
                        down = new EventInterpreterImpl.TouchEvent.Down((int) motionEvent.getX(), (int) motionEvent.getY());
                    } else if (actionMasked == 1) {
                        down = new EventInterpreterImpl.TouchEvent.Up((int) motionEvent.getX(), (int) motionEvent.getY());
                    } else if (actionMasked == 2) {
                        down = new EventInterpreterImpl.TouchEvent.Move((int) motionEvent.getX(), (int) motionEvent.getY());
                    } else if (actionMasked == 3) {
                        down = new EventInterpreterImpl.TouchEvent.Up((int) motionEvent.getX(), (int) motionEvent.getY());
                    }
                }
                return companion.ofNullable(down);
            }
        }).replay(1);
        connectableObservableReplay.c(new Consumer() { // from class: com.sightcall.advancedannotations.domain.event.EventInterpreterImpl$touchEvents$2
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Disposable disposable) {
                disposable.getClass();
                DisposableKt.a(this.this$0.disposables, disposable);
            }
        });
        this.touchEvents = connectableObservableReplay;
        Observable map = connectableObservableReplay.map(new Function() { // from class: com.sightcall.advancedannotations.domain.event.EventInterpreterImpl$touchEventsHandled$1
            @Override // io.reactivex.rxjava3.functions.Function
            public final Boolean apply(Optional<EventInterpreterImpl.TouchEvent> optional) {
                optional.getClass();
                return Boolean.valueOf(optional.isPresent());
            }
        });
        map.getClass();
        this.touchEventsHandled = map;
        Observable map2 = publishSubject.map(new Function() { // from class: com.sightcall.advancedannotations.domain.event.EventInterpreterImpl$deleteAllCommands$1
            @Override // io.reactivex.rxjava3.functions.Function
            public final AnnotationCommand apply(Unit unit) {
                unit.getClass();
                return DrivenEventInterpreterKt.delete(AnnotationSenderId.Local.INSTANCE, AnnotationId.All.INSTANCE, true);
            }
        });
        map2.getClass();
        this.deleteAllCommands = map2;
        Observable map3 = publishSubject5.map(new Function() { // from class: com.sightcall.advancedannotations.domain.event.EventInterpreterImpl$deleteCommands$1
            @Override // io.reactivex.rxjava3.functions.Function
            public final AnnotationCommand apply(AnnotationCommand annotationCommand) {
                annotationCommand.getClass();
                return annotationCommand;
            }
        });
        map3.getClass();
        this.deleteCommands = map3;
        Observable map4 = ObservablesKt.a(SubscriptionsKt.filterIfPresent(connectableObservableReplay), drawingModeSelector.getState()).map(new Function() { // from class: com.sightcall.advancedannotations.domain.event.EventInterpreterImpl$touchCommands$1
            @Override // io.reactivex.rxjava3.functions.Function
            public final Optional<AnnotationCommand> apply(Pair<? extends EventInterpreterImpl.TouchEvent, DrawingModeSelector.Mode> pair) {
                AnnotationCommand annotationCommandHandleStandaloneDrawDropModeEvent;
                pair.getClass();
                EventInterpreterImpl.TouchEvent touchEvent = (EventInterpreterImpl.TouchEvent) pair.f71705b;
                Object obj = pair.f71706c;
                obj.getClass();
                Optional.Companion companion = Optional.INSTANCE;
                DrawingModeSelector.ModeConfiguration mode = ((DrawingModeSelector.Mode) obj).getMode();
                if (mode instanceof DrawingModeSelector.ModeConfiguration.DrivenPointer) {
                    annotationCommandHandleStandaloneDrawDropModeEvent = this.this$0.handleDrivenPointerModeEvent(touchEvent, (DrawingModeSelector.ModeConfiguration.DrivenPointer) mode);
                } else if (mode instanceof DrawingModeSelector.ModeConfiguration.DrivenDraw) {
                    EventInterpreterImpl eventInterpreterImpl = this.this$0;
                    annotationCommandHandleStandaloneDrawDropModeEvent = eventInterpreterImpl.handleDrivenDrawModeEvent(touchEvent, eventInterpreterImpl.getIsEphemeral(), (DrawingModeSelector.ModeConfiguration.DrivenDraw) mode);
                } else if (mode instanceof DrawingModeSelector.ModeConfiguration.StandalonePointer) {
                    annotationCommandHandleStandaloneDrawDropModeEvent = this.this$0.handleStandalonePointerModeEvent(touchEvent, (DrawingModeSelector.ModeConfiguration.StandalonePointer) mode);
                } else {
                    annotationCommandHandleStandaloneDrawDropModeEvent = mode instanceof DrawingModeSelector.ModeConfiguration.StandaloneDrawDrop ? this.this$0.handleStandaloneDrawDropModeEvent(touchEvent, (DrawingModeSelector.ModeConfiguration.StandaloneDrawDrop) mode) : null;
                }
                return companion.ofNullable(annotationCommandHandleStandaloneDrawDropModeEvent);
            }
        });
        map4.getClass();
        Observable<AnnotationCommand> observableFilterIfPresent = SubscriptionsKt.filterIfPresent(map4);
        this.touchCommands = observableFilterIfPresent;
        Observable observableFilter = ObservablesKt.a(SubscriptionsKt.filterIfPresent(connectableObservableReplay), drawingModeSelector.getState()).filter(new Predicate() { // from class: com.sightcall.advancedannotations.domain.event.EventInterpreterImpl$drivenDropCommands$1
            @Override // io.reactivex.rxjava3.functions.Predicate
            public final boolean test(Pair<? extends EventInterpreterImpl.TouchEvent, DrawingModeSelector.Mode> pair) {
                pair.getClass();
                Object obj = pair.f71706c;
                obj.getClass();
                return ((DrawingModeSelector.Mode) obj).getMode() instanceof DrawingModeSelector.ModeConfiguration.DrivenDrop;
            }
        });
        observableFilter.getClass();
        Observable<AnnotationCommand> map5 = ObservablesKt.a(observableFilter, settingsInteractor.getState()).filter(new Predicate() { // from class: com.sightcall.advancedannotations.domain.event.EventInterpreterImpl$drivenDropCommands$2
            @Override // io.reactivex.rxjava3.functions.Predicate
            public final boolean test(Pair<? extends Pair<? extends EventInterpreterImpl.TouchEvent, DrawingModeSelector.Mode>, ? extends SettingsInteractor.State> pair) {
                pair.getClass();
                Object obj = pair.f71705b;
                obj.getClass();
                Object obj2 = pair.f71706c;
                obj2.getClass();
                SettingsInteractor.State state = (SettingsInteractor.State) obj2;
                Object obj3 = ((Pair) obj).f71706c;
                obj3.getClass();
                DrawingModeSelector.ModeConfiguration mode = ((DrawingModeSelector.Mode) obj3).getMode();
                mode.getClass();
                return (state instanceof SettingsInteractor.State.Ready) && ((SettingsInteractor.State.Ready) state).getSettings().size() > ((DrawingModeSelector.ModeConfiguration.DrivenDrop) mode).getResourceId().getValue();
            }
        }).map(new Function() { // from class: com.sightcall.advancedannotations.domain.event.EventInterpreterImpl$drivenDropCommands$3
            @Override // io.reactivex.rxjava3.functions.Function
            public final AnnotationCommand apply(Pair<? extends Pair<? extends EventInterpreterImpl.TouchEvent, DrawingModeSelector.Mode>, ? extends SettingsInteractor.State> pair) {
                pair.getClass();
                Object obj = pair.f71705b;
                obj.getClass();
                Pair pair2 = (Pair) obj;
                Object obj2 = pair.f71706c;
                obj2.getClass();
                EventInterpreterImpl.TouchEvent touchEvent = (EventInterpreterImpl.TouchEvent) pair2.f71705b;
                Object obj3 = pair2.f71706c;
                obj3.getClass();
                DrawingModeSelector.ModeConfiguration mode = ((DrawingModeSelector.Mode) obj3).getMode();
                mode.getClass();
                return this.this$0.handleDrivenDropModeEvent(touchEvent, (DrawingModeSelector.ModeConfiguration.DrivenDrop) mode, ((SettingsInteractor.State.Ready) ((SettingsInteractor.State) obj2)).getSettings());
            }
        });
        map5.getClass();
        this.drivenDropCommands = map5;
        ConnectableObservable connectableObservablePublish = Observable.mergeArray(map2, observableFilterIfPresent, map3, map5, publishSubject3.observeOn(scheduler), publishSubject4).publish();
        connectableObservablePublish.c(new Consumer() { // from class: com.sightcall.advancedannotations.domain.event.EventInterpreterImpl$annotationCommands$1
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Disposable disposable) {
                disposable.getClass();
                DisposableKt.a(this.this$0.disposables, disposable);
            }
        });
        this.annotationCommands = connectableObservablePublish;
    }

    private final Disposable createStandaloneDropTimer(final AnnotationPosition annotationPosition, final DrawingModeSelector.ModeConfiguration.StandaloneDrawDrop mode) {
        Observable observableDoOnNext = Observable.timer(DropTimerDuration, TimeUnit.MILLISECONDS).map(new Function() { // from class: com.sightcall.advancedannotations.domain.event.EventInterpreterImpl.createStandaloneDropTimer.1
            @Override // io.reactivex.rxjava3.functions.Function
            public final AnnotationCommand apply(Long l) {
                l.getClass();
                AnnotationSenderId.Local local = AnnotationSenderId.Local.INSTANCE;
                AnnotationId.Specific specific = EventInterpreterImpl.this.annotationId;
                EventInterpreterImpl.this.annotationId = specific.inc();
                return StandaloneEventInterpreterKt.completeStandaloneDrop(local, specific, annotationPosition, mode);
            }
        }).doOnNext(new Consumer() { // from class: com.sightcall.advancedannotations.domain.event.EventInterpreterImpl.createStandaloneDropTimer.2
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(AnnotationCommand annotationCommand) {
                annotationCommand.getClass();
                EventInterpreterImpl.this.dropState = DropState.Detected.INSTANCE;
            }
        });
        observableDoOnNext.getClass();
        return SubscriptionsKt.relay(observableDoOnNext, this.standaloneDropCommand);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AnnotationCommand handleDrivenDrawModeEvent(TouchEvent event, boolean isEphemeral, DrawingModeSelector.ModeConfiguration.DrivenDraw mode) {
        AnnotationPosition annotationPositionFrom$advancedannotations_release = AnnotationPosition.INSTANCE.from$advancedannotations_release(event, this.view);
        if (event instanceof TouchEvent.Down) {
            return DrivenEventInterpreterKt.createDrivenLine(AnnotationSenderId.Local.INSTANCE, this.annotationId, annotationPositionFrom$advancedannotations_release, mode);
        }
        if (event instanceof TouchEvent.Move) {
            return DrivenEventInterpreterKt.addDrivenLinePosition(AnnotationSenderId.Local.INSTANCE, this.annotationId, annotationPositionFrom$advancedannotations_release, mode);
        }
        if (!(event instanceof TouchEvent.Up)) {
            v40.g();
            return null;
        }
        if (isEphemeral) {
            AnnotationSenderId.Local local = AnnotationSenderId.Local.INSTANCE;
            AnnotationId.Specific specific = this.annotationId;
            this.annotationId = specific.inc();
            return DrivenEventInterpreterKt.fadeOut(local, specific, new ck(this, 21));
        }
        AnnotationSenderId.Local local2 = AnnotationSenderId.Local.INSTANCE;
        AnnotationId.Specific specific2 = this.annotationId;
        this.annotationId = specific2.inc();
        return DrivenEventInterpreterKt.addDrivenLinePosition(local2, specific2, annotationPositionFrom$advancedannotations_release, mode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit handleDrivenDrawModeEvent$lambda$0$0(EventInterpreterImpl eventInterpreterImpl, AnnotationId annotationId) {
        annotationId.getClass();
        eventInterpreterImpl.deleteCommand.onNext(DrivenEventInterpreterKt.delete(AnnotationSenderId.Local.INSTANCE, annotationId, true));
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AnnotationCommand handleDrivenDropModeEvent(TouchEvent event, DrawingModeSelector.ModeConfiguration.DrivenDrop mode, List<Setting> settings) {
        AnnotationPosition annotationPositionFrom$advancedannotations_release = AnnotationPosition.INSTANCE.from$advancedannotations_release(event, this.view);
        if (event instanceof TouchEvent.Down) {
            this.initialPosition = annotationPositionFrom$advancedannotations_release;
            return DrivenEventInterpreterKt.createDrivenDrop(AnnotationSenderId.Local.INSTANCE, this.annotationId, annotationPositionFrom$advancedannotations_release, mode);
        }
        if (event instanceof TouchEvent.Move) {
            return DrivenEventInterpreterKt.moveDrivenDrop(AnnotationSenderId.Local.INSTANCE, this.annotationId, this.initialPosition, annotationPositionFrom$advancedannotations_release, mode, settings.get(mode.getResourceId().getValue()), this.view);
        }
        if (!(event instanceof TouchEvent.Up)) {
            v40.g();
            return null;
        }
        AnnotationSenderId.Local local = AnnotationSenderId.Local.INSTANCE;
        AnnotationId.Specific specific = this.annotationId;
        this.annotationId = specific.inc();
        return DrivenEventInterpreterKt.completeDrivenDrop(local, specific, this.initialPosition, annotationPositionFrom$advancedannotations_release, mode, settings.get(mode.getResourceId().getValue()), this.view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AnnotationCommand handleDrivenPointerModeEvent(TouchEvent event, DrawingModeSelector.ModeConfiguration.DrivenPointer mode) {
        AnnotationPosition annotationPositionFrom$advancedannotations_release = AnnotationPosition.INSTANCE.from$advancedannotations_release(event, this.view);
        if (event instanceof TouchEvent.Down) {
            return DrivenEventInterpreterKt.createDrivenPointer(AnnotationSenderId.Local.INSTANCE, annotationPositionFrom$advancedannotations_release, mode);
        }
        if (event instanceof TouchEvent.Move) {
            return DrivenEventInterpreterKt.moveDrivenPointer(AnnotationSenderId.Local.INSTANCE, annotationPositionFrom$advancedannotations_release);
        }
        if (event instanceof TouchEvent.Up) {
            return DrivenEventInterpreterKt.delete(AnnotationSenderId.Local.INSTANCE, new AnnotationId.Specific(0), true);
        }
        v40.g();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AnnotationCommand handleStandaloneDrawDropModeEvent(TouchEvent event, DrawingModeSelector.ModeConfiguration.StandaloneDrawDrop mode) {
        AnnotationPosition annotationPositionFrom$advancedannotations_release = AnnotationPosition.INSTANCE.from$advancedannotations_release(event, this.view);
        DropState dropState = this.dropState;
        if (event instanceof TouchEvent.Down) {
            this.dropState = new DropState.Started(annotationPositionFrom$advancedannotations_release, createStandaloneDropTimer(annotationPositionFrom$advancedannotations_release, mode));
            return null;
        }
        if (event instanceof TouchEvent.Move) {
            if (dropState instanceof DropState.Started) {
                DropState.Started started = (DropState.Started) dropState;
                if (AnnotationCommandKt.distanceWith(started.getInitialPosition(), annotationPositionFrom$advancedannotations_release, this.view) > DropMoveThreshold) {
                    started.getTimerDisposable().dispose();
                    this.dropState = DropState.UnDetected.INSTANCE;
                    this.standaloneLineCommand.onNext(StandaloneEventInterpreterKt.createStandaloneLine(AnnotationSenderId.Local.INSTANCE, this.annotationId, started.getInitialPosition(), mode));
                }
            }
            if (this.dropState instanceof DropState.UnDetected) {
                return StandaloneEventInterpreterKt.addStandaloneLinePosition(AnnotationSenderId.Local.INSTANCE, this.annotationId, annotationPositionFrom$advancedannotations_release, mode);
            }
            return null;
        }
        if (!(event instanceof TouchEvent.Up)) {
            v40.g();
            return null;
        }
        if (dropState instanceof DropState.Started) {
            this.dropState = DropState.UnDetected.INSTANCE;
            ((DropState.Started) dropState).getTimerDisposable().dispose();
            return null;
        }
        if (dropState instanceof DropState.UnDetected) {
            AnnotationSenderId.Local local = AnnotationSenderId.Local.INSTANCE;
            AnnotationId.Specific specific = this.annotationId;
            this.annotationId = specific.inc();
            return StandaloneEventInterpreterKt.addStandaloneLinePosition(local, specific, annotationPositionFrom$advancedannotations_release, mode);
        }
        if (Intrinsics.c(dropState, DropState.Detected.INSTANCE)) {
            return null;
        }
        v40.g();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AnnotationCommand handleStandalonePointerModeEvent(TouchEvent event, DrawingModeSelector.ModeConfiguration.StandalonePointer mode) {
        AnnotationPosition annotationPositionFrom$advancedannotations_release = AnnotationPosition.INSTANCE.from$advancedannotations_release(event, this.view);
        if (event instanceof TouchEvent.Down) {
            return StandaloneEventInterpreterKt.createStandalonePointer(AnnotationSenderId.Local.INSTANCE, annotationPositionFrom$advancedannotations_release, mode);
        }
        if (event instanceof TouchEvent.Move) {
            return StandaloneEventInterpreterKt.moveStandalonePointer(AnnotationSenderId.Local.INSTANCE, annotationPositionFrom$advancedannotations_release);
        }
        if (event instanceof TouchEvent.Up) {
            return DrivenEventInterpreterKt.delete(AnnotationSenderId.Local.INSTANCE, new AnnotationId.Specific(0), true);
        }
        v40.g();
        return null;
    }

    @Override // com.sightcall.advancedannotations.domain.event.EventInterpreter
    public void clear() {
        this.disposables.d();
    }

    @Override // com.sightcall.advancedannotations.domain.event.EventInterpreter.Out
    public Observable<AnnotationCommand> getAnnotationCommands() {
        return this.annotationCommands;
    }

    @Override // com.sightcall.advancedannotations.domain.event.EventInterpreter.Out
    public Observable<Boolean> getTouchEventsHandled() {
        return this.touchEventsHandled;
    }

    @Override // com.sightcall.advancedannotations.domain.event.EventInterpreter
    /* JADX INFO: renamed from: isEphemeral, reason: from getter */
    public boolean getIsEphemeral() {
        return this.isEphemeral;
    }

    @Override // com.sightcall.advancedannotations.domain.event.EventInterpreter
    public void processDeleteAll() {
        this.deleteAll.onNext(Unit.f71739a);
    }

    @Override // com.sightcall.advancedannotations.domain.event.EventInterpreter
    public boolean processEvent(MotionEvent motionEvent, View fromView) {
        motionEvent.getClass();
        fromView.getClass();
        int[] iArr = new int[2];
        fromView.getLocationOnScreen(iArr);
        int[] iArr2 = new int[2];
        this.view.getLocationOnScreen(iArr2);
        motionEvent.offsetLocation(iArr[0] - iArr2[0], iArr[1] - iArr2[1]);
        this.motionEvents.onNext(motionEvent);
        Boolean boolBlockingFirst = getTouchEventsHandled().blockingFirst();
        boolBlockingFirst.getClass();
        return boolBlockingFirst.booleanValue();
    }

    @Override // com.sightcall.advancedannotations.domain.event.EventInterpreter
    public void setEphemeral(boolean z) {
        this.isEphemeral = z;
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0003\u0007\b\t¨\u0006\n"}, d2 = {"Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState;", "", "<init>", "()V", "UnDetected", "Started", "Detected", "Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState$Detected;", "Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState$Started;", "Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState$UnDetected;", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class DropState {

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState$Detected;", "Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState;", "<init>", "()V", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Detected extends DropState {
            public static final Detected INSTANCE = new Detected();

            private Detected() {
                super(null);
            }
        }

        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0014\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0083\u0004J\n\u0010\u0013\u001a\u00020\u0014HÖ\u0081\u0004J\n\u0010\u0015\u001a\u00020\u0016HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0017"}, d2 = {"Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState$Started;", "Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState;", "initialPosition", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;", "timerDisposable", "Lio/reactivex/rxjava3/disposables/Disposable;", "<init>", "(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lio/reactivex/rxjava3/disposables/Disposable;)V", "getInitialPosition", "()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;", "getTimerDisposable", "()Lio/reactivex/rxjava3/disposables/Disposable;", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Started extends DropState {
            private final AnnotationPosition initialPosition;
            private final Disposable timerDisposable;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Started(AnnotationPosition annotationPosition, Disposable disposable) {
                super(null);
                annotationPosition.getClass();
                disposable.getClass();
                this.initialPosition = annotationPosition;
                this.timerDisposable = disposable;
            }

            public static /* synthetic */ Started copy$default(Started started, AnnotationPosition annotationPosition, Disposable disposable, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    annotationPosition = started.initialPosition;
                }
                if ((i2 & 2) != 0) {
                    disposable = started.timerDisposable;
                }
                return started.copy(annotationPosition, disposable);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final AnnotationPosition getInitialPosition() {
                return this.initialPosition;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final Disposable getTimerDisposable() {
                return this.timerDisposable;
            }

            public final Started copy(AnnotationPosition initialPosition, Disposable timerDisposable) {
                initialPosition.getClass();
                timerDisposable.getClass();
                return new Started(initialPosition, timerDisposable);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Started)) {
                    return false;
                }
                Started started = (Started) other;
                return Intrinsics.c(this.initialPosition, started.initialPosition) && Intrinsics.c(this.timerDisposable, started.timerDisposable);
            }

            public final AnnotationPosition getInitialPosition() {
                return this.initialPosition;
            }

            public final Disposable getTimerDisposable() {
                return this.timerDisposable;
            }

            public int hashCode() {
                return this.timerDisposable.hashCode() + (this.initialPosition.hashCode() * 31);
            }

            public String toString() {
                return "Started(initialPosition=" + this.initialPosition + ", timerDisposable=" + this.timerDisposable + ")";
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState$UnDetected;", "Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState;", "<init>", "()V", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class UnDetected extends DropState {
            public static final UnDetected INSTANCE = new UnDetected();

            private UnDetected() {
                super(null);
            }
        }

        public /* synthetic */ DropState(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private DropState() {
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b0\u0018\u00002\u00020\u0001:\u0003\n\u000b\fB\u0019\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b\u0082\u0001\u0003\r\u000e\u000f¨\u0006\u0010"}, d2 = {"Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;", "", "x", "", "y", "<init>", "(II)V", "getX", "()I", "getY", "Down", "Move", "Up", "Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Down;", "Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Move;", "Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Up;", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class TouchEvent {
        private final int x;
        private final int y;

        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0083\u0004J\n\u0010\u0011\u001a\u00020\u0003HÖ\u0081\u0004J\n\u0010\u0012\u001a\u00020\u0013HÖ\u0081\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0014"}, d2 = {"Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Down;", "Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;", "x", "", "y", "<init>", "(II)V", "getX", "()I", "getY", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Down extends TouchEvent {
            private final int x;
            private final int y;

            public Down(int i2, int i3) {
                super(i2, i3, null);
                this.x = i2;
                this.y = i3;
            }

            public static /* synthetic */ Down copy$default(Down down, int i2, int i3, int i4, Object obj) {
                if ((i4 & 1) != 0) {
                    i2 = down.x;
                }
                if ((i4 & 2) != 0) {
                    i3 = down.y;
                }
                return down.copy(i2, i3);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final int getX() {
                return this.x;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final int getY() {
                return this.y;
            }

            public final Down copy(int x, int y) {
                return new Down(x, y);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Down)) {
                    return false;
                }
                Down down = (Down) other;
                return this.x == down.x && this.y == down.y;
            }

            @Override // com.sightcall.advancedannotations.domain.event.EventInterpreterImpl.TouchEvent
            public int getX() {
                return this.x;
            }

            @Override // com.sightcall.advancedannotations.domain.event.EventInterpreterImpl.TouchEvent
            public int getY() {
                return this.y;
            }

            public int hashCode() {
                return Integer.hashCode(this.y) + (Integer.hashCode(this.x) * 31);
            }

            public String toString() {
                return fc.f(this.x, this.y, "Down(x=", ", y=", ")");
            }
        }

        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0083\u0004J\n\u0010\u0011\u001a\u00020\u0003HÖ\u0081\u0004J\n\u0010\u0012\u001a\u00020\u0013HÖ\u0081\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0014"}, d2 = {"Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Move;", "Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;", "x", "", "y", "<init>", "(II)V", "getX", "()I", "getY", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Move extends TouchEvent {
            private final int x;
            private final int y;

            public Move(int i2, int i3) {
                super(i2, i3, null);
                this.x = i2;
                this.y = i3;
            }

            public static /* synthetic */ Move copy$default(Move move, int i2, int i3, int i4, Object obj) {
                if ((i4 & 1) != 0) {
                    i2 = move.x;
                }
                if ((i4 & 2) != 0) {
                    i3 = move.y;
                }
                return move.copy(i2, i3);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final int getX() {
                return this.x;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final int getY() {
                return this.y;
            }

            public final Move copy(int x, int y) {
                return new Move(x, y);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Move)) {
                    return false;
                }
                Move move = (Move) other;
                return this.x == move.x && this.y == move.y;
            }

            @Override // com.sightcall.advancedannotations.domain.event.EventInterpreterImpl.TouchEvent
            public int getX() {
                return this.x;
            }

            @Override // com.sightcall.advancedannotations.domain.event.EventInterpreterImpl.TouchEvent
            public int getY() {
                return this.y;
            }

            public int hashCode() {
                return Integer.hashCode(this.y) + (Integer.hashCode(this.x) * 31);
            }

            public String toString() {
                return fc.f(this.x, this.y, "Move(x=", ", y=", ")");
            }
        }

        @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010HÖ\u0083\u0004J\n\u0010\u0011\u001a\u00020\u0003HÖ\u0081\u0004J\n\u0010\u0012\u001a\u00020\u0013HÖ\u0081\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0014"}, d2 = {"Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Up;", "Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;", "x", "", "y", "<init>", "(II)V", "getX", "()I", "getY", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Up extends TouchEvent {
            private final int x;
            private final int y;

            public Up(int i2, int i3) {
                super(i2, i3, null);
                this.x = i2;
                this.y = i3;
            }

            public static /* synthetic */ Up copy$default(Up up, int i2, int i3, int i4, Object obj) {
                if ((i4 & 1) != 0) {
                    i2 = up.x;
                }
                if ((i4 & 2) != 0) {
                    i3 = up.y;
                }
                return up.copy(i2, i3);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final int getX() {
                return this.x;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final int getY() {
                return this.y;
            }

            public final Up copy(int x, int y) {
                return new Up(x, y);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Up)) {
                    return false;
                }
                Up up = (Up) other;
                return this.x == up.x && this.y == up.y;
            }

            @Override // com.sightcall.advancedannotations.domain.event.EventInterpreterImpl.TouchEvent
            public int getX() {
                return this.x;
            }

            @Override // com.sightcall.advancedannotations.domain.event.EventInterpreterImpl.TouchEvent
            public int getY() {
                return this.y;
            }

            public int hashCode() {
                return Integer.hashCode(this.y) + (Integer.hashCode(this.x) * 31);
            }

            public String toString() {
                return fc.f(this.x, this.y, "Up(x=", ", y=", ")");
            }
        }

        private TouchEvent(int i2, int i3) {
            this.x = i2;
            this.y = i3;
        }

        public int getX() {
            return this.x;
        }

        public int getY() {
            return this.y;
        }

        public /* synthetic */ TouchEvent(int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this(i2, i3);
        }
    }

    public /* synthetic */ EventInterpreterImpl(ViewGroup viewGroup, Scheduler scheduler, DrawingModeSelector drawingModeSelector, SettingsInteractor settingsInteractor, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(viewGroup, scheduler, drawingModeSelector, settingsInteractor, (i2 & 16) != 0 ? false : z);
    }
}
