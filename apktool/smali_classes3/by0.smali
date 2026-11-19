.class public final synthetic Lby0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

.field public final synthetic d:Ljava/util/concurrent/ConcurrentHashMap;

.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic f:Ljava/util/concurrent/ConcurrentHashMap;

.field public final synthetic g:Lcom/perfectcorp/common/network/ProgressCallback;

.field public final synthetic h:I

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/SkuHandler;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/perfectcorp/common/network/ProgressCallback;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lby0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lby0;->i:Ljava/lang/Object;

    iput-object p2, p0, Lby0;->c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-object p3, p0, Lby0;->j:Ljava/lang/Object;

    iput-object p4, p0, Lby0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p5, p0, Lby0;->f:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p6, p0, Lby0;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p7, p0, Lby0;->g:Lcom/perfectcorp/common/network/ProgressCallback;

    iput p8, p0, Lby0;->h:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;Lcom/perfectcorp/perfectlib/SkuDataForProtocol;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/ConcurrentHashMap;Lcom/perfectcorp/common/network/ProgressCallback;I)V
    .locals 1

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lby0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lby0;->c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-object p2, p0, Lby0;->i:Ljava/lang/Object;

    iput-object p3, p0, Lby0;->j:Ljava/lang/Object;

    iput-object p4, p0, Lby0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p5, p0, Lby0;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p6, p0, Lby0;->f:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p7, p0, Lby0;->g:Lcom/perfectcorp/common/network/ProgressCallback;

    iput p8, p0, Lby0;->h:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Lby0;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lby0;->c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iget-object v1, p0, Lby0;->i:Ljava/lang/Object;

    check-cast v1, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;

    iget-object v2, p0, Lby0;->j:Ljava/lang/Object;

    check-cast v2, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;

    iget-object v3, p0, Lby0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p0, Lby0;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v5, p0, Lby0;->f:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v6, p0, Lby0;->g:Lcom/perfectcorp/common/network/ProgressCallback;

    iget p0, p0, Lby0;->h:I

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    const-string v0, "SkuHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Download IDC failed. GUID="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, v2, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v7, v2, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->f:Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;

    invoke-interface {v1}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;->a()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v7

    sget-object v8, Lcom/perfectcorp/common/utility/MoreCollections;->a:Ljava/util/Set;

    if-nez v7, :cond_0

    sget-object v7, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    :cond_0
    invoke-static {v7}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->t(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object v7

    invoke-virtual {v7}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->h()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;

    invoke-interface {v10, v9}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;->a(Ljava/lang/Object;)Ljava/util/Collection;

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/ArrayListMultimap;

    invoke-interface {v10, v9}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Multimap;->a(Ljava/lang/Object;)Ljava/util/Collection;

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10, v9}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "SkuHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Download SKU failed cause by "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol$DownloadComponent;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ". original GUID="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", SKU GUID="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-virtual {v5, v8, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Lrx0;

    const/4 v0, 0x7

    invoke-direct {p1, v6, v4, p0, v0}, Lrx0;-><init>(Lcom/perfectcorp/common/network/ProgressCallback;Ljava/util/concurrent/atomic/AtomicInteger;II)V

    invoke-static {p1}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    :cond_3
    const-string p0, ""

    return-object p0

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lby0;->i:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/SkuHandler;

    iget-object v1, p0, Lby0;->c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iget-object v2, p0, Lby0;->j:Ljava/lang/Object;

    check-cast v2, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget-object v3, p0, Lby0;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, p0, Lby0;->f:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, p0, Lby0;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v6, p0, Lby0;->g:Lcom/perfectcorp/common/network/ProgressCallback;

    iget p0, p0, Lby0;->h:I

    check-cast p1, Ljava/util/Map;

    const-string v7, ", SKU GUID="

    const-string v8, "SkuHandler"

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    sget-object v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v9, 0x0

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    if-nez v11, :cond_4

    invoke-virtual {v3, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "No SKU metadata. original GUID="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Lcom/perfectcorp/perfectlib/exceptions/SkuNotFoundException;

    const-string v12, "Can\'t find original GUID="

    invoke-static {v12, v9, v7, v10}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Lcom/perfectcorp/perfectlib/exceptions/SkuNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v1, v11}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    if-eqz v9, :cond_6

    new-instance p1, Lrx0;

    const/4 v2, 0x3

    invoke-direct {p1, v6, v5, p0, v2}, Lrx0;-><init>(Lcom/perfectcorp/common/network/ProgressCallback;Ljava/util/concurrent/atomic/AtomicInteger;II)V

    invoke-static {p1}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    :cond_6
    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    :goto_4
    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    goto :goto_5

    :cond_7
    :try_start_2
    iget-object p1, v0, Lcom/perfectcorp/perfectlib/SkuHandler;->b:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->i(Ljava/lang/Iterable;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Ljava/lang/String;Lcom/perfectcorp/perfectlib/x;)Lcom/perfectcorp/perfectlib/SkuDataForProtocol;

    move-result-object p1

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->e(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Parse template from metadata failed. skuIds="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    new-instance v1, Lxx0;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lxx0;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->r(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_5
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
