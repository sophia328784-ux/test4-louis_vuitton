.class public final Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;
.super Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl<",
        "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;",
        ">;",
        "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u0017B-\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R5\u0010\u000f\u001a#\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u0011\u0012\u0004\u0012\u00020\u00120\u0010j\u0008\u0012\u0004\u0012\u00020\u0002`\u0014\u00a2\u0006\u0002\u0008\u0013X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;",
        "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;",
        "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;",
        "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor;",
        "featureInteractor",
        "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
        "coordinator",
        "Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinator;",
        "startStopTranslation",
        "Lcom/sightcall/livetranslation/domain/StartStopTranslation;",
        "textSizeSelector",
        "Lcom/sightcall/livetranslation/domain/TextSizeSelector;",
        "<init>",
        "(Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinator;Lcom/sightcall/livetranslation/domain/StartStopTranslation;Lcom/sightcall/livetranslation/domain/TextSizeSelector;)V",
        "reducerConfigurator",
        "Lkotlin/Function1;",
        "Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "Lcom/sightcall/libraries/archi/nucleus/NucleusReducerConfigurator;",
        "getReducerConfigurator",
        "()Lkotlin/jvm/functions/Function1;",
        "UpdateState",
        "livetranslation_release"
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
.field private final reducerConfigurator:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder<",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final startStopTranslation:Lcom/sightcall/livetranslation/domain/StartStopTranslation;

.field private final textSizeSelector:Lcom/sightcall/livetranslation/domain/TextSizeSelector;


# direct methods
.method public constructor <init>(Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinator;Lcom/sightcall/livetranslation/domain/StartStopTranslation;Lcom/sightcall/livetranslation/domain/TextSizeSelector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor<",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
            ">;",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinator;",
            "Lcom/sightcall/livetranslation/domain/StartStopTranslation;",
            "Lcom/sightcall/livetranslation/domain/TextSizeSelector;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lcom/sightcall/libraries/archi/nucleus/NucleusState;->getState()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$1;->INSTANCE:Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$1;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;-><init>(Lio/reactivex/rxjava3/core/Observable;)V

    iput-object p3, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;->startStopTranslation:Lcom/sightcall/livetranslation/domain/StartStopTranslation;

    iput-object p4, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;->textSizeSelector:Lcom/sightcall/livetranslation/domain/TextSizeSelector;

    invoke-interface {p1}, Lcom/sightcall/libraries/archi/nucleus/NucleusState;->getState()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p3

    sget-object p4, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$2;->INSTANCE:Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$2;

    invoke-virtual {p3, p4}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p3

    invoke-interface {p1}, Lcom/sightcall/libraries/archi/nucleus/NucleusState;->getState()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p4

    sget-object v0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$3;->INSTANCE:Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$3;

    invoke-virtual {p4, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p4

    invoke-interface {p1}, Lcom/sightcall/libraries/archi/nucleus/NucleusState;->getState()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$4;->INSTANCE:Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$4;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-interface {p1}, Lcom/sightcall/libraries/archi/nucleus/NucleusState;->getState()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v1, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$5;->INSTANCE:Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$5;

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v1, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$6;->INSTANCE:Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$6;

    invoke-static {p3, p4, v0, p1, v1}, Lio/reactivex/rxjava3/core/Observable;->combineLatest(Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/core/ObservableSource;Lio/reactivex/rxjava3/functions/Function4;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->getActions()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/sightcall/libraries/rx/SubscriptionsKt;->relay(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->getDisposables()Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->b(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    new-instance p1, Lrp0;

    const/16 p3, 0x12

    invoke-direct {p1, p2, p0, p3}, Lrp0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;->reducerConfigurator:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static synthetic d(Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;->reducerConfigurator$lambda$0$3(Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinator;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;->reducerConfigurator$lambda$0$7(Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinator;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;)Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;->reducerConfigurator$lambda$0$0(Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;)Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinator;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;->reducerConfigurator$lambda$0$1(Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinator;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;->reducerConfigurator$lambda$0$4(Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;->reducerConfigurator$lambda$0$5(Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;->reducerConfigurator$lambda$0$2(Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;->reducerConfigurator$lambda$0$6(Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinator;Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;->reducerConfigurator$lambda$0(Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinator;Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final reducerConfigurator$lambda$0(Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinator;Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;)Lkotlin/Unit;
    .locals 5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v1, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/sightcall/livetranslation/settings/a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2, v1, v2}, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;->changesState(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function2;)V

    const-class v1, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$Close;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lnv0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lnv0;-><init>(Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinator;I)V

    invoke-virtual {p2, v1, v2}, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;->executesSimpleCommand(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)V

    const-class v1, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$Show;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lov0;

    invoke-direct {v2, p1, v3}, Lov0;-><init>(Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;I)V

    invoke-virtual {p2, v1, v2}, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;->executesSimpleCommand(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)V

    const-class v1, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$Hide;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lov0;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lov0;-><init>(Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;I)V

    invoke-virtual {p2, v1, v2}, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;->executesSimpleCommand(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)V

    const-class v1, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$SmallSizeSelected;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lov0;

    const/4 v4, 0x2

    invoke-direct {v2, p1, v4}, Lov0;-><init>(Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;I)V

    invoke-virtual {p2, v1, v2}, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;->executesSimpleCommand(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)V

    const-class v1, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$MediumSizeSelected;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lov0;

    const/4 v4, 0x3

    invoke-direct {v2, p1, v4}, Lov0;-><init>(Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;I)V

    invoke-virtual {p2, v1, v2}, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;->executesSimpleCommand(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)V

    const-class v1, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$LargeSizeSelected;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lov0;

    const/4 v4, 0x4

    invoke-direct {v2, p1, v4}, Lov0;-><init>(Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;I)V

    invoke-virtual {p2, v1, v2}, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;->executesSimpleCommand(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)V

    const-class p1, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$ShowHistory;

    invoke-virtual {v0, p1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    new-instance v0, Lnv0;

    invoke-direct {v0, p0, v3}, Lnv0;-><init>(Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinator;I)V

    invoke-virtual {p2, p1, v0}, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;->executesSimpleCommand(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final reducerConfigurator$lambda$0$0(Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;)Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;->getFontSize()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;->getShow()Z

    move-result v2

    invoke-virtual {p1}, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl$UpdateState;->getLanguage()Lcom/sightcall/livetranslation/domain/Language;

    move-result-object v3

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;->copy$default(Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;ZLcom/sightcall/livetranslation/domain/Language;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;ILjava/lang/Object;)Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;

    move-result-object p0

    return-object p0
.end method

.method private static final reducerConfigurator$lambda$0$1(Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinator;)Lkotlin/Unit;
    .locals 0

    invoke-interface {p0}, Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinator;->close()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final reducerConfigurator$lambda$0$2(Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;)Lkotlin/Unit;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;->startStopTranslation:Lcom/sightcall/livetranslation/domain/StartStopTranslation;

    invoke-interface {p0}, Lcom/sightcall/livetranslation/domain/StartStopTranslation;->start()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final reducerConfigurator$lambda$0$3(Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;)Lkotlin/Unit;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;->startStopTranslation:Lcom/sightcall/livetranslation/domain/StartStopTranslation;

    invoke-interface {p0}, Lcom/sightcall/livetranslation/domain/StartStopTranslation;->stop()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final reducerConfigurator$lambda$0$4(Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;)Lkotlin/Unit;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;->textSizeSelector:Lcom/sightcall/livetranslation/domain/TextSizeSelector;

    invoke-interface {p0}, Lcom/sightcall/livetranslation/domain/TextSizeSelector;->selectSmallSize()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final reducerConfigurator$lambda$0$5(Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;)Lkotlin/Unit;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;->textSizeSelector:Lcom/sightcall/livetranslation/domain/TextSizeSelector;

    invoke-interface {p0}, Lcom/sightcall/livetranslation/domain/TextSizeSelector;->selectMediumSize()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final reducerConfigurator$lambda$0$6(Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;)Lkotlin/Unit;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;->textSizeSelector:Lcom/sightcall/livetranslation/domain/TextSizeSelector;

    invoke-interface {p0}, Lcom/sightcall/livetranslation/domain/TextSizeSelector;->selectLargeSize()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final reducerConfigurator$lambda$0$7(Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinator;)Lkotlin/Unit;
    .locals 0

    invoke-interface {p0}, Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinator;->openTranscript()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public getReducerConfigurator()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder<",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/livetranslation/settings/SettingsPanelInteractorImpl;->reducerConfigurator:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method
