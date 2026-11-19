.class public final Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/advancedannotations/domain/event/EventInterpreter;
.implements Lcom/sightcall/advancedannotations/domain/event/EventInterpreter$Out;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$Companion;,
        Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState;,
        Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ae\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 L2\u00020\u00012\u00020\u0002:\u0003JKLB1\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0018\u00102\u001a\u00020\u00182\u0006\u00103\u001a\u00020&2\u0006\u00104\u001a\u000205H\u0002J \u00106\u001a\u00020\u00182\u0006\u00103\u001a\u00020&2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u00104\u001a\u000207H\u0002J&\u00108\u001a\u00020\u00182\u0006\u00103\u001a\u00020&2\u0006\u00104\u001a\u0002092\u000c\u0010:\u001a\u0008\u0012\u0004\u0012\u00020<0;H\u0002J\u0018\u0010=\u001a\u00020\u00182\u0006\u00103\u001a\u00020&2\u0006\u00104\u001a\u00020>H\u0002J\u001a\u0010?\u001a\u0004\u0018\u00010\u00182\u0006\u00103\u001a\u00020&2\u0006\u00104\u001a\u00020@H\u0002J\u0018\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020\u001e2\u0006\u00104\u001a\u00020@H\u0002J\u0008\u0010D\u001a\u00020\u0014H\u0016J\u0018\u0010E\u001a\u00020\u000c2\u0006\u0010F\u001a\u00020\u00162\u0006\u0010G\u001a\u00020HH\u0016J\u0008\u0010I\u001a\u00020\u0014H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\u000cX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010#\u001a\u0018\u0012\u000f\u0012\r\u0012\u0004\u0012\u00020&0%\u00a2\u0006\u0002\u0008\'0$\u00a2\u0006\u0002\u0008(X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u000c0$X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010+R\u001e\u0010,\u001a\u0012\u0012\t\u0012\u00070\u0018\u00a2\u0006\u0002\u0008\'0$\u00a2\u0006\u0002\u0008(X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010-\u001a\u0012\u0012\t\u0012\u00070\u0018\u00a2\u0006\u0002\u0008\'0$\u00a2\u0006\u0002\u0008(X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u00180$X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010/\u001a\u0012\u0012\t\u0012\u00070\u0018\u00a2\u0006\u0002\u0008\'0$\u00a2\u0006\u0002\u0008(X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u00180$X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u0010+\u00a8\u0006M"
    }
    d2 = {
        "Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;",
        "Lcom/sightcall/advancedannotations/domain/event/EventInterpreter;",
        "Lcom/sightcall/advancedannotations/domain/event/EventInterpreter$Out;",
        "view",
        "Landroid/view/ViewGroup;",
        "mainScheduler",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "drawingModeSelector",
        "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;",
        "settingsInteractor",
        "Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;",
        "isEphemeral",
        "",
        "<init>",
        "(Landroid/view/ViewGroup;Lio/reactivex/rxjava3/core/Scheduler;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;Z)V",
        "()Z",
        "setEphemeral",
        "(Z)V",
        "deleteAll",
        "Lio/reactivex/rxjava3/subjects/Subject;",
        "",
        "motionEvents",
        "Landroid/view/MotionEvent;",
        "standaloneDropCommand",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;",
        "standaloneLineCommand",
        "deleteCommand",
        "disposables",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "initialPosition",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;",
        "dropState",
        "Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState;",
        "annotationId",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;",
        "touchEvents",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/sightcall/libraries/rx/Optional;",
        "Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;",
        "Lkotlin/jvm/internal/EnhancedNullability;",
        "Lio/reactivex/rxjava3/annotations/NonNull;",
        "touchEventsHandled",
        "getTouchEventsHandled",
        "()Lio/reactivex/rxjava3/core/Observable;",
        "deleteAllCommands",
        "deleteCommands",
        "touchCommands",
        "drivenDropCommands",
        "annotationCommands",
        "getAnnotationCommands",
        "handleDrivenPointerModeEvent",
        "event",
        "mode",
        "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenPointer;",
        "handleDrivenDrawModeEvent",
        "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDraw;",
        "handleDrivenDropModeEvent",
        "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;",
        "settings",
        "",
        "Lcom/sightcall/advancedannotations/domain/settings/Setting;",
        "handleStandalonePointerModeEvent",
        "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandalonePointer;",
        "handleStandaloneDrawDropModeEvent",
        "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandaloneDrawDrop;",
        "createStandaloneDropTimer",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "annotationPosition",
        "clear",
        "processEvent",
        "motionEvent",
        "fromView",
        "Landroid/view/View;",
        "processDeleteAll",
        "DropState",
        "TouchEvent",
        "Companion",
        "advancedannotations_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$Companion;

.field private static final DropMoveThreshold:D = 25.0

.field private static final DropTimerDuration:J = 0x1f4L


# instance fields
.field private final annotationCommands:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;",
            ">;"
        }
    .end annotation
.end field

.field private annotationId:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;

.field private final deleteAll:Lio/reactivex/rxjava3/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/Subject<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final deleteAllCommands:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final deleteCommand:Lio/reactivex/rxjava3/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/Subject<",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final deleteCommands:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private final drivenDropCommands:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;",
            ">;"
        }
    .end annotation
.end field

.field private dropState:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState;

.field private initialPosition:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;

.field private isEphemeral:Z

.field private final motionEvents:Lio/reactivex/rxjava3/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/Subject<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final standaloneDropCommand:Lio/reactivex/rxjava3/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/Subject<",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final standaloneLineCommand:Lio/reactivex/rxjava3/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/Subject<",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final touchCommands:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final touchEvents:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/sightcall/libraries/rx/Optional<",
            "Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final touchEventsHandled:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final view:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->Companion:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Lio/reactivex/rxjava3/core/Scheduler;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;Z)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->view:Landroid/view/ViewGroup;

    iput-boolean p5, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->isEphemeral:Z

    new-instance p1, Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-direct {p1}, Lio/reactivex/rxjava3/subjects/PublishSubject;-><init>()V

    iput-object p1, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->deleteAll:Lio/reactivex/rxjava3/subjects/Subject;

    new-instance p5, Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-direct {p5}, Lio/reactivex/rxjava3/subjects/PublishSubject;-><init>()V

    iput-object p5, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->motionEvents:Lio/reactivex/rxjava3/subjects/Subject;

    new-instance v0, Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-direct {v0}, Lio/reactivex/rxjava3/subjects/PublishSubject;-><init>()V

    iput-object v0, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->standaloneDropCommand:Lio/reactivex/rxjava3/subjects/Subject;

    new-instance v1, Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-direct {v1}, Lio/reactivex/rxjava3/subjects/PublishSubject;-><init>()V

    iput-object v1, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->standaloneLineCommand:Lio/reactivex/rxjava3/subjects/Subject;

    new-instance v2, Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-direct {v2}, Lio/reactivex/rxjava3/subjects/PublishSubject;-><init>()V

    iput-object v2, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->deleteCommand:Lio/reactivex/rxjava3/subjects/Subject;

    new-instance v3, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v3}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v3, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    sget-object v3, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState$UnDetected;->INSTANCE:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState$UnDetected;

    iput-object v3, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->dropState:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState;

    new-instance v3, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;-><init>(I)V

    iput-object v3, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->annotationId:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;

    sget-object v3, Lio/reactivex/rxjava3/schedulers/Schedulers;->d:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-virtual {p5, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p5

    sget-object v3, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$touchEvents$1;->INSTANCE:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$touchEvents$1;

    invoke-virtual {p5, v3}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p5

    invoke-virtual {p5, v4}, Lio/reactivex/rxjava3/core/Observable;->replay(I)Lio/reactivex/rxjava3/observables/ConnectableObservable;

    move-result-object p5

    new-instance v3, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$touchEvents$2;

    invoke-direct {v3, p0}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$touchEvents$2;-><init>(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;)V

    invoke-virtual {p5, v3}, Lio/reactivex/rxjava3/observables/ConnectableObservable;->c(Lio/reactivex/rxjava3/functions/Consumer;)V

    iput-object p5, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->touchEvents:Lio/reactivex/rxjava3/core/Observable;

    sget-object v3, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$touchEventsHandled$1;->INSTANCE:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$touchEventsHandled$1;

    invoke-virtual {p5, v3}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->touchEventsHandled:Lio/reactivex/rxjava3/core/Observable;

    sget-object v3, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$deleteAllCommands$1;->INSTANCE:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$deleteAllCommands$1;

    invoke-virtual {p1, v3}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->deleteAllCommands:Lio/reactivex/rxjava3/core/Observable;

    sget-object v3, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$deleteCommands$1;->INSTANCE:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$deleteCommands$1;

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->deleteCommands:Lio/reactivex/rxjava3/core/Observable;

    invoke-static {p5}, Lcom/sightcall/libraries/rx/SubscriptionsKt;->filterIfPresent(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    invoke-interface {p3}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;->getState()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v5

    invoke-static {v3, v5}, Lio/reactivex/rxjava3/kotlin/ObservablesKt;->a(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    new-instance v5, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$touchCommands$1;

    invoke-direct {v5, p0}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$touchCommands$1;-><init>(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;)V

    invoke-virtual {v3, v5}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/sightcall/libraries/rx/SubscriptionsKt;->filterIfPresent(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    iput-object v3, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->touchCommands:Lio/reactivex/rxjava3/core/Observable;

    invoke-static {p5}, Lcom/sightcall/libraries/rx/SubscriptionsKt;->filterIfPresent(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p5

    invoke-interface {p3}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;->getState()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p3

    invoke-static {p5, p3}, Lio/reactivex/rxjava3/kotlin/ObservablesKt;->a(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p3

    sget-object p5, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$drivenDropCommands$1;->INSTANCE:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$drivenDropCommands$1;

    invoke-virtual {p3, p5}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p4}, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;->getState()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p4

    invoke-static {p3, p4}, Lio/reactivex/rxjava3/kotlin/ObservablesKt;->a(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p3

    sget-object p4, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$drivenDropCommands$2;->INSTANCE:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$drivenDropCommands$2;

    invoke-virtual {p3, p4}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p3

    new-instance p4, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$drivenDropCommands$3;

    invoke-direct {p4, p0}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$drivenDropCommands$3;-><init>(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;)V

    invoke-virtual {p3, p4}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->drivenDropCommands:Lio/reactivex/rxjava3/core/Observable;

    invoke-virtual {v0, p2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    const/4 p4, 0x6

    new-array p4, p4, [Lio/reactivex/rxjava3/core/ObservableSource;

    const/4 p5, 0x0

    aput-object p1, p4, p5

    aput-object v3, p4, v4

    const/4 p1, 0x2

    aput-object v2, p4, p1

    const/4 p1, 0x3

    aput-object p3, p4, p1

    const/4 p1, 0x4

    aput-object p2, p4, p1

    const/4 p1, 0x5

    aput-object v1, p4, p1

    invoke-static {p4}, Lio/reactivex/rxjava3/core/Observable;->mergeArray([Lio/reactivex/rxjava3/core/ObservableSource;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->publish()Lio/reactivex/rxjava3/observables/ConnectableObservable;

    move-result-object p1

    new-instance p2, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$annotationCommands$1;

    invoke-direct {p2, p0}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$annotationCommands$1;-><init>(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/observables/ConnectableObservable;->c(Lio/reactivex/rxjava3/functions/Consumer;)V

    iput-object p1, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->annotationCommands:Lio/reactivex/rxjava3/core/Observable;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/ViewGroup;Lio/reactivex/rxjava3/core/Scheduler;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 254
    invoke-direct/range {v0 .. v5}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;-><init>(Landroid/view/ViewGroup;Lio/reactivex/rxjava3/core/Scheduler;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->handleDrivenDrawModeEvent$lambda$0$0(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAnnotationId$p(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->annotationId:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;

    return-object p0
.end method

.method public static final synthetic access$getDisposables$p(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;)Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-object p0
.end method

.method public static final synthetic access$handleDrivenDrawModeEvent(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;ZLcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDraw;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->handleDrivenDrawModeEvent(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;ZLcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDraw;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleDrivenDropModeEvent(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;Ljava/util/List;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->handleDrivenDropModeEvent(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;Ljava/util/List;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleDrivenPointerModeEvent(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenPointer;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->handleDrivenPointerModeEvent(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenPointer;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleStandaloneDrawDropModeEvent(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandaloneDrawDrop;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->handleStandaloneDrawDropModeEvent(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandaloneDrawDrop;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleStandalonePointerModeEvent(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandalonePointer;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->handleStandalonePointerModeEvent(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandalonePointer;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setAnnotationId$p(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->annotationId:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;

    return-void
.end method

.method public static final synthetic access$setDropState$p(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->dropState:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState;

    return-void
.end method

.method private final createStandaloneDropTimer(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandaloneDrawDrop;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 3

    const-wide/16 v0, 0x1f4

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lio/reactivex/rxjava3/core/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$createStandaloneDropTimer$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$createStandaloneDropTimer$1;-><init>(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandaloneDrawDrop;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$createStandaloneDropTimer$2;

    invoke-direct {p2, p0}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$createStandaloneDropTimer$2;-><init>(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->standaloneDropCommand:Lio/reactivex/rxjava3/subjects/Subject;

    invoke-static {p1, p0}, Lcom/sightcall/libraries/rx/SubscriptionsKt;->relay(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method private final handleDrivenDrawModeEvent(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;ZLcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDraw;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;
    .locals 2

    sget-object v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;->Companion:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition$Companion;

    iget-object v1, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->view:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition$Companion;->from$advancedannotations_release(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;Landroid/view/View;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;

    move-result-object v0

    instance-of v1, p1, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Down;

    if-eqz v1, :cond_0

    sget-object p1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;->INSTANCE:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->annotationId:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;

    invoke-static {p1, p0, v0, p3}, Lcom/sightcall/advancedannotations/domain/event/DrivenEventInterpreterKt;->createDrivenLine(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDraw;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v1, p1, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Move;

    if-eqz v1, :cond_1

    sget-object p1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;->INSTANCE:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->annotationId:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;

    invoke-static {p1, p0, v0, p3}, Lcom/sightcall/advancedannotations/domain/event/DrivenEventInterpreterKt;->addDrivenLinePosition(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDraw;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of p1, p1, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Up;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    sget-object p1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;->INSTANCE:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;

    iget-object p2, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->annotationId:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;

    invoke-virtual {p2}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;->inc()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;

    move-result-object p3

    iput-object p3, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->annotationId:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;

    new-instance p3, Lck;

    const/16 v0, 0x15

    invoke-direct {p3, p0, v0}, Lck;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, p2, p3}, Lcom/sightcall/advancedannotations/domain/event/DrivenEventInterpreterKt;->fadeOut(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;Lkotlin/jvm/functions/Function1;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;->INSTANCE:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;

    iget-object p2, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->annotationId:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;

    invoke-virtual {p2}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;->inc()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;

    move-result-object v1

    iput-object v1, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->annotationId:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;

    invoke-static {p1, p2, v0, p3}, Lcom/sightcall/advancedannotations/domain/event/DrivenEventInterpreterKt;->addDrivenLinePosition(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDraw;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static final handleDrivenDrawModeEvent$lambda$0$0(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;)Lkotlin/Unit;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->deleteCommand:Lio/reactivex/rxjava3/subjects/Subject;

    sget-object v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;->INSTANCE:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/sightcall/advancedannotations/domain/event/DrivenEventInterpreterKt;->delete(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;Z)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final handleDrivenDropModeEvent(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;Ljava/util/List;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;",
            "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;",
            "Ljava/util/List<",
            "Lcom/sightcall/advancedannotations/domain/settings/Setting;",
            ">;)",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;"
        }
    .end annotation

    sget-object v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;->Companion:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition$Companion;

    iget-object v1, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->view:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition$Companion;->from$advancedannotations_release(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;Landroid/view/View;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;

    move-result-object v5

    instance-of v0, p1, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Down;

    if-eqz v0, :cond_0

    iput-object v5, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->initialPosition:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;

    sget-object p1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;->INSTANCE:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->annotationId:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;

    invoke-static {p1, p0, v5, p2}, Lcom/sightcall/advancedannotations/domain/event/DrivenEventInterpreterKt;->createDrivenDrop(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p1, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Move;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;->INSTANCE:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;

    iget-object v3, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->annotationId:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;

    iget-object v4, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->initialPosition:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;

    invoke-virtual {p2}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;->getResourceId()Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;->getValue()I

    move-result p1

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lcom/sightcall/advancedannotations/domain/settings/Setting;

    iget-object v8, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->view:Landroid/view/ViewGroup;

    move-object v6, p2

    invoke-static/range {v2 .. v8}, Lcom/sightcall/advancedannotations/domain/event/DrivenEventInterpreterKt;->moveDrivenDrop(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;Lcom/sightcall/advancedannotations/domain/settings/Setting;Landroid/view/ViewGroup;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    move-result-object p0

    return-object p0

    :cond_1
    move-object v6, p2

    instance-of p1, p1, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Up;

    if-eqz p1, :cond_2

    sget-object v2, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;->INSTANCE:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;

    iget-object v3, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->annotationId:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;

    invoke-virtual {v3}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;->inc()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->annotationId:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;

    iget-object v4, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->initialPosition:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;

    invoke-virtual {v6}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;->getResourceId()Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/ResourceId;->getValue()I

    move-result p1

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lcom/sightcall/advancedannotations/domain/settings/Setting;

    iget-object v8, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->view:Landroid/view/ViewGroup;

    invoke-static/range {v2 .. v8}, Lcom/sightcall/advancedannotations/domain/event/DrivenEventInterpreterKt;->completeDrivenDrop(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenDrop;Lcom/sightcall/advancedannotations/domain/settings/Setting;Landroid/view/ViewGroup;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private final handleDrivenPointerModeEvent(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenPointer;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;
    .locals 1

    sget-object v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;->Companion:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition$Companion;

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->view:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition$Companion;->from$advancedannotations_release(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;Landroid/view/View;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;

    move-result-object p0

    instance-of v0, p1, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Down;

    if-eqz v0, :cond_0

    sget-object p1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;->INSTANCE:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;

    invoke-static {p1, p0, p2}, Lcom/sightcall/advancedannotations/domain/event/DrivenEventInterpreterKt;->createDrivenPointer(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$DrivenPointer;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of p2, p1, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Move;

    if-eqz p2, :cond_1

    sget-object p1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;->INSTANCE:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;

    invoke-static {p1, p0}, Lcom/sightcall/advancedannotations/domain/event/DrivenEventInterpreterKt;->moveDrivenPointer(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of p0, p1, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Up;

    if-eqz p0, :cond_2

    sget-object p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;->INSTANCE:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;

    new-instance p1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;-><init>(I)V

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/sightcall/advancedannotations/domain/event/DrivenEventInterpreterKt;->delete(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;Z)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private final handleStandaloneDrawDropModeEvent(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandaloneDrawDrop;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;
    .locals 8

    sget-object v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;->Companion:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition$Companion;

    iget-object v1, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->view:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, v1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition$Companion;->from$advancedannotations_release(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;Landroid/view/View;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->dropState:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState;

    instance-of v2, p1, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Down;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, p2}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->createStandaloneDropTimer(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandaloneDrawDrop;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    new-instance p2, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState$Started;

    invoke-direct {p2, v0, p1}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState$Started;-><init>(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lio/reactivex/rxjava3/disposables/Disposable;)V

    iput-object p2, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->dropState:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState;

    return-object v3

    :cond_0
    instance-of v2, p1, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Move;

    if-eqz v2, :cond_3

    instance-of p1, v1, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState$Started;

    if-eqz p1, :cond_1

    check-cast v1, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState$Started;

    invoke-virtual {v1}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState$Started;->getInitialPosition()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;

    move-result-object p1

    iget-object v2, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->view:Landroid/view/ViewGroup;

    invoke-static {p1, v0, v2}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommandKt;->distanceWith(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Landroid/view/ViewGroup;)D

    move-result-wide v4

    const-wide/high16 v6, 0x4039000000000000L    # 25.0

    cmpl-double p1, v4, v6

    if-lez p1, :cond_1

    invoke-virtual {v1}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState$Started;->getTimerDisposable()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    invoke-interface {p1}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    sget-object p1, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState$UnDetected;->INSTANCE:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState$UnDetected;

    iput-object p1, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->dropState:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState;

    iget-object p1, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->standaloneLineCommand:Lio/reactivex/rxjava3/subjects/Subject;

    sget-object v2, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;->INSTANCE:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;

    iget-object v4, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->annotationId:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;

    invoke-virtual {v1}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState$Started;->getInitialPosition()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;

    move-result-object v1

    invoke-static {v2, v4, v1, p2}, Lcom/sightcall/advancedannotations/domain/event/StandaloneEventInterpreterKt;->createStandaloneLine(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandaloneDrawDrop;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    move-result-object v1

    invoke-interface {p1, v1}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->dropState:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState;

    instance-of p1, p1, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState$UnDetected;

    if-eqz p1, :cond_2

    sget-object p1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;->INSTANCE:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->annotationId:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;

    invoke-static {p1, p0, v0, p2}, Lcom/sightcall/advancedannotations/domain/event/StandaloneEventInterpreterKt;->addStandaloneLinePosition(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandaloneDrawDrop;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v3

    :cond_3
    instance-of p1, p1, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Up;

    if-eqz p1, :cond_7

    instance-of p1, v1, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState$Started;

    if-eqz p1, :cond_4

    sget-object p1, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState$UnDetected;->INSTANCE:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState$UnDetected;

    iput-object p1, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->dropState:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState;

    check-cast v1, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState$Started;

    invoke-virtual {v1}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState$Started;->getTimerDisposable()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p0

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    return-object v3

    :cond_4
    instance-of p1, v1, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState$UnDetected;

    if-eqz p1, :cond_5

    sget-object p1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;->INSTANCE:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;

    iget-object v1, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->annotationId:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;

    invoke-virtual {v1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;->inc()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;

    move-result-object v2

    iput-object v2, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->annotationId:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;

    invoke-static {p1, v1, v0, p2}, Lcom/sightcall/advancedannotations/domain/event/StandaloneEventInterpreterKt;->addStandaloneLinePosition(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandaloneDrawDrop;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    move-result-object p0

    return-object p0

    :cond_5
    sget-object p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState$Detected;->INSTANCE:Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$DropState$Detected;

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    return-object v3

    :cond_6
    invoke-static {}, Lv40;->g()V

    return-object v3

    :cond_7
    invoke-static {}, Lv40;->g()V

    return-object v3
.end method

.method private final handleStandalonePointerModeEvent(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandalonePointer;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;
    .locals 1

    sget-object v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;->Companion:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition$Companion;

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->view:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition$Companion;->from$advancedannotations_release(Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent;Landroid/view/View;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;

    move-result-object p0

    instance-of v0, p1, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Down;

    if-eqz v0, :cond_0

    sget-object p1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;->INSTANCE:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;

    invoke-static {p1, p0, p2}, Lcom/sightcall/advancedannotations/domain/event/StandaloneEventInterpreterKt;->createStandalonePointer(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector$ModeConfiguration$StandalonePointer;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of p2, p1, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Move;

    if-eqz p2, :cond_1

    sget-object p1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;->INSTANCE:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;

    invoke-static {p1, p0}, Lcom/sightcall/advancedannotations/domain/event/StandaloneEventInterpreterKt;->moveStandalonePointer(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of p0, p1, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl$TouchEvent$Up;

    if-eqz p0, :cond_2

    sget-object p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;->INSTANCE:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId$Local;

    new-instance p1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;-><init>(I)V

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/sightcall/advancedannotations/domain/event/DrivenEventInterpreterKt;->delete(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;Z)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->d()V

    return-void
.end method

.method public getAnnotationCommands()Lio/reactivex/rxjava3/core/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommand;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->annotationCommands:Lio/reactivex/rxjava3/core/Observable;

    return-object p0
.end method

.method public getTouchEventsHandled()Lio/reactivex/rxjava3/core/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->touchEventsHandled:Lio/reactivex/rxjava3/core/Observable;

    return-object p0
.end method

.method public isEphemeral()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->isEphemeral:Z

    return p0
.end method

.method public processDeleteAll()V
    .locals 1

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->deleteAll:Lio/reactivex/rxjava3/subjects/Subject;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {p0, v0}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public processEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    new-array v1, v0, [I

    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array p2, v0, [I

    iget-object v0, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->view:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x0

    aget v2, v1, v0

    aget v0, p2, v0

    sub-int/2addr v2, v0

    int-to-float v0, v2

    const/4 v2, 0x1

    aget v1, v1, v2

    aget p2, p2, v2

    sub-int/2addr v1, p2

    int-to-float p2, v1

    invoke-virtual {p1, v0, p2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object p2, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->motionEvents:Lio/reactivex/rxjava3/subjects/Subject;

    invoke-interface {p2, p1}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->getTouchEventsHandled()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->blockingFirst()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public setEphemeral(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sightcall/advancedannotations/domain/event/EventInterpreterImpl;->isEphemeral:Z

    return-void
.end method
