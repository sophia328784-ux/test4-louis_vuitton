.class public final Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;,
        Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$Instruction;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u00002\u00020\u0001:\u000223B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0008\u0010\u001a\u001a\u00020\u001bH\u0002J\u0016\u0010\u001c\u001a\u00020\u001d*\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0002J0\u0010!\u001a\u00020\u001b2\u0016\u0010\"\u001a\u0012\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011j\u0002`\u00142\u0006\u0010#\u001a\u00020\u00122\u0006\u0010$\u001a\u00020\u001dH\u0002J\u0014\u0010%\u001a\u00020\u001b*\u00020\u00132\u0006\u0010$\u001a\u00020\u001dH\u0002J(\u0010&\u001a\u00020\u001b2\u0016\u0010\"\u001a\u0012\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011j\u0002`\u00142\u0006\u0010\'\u001a\u00020(H\u0002J6\u0010)\u001a\u00020\u001b2\u0016\u0010\"\u001a\u0012\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011j\u0002`\u00142\u0006\u0010\'\u001a\u00020(2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u001b0+H\u0002J\u0008\u0010,\u001a\u00020\u001bH\u0002J \u0010,\u001a\u00020\u001b2\u0016\u0010-\u001a\u0012\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011j\u0002`\u0014H\u0002J/\u0010.\u001a\u0004\u0018\u00010\u001b2\u0016\u0010-\u001a\u0012\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011j\u0002`\u00142\u0006\u0010\'\u001a\u00020\u0012H\u0002\u00a2\u0006\u0002\u0010/J\u0008\u00100\u001a\u00020\u001bH\u0002J\u0008\u00101\u001a\u00020\u001bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0010\u001a\u0012\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011j\u0002`\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R.\u0010\u0015\u001a\"\u0012\u0004\u0012\u00020\u0016\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011j\u0002`\u00140\u0011j\u0002`\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00064"
    }
    d2 = {
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawer;",
        "view",
        "Landroid/view/ViewGroup;",
        "settingsInteractor",
        "Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;",
        "parser",
        "Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParser$Out;",
        "eventInterpreter",
        "Lcom/sightcall/advancedannotations/domain/event/EventInterpreter$Out;",
        "drawingModeSelector",
        "Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;",
        "mainScheduler",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "<init>",
        "(Landroid/view/ViewGroup;Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParser$Out;Lcom/sightcall/advancedannotations/domain/event/EventInterpreter$Out;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;Lio/reactivex/rxjava3/core/Scheduler;)V",
        "localAnnotationList",
        "",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;",
        "Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationList;",
        "remoteAnnotationList",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;",
        "Lcom/sightcall/advancedannotations/domain/drawer/SenderList;",
        "disposables",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "updateAnnotationsLayout",
        "",
        "createConfiguration",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;",
        "setting",
        "Lcom/sightcall/advancedannotations/domain/settings/Setting;",
        "createAnnotation",
        "list",
        "id",
        "command",
        "update",
        "handleDeleteAnnotationCommand",
        "annotationId",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;",
        "handleFadeOutAnnotationCommand",
        "completion",
        "Lkotlin/Function0;",
        "movePointerToFront",
        "map",
        "moveAnnotationToFront",
        "(Ljava/util/Map;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;)Lkotlin/Unit;",
        "deleteAllAnnotations",
        "clear",
        "Instruction",
        "AnnotationConfiguration",
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


# instance fields
.field private final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private final localAnnotationList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;",
            "Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private final mainScheduler:Lio/reactivex/rxjava3/core/Scheduler;

.field private final remoteAnnotationList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;",
            "Ljava/util/Map<",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;",
            "Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;",
            ">;>;"
        }
    .end annotation
.end field

.field private final view:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParser$Out;Lcom/sightcall/advancedannotations/domain/event/EventInterpreter$Out;Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;Lio/reactivex/rxjava3/core/Scheduler;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->view:Landroid/view/ViewGroup;

    iput-object p6, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->mainScheduler:Lio/reactivex/rxjava3/core/Scheduler;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->localAnnotationList:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->remoteAnnotationList:Ljava/util/Map;

    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-interface {p3}, Lcom/sightcall/advancedannotations/domain/parser/AdvancedAnnotationsParser$Out;->getAnnotationParameters()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p3

    invoke-interface {p4}, Lcom/sightcall/advancedannotations/domain/event/EventInterpreter$Out;->getAnnotationCommands()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p4

    sget-object v1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$annotationParameters$1;->INSTANCE:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$annotationParameters$1;

    invoke-virtual {p4, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p4

    sget-object v1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$annotationParameters$2;->INSTANCE:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$annotationParameters$2;

    invoke-virtual {p4, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p4

    invoke-static {p3, p4}, Lio/reactivex/rxjava3/core/Observable;->merge(Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/ObservableSource;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p3

    new-instance p4, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$annotationParameters$3;

    invoke-direct {p4, p0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$annotationParameters$3;-><init>(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;)V

    invoke-virtual {p3, p4}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p4, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$annotationConfiguration$1;->INSTANCE:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$annotationConfiguration$1;

    invoke-virtual {p3, p4}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;->getState()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    sget-object v1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$special$$inlined$filterByCasting$1;->INSTANCE:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$special$$inlined$filterByCasting$1;

    invoke-virtual {p2, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    const-class v1, Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State$Ready;

    invoke-virtual {p2, v1}, Lio/reactivex/rxjava3/core/Observable;->cast(Ljava/lang/Class;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$special$$inlined$filterByCasting$2;

    invoke-direct {v1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$special$$inlined$filterByCasting$2;-><init>()V

    invoke-virtual {p2, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p4, p2}, Lio/reactivex/rxjava3/kotlin/ObservablesKt;->a(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    sget-object p4, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$annotationConfiguration$3;->INSTANCE:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$annotationConfiguration$3;

    invoke-virtual {p2, p4}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p5}, Lcom/sightcall/advancedannotations/domain/drawingmode/DrawingModeSelector;->getState()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p4

    invoke-static {p2, p4}, Lio/reactivex/rxjava3/kotlin/ObservablesKt;->a(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance p4, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$annotationConfiguration$4;

    invoke-direct {p4, p0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$annotationConfiguration$4;-><init>(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;)V

    invoke-virtual {p2, p4}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    sget-object p4, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$annotationConfiguration$5;->INSTANCE:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$annotationConfiguration$5;

    invoke-virtual {p3, p4}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p3

    new-instance p4, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$annotationConfiguration$6;

    invoke-direct {p4, p0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$annotationConfiguration$6;-><init>(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;)V

    invoke-virtual {p3, p4}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p3

    invoke-static {p2, p3}, Lio/reactivex/rxjava3/core/Observable;->merge(Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/ObservableSource;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, p6}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance p3, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$1;

    invoke-direct {p3, p0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$1;-><init>(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;)V

    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p2}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->b(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    invoke-static {p1}, Lcom/sightcall/libraries/ui/Views;->layoutSizeChangedEvents(Landroid/view/View;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1, p6}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$2;

    invoke-direct {p2, p0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$2;-><init>(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->b(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public static final synthetic access$createAnnotation(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;Ljava/util/Map;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->createAnnotation(Ljava/util/Map;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;)V

    return-void
.end method

.method public static final synthetic access$createConfiguration(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;Lcom/sightcall/advancedannotations/domain/settings/Setting;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->createConfiguration(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;Lcom/sightcall/advancedannotations/domain/settings/Setting;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLocalAnnotationList$p(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->localAnnotationList:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getRemoteAnnotationList$p(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->remoteAnnotationList:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$handleDeleteAnnotationCommand(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;Ljava/util/Map;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->handleDeleteAnnotationCommand(Ljava/util/Map;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;)V

    return-void
.end method

.method public static final synthetic access$handleFadeOutAnnotationCommand(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;Ljava/util/Map;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->handleFadeOutAnnotationCommand(Ljava/util/Map;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$update(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->update(Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;)V

    return-void
.end method

.method public static final synthetic access$updateAnnotationsLayout(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->updateAnnotationsLayout()V

    return-void
.end method

.method private final createAnnotation(Ljava/util/Map;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;",
            "Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;",
            ">;",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;",
            ")V"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;->getSetting()Lcom/sightcall/advancedannotations/domain/settings/Setting;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;->getPosition()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;->getColor()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;->getSetting()Lcom/sightcall/advancedannotations/domain/settings/Setting;

    move-result-object v0

    invoke-static {}, Lcom/sightcall/advancedannotations/domain/settings/SettingKt;->getPointerSetting()Lcom/sightcall/advancedannotations/domain/settings/Setting;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->view:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;->getPosition()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;

    move-result-object v1

    invoke-virtual {p3}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;->getColor()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

    move-result-object p3

    invoke-direct {v0, p0, v1, p3}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;-><init>(Landroid/view/ViewGroup;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;)V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v2, Lcom/sightcall/advancedannotations/domain/drawer/annotation/ResourceAnnotation;

    iget-object v3, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->view:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;->getPosition()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;

    move-result-object v4

    invoke-virtual {p3}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;->getColor()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

    move-result-object v5

    invoke-virtual {p3}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;->getScale()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;

    move-result-object v6

    invoke-virtual {p3}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;->getRotation()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationRotation;

    move-result-object v7

    invoke-virtual {p3}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;->getSetting()Lcom/sightcall/advancedannotations/domain/settings/Setting;

    move-result-object v8

    iget-object v9, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->mainScheduler:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-direct/range {v2 .. v9}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/ResourceAnnotation;-><init>(Landroid/view/ViewGroup;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationRotation;Lcom/sightcall/advancedannotations/domain/settings/Setting;Lio/reactivex/rxjava3/core/Scheduler;)V

    invoke-interface {p1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->movePointerToFront()V

    return-void

    :cond_1
    invoke-virtual {p3}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;->getLine()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;->getColor()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/LineAnnotation;

    iget-object v1, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->view:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;->getLine()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;

    move-result-object v2

    invoke-virtual {p3}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;->getColor()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

    move-result-object p3

    invoke-direct {v0, v1, v2, p3}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/LineAnnotation;-><init>(Landroid/view/ViewGroup;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;)V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->movePointerToFront()V

    return-void

    :cond_2
    invoke-virtual {p3}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;->getPosition()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;->getColor()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;->getText()Lcom/sightcall/advancedannotations/domain/drawer/TextParameters;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/sightcall/advancedannotations/domain/drawer/annotation/TextAnnotation;

    iget-object v2, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->view:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;->getPosition()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;

    move-result-object v3

    invoke-virtual {p3}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;->getColor()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

    move-result-object v4

    invoke-virtual {p3}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;->getScale()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;

    move-result-object v5

    invoke-virtual {p3}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;->getText()Lcom/sightcall/advancedannotations/domain/drawer/TextParameters;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/TextAnnotation;-><init>(Landroid/view/ViewGroup;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;Lcom/sightcall/advancedannotations/domain/drawer/TextParameters;)V

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->movePointerToFront()V

    :cond_3
    return-void
.end method

.method private final createConfiguration(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;Lcom/sightcall/advancedannotations/domain/settings/Setting;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;
    .locals 13

    new-instance v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;->getSenderId()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;->getAnnotationId()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;->getDelete()Z

    move-result v3

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;->getFadeOut()Z

    move-result v4

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;->getFadeOutCompletion()Lkotlin/jvm/functions/Function0;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;->getPosition()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;->getLine()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;

    move-result-object v8

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;->getScale()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;

    move-result-object v9

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;->getRotation()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationRotation;

    move-result-object v10

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;->getColor()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

    move-result-object v11

    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationParameters;->getText()Lcom/sightcall/advancedannotations/domain/drawer/TextParameters;

    move-result-object v12

    move-object v6, p2

    invoke-direct/range {v0 .. v12}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;-><init>(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationSenderId;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;ZZLkotlin/jvm/functions/Function0;Lcom/sightcall/advancedannotations/domain/settings/Setting;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationRotation;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;Lcom/sightcall/advancedannotations/domain/drawer/TextParameters;)V

    return-object v0
.end method

.method private final deleteAllAnnotations()V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->localAnnotationList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;

    invoke-virtual {v1}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->delete()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->localAnnotationList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->remoteAnnotationList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;

    invoke-virtual {v2}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->delete()V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->remoteAnnotationList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private final handleDeleteAnnotationCommand(Ljava/util/Map;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;",
            "Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;",
            ">;",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$All;->INSTANCE:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$All;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->deleteAllAnnotations()V

    return-void

    :cond_0
    instance-of p0, p2, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;

    if-eqz p0, :cond_2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->delete()V

    :cond_1
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method private final handleFadeOutAnnotationCommand(Ljava/util/Map;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;",
            "Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;",
            ">;",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    sget-object p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$All;->INSTANCE:Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$All;

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    instance-of p0, p2, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;

    if-eqz p0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p3}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->fadeOut(Lkotlin/jvm/functions/Function0;)V

    return-void

    :cond_0
    invoke-static {}, Lv40;->g()V

    :cond_1
    return-void
.end method

.method private final moveAnnotationToFront(Ljava/util/Map;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;)Lkotlin/Unit;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;",
            "Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;",
            ">;",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;",
            ")",
            "Lkotlin/Unit;"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->moveToFront()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final movePointerToFront()V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->localAnnotationList:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->movePointerToFront(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->remoteAnnotationList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->movePointerToFront(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final movePointerToFront(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;",
            "Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->moveAnnotationToFront(Ljava/util/Map;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId$Specific;)Lkotlin/Unit;

    return-void
.end method

.method private final update(Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;)V
    .locals 2

    invoke-virtual {p2}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;->getLine()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    instance-of v1, p1, Lcom/sightcall/advancedannotations/domain/drawer/annotation/AddPosition;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/sightcall/advancedannotations/domain/drawer/annotation/AddPosition;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1, p0}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/AddPosition;->add(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;)V

    :cond_1
    invoke-virtual {p2}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;->getColor()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

    move-result-object p0

    if-eqz p0, :cond_3

    instance-of v1, p1, Lcom/sightcall/advancedannotations/domain/drawer/annotation/SetColor;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/sightcall/advancedannotations/domain/drawer/annotation/SetColor;

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1, p0}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/SetColor;->set(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;)V

    :cond_3
    invoke-virtual {p2}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;->getScale()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;

    move-result-object p0

    if-eqz p0, :cond_5

    instance-of v1, p1, Lcom/sightcall/advancedannotations/domain/drawer/annotation/SetScale;

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Lcom/sightcall/advancedannotations/domain/drawer/annotation/SetScale;

    goto :goto_2

    :cond_4
    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_5

    invoke-interface {v1, p0}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/SetScale;->set(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;)V

    :cond_5
    invoke-virtual {p2}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;->getPosition()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;

    move-result-object p0

    if-eqz p0, :cond_7

    instance-of v1, p1, Lcom/sightcall/advancedannotations/domain/drawer/annotation/SetPosition;

    if-eqz v1, :cond_6

    move-object v1, p1

    check-cast v1, Lcom/sightcall/advancedannotations/domain/drawer/annotation/SetPosition;

    goto :goto_3

    :cond_6
    move-object v1, v0

    :goto_3
    if-eqz v1, :cond_7

    invoke-interface {v1, p0}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/SetPosition;->set(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;)V

    :cond_7
    invoke-virtual {p2}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;->getRotation()Lcom/sightcall/advancedannotations/domain/drawer/AnnotationRotation;

    move-result-object p0

    if-eqz p0, :cond_9

    instance-of v1, p1, Lcom/sightcall/advancedannotations/domain/drawer/annotation/SetRotation;

    if-eqz v1, :cond_8

    move-object v1, p1

    check-cast v1, Lcom/sightcall/advancedannotations/domain/drawer/annotation/SetRotation;

    goto :goto_4

    :cond_8
    move-object v1, v0

    :goto_4
    if-eqz v1, :cond_9

    invoke-interface {v1, p0}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/SetRotation;->set(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationRotation;)V

    :cond_9
    invoke-virtual {p2}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;->getSetting()Lcom/sightcall/advancedannotations/domain/settings/Setting;

    move-result-object p0

    if-eqz p0, :cond_b

    instance-of v1, p1, Lcom/sightcall/advancedannotations/domain/drawer/annotation/SetSetting;

    if-eqz v1, :cond_a

    move-object v1, p1

    check-cast v1, Lcom/sightcall/advancedannotations/domain/drawer/annotation/SetSetting;

    goto :goto_5

    :cond_a
    move-object v1, v0

    :goto_5
    if-eqz v1, :cond_b

    invoke-interface {v1, p0}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/SetSetting;->set(Lcom/sightcall/advancedannotations/domain/settings/Setting;)V

    :cond_b
    invoke-virtual {p2}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl$AnnotationConfiguration;->getText()Lcom/sightcall/advancedannotations/domain/drawer/TextParameters;

    move-result-object p0

    if-eqz p0, :cond_d

    instance-of p2, p1, Lcom/sightcall/advancedannotations/domain/drawer/annotation/SetText;

    if-eqz p2, :cond_c

    move-object v0, p1

    check-cast v0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/SetText;

    :cond_c
    if-eqz v0, :cond_d

    invoke-interface {v0, p0}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/SetText;->set(Lcom/sightcall/advancedannotations/domain/drawer/TextParameters;)V

    :cond_d
    invoke-virtual {p1}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->invalidate()V

    return-void
.end method

.method private final updateAnnotationsLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->localAnnotationList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;

    invoke-virtual {v1}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->reloadLayout()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->remoteAnnotationList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;

    invoke-virtual {v1}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/Annotation;->reloadLayout()V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->deleteAllAnnotations()V

    iget-object p0, p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationDrawerImpl;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->d()V

    return-void
.end method
