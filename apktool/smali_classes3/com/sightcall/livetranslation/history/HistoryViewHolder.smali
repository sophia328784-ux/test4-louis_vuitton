.class public final Lcom/sightcall/livetranslation/history/HistoryViewHolder;
.super Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder<",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Lcom/sightcall/livetranslation/history/HistoryInteractor$State;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\u001d\u001a\u00020\u0012H\u0014R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000c\u001a\u0010\u0012\u000c\u0012\n \u000f*\u0004\u0018\u00010\u000e0\u000e0\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u0010\u001a\u0018\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00120\u0011j\u0008\u0012\u0004\u0012\u00020\u0003`\u0013X\u0094\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R$\u0010\u0016\u001a\u0012\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00190\u00180\u0017j\u0002`\u001aX\u0094\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/sightcall/livetranslation/history/HistoryViewHolder;",
        "Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Lcom/sightcall/livetranslation/history/HistoryInteractor$State;",
        "rootView",
        "Landroid/view/ViewGroup;",
        "interactor",
        "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;",
        "<init>",
        "(Landroid/view/ViewGroup;Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;)V",
        "adapter",
        "Lcom/sightcall/livetranslation/history/HistoryAdapter;",
        "behavior",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior;",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
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
        "buildContentView",
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
.field private final adapter:Lcom/sightcall/livetranslation/history/HistoryAdapter;

.field private final behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

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

.field private final render:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/sightcall/livetranslation/history/HistoryInteractor$State;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor<",
            "Lcom/sightcall/livetranslation/history/HistoryInteractor$State;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Lcom/sightcall/livetranslation/R$layout;->history:I

    invoke-direct {p0, p1, v0, p2}, Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;-><init>(Landroid/view/ViewGroup;ILcom/sightcall/libraries/archi/nucleus/NucleusInteractor;)V

    new-instance p1, Lcom/sightcall/livetranslation/history/HistoryAdapter;

    invoke-direct {p1}, Lcom/sightcall/livetranslation/history/HistoryAdapter;-><init>()V

    iput-object p1, p0, Lcom/sightcall/livetranslation/history/HistoryViewHolder;->adapter:Lcom/sightcall/livetranslation/history/HistoryAdapter;

    sget p1, Lcom/sightcall/livetranslation/R$id;->history_bottomsheet_container:I

    invoke-virtual {p0, p1}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->B(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/livetranslation/history/HistoryViewHolder;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    new-instance p2, Ll00;

    const/4 v0, 0x5

    invoke-direct {p2, p0, v0}, Ll00;-><init>(Ljava/lang/Object;I)V

    iput-object p2, p0, Lcom/sightcall/livetranslation/history/HistoryViewHolder;->render:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Lcom/sightcall/libraries/rxbindings/BottomSheetBehaviorStateChangeEventObservableKt;->stateChangeEvents(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object p2, Lcom/sightcall/livetranslation/history/HistoryViewHolder$dispatcher$1;->INSTANCE:Lcom/sightcall/livetranslation/history/HistoryViewHolder$dispatcher$1;

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object p2, Lcom/sightcall/livetranslation/history/HistoryViewHolder$dispatcher$2;->INSTANCE:Lcom/sightcall/livetranslation/history/HistoryViewHolder$dispatcher$2;

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {p1}, [Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-static {p1}, Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolderKt;->dispatch([Lio/reactivex/rxjava3/core/Observable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/livetranslation/history/HistoryViewHolder;->dispatcher:Ljava/util/List;

    return-void
.end method

.method public static synthetic b(Lcom/sightcall/livetranslation/history/HistoryViewHolder;)V
    .locals 0

    invoke-static {p0}, Lcom/sightcall/livetranslation/history/HistoryViewHolder;->buildContentView$lambda$1(Lcom/sightcall/livetranslation/history/HistoryViewHolder;)V

    return-void
.end method

.method private static final buildContentView$lambda$1(Lcom/sightcall/livetranslation/history/HistoryViewHolder;)V
    .locals 1

    iget-object p0, p0, Lcom/sightcall/livetranslation/history/HistoryViewHolder;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J(I)V

    return-void
.end method

.method public static synthetic c(Lcom/sightcall/livetranslation/history/HistoryViewHolder;Lcom/sightcall/livetranslation/history/HistoryInteractor$State;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/livetranslation/history/HistoryViewHolder;->render$lambda$0(Lcom/sightcall/livetranslation/history/HistoryViewHolder;Lcom/sightcall/livetranslation/history/HistoryInteractor$State;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final render$lambda$0(Lcom/sightcall/livetranslation/history/HistoryViewHolder;Lcom/sightcall/livetranslation/history/HistoryInteractor$State;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/sightcall/livetranslation/history/HistoryViewHolder;->adapter:Lcom/sightcall/livetranslation/history/HistoryAdapter;

    invoke-static {p1}, Lcom/sightcall/livetranslation/history/HistoryViewHolderKt;->access$mapToAdapter(Lcom/sightcall/livetranslation/history/HistoryInteractor$State;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sightcall/livetranslation/history/HistoryAdapter;->setItems(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public buildContentView()V
    .locals 3

    invoke-super {p0}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->buildContentView()V

    sget v0, Lcom/sightcall/livetranslation/R$id;->history_recyclerView:I

    invoke-virtual {p0, v0}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->n1(Z)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v1, p0, Lcom/sightcall/livetranslation/history/HistoryViewHolder;->adapter:Lcom/sightcall/livetranslation/history/HistoryAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/sightcall/livetranslation/history/HistoryViewHolder;->behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->J(I)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Let;

    const/16 v2, 0xf

    invoke-direct {v1, p0, v2}, Let;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

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

    iget-object p0, p0, Lcom/sightcall/livetranslation/history/HistoryViewHolder;->dispatcher:Ljava/util/List;

    return-object p0
.end method

.method public getRender()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/sightcall/livetranslation/history/HistoryInteractor$State;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/livetranslation/history/HistoryViewHolder;->render:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method
