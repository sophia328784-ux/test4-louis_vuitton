.class public final Landroidx/paging/PageFetcherSnapshotState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/paging/PageFetcherSnapshotState$Holder;,
        Landroidx/paging/PageFetcherSnapshotState$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u0001*\u0008\u0008\u0001\u0010\u0003*\u00020\u00012\u00020\u0001:\u0001\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Landroidx/paging/PageFetcherSnapshotState;",
        "",
        "Key",
        "Value",
        "Holder",
        "paging-common_release"
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
.field public final a:Landroidx/paging/PagingConfig;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public final i:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final j:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final k:Ljava/util/LinkedHashMap;

.field public final l:Landroidx/paging/MutableLoadStateCollection;


# direct methods
.method public constructor <init>(Landroidx/paging/PagingConfig;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/paging/PageFetcherSnapshotState;->a:Landroidx/paging/PagingConfig;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/paging/PageFetcherSnapshotState;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Landroidx/paging/PageFetcherSnapshotState;->c:Ljava/util/ArrayList;

    const/4 p1, -0x1

    const/4 p2, 0x6

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v1

    iput-object v1, p0, Landroidx/paging/PageFetcherSnapshotState;->i:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p1, p2, v0}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object p1

    iput-object p1, p0, Landroidx/paging/PageFetcherSnapshotState;->j:Lkotlinx/coroutines/channels/BufferedChannel;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/paging/PageFetcherSnapshotState;->k:Ljava/util/LinkedHashMap;

    new-instance p1, Landroidx/paging/MutableLoadStateCollection;

    invoke-direct {p1}, Landroidx/paging/MutableLoadStateCollection;-><init>()V

    sget-object p2, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    sget-object v0, Landroidx/paging/LoadState$Loading;->b:Landroidx/paging/LoadState$Loading;

    invoke-virtual {p1, p2, v0}, Landroidx/paging/MutableLoadStateCollection;->c(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V

    iput-object p1, p0, Landroidx/paging/PageFetcherSnapshotState;->l:Landroidx/paging/MutableLoadStateCollection;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/paging/ViewportHint$Access;)Landroidx/paging/PagingState;
    .locals 9

    iget-object v0, p0, Landroidx/paging/PageFetcherSnapshotState;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->y0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroidx/paging/PageFetcherSnapshotState;->a:Landroidx/paging/PagingConfig;

    if-eqz p1, :cond_3

    iget v3, p1, Landroidx/paging/ViewportHint$Access;->e:I

    invoke-virtual {p0}, Landroidx/paging/PageFetcherSnapshotState;->d()I

    move-result v4

    iget v5, p0, Landroidx/paging/PageFetcherSnapshotState;->d:I

    neg-int v5, v5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Landroidx/paging/PageFetcherSnapshotState;->d:I

    sub-int/2addr v6, v7

    move v7, v5

    :goto_0
    if-ge v7, v3, :cond_1

    if-le v7, v6, :cond_0

    iget v8, v2, Landroidx/paging/PagingConfig;->a:I

    goto :goto_1

    :cond_0
    iget v8, p0, Landroidx/paging/PageFetcherSnapshotState;->d:I

    add-int/2addr v8, v7

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/paging/PagingSource$LoadResult$Page;

    iget-object v8, v8, Landroidx/paging/PagingSource$LoadResult$Page;->b:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    :goto_1
    add-int/2addr v4, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    iget p1, p1, Landroidx/paging/ViewportHint$Access;->f:I

    add-int/2addr v4, p1

    if-ge v3, v5, :cond_2

    iget p1, v2, Landroidx/paging/PagingConfig;->a:I

    sub-int/2addr v4, p1

    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {p0}, Landroidx/paging/PageFetcherSnapshotState;->d()I

    move-result p0

    new-instance v0, Landroidx/paging/PagingState;

    invoke-direct {v0, v1, p1, v2, p0}, Landroidx/paging/PagingState;-><init>(Ljava/util/List;Ljava/lang/Integer;Landroidx/paging/PagingConfig;I)V

    return-object v0
.end method

.method public final b(Landroidx/paging/PageEvent$Drop;)V
    .locals 8

    invoke-virtual {p1}, Landroidx/paging/PageEvent$Drop;->a()I

    move-result v0

    iget v1, p1, Landroidx/paging/PageEvent$Drop;->d:I

    iget-object v2, p1, Landroidx/paging/PageEvent$Drop;->a:Landroidx/paging/LoadType;

    iget-object v3, p0, Landroidx/paging/PageFetcherSnapshotState;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v0, v4, :cond_6

    iget-object v0, p0, Landroidx/paging/PageFetcherSnapshotState;->k:Ljava/util/LinkedHashMap;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidx/paging/LoadState$NotLoading;->b:Landroidx/paging/LoadState$NotLoading$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/paging/LoadState$NotLoading;->d:Landroidx/paging/LoadState$NotLoading;

    iget-object v4, p0, Landroidx/paging/PageFetcherSnapshotState;->l:Landroidx/paging/MutableLoadStateCollection;

    invoke-virtual {v4, v2, v0}, Landroidx/paging/MutableLoadStateCollection;->c(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V

    sget-object v0, Landroidx/paging/PageFetcherSnapshotState$WhenMappings;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v0, v0, v4

    const/4 v4, 0x2

    const/high16 v5, -0x80000000

    iget-object v6, p0, Landroidx/paging/PageFetcherSnapshotState;->b:Ljava/util/ArrayList;

    const/4 v7, 0x0

    if-eq v0, v4, :cond_3

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    invoke-virtual {p1}, Landroidx/paging/PageEvent$Drop;->a()I

    move-result p1

    move v0, v7

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-ne v1, v5, :cond_1

    move v1, v7

    :cond_1
    iput v1, p0, Landroidx/paging/PageFetcherSnapshotState;->f:I

    iget p1, p0, Landroidx/paging/PageFetcherSnapshotState;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/paging/PageFetcherSnapshotState;->h:I

    iget-object p0, p0, Landroidx/paging/PageFetcherSnapshotState;->j:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    const-string p0, "cannot drop "

    invoke-static {v2, p0}, Laz;->m(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Landroidx/paging/PageEvent$Drop;->a()I

    move-result v0

    move v2, v7

    :goto_1
    if-ge v2, v0, :cond_4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget v0, p0, Landroidx/paging/PageFetcherSnapshotState;->d:I

    invoke-virtual {p1}, Landroidx/paging/PageEvent$Drop;->a()I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/paging/PageFetcherSnapshotState;->d:I

    if-ne v1, v5, :cond_5

    move v1, v7

    :cond_5
    iput v1, p0, Landroidx/paging/PageFetcherSnapshotState;->e:I

    iget p1, p0, Landroidx/paging/PageFetcherSnapshotState;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/paging/PageFetcherSnapshotState;->g:I

    iget-object p0, p0, Landroidx/paging/PageFetcherSnapshotState;->i:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p1}, Landroidx/paging/PageEvent$Drop;->a()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid drop count. have "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " but wanted to drop "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Landroidx/paging/LoadType;Landroidx/paging/ViewportHint;)Landroidx/paging/PageEvent$Drop;
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/paging/PageFetcherSnapshotState;->a:Landroidx/paging/PagingConfig;

    iget v1, v0, Landroidx/paging/PagingConfig;->e:I

    iget v2, v0, Landroidx/paging/PagingConfig;->e:I

    const v3, 0x7fffffff

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v1, p0, Landroidx/paging/PageFetcherSnapshotState;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x2

    if-gt v3, v5, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/paging/PagingSource$LoadResult$Page;

    iget-object v8, v8, Landroidx/paging/PagingSource$LoadResult$Page;->b:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_0

    :cond_2
    if-gt v7, v2, :cond_3

    goto/16 :goto_6

    :cond_3
    sget-object v3, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    if-eq p1, v3, :cond_e

    move v3, v6

    move v7, v3

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v6

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/paging/PagingSource$LoadResult$Page;

    iget-object v10, v10, Landroidx/paging/PagingSource$LoadResult$Page;->b:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_2

    :cond_4
    sub-int/2addr v9, v7

    if-le v9, v2, :cond_7

    sget-object v8, Landroidx/paging/PageFetcherSnapshotState$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v8, v9

    if-ne v9, v5, :cond_5

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/paging/PagingSource$LoadResult$Page;

    iget-object v9, v9, Landroidx/paging/PagingSource$LoadResult$Page;->b:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    goto :goto_3

    :cond_5
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->F(Ljava/util/List;)I

    move-result v9

    sub-int/2addr v9, v3

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/paging/PagingSource$LoadResult$Page;

    iget-object v9, v9, Landroidx/paging/PagingSource$LoadResult$Page;->b:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v8, v8, v10

    if-ne v8, v5, :cond_6

    iget v8, p2, Landroidx/paging/ViewportHint;->a:I

    :goto_4
    sub-int/2addr v8, v7

    sub-int/2addr v8, v9

    goto :goto_5

    :cond_6
    iget v8, p2, Landroidx/paging/ViewportHint;->b:I

    goto :goto_4

    :goto_5
    iget v10, v0, Landroidx/paging/PagingConfig;->b:I

    if-lt v8, v10, :cond_7

    add-int/2addr v7, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    if-nez v3, :cond_8

    :goto_6
    return-object v4

    :cond_8
    new-instance p2, Landroidx/paging/PageEvent$Drop;

    sget-object v2, Landroidx/paging/PageFetcherSnapshotState$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v2, v4

    if-ne v4, v5, :cond_9

    iget v4, p0, Landroidx/paging/PageFetcherSnapshotState;->d:I

    neg-int v4, v4

    goto :goto_7

    :cond_9
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->F(Ljava/util/List;)I

    move-result v4

    iget v8, p0, Landroidx/paging/PageFetcherSnapshotState;->d:I

    sub-int/2addr v4, v8

    add-int/lit8 v8, v3, -0x1

    sub-int/2addr v4, v8

    :goto_7
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v2, v2, v8

    if-ne v2, v5, :cond_a

    add-int/lit8 v3, v3, -0x1

    iget v1, p0, Landroidx/paging/PageFetcherSnapshotState;->d:I

    sub-int/2addr v3, v1

    goto :goto_8

    :cond_a
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->F(Ljava/util/List;)I

    move-result v1

    iget v2, p0, Landroidx/paging/PageFetcherSnapshotState;->d:I

    sub-int v3, v1, v2

    :goto_8
    iget-boolean v1, v0, Landroidx/paging/PagingConfig;->c:Z

    if-nez v1, :cond_b

    goto :goto_9

    :cond_b
    sget-object v1, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    if-ne p1, v1, :cond_c

    invoke-virtual {p0}, Landroidx/paging/PageFetcherSnapshotState;->d()I

    move-result p0

    add-int v6, p0, v7

    goto :goto_9

    :cond_c
    iget-boolean v0, v0, Landroidx/paging/PagingConfig;->c:Z

    if-eqz v0, :cond_d

    iget v6, p0, Landroidx/paging/PageFetcherSnapshotState;->f:I

    :cond_d
    add-int/2addr v6, v7

    :goto_9
    invoke-direct {p2, p1, v4, v3, v6}, Landroidx/paging/PageEvent$Drop;-><init>(Landroidx/paging/LoadType;III)V

    return-object p2

    :cond_e
    const-string p0, "Drop LoadType must be PREPEND or APPEND, but got "

    invoke-static {p1, p0}, Ltg0;->n(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Landroidx/paging/PageFetcherSnapshotState;->a:Landroidx/paging/PagingConfig;

    iget-boolean v0, v0, Landroidx/paging/PagingConfig;->c:Z

    if-eqz v0, :cond_0

    iget p0, p0, Landroidx/paging/PageFetcherSnapshotState;->e:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final e(ILandroidx/paging/LoadType;Landroidx/paging/PagingSource$LoadResult$Page;)Z
    .locals 10

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p3, Landroidx/paging/PagingSource$LoadResult$Page;->e:I

    iget-object v1, p3, Landroidx/paging/PagingSource$LoadResult$Page;->b:Ljava/util/List;

    iget v2, p3, Landroidx/paging/PagingSource$LoadResult$Page;->f:I

    sget-object v3, Landroidx/paging/PageFetcherSnapshotState$WhenMappings;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v3, p2

    const/high16 v3, -0x80000000

    iget-object v4, p0, Landroidx/paging/PageFetcherSnapshotState;->b:Ljava/util/ArrayList;

    iget-object v5, p0, Landroidx/paging/PageFetcherSnapshotState;->c:Ljava/util/ArrayList;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq p2, v7, :cond_d

    const/4 v8, 0x2

    iget-object v9, p0, Landroidx/paging/PageFetcherSnapshotState;->k:Ljava/util/LinkedHashMap;

    if-eq p2, v8, :cond_7

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    return v7

    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    iget p2, p0, Landroidx/paging/PageFetcherSnapshotState;->h:I

    if-eq p1, p2, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v2, v3, :cond_4

    iget-object p1, p0, Landroidx/paging/PageFetcherSnapshotState;->a:Landroidx/paging/PagingConfig;

    iget-boolean p1, p1, Landroidx/paging/PagingConfig;->c:Z

    if-eqz p1, :cond_2

    iget p1, p0, Landroidx/paging/PageFetcherSnapshotState;->f:I

    goto :goto_0

    :cond_2
    move p1, v6

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p1, p2

    if-gez p1, :cond_3

    move v2, v6

    goto :goto_1

    :cond_3
    move v2, p1

    :cond_4
    :goto_1
    if-ne v2, v3, :cond_5

    goto :goto_2

    :cond_5
    move v6, v2

    :goto_2
    iput v6, p0, Landroidx/paging/PageFetcherSnapshotState;->f:I

    sget-object p0, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    invoke-interface {v9, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v7

    :cond_6
    const-string p0, "should\'ve received an init before append"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return v6

    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_c

    iget p2, p0, Landroidx/paging/PageFetcherSnapshotState;->g:I

    if-eq p1, p2, :cond_8

    :goto_3
    return v6

    :cond_8
    invoke-virtual {v4, v6, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget p1, p0, Landroidx/paging/PageFetcherSnapshotState;->d:I

    add-int/2addr p1, v7

    iput p1, p0, Landroidx/paging/PageFetcherSnapshotState;->d:I

    if-ne v0, v3, :cond_a

    invoke-virtual {p0}, Landroidx/paging/PageFetcherSnapshotState;->d()I

    move-result p1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p1, p2

    if-gez p1, :cond_9

    move v0, v6

    goto :goto_4

    :cond_9
    move v0, p1

    :cond_a
    :goto_4
    if-ne v0, v3, :cond_b

    goto :goto_5

    :cond_b
    move v6, v0

    :goto_5
    iput v6, p0, Landroidx/paging/PageFetcherSnapshotState;->e:I

    sget-object p0, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    invoke-interface {v9, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v7

    :cond_c
    const-string p0, "should\'ve received an init before prepend"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return v6

    :cond_d
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_11

    if-nez p1, :cond_10

    invoke-virtual {v4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v6, p0, Landroidx/paging/PageFetcherSnapshotState;->d:I

    if-ne v2, v3, :cond_e

    move v2, v6

    :cond_e
    iput v2, p0, Landroidx/paging/PageFetcherSnapshotState;->f:I

    if-ne v0, v3, :cond_f

    move v0, v6

    :cond_f
    iput v0, p0, Landroidx/paging/PageFetcherSnapshotState;->e:I

    return v7

    :cond_10
    const-string p0, "init loadId must be the initial value, 0"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return v6

    :cond_11
    const-string p0, "cannot receive multiple init calls"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return v6
.end method

.method public final f(Landroidx/paging/PagingSource$LoadResult$Page;Landroidx/paging/LoadType;)Landroidx/paging/PageEvent$Insert;
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/paging/PageFetcherSnapshotState$WhenMappings;->a:[I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v2, v7, :cond_2

    if-eq v2, v6, :cond_1

    if-ne v2, v5, :cond_0

    iget-object v2, v0, Landroidx/paging/PageFetcherSnapshotState;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v8, v0, Landroidx/paging/PageFetcherSnapshotState;->d:I

    sub-int/2addr v2, v8

    sub-int/2addr v2, v7

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-object v3

    :cond_1
    iget v2, v0, Landroidx/paging/PageFetcherSnapshotState;->d:I

    rsub-int/lit8 v2, v2, 0x0

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    new-instance v8, Landroidx/paging/TransformablePage;

    move-object/from16 v9, p1

    iget-object v9, v9, Landroidx/paging/PagingSource$LoadResult$Page;->b:Ljava/util/List;

    invoke-direct {v8, v2, v9}, Landroidx/paging/TransformablePage;-><init>(ILjava/util/List;)V

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    iget-object v2, v0, Landroidx/paging/PageFetcherSnapshotState;->a:Landroidx/paging/PagingConfig;

    iget-object v8, v0, Landroidx/paging/PageFetcherSnapshotState;->l:Landroidx/paging/MutableLoadStateCollection;

    if-eq v1, v7, :cond_6

    if-eq v1, v6, :cond_5

    if-ne v1, v5, :cond_4

    sget-object v1, Landroidx/paging/PageEvent$Insert;->g:Landroidx/paging/PageEvent$Insert$Companion;

    iget-boolean v2, v2, Landroidx/paging/PagingConfig;->c:Z

    if-eqz v2, :cond_3

    iget v4, v0, Landroidx/paging/PageFetcherSnapshotState;->f:I

    :cond_3
    move v14, v4

    invoke-virtual {v8}, Landroidx/paging/MutableLoadStateCollection;->d()Landroidx/paging/LoadStates;

    move-result-object v15

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Landroidx/paging/PageEvent$Insert;

    sget-object v11, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    const/4 v13, -0x1

    const/16 v17, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v10 .. v17}, Landroidx/paging/PageEvent$Insert;-><init>(Landroidx/paging/LoadType;Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v10

    :cond_4
    invoke-static {}, Lv40;->g()V

    return-object v3

    :cond_5
    sget-object v1, Landroidx/paging/PageEvent$Insert;->g:Landroidx/paging/PageEvent$Insert$Companion;

    invoke-virtual {v0}, Landroidx/paging/PageFetcherSnapshotState;->d()I

    move-result v13

    invoke-virtual {v8}, Landroidx/paging/MutableLoadStateCollection;->d()Landroidx/paging/LoadStates;

    move-result-object v15

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Landroidx/paging/PageEvent$Insert;

    sget-object v11, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    const/4 v14, -0x1

    const/16 v17, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v10 .. v17}, Landroidx/paging/PageEvent$Insert;-><init>(Landroidx/paging/LoadType;Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v10

    :cond_6
    sget-object v1, Landroidx/paging/PageEvent$Insert;->g:Landroidx/paging/PageEvent$Insert$Companion;

    invoke-virtual {v0}, Landroidx/paging/PageFetcherSnapshotState;->d()I

    move-result v5

    iget-boolean v2, v2, Landroidx/paging/PagingConfig;->c:Z

    if-eqz v2, :cond_7

    iget v4, v0, Landroidx/paging/PageFetcherSnapshotState;->f:I

    :cond_7
    invoke-virtual {v8}, Landroidx/paging/MutableLoadStateCollection;->d()Landroidx/paging/LoadStates;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12, v5, v4, v0, v3}, Landroidx/paging/PageEvent$Insert$Companion;->a(Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;)Landroidx/paging/PageEvent$Insert;

    move-result-object v0

    return-object v0
.end method
