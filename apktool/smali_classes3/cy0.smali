.class public final synthetic Lcy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/SkuHandler;

.field public final synthetic d:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

.field public final synthetic e:Ljava/util/concurrent/ConcurrentHashMap;

.field public final synthetic f:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic g:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final synthetic h:Ljava/util/concurrent/ConcurrentHashMap;

.field public final synthetic i:Z

.field public final synthetic j:Lcom/perfectcorp/common/network/ProgressCallback;

.field public final synthetic k:I

.field public final synthetic l:Ljava/util/concurrent/ConcurrentHashMap;

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/SkuHandler;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/perfectlib/SkuDataForProtocol;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/concurrent/ConcurrentHashMap;ZLcom/perfectcorp/common/network/ProgressCallback;ILjava/util/concurrent/ConcurrentHashMap;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcy0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcy0;->c:Lcom/perfectcorp/perfectlib/SkuHandler;

    iput-object p2, p0, Lcy0;->d:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-object p3, p0, Lcy0;->m:Ljava/lang/Object;

    iput-object p4, p0, Lcy0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p5, p0, Lcy0;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p6, p0, Lcy0;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p7, p0, Lcy0;->h:Ljava/util/concurrent/ConcurrentHashMap;

    iput-boolean p8, p0, Lcy0;->i:Z

    iput-object p9, p0, Lcy0;->j:Lcom/perfectcorp/common/network/ProgressCallback;

    iput p10, p0, Lcy0;->k:I

    iput-object p11, p0, Lcy0;->l:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/SkuHandler;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/concurrent/ConcurrentHashMap;ZLcom/perfectcorp/common/network/ProgressCallback;ILjava/util/concurrent/ConcurrentHashMap;Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;)V
    .locals 1

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcy0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcy0;->c:Lcom/perfectcorp/perfectlib/SkuHandler;

    iput-object p2, p0, Lcy0;->d:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-object p3, p0, Lcy0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p4, p0, Lcy0;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lcy0;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p6, p0, Lcy0;->h:Ljava/util/concurrent/ConcurrentHashMap;

    iput-boolean p7, p0, Lcy0;->i:Z

    iput-object p8, p0, Lcy0;->j:Lcom/perfectcorp/common/network/ProgressCallback;

    iput p9, p0, Lcy0;->k:I

    iput-object p10, p0, Lcy0;->l:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p11, p0, Lcy0;->m:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lcy0;->b:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    iget-object v4, v0, Lcy0;->c:Lcom/perfectcorp/perfectlib/SkuHandler;

    iget-object v5, v0, Lcy0;->d:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iget-object v1, v0, Lcy0;->m:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;

    iget-object v8, v0, Lcy0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v9, v0, Lcy0;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v10, v0, Lcy0;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v11, v0, Lcy0;->h:Ljava/util/concurrent/ConcurrentHashMap;

    iget-boolean v12, v0, Lcy0;->i:Z

    iget-object v13, v0, Lcy0;->j:Lcom/perfectcorp/common/network/ProgressCallback;

    iget v14, v0, Lcy0;->k:I

    iget-object v0, v0, Lcy0;->l:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v7, p1

    check-cast v7, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;

    new-instance v1, Lny0;

    const/4 v3, 0x2

    invoke-direct {v1, v5, v7, v3}, Lny0;-><init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;I)V

    new-instance v3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v3, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/utility/FileDownloader;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {v3, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object v1

    new-instance v3, Lvy0;

    invoke-direct/range {v3 .. v14}, Lvy0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/perfectlib/SkuDataForProtocol;Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/concurrent/ConcurrentHashMap;ZLcom/perfectcorp/common/network/ProgressCallback;I)V

    move-object v12, v13

    invoke-virtual {v1, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object v1

    move-object v10, v9

    move-object v9, v8

    move-object v8, v6

    move-object v6, v5

    new-instance v5, Lby0;

    move-object v11, v0

    move v13, v14

    invoke-direct/range {v5 .. v13}, Lby0;-><init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;Lcom/perfectcorp/perfectlib/SkuDataForProtocol;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/ConcurrentHashMap;Lcom/perfectcorp/common/network/ProgressCallback;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/v;

    invoke-direct {v0, v1, v5, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/v;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;Ljava/lang/Object;)V

    return-object v0

    :pswitch_0
    iget-object v7, v0, Lcy0;->c:Lcom/perfectcorp/perfectlib/SkuHandler;

    iget-object v1, v0, Lcy0;->d:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iget-object v3, v0, Lcy0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, v0, Lcy0;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v5, v0, Lcy0;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v9, v0, Lcy0;->h:Ljava/util/concurrent/ConcurrentHashMap;

    iget-boolean v14, v0, Lcy0;->i:Z

    iget-object v15, v0, Lcy0;->j:Lcom/perfectcorp/common/network/ProgressCallback;

    iget v6, v0, Lcy0;->k:I

    iget-object v8, v0, Lcy0;->l:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, v0, Lcy0;->m:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    move-object/from16 v10, p1

    check-cast v10, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    invoke-virtual {v10}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v10}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    iget-object v11, v10, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->a:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-object v13, v10, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;

    invoke-virtual {v13}, Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;->h()Ljava/util/Map;

    move-result-object v13

    iget-object v2, v10, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    move-object/from16 v17, v7

    if-eqz v16, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Ljava/lang/String;

    invoke-interface {v13, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/Collection;

    invoke-static/range {v16 .. v16}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v18, v0

    const-string v0, "SkuDataForProtocol"

    move-object/from16 v16, v1

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 p1, v2

    const-string v2, "SKU contains no DownloadComponent. skuGuid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    move-object/from16 v18, v0

    move-object/from16 v16, v1

    move-object/from16 p1, v2

    :goto_1
    move-object/from16 v2, p1

    move-object/from16 v1, v16

    move-object/from16 v7, v17

    move-object/from16 v0, v18

    goto :goto_0

    :cond_1
    move-object/from16 v18, v0

    move-object/from16 v16, v1

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v2, v12

    invoke-virtual {v10, v1}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    move-result-object v12

    iget-object v7, v12, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->type:Ljava/lang/String;

    invoke-static {v7}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->c(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-result-object v11

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "SkuHandler"

    move-object/from16 p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v19, v2

    const-string v2, "SKU no needs to download IDC. original GUID="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", SKU GUID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v2, v13, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move v13, v6

    new-instance v6, Loy0;

    move-object v0, v10

    move-object v10, v7

    const/4 v7, 0x0

    move-object/from16 v1, v17

    move-object/from16 v17, v8

    move-object v8, v1

    move-object v1, v0

    move v0, v13

    move v13, v14

    move v14, v2

    move-object/from16 v2, v19

    invoke-direct/range {v6 .. v13}, Loy0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    move-object v7, v8

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    move v6, v0

    move-object v10, v1

    move-object v12, v2

    move v14, v13

    move-object/from16 v8, v17

    move-object/from16 v0, p1

    move-object/from16 v17, v7

    goto :goto_2

    :cond_2
    move v0, v6

    move-object v1, v10

    move-object v2, v12

    move v13, v14

    move-object/from16 v7, v17

    const/4 v14, 0x3

    move-object/from16 v17, v8

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Lrx0;

    const/4 v8, 0x4

    invoke-direct {v6, v15, v4, v0, v8}, Lrx0;-><init>(Lcom/perfectcorp/common/network/ProgressCallback;Ljava/util/concurrent/atomic/AtomicInteger;II)V

    invoke-static {v6}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    const-string v6, "SkuHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "SkuIdsWithoutDownloadComponent="

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v6, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, v1, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->j:Ljava/util/Set;

    invoke-static {v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v2

    new-instance v6, Lcy0;

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move v14, v13

    move-object/from16 v8, v16

    move/from16 v16, v0

    move-object v13, v9

    move-object v9, v1

    invoke-direct/range {v6 .. v17}, Lcy0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/perfectlib/SkuDataForProtocol;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/concurrent/ConcurrentHashMap;ZLcom/perfectcorp/common/network/ProgressCallback;ILjava/util/concurrent/ConcurrentHashMap;)V

    move-object v0, v9

    move-object v10, v11

    move/from16 v13, v16

    invoke-virtual {v2, v6}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v1

    new-instance v2, Ltw0;

    const/4 v3, 0x1

    invoke-direct {v2, v8, v0, v12, v3}, Ltw0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object v0

    new-instance v8, Lta0;

    const/4 v14, 0x6

    move-object v12, v15

    move-object/from16 v11, v17

    move-object/from16 v9, v18

    invoke-direct/range {v8 .. v14}, Lta0;-><init>(Ljava/util/Collection;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/ConcurrentHashMap;Lcom/perfectcorp/common/network/ProgressCallback;II)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/v;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v8, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/v;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;Ljava/lang/Object;)V

    goto :goto_4

    :goto_3
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object v1

    :goto_4
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
