.class public final Lcom/sightcall/livetranslation/history/HistoryInteractorImpl;
.super Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/livetranslation/history/HistoryInteractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/livetranslation/history/HistoryInteractorImpl$UpdateState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl<",
        "Lcom/sightcall/livetranslation/history/HistoryInteractor$State;",
        ">;",
        "Lcom/sightcall/livetranslation/history/HistoryInteractor;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u0013B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0004\u0008\t\u0010\nR5\u0010\u000b\u001a#\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000cj\u0008\u0012\u0004\u0012\u00020\u0002`\u0010\u00a2\u0006\u0002\u0008\u000fX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/sightcall/livetranslation/history/HistoryInteractorImpl;",
        "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;",
        "Lcom/sightcall/livetranslation/history/HistoryInteractor$State;",
        "Lcom/sightcall/livetranslation/history/HistoryInteractor;",
        "coordinator",
        "Lcom/sightcall/livetranslation/history/HistoryCoordinator;",
        "featureInteractor",
        "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
        "<init>",
        "(Lcom/sightcall/livetranslation/history/HistoryCoordinator;Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;)V",
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
            "Lcom/sightcall/livetranslation/history/HistoryInteractor$State;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sightcall/livetranslation/history/HistoryCoordinator;Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/livetranslation/history/HistoryCoordinator;",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor<",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Lcom/sightcall/libraries/archi/nucleus/NucleusState;->getState()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/sightcall/livetranslation/history/HistoryInteractorImpl$1;->INSTANCE:Lcom/sightcall/livetranslation/history/HistoryInteractorImpl$1;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;-><init>(Lio/reactivex/rxjava3/core/Observable;)V

    new-instance v0, Ll00;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Ll00;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/sightcall/livetranslation/history/HistoryInteractorImpl;->reducerConfigurator:Lkotlin/jvm/functions/Function1;

    invoke-interface {p2}, Lcom/sightcall/libraries/archi/nucleus/NucleusState;->getState()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object p2, Lcom/sightcall/livetranslation/history/HistoryInteractorImpl$2;->INSTANCE:Lcom/sightcall/livetranslation/history/HistoryInteractorImpl$2;

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->getActions()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sightcall/libraries/rx/SubscriptionsKt;->relay(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->getDisposables()Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->b(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public static synthetic d(Lcom/sightcall/livetranslation/history/HistoryCoordinator;Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/livetranslation/history/HistoryInteractorImpl;->reducerConfigurator$lambda$0(Lcom/sightcall/livetranslation/history/HistoryCoordinator;Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/sightcall/livetranslation/history/HistoryCoordinator;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/livetranslation/history/HistoryInteractorImpl;->reducerConfigurator$lambda$0$1(Lcom/sightcall/livetranslation/history/HistoryCoordinator;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/sightcall/livetranslation/history/HistoryInteractor$State;Lcom/sightcall/livetranslation/history/HistoryInteractorImpl$UpdateState;)Lcom/sightcall/livetranslation/history/HistoryInteractor$State;
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/livetranslation/history/HistoryInteractorImpl;->reducerConfigurator$lambda$0$0(Lcom/sightcall/livetranslation/history/HistoryInteractor$State;Lcom/sightcall/livetranslation/history/HistoryInteractorImpl$UpdateState;)Lcom/sightcall/livetranslation/history/HistoryInteractor$State;

    move-result-object p0

    return-object p0
.end method

.method private static final reducerConfigurator$lambda$0(Lcom/sightcall/livetranslation/history/HistoryCoordinator;Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;)Lkotlin/Unit;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v1, Lcom/sightcall/livetranslation/history/HistoryInteractorImpl$UpdateState;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v2, Lcom/sightcall/livetranslation/history/a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v1, v2}, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;->changesState(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function2;)V

    const-class v1, Lcom/sightcall/livetranslation/history/HistoryInteractor$Hide;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-instance v1, Lss;

    const/16 v2, 0x11

    invoke-direct {v1, p0, v2}, Lss;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0, v1}, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;->executesSimpleCommand(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final reducerConfigurator$lambda$0$0(Lcom/sightcall/livetranslation/history/HistoryInteractor$State;Lcom/sightcall/livetranslation/history/HistoryInteractorImpl$UpdateState;)Lcom/sightcall/livetranslation/history/HistoryInteractor$State;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/sightcall/livetranslation/history/HistoryInteractorImpl$UpdateState;->getSentences()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sightcall/livetranslation/history/HistoryInteractor$State;->copy(Ljava/util/List;)Lcom/sightcall/livetranslation/history/HistoryInteractor$State;

    move-result-object p0

    return-object p0
.end method

.method private static final reducerConfigurator$lambda$0$1(Lcom/sightcall/livetranslation/history/HistoryCoordinator;)Lkotlin/Unit;
    .locals 0

    invoke-interface {p0}, Lcom/sightcall/livetranslation/history/HistoryCoordinator;->close()V

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
            "Lcom/sightcall/livetranslation/history/HistoryInteractor$State;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/livetranslation/history/HistoryInteractorImpl;->reducerConfigurator:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method
