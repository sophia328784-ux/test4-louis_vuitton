.class public final synthetic Lix0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/SkuHandler;

.field public final synthetic d:Ljava/util/concurrent/ConcurrentHashMap;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic g:I

.field public final synthetic h:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

.field public final synthetic i:Z

.field public final synthetic j:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/SkuHandler;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;ZLjava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;Ljava/util/concurrent/atomic/AtomicInteger;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lix0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lix0;->c:Lcom/perfectcorp/perfectlib/SkuHandler;

    iput-object p2, p0, Lix0;->h:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-boolean p3, p0, Lix0;->i:Z

    iput-object p4, p0, Lix0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p5, p0, Lix0;->j:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p6, p0, Lix0;->e:Ljava/lang/Object;

    iput-object p7, p0, Lix0;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p8, p0, Lix0;->g:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/SkuHandler;Ljava/util/concurrent/ConcurrentHashMap;Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;Ljava/util/concurrent/atomic/AtomicInteger;ILcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;ZLjava/util/concurrent/ConcurrentHashMap;)V
    .locals 1

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lix0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lix0;->c:Lcom/perfectcorp/perfectlib/SkuHandler;

    iput-object p2, p0, Lix0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p3, p0, Lix0;->e:Ljava/lang/Object;

    iput-object p4, p0, Lix0;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p5, p0, Lix0;->g:I

    iput-object p6, p0, Lix0;->h:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-boolean p7, p0, Lix0;->i:Z

    iput-object p8, p0, Lix0;->j:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/SkuHandler;Ljava/util/concurrent/ConcurrentHashMap;ZLjava/util/concurrent/atomic/AtomicInteger;Lcom/perfectcorp/common/network/ProgressCallback;ILcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 1

    .line 24
    const/4 v0, 0x2

    iput v0, p0, Lix0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lix0;->c:Lcom/perfectcorp/perfectlib/SkuHandler;

    iput-object p2, p0, Lix0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iput-boolean p3, p0, Lix0;->i:Z

    iput-object p4, p0, Lix0;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lix0;->e:Ljava/lang/Object;

    iput p6, p0, Lix0;->g:I

    iput-object p7, p0, Lix0;->h:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-object p8, p0, Lix0;->j:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lix0;->b:I

    const/4 v2, 0x0

    iget-object v3, v0, Lix0;->e:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    move-object v11, v3

    check-cast v11, Lcom/perfectcorp/common/network/ProgressCallback;

    move-object/from16 v1, p1

    check-cast v1, Ljava/util/Collection;

    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v3

    new-instance v4, Lyw0;

    const/16 v6, 0x18

    invoke-direct {v4, v6}, Lyw0;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v9

    new-instance v3, Lld;

    const/4 v8, 0x2

    iget-object v4, v0, Lix0;->c:Lcom/perfectcorp/perfectlib/SkuHandler;

    iget-object v6, v0, Lix0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iget-boolean v7, v0, Lix0;->i:Z

    invoke-direct/range {v3 .. v8}, Lld;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/io/Serializable;ZI)V

    move-object v13, v6

    move v14, v7

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v6, v9, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-virtual {v6}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v6

    new-instance v7, Luw;

    const/4 v8, 0x1

    invoke-direct {v7, v8, v3}, Luw;-><init>(ILjava/util/Set;)V

    invoke-virtual {v6, v7}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->i(Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->p()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v15

    invoke-static {v15}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v3

    new-instance v6, Lxx0;

    invoke-direct {v6, v8}, Lxx0;-><init>(I)V

    invoke-virtual {v3, v6}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->r(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->p()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v10, v0, Lix0;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v12, v0, Lix0;->g:I

    if-lez v1, :cond_1

    invoke-virtual {v10, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    new-instance v1, Lrx0;

    invoke-direct {v1, v11, v10, v12, v8}, Lrx0;-><init>(Lcom/perfectcorp/common/network/ProgressCallback;Ljava/util/concurrent/atomic/AtomicInteger;II)V

    invoke-static {v1}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    :cond_1
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->empty()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/SkuHandler;->e()Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    move-result-object v3

    new-instance v6, Lzw0;

    const/4 v8, 0x2

    invoke-direct {v6, v7, v8}, Lzw0;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;I)V

    new-instance v8, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {v8, v3, v6}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v3, Lzw0;

    const/4 v6, 0x3

    invoke-direct {v3, v7, v6}, Lzw0;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;I)V

    new-instance v6, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/v;

    invoke-direct {v6, v8, v3, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/v;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;Ljava/lang/Object;)V

    move-object v8, v5

    move-object v5, v4

    new-instance v4, Lby0;

    move-object v2, v6

    iget-object v6, v0, Lix0;->h:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iget-object v9, v0, Lix0;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct/range {v4 .. v12}, Lby0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/perfectcorp/common/network/ProgressCallback;I)V

    move-object v0, v5

    move-object v5, v8

    move-object v8, v10

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v3, v2, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v4, Lcy0;

    move-object v7, v5

    move-object v10, v13

    move-object v5, v0

    move v13, v12

    move-object v12, v11

    move v11, v14

    move-object v14, v9

    move-object v9, v1

    invoke-direct/range {v4 .. v15}, Lcy0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/concurrent/ConcurrentHashMap;ZLcom/perfectcorp/common/network/ProgressCallback;ILjava/util/concurrent/ConcurrentHashMap;Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {v0, v3, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->l()Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->observeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_0
    move-object v4, v3

    check-cast v4, Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;

    move-object/from16 v2, p1

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v1

    new-instance v3, Lyw0;

    const/16 v5, 0xb

    invoke-direct {v3, v5}, Lyw0;-><init>(I)V

    invoke-virtual {v1, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v1

    new-instance v3, Lyw0;

    const/16 v5, 0x8

    invoke-direct {v3, v5}, Lyw0;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/d;

    invoke-direct {v5, v1, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/d;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v1, Lzy0;

    const/4 v3, 0x6

    invoke-direct {v1, v3}, Lzy0;-><init>(I)V

    invoke-virtual {v5, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->concatMapIterable(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v1

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v5, Lyw0;

    const/16 v6, 0xc

    invoke-direct {v5, v6}, Lyw0;-><init>(I)V

    invoke-virtual {v1, v3, v5}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->collectInto(Ljava/lang/Object;Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiConsumer;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v8

    new-instance v1, Lta0;

    const/4 v7, 0x2

    iget-object v3, v0, Lix0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, v0, Lix0;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v6, v0, Lix0;->g:I

    invoke-direct/range {v1 .. v7}, Lta0;-><init>(Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;II)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/d;

    invoke-direct {v10, v8, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/mixed/d;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v1, Lix0;

    iget-object v2, v0, Lix0;->c:Lcom/perfectcorp/perfectlib/SkuHandler;

    move-object v8, v5

    move-object v5, v3

    iget-object v3, v0, Lix0;->h:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    move-object v7, v4

    iget-boolean v4, v0, Lix0;->i:Z

    move v9, v6

    iget-object v6, v0, Lix0;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct/range {v1 .. v9}, Lix0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;ZLjava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;Ljava/util/concurrent/atomic/AtomicInteger;I)V

    invoke-virtual {v10, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    return-object v0

    :pswitch_1
    move-object v6, v3

    check-cast v6, Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;

    move-object/from16 v1, p1

    check-cast v1, Landroid/util/Pair;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;

    move-object v7, v4

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->skuSetId:Ljava/lang/String;

    invoke-static {v4}, Lcom/perfectcorp/perfectlib/ph/template/e$e;->e(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v3

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v5

    iget-object v8, v0, Lix0;->c:Lcom/perfectcorp/perfectlib/SkuHandler;

    iget-object v9, v0, Lix0;->h:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    if-eqz v5, :cond_4

    iget-wide v10, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->lastModified:J

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;

    iget-wide v12, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/skuset/a;->e:J

    cmp-long v3, v10, v12

    if-lez v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->a()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v1

    new-instance v3, Lyw0;

    const/16 v5, 0x14

    invoke-direct {v3, v5}, Lyw0;-><init>(I)V

    invoke-virtual {v1, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v1

    new-instance v3, Lp3;

    const/16 v5, 0x1d

    invoke-direct {v3, v8, v9, v5}, Lp3;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v1

    goto :goto_3

    :cond_4
    :goto_2
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v3, Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;->UPDATE_FIRST:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget-object v5, v8, Lcom/perfectcorp/perfectlib/SkuHandler;->b:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    sget-object v8, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->LOW:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-static {v1, v3, v5, v9, v8}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->i(Ljava/util/List;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v1

    :goto_3
    new-instance v3, Lvx0;

    iget-boolean v5, v0, Lix0;->i:Z

    move-object v9, v6

    iget-object v6, v0, Lix0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v8, v0, Lix0;->j:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v10, v0, Lix0;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v11, v0, Lix0;->g:I

    invoke-direct/range {v3 .. v11}, Lvx0;-><init>(Ljava/lang/String;ZLjava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;Ljava/util/concurrent/atomic/AtomicInteger;I)V

    move-object v5, v6

    move v8, v11

    invoke-virtual {v1, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object v0

    new-instance v3, Lta0;

    move-object v6, v9

    const/4 v9, 0x5

    move-object v4, v7

    move-object v7, v10

    invoke-direct/range {v3 .. v9}, Lta0;-><init>(Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;II)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/v;

    invoke-direct {v1, v0, v3, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/v;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;Ljava/lang/Object;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
