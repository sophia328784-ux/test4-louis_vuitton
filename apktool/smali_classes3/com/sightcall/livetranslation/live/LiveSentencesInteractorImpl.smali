.class public final Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl;
.super Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/livetranslation/live/LiveSentencesInteractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl$UpdateState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl<",
        "Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;",
        ">;",
        "Lcom/sightcall/livetranslation/live/LiveSentencesInteractor;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u0013B\u001d\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nR5\u0010\u000b\u001a#\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000cj\u0008\u0012\u0004\u0012\u00020\u0002`\u0010\u00a2\u0006\u0002\u0008\u000fX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl;",
        "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;",
        "Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;",
        "Lcom/sightcall/livetranslation/live/LiveSentencesInteractor;",
        "featureInteractor",
        "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
        "height",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Height;",
        "<init>",
        "(Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Height;)V",
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
            "Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Height;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor<",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
            ">;",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Height;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;

    sget-object v1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-direct {v0, v1, p2}, Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;-><init>(Ljava/util/List;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Height;)V

    invoke-direct {p0, v0}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/sightcall/libraries/archi/nucleus/NucleusState;->getState()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    sget-object v0, Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl$1;->INSTANCE:Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl$1;

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lcom/sightcall/libraries/archi/nucleus/NucleusState;->getState()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v0, Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl$2;->INSTANCE:Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl$2;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1}, Lio/reactivex/rxjava3/kotlin/Observables;->a(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object p2, Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl$3;->INSTANCE:Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl$3;

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->getActions()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sightcall/libraries/rx/SubscriptionsKt;->relay(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->getDisposables()Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->b(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    new-instance p1, Lba0;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lba0;-><init>(I)V

    iput-object p1, p0, Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl;->reducerConfigurator:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static synthetic d(Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl$UpdateState;)Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl;->reducerConfigurator$lambda$0$0(Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl$UpdateState;)Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl;->reducerConfigurator$lambda$0(Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final reducerConfigurator$lambda$0(Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;)Lkotlin/Unit;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl$UpdateState;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    new-instance v1, Lcom/sightcall/livetranslation/live/a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;->changesState(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function2;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final reducerConfigurator$lambda$0$0(Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl$UpdateState;)Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl$UpdateState;->getLiveSentences()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sightcall/livetranslation/domain/Sentence;

    new-instance v3, Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$LiveSentence;

    invoke-virtual {v2}, Lcom/sightcall/livetranslation/domain/Sentence;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sightcall/livetranslation/domain/Sentence;->getColor()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl$UpdateState;->getFontSize()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;

    move-result-object v5

    invoke-direct {v3, v4, v2, v5}, Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$LiveSentence;-><init>(Ljava/lang/String;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-static {p0, v1, v0, p1, v0}, Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;->copy$default(Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;Ljava/util/List;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Height;ILjava/lang/Object;)Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;

    move-result-object p0

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
            "Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/livetranslation/live/LiveSentencesInteractorImpl;->reducerConfigurator:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method
