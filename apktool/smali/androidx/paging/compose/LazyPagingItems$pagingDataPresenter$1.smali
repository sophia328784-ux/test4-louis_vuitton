.class public final Landroidx/paging/compose/LazyPagingItems$pagingDataPresenter$1;
.super Landroidx/paging/PagingDataPresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/compose/LazyPagingItems;-><init>(Lkotlinx/coroutines/flow/Flow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/paging/PagingDataPresenter<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "androidx/paging/compose/LazyPagingItems$pagingDataPresenter$1",
        "Landroidx/paging/PagingDataPresenter;",
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
.field public final synthetic m:Landroidx/paging/compose/LazyPagingItems;


# direct methods
.method public constructor <init>(Landroidx/paging/compose/LazyPagingItems;Lkotlin/coroutines/CoroutineContext;Landroidx/paging/PagingData;)V
    .locals 0

    iput-object p1, p0, Landroidx/paging/compose/LazyPagingItems$pagingDataPresenter$1;->m:Landroidx/paging/compose/LazyPagingItems;

    invoke-direct {p0, p2, p3}, Landroidx/paging/PagingDataPresenter;-><init>(Lkotlin/coroutines/CoroutineContext;Landroidx/paging/PagingData;)V

    return-void
.end method


# virtual methods
.method public final c()Lkotlin/Unit;
    .locals 1

    iget-object p0, p0, Landroidx/paging/compose/LazyPagingItems$pagingDataPresenter$1;->m:Landroidx/paging/compose/LazyPagingItems;

    iget-object v0, p0, Landroidx/paging/compose/LazyPagingItems;->c:Landroidx/paging/compose/LazyPagingItems$pagingDataPresenter$1;

    invoke-virtual {v0}, Landroidx/paging/PagingDataPresenter;->d()Landroidx/paging/ItemSnapshotList;

    move-result-object v0

    iget-object p0, p0, Landroidx/paging/compose/LazyPagingItems;->d:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
