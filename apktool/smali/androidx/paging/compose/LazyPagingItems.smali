.class public final Landroidx/paging/compose/LazyPagingItems;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u00020\u0001B\u001d\u0008\u0000\u0012\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00040\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/paging/compose/LazyPagingItems;",
        "",
        "T",
        "Lkotlinx/coroutines/flow/Flow;",
        "Landroidx/paging/PagingData;",
        "flow",
        "<init>",
        "(Lkotlinx/coroutines/flow/Flow;)V",
        "paging-compose_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lkotlinx/coroutines/flow/Flow;

.field public final b:Lkotlin/coroutines/CoroutineContext;

.field public final c:Landroidx/paging/compose/LazyPagingItems$pagingDataPresenter$1;

.field public final d:Landroidx/compose/runtime/MutableState;

.field public final e:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/Flow;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/Flow<",
            "Landroidx/paging/PagingData<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/paging/compose/LazyPagingItems;->a:Lkotlinx/coroutines/flow/Flow;

    sget-object v0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->l:Landroidx/compose/ui/platform/AndroidUiDispatcher$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/platform/AndroidUiDispatcher;->m:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    iput-object v0, p0, Landroidx/paging/compose/LazyPagingItems;->b:Lkotlin/coroutines/CoroutineContext;

    instance-of v1, p1, Lkotlinx/coroutines/flow/SharedFlow;

    if-eqz v1, :cond_0

    check-cast p1, Lkotlinx/coroutines/flow/SharedFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/SharedFlow;->e()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/paging/PagingData;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v1, Landroidx/paging/compose/LazyPagingItems$pagingDataPresenter$1;

    invoke-direct {v1, p0, v0, p1}, Landroidx/paging/compose/LazyPagingItems$pagingDataPresenter$1;-><init>(Landroidx/paging/compose/LazyPagingItems;Lkotlin/coroutines/CoroutineContext;Landroidx/paging/PagingData;)V

    iput-object v1, p0, Landroidx/paging/compose/LazyPagingItems;->c:Landroidx/paging/compose/LazyPagingItems$pagingDataPresenter$1;

    invoke-virtual {v1}, Landroidx/paging/PagingDataPresenter;->d()Landroidx/paging/ItemSnapshotList;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/paging/compose/LazyPagingItems;->d:Landroidx/compose/runtime/MutableState;

    iget-object p1, v1, Landroidx/paging/PagingDataPresenter;->k:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/paging/CombinedLoadStates;

    if-nez p1, :cond_1

    new-instance v0, Landroidx/paging/CombinedLoadStates;

    sget-object v4, Landroidx/paging/compose/LazyPagingItemsKt;->a:Landroidx/paging/LoadStates;

    iget-object v1, v4, Landroidx/paging/LoadStates;->a:Landroidx/paging/LoadState;

    iget-object v2, v4, Landroidx/paging/LoadStates;->b:Landroidx/paging/LoadState;

    iget-object v3, v4, Landroidx/paging/LoadStates;->c:Landroidx/paging/LoadState;

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Landroidx/paging/CombinedLoadStates;-><init>(Landroidx/paging/LoadState;Landroidx/paging/LoadState;Landroidx/paging/LoadState;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p1, v0

    :cond_1
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/paging/compose/LazyPagingItems;->e:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Landroidx/paging/compose/LazyPagingItems;->c:Landroidx/paging/compose/LazyPagingItems$pagingDataPresenter$1;

    iget-object v1, v0, Landroidx/paging/PagingDataPresenter;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_0
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/paging/PagingDataPresenter;->h:Z

    iput p1, v0, Landroidx/paging/PagingDataPresenter;->i:I

    const/4 v1, 0x2

    invoke-static {v1}, Landroidx/paging/PagingLogger;->a(I)Z

    iget-object v1, v0, Landroidx/paging/PagingDataPresenter;->b:Landroidx/paging/HintReceiver;

    if-eqz v1, :cond_1

    iget-object v2, v0, Landroidx/paging/PagingDataPresenter;->d:Landroidx/paging/PageStore;

    invoke-virtual {v2, p1}, Landroidx/paging/PageStore;->d(I)Landroidx/paging/ViewportHint$Access;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/paging/HintReceiver;->a(Landroidx/paging/ViewportHint;)V

    :cond_1
    iget-object v1, v0, Landroidx/paging/PagingDataPresenter;->d:Landroidx/paging/PageStore;

    if-ltz p1, :cond_5

    invoke-virtual {v1}, Landroidx/paging/PageStore;->getSize()I

    move-result v2

    if-ge p1, v2, :cond_6

    iget v2, v1, Landroidx/paging/PageStore;->c:I

    sub-int v2, p1, v2

    if-ltz v2, :cond_3

    iget v3, v1, Landroidx/paging/PageStore;->b:I

    if-lt v2, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v2}, Landroidx/paging/PageStore;->e(I)Ljava/lang/Object;

    :cond_3
    :goto_0
    iget-object v0, v0, Landroidx/paging/PagingDataPresenter;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_4
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroidx/paging/compose/LazyPagingItems;->c()Landroidx/paging/ItemSnapshotList;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/paging/ItemSnapshotList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_6
    const-string p0, "Index: "

    const-string v0, ", Size: "

    invoke-static {p1, p0, v0}, Lfc;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Landroidx/paging/PageStore;->getSize()I

    move-result p1

    invoke-static {p0, p1}, Lno0;->s(Ljava/lang/StringBuilder;I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final b()I
    .locals 0

    invoke-virtual {p0}, Landroidx/paging/compose/LazyPagingItems;->c()Landroidx/paging/ItemSnapshotList;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/paging/ItemSnapshotList;->f()I

    move-result p0

    return p0
.end method

.method public final c()Landroidx/paging/ItemSnapshotList;
    .locals 0

    iget-object p0, p0, Landroidx/paging/compose/LazyPagingItems;->d:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/paging/ItemSnapshotList;

    return-object p0
.end method

.method public final d()Landroidx/paging/CombinedLoadStates;
    .locals 0

    iget-object p0, p0, Landroidx/paging/compose/LazyPagingItems;->e:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/paging/CombinedLoadStates;

    return-object p0
.end method
