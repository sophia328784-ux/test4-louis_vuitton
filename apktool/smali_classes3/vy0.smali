.class public final synthetic Lvy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/perfectcorp/perfectlib/SkuHandler;

.field public final synthetic b:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

.field public final synthetic c:Lcom/perfectcorp/perfectlib/SkuDataForProtocol;

.field public final synthetic d:Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;

.field public final synthetic e:Ljava/util/concurrent/ConcurrentHashMap;

.field public final synthetic f:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic g:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final synthetic h:Ljava/util/concurrent/ConcurrentHashMap;

.field public final synthetic i:Z

.field public final synthetic j:Lcom/perfectcorp/common/network/ProgressCallback;

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/SkuHandler;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/perfectlib/SkuDataForProtocol;Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/concurrent/ConcurrentHashMap;ZLcom/perfectcorp/common/network/ProgressCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvy0;->a:Lcom/perfectcorp/perfectlib/SkuHandler;

    iput-object p2, p0, Lvy0;->b:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-object p3, p0, Lvy0;->c:Lcom/perfectcorp/perfectlib/SkuDataForProtocol;

    iput-object p4, p0, Lvy0;->d:Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;

    iput-object p5, p0, Lvy0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p6, p0, Lvy0;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p7, p0, Lvy0;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p8, p0, Lvy0;->h:Ljava/util/concurrent/ConcurrentHashMap;

    iput-boolean p9, p0, Lvy0;->i:Z

    iput-object p10, p0, Lvy0;->j:Lcom/perfectcorp/common/network/ProgressCallback;

    iput p11, p0, Lvy0;->k:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v2, v0, Lvy0;->a:Lcom/perfectcorp/perfectlib/SkuHandler;

    iget-object v1, v0, Lvy0;->b:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iget-object v8, v0, Lvy0;->c:Lcom/perfectcorp/perfectlib/SkuDataForProtocol;

    iget-object v9, v0, Lvy0;->d:Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;

    iget-object v10, v0, Lvy0;->e:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v11, v0, Lvy0;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v12, v0, Lvy0;->g:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v3, v0, Lvy0;->h:Ljava/util/concurrent/ConcurrentHashMap;

    iget-boolean v7, v0, Lvy0;->i:Z

    iget-object v13, v0, Lvy0;->j:Lcom/perfectcorp/common/network/ProgressCallback;

    iget v14, v0, Lvy0;->k:I

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    iget-object v1, v8, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-interface {v9}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v8, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;

    invoke-interface {v4, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v4

    sget-object v5, Lcom/perfectcorp/common/utility/MoreCollections;->a:Ljava/util/Set;

    if-nez v4, :cond_0

    sget-object v4, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    :cond_0
    invoke-static {v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->t(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->h()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v8, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->m:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v8, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;

    invoke-virtual {v6, v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v8, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->m:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    move-result-object v6

    iget-object v1, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->type:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->c(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-result-object v5

    invoke-virtual {v10, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SkuHandler"

    move-object/from16 v17, v2

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v18, v3

    const-string v3, "Download SKU success cause by "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". original GUID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", SKU GUID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v2, v1, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    new-instance v0, Loy0;

    const/4 v1, 0x1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct/range {v0 .. v7}, Loy0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {v12, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lrx0;

    const/4 v1, 0x6

    invoke-direct {v0, v13, v11, v14, v1}, Lrx0;-><init>(Lcom/perfectcorp/common/network/ProgressCallback;Ljava/util/concurrent/atomic/AtomicInteger;II)V

    invoke-static {v0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    :cond_4
    return-void

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
