.class public abstract Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/libraries/archi/nucleus/ClearableInteractor;
.implements Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sightcall/libraries/archi/nucleus/ClearableInteractor;",
        "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor<",
        "TS;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u00032\u0008\u0012\u0004\u0012\u0002H\u00010\u0004B\u0015\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B\u0011\u0008\u0016\u0012\u0006\u0010\t\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\nJ\u0008\u00103\u001a\u00020\u0017H\u0016R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\u000cX\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R3\u0010\u0014\u001a#\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0016\u0012\u0004\u0012\u00020\u00170\u0015j\u0008\u0012\u0004\u0012\u00028\u0000`\u0019\u00a2\u0006\u0002\u0008\u0018X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001bR\u008d\u0001\u0010\u001c\u001a{\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008( \u0012\u0013\u0012\u00110!\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008(\"\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008(#\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008($\u0012\u0013\u0012\u00110!\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008(%\u0012\u0004\u0012\u00020\u00170\u001dj\u0008\u0012\u0004\u0012\u00028\u0000`&X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(R!\u0010)\u001a\u0008\u0012\u0004\u0012\u00028\u00000*8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008-\u0010.\u001a\u0004\u0008+\u0010,R!\u0010/\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00068VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00082\u0010.\u001a\u0004\u00080\u00101\u00a8\u00064"
    }
    d2 = {
        "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;",
        "S",
        "",
        "Lcom/sightcall/libraries/archi/nucleus/ClearableInteractor;",
        "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;",
        "initialObservable",
        "Lio/reactivex/rxjava3/core/Observable;",
        "<init>",
        "(Lio/reactivex/rxjava3/core/Observable;)V",
        "initialState",
        "(Ljava/lang/Object;)V",
        "disposables",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "getDisposables",
        "()Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "actions",
        "Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "Lcom/sightcall/libraries/archi/nucleus/Action;",
        "getActions",
        "()Lio/reactivex/rxjava3/subjects/PublishSubject;",
        "reducerConfigurator",
        "Lkotlin/Function1;",
        "Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "Lcom/sightcall/libraries/archi/nucleus/NucleusReducerConfigurator;",
        "getReducerConfigurator",
        "()Lkotlin/jvm/functions/Function1;",
        "reducerHook",
        "Lkotlin/Function5;",
        "Lkotlin/ParameterName;",
        "name",
        "previousState",
        "Lcom/sightcall/libraries/archi/nucleus/Command;",
        "previousCommand",
        "action",
        "nextState",
        "nextCommand",
        "Lcom/sightcall/libraries/archi/nucleus/NucleusReducerHook;",
        "getReducerHook",
        "()Lkotlin/jvm/functions/Function5;",
        "nucleus",
        "Lcom/sightcall/libraries/archi/nucleus/Nucleus;",
        "getNucleus",
        "()Lcom/sightcall/libraries/archi/nucleus/Nucleus;",
        "nucleus$delegate",
        "Lkotlin/Lazy;",
        "state",
        "getState",
        "()Lio/reactivex/rxjava3/core/Observable;",
        "state$delegate",
        "clear",
        "archi_release"
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
.field private final actions:Lio/reactivex/rxjava3/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private final initialObservable:Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/Observable<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final nucleus$delegate:Lkotlin/Lazy;

.field private final reducerHook:Lkotlin/jvm/functions/Function5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function5<",
            "TS;",
            "Lcom/sightcall/libraries/archi/nucleus/Command;",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            "TS;",
            "Lcom/sightcall/libraries/archi/nucleus/Command;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final state$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TS;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->initialObservable:Lio/reactivex/rxjava3/core/Observable;

    new-instance p1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance p1, Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-direct {p1}, Lio/reactivex/rxjava3/subjects/PublishSubject;-><init>()V

    iput-object p1, p0, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->actions:Lio/reactivex/rxjava3/subjects/PublishSubject;

    new-instance p1, Lon;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Lon;-><init>(I)V

    iput-object p1, p0, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->reducerHook:Lkotlin/jvm/functions/Function5;

    new-instance p1, Lrg0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lrg0;-><init>(Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;I)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->nucleus$delegate:Lkotlin/Lazy;

    new-instance p1, Lrg0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lrg0;-><init>(Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;I)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->state$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;-><init>(Lio/reactivex/rxjava3/core/Observable;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;Lcom/sightcall/libraries/archi/nucleus/Command;Lcom/sightcall/libraries/archi/nucleus/Action;Ljava/lang/Object;Lcom/sightcall/libraries/archi/nucleus/Command;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->reducerHook$lambda$0(Ljava/lang/Object;Lcom/sightcall/libraries/archi/nucleus/Command;Lcom/sightcall/libraries/archi/nucleus/Action;Ljava/lang/Object;Lcom/sightcall/libraries/archi/nucleus/Command;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->state_delegate$lambda$0(Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;)Lcom/sightcall/libraries/archi/nucleus/Nucleus;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->nucleus_delegate$lambda$0(Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;)Lcom/sightcall/libraries/archi/nucleus/Nucleus;

    move-result-object p0

    return-object p0
.end method

.method private final getNucleus()Lcom/sightcall/libraries/archi/nucleus/Nucleus;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sightcall/libraries/archi/nucleus/Nucleus<",
            "TS;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->nucleus$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/libraries/archi/nucleus/Nucleus;

    return-object p0
.end method

.method private static final nucleus_delegate$lambda$0(Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;)Lcom/sightcall/libraries/archi/nucleus/Nucleus;
    .locals 8

    iget-object v1, p0, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->initialObservable:Lio/reactivex/rxjava3/core/Observable;

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->getActions()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object v2

    new-instance v0, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;

    invoke-direct {v0}, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->getReducerConfigurator()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    invoke-interface {v3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;->build()Lkotlin/jvm/functions/Function3;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->getReducerHook()Lkotlin/jvm/functions/Function5;

    move-result-object v4

    new-instance v0, Lcom/sightcall/libraries/archi/nucleus/Nucleus;

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sightcall/libraries/archi/nucleus/Nucleus;-><init>(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function5;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private static final reducerHook$lambda$0(Ljava/lang/Object;Lcom/sightcall/libraries/archi/nucleus/Command;Lcom/sightcall/libraries/archi/nucleus/Action;Ljava/lang/Object;Lcom/sightcall/libraries/archi/nucleus/Command;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final state_delegate$lambda$0(Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->getNucleus()Lcom/sightcall/libraries/archi/nucleus/Nucleus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/Nucleus;->getState()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->d()V

    invoke-direct {p0}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->getNucleus()Lcom/sightcall/libraries/archi/nucleus/Nucleus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/Nucleus;->clear()V

    return-void
.end method

.method public bridge synthetic getActions()Lio/reactivex/rxjava3/core/Observer;
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->getActions()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object p0

    return-object p0
.end method

.method public getActions()Lio/reactivex/rxjava3/subjects/PublishSubject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/subjects/PublishSubject<",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object p0, p0, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->actions:Lio/reactivex/rxjava3/subjects/PublishSubject;

    return-object p0
.end method

.method public final getDisposables()Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-object p0
.end method

.method public abstract getReducerConfigurator()Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder<",
            "TS;>;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end method

.method public getReducerHook()Lkotlin/jvm/functions/Function5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function5<",
            "TS;",
            "Lcom/sightcall/libraries/archi/nucleus/Command;",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            "TS;",
            "Lcom/sightcall/libraries/archi/nucleus/Command;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->reducerHook:Lkotlin/jvm/functions/Function5;

    return-object p0
.end method

.method public getState()Lio/reactivex/rxjava3/core/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TS;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;->state$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/core/Observable;

    return-object p0
.end method
