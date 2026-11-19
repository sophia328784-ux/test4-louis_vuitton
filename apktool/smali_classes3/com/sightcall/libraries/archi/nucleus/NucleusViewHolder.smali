.class public abstract Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;
.super Lcom/sightcall/libraries/archi/nucleus/ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sightcall/libraries/archi/nucleus/ViewHolder<",
        "TV;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0008\u0008\u0001\u0010\u0003*\u00020\u00042\u0008\u0012\u0004\u0012\u0002H\u00010\u0005B\u001f\u0008\u0016\u0012\u0006\u0010\u0006\u001a\u00028\u0000\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0008\u00a2\u0006\u0004\u0008\t\u0010\nB\'\u0008\u0016\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0008\u00a2\u0006\u0004\u0008\t\u0010\u000fB\'\u0008\u0016\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0008\u00a2\u0006\u0004\u0008\t\u0010\u0012J\u000c\u0010\"\u001a\u00020\u0017*\u00020#H\u0004R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u0015\u001a\u0018\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00170\u0016j\u0008\u0012\u0004\u0012\u00028\u0001`\u0018X\u0094\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR$\u0010\u001b\u001a\u0012\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001e0\u001d0\u001cj\u0002`\u001fX\u0094\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!\u00a8\u0006$"
    }
    d2 = {
        "Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;",
        "V",
        "Landroid/view/View;",
        "S",
        "",
        "Lcom/sightcall/libraries/archi/nucleus/ViewHolder;",
        "contentView",
        "nucleusInteractor",
        "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;",
        "<init>",
        "(Landroid/view/View;Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;)V",
        "context",
        "Landroid/content/Context;",
        "resId",
        "",
        "(Landroid/content/Context;ILcom/sightcall/libraries/archi/nucleus/NucleusInteractor;)V",
        "rootView",
        "Landroid/view/ViewGroup;",
        "(Landroid/view/ViewGroup;ILcom/sightcall/libraries/archi/nucleus/NucleusInteractor;)V",
        "tagLog",
        "",
        "render",
        "Lkotlin/Function1;",
        "",
        "Lcom/sightcall/libraries/archi/nucleus/Renderer;",
        "getRender",
        "()Lkotlin/jvm/functions/Function1;",
        "dispatcher",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "Lcom/sightcall/libraries/archi/nucleus/Action;",
        "Lcom/sightcall/libraries/archi/nucleus/Dispatcher;",
        "getDispatcher",
        "()Ljava/util/List;",
        "startInteractions",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
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
.field private final dispatcher:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            ">;>;"
        }
    .end annotation
.end field

.field private final nucleusInteractor:Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final render:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TS;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final tagLog:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/sightcall/libraries/archi/nucleus/NucleusInteractor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor<",
            "TS;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;-><init>(Landroid/content/Context;I)V

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;->tagLog:Ljava/lang/String;

    .line 45
    new-instance p1, Lag0;

    const/16 p2, 0x15

    invoke-direct {p1, p2}, Lag0;-><init>(I)V

    iput-object p1, p0, Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;->render:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x0

    .line 46
    new-array p1, p1, [Lio/reactivex/rxjava3/core/Observable;

    invoke-static {p1}, Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolderKt;->dispatch([Lio/reactivex/rxjava3/core/Observable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;->dispatcher:Ljava/util/List;

    .line 47
    iput-object p3, p0, Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;->nucleusInteractor:Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor<",
            "TS;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;->tagLog:Ljava/lang/String;

    new-instance p1, Lag0;

    const/16 v0, 0x15

    invoke-direct {p1, v0}, Lag0;-><init>(I)V

    iput-object p1, p0, Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;->render:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x0

    new-array p1, p1, [Lio/reactivex/rxjava3/core/Observable;

    invoke-static {p1}, Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolderKt;->dispatch([Lio/reactivex/rxjava3/core/Observable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;->dispatcher:Ljava/util/List;

    iput-object p2, p0, Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;->nucleusInteractor:Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;ILcom/sightcall/libraries/archi/nucleus/NucleusInteractor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor<",
            "TS;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;-><init>(Landroid/view/ViewGroup;I)V

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;->tagLog:Ljava/lang/String;

    .line 50
    new-instance p1, Lag0;

    const/16 p2, 0x15

    invoke-direct {p1, p2}, Lag0;-><init>(I)V

    iput-object p1, p0, Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;->render:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x0

    .line 51
    new-array p1, p1, [Lio/reactivex/rxjava3/core/Observable;

    invoke-static {p1}, Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolderKt;->dispatch([Lio/reactivex/rxjava3/core/Observable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;->dispatcher:Ljava/util/List;

    .line 52
    iput-object p3, p0, Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;->nucleusInteractor:Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;->render$lambda$0(Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final render$lambda$0(Ljava/lang/Object;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public getDispatcher()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;->dispatcher:Ljava/util/List;

    return-object p0
.end method

.method public getRender()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "TS;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;->render:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final startInteractions(Lio/reactivex/rxjava3/disposables/CompositeDisposable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;->nucleusInteractor:Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;

    invoke-interface {v0}, Lcom/sightcall/libraries/archi/nucleus/NucleusState;->getState()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->a:Lio/reactivex/rxjava3/core/Scheduler;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder$startInteractions$1;

    invoke-direct {v1, p0}, Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder$startInteractions$1;-><init>(Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->b(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;->getDispatcher()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;->getDispatcher()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    new-array v1, v1, [Lio/reactivex/rxjava3/core/Observable;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/core/Observable;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/core/ObservableSource;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->mergeArray([Lio/reactivex/rxjava3/core/ObservableSource;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;->nucleusInteractor:Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;

    invoke-interface {p0}, Lcom/sightcall/libraries/archi/nucleus/NucleusActions;->getActions()Lio/reactivex/rxjava3/core/Observer;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sightcall/libraries/rx/SubscriptionsKt;->relay(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/core/Observer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->b(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    :cond_0
    return-void

    :cond_1
    const-string p0, "scheduler == null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-void
.end method
