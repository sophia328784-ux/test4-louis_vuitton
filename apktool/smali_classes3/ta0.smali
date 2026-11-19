.class public final synthetic Lta0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/io/Serializable;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/io/Serializable;

.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lta0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lta0;->f:I

    iput-object p2, p0, Lta0;->g:Ljava/lang/Object;

    iput-object p3, p0, Lta0;->c:Ljava/io/Serializable;

    iput-object p4, p0, Lta0;->d:Ljava/lang/Object;

    iput-object p5, p0, Lta0;->e:Ljava/io/Serializable;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;II)V
    .locals 0

    .line 17
    iput p6, p0, Lta0;->b:I

    iput-object p1, p0, Lta0;->g:Ljava/lang/Object;

    iput-object p2, p0, Lta0;->c:Ljava/io/Serializable;

    iput-object p3, p0, Lta0;->d:Ljava/lang/Object;

    iput-object p4, p0, Lta0;->e:Ljava/io/Serializable;

    iput p5, p0, Lta0;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Collection;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/ConcurrentHashMap;Lcom/perfectcorp/common/network/ProgressCallback;II)V
    .locals 0

    .line 18
    iput p6, p0, Lta0;->b:I

    iput-object p1, p0, Lta0;->g:Ljava/lang/Object;

    iput-object p2, p0, Lta0;->e:Ljava/io/Serializable;

    iput-object p3, p0, Lta0;->c:Ljava/io/Serializable;

    iput-object p4, p0, Lta0;->d:Ljava/lang/Object;

    iput p5, p0, Lta0;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;Ljava/util/concurrent/atomic/AtomicInteger;I)V
    .locals 1

    .line 19
    const/4 v0, 0x3

    iput v0, p0, Lta0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lta0;->c:Ljava/io/Serializable;

    iput-object p2, p0, Lta0;->g:Ljava/lang/Object;

    iput-object p3, p0, Lta0;->d:Ljava/lang/Object;

    iput-object p4, p0, Lta0;->e:Ljava/io/Serializable;

    iput p5, p0, Lta0;->f:I

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lta0;->b:I

    const-string v2, "LookHandler"

    const/4 v3, 0x1

    const-string v4, "SkuHandler"

    const/4 v5, 0x3

    iget v6, v0, Lta0;->f:I

    iget-object v7, v0, Lta0;->e:Ljava/io/Serializable;

    iget-object v8, v0, Lta0;->d:Ljava/lang/Object;

    iget-object v9, v0, Lta0;->c:Ljava/io/Serializable;

    iget-object v10, v0, Lta0;->g:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move-object v12, v10

    check-cast v12, Ljava/util/ArrayList;

    move-object v13, v9

    check-cast v13, Ljava/util/ArrayList;

    move-object v14, v8

    check-cast v14, Ljava/util/ArrayList;

    move-object v15, v7

    check-cast v15, Ljava/util/ArrayList;

    move-object/from16 v16, p1

    check-cast v16, Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] trigger #downloadPatternImages(); done"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IdSystemDataHelper"

    invoke-static {v5, v1, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v11, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i$a;

    invoke-direct/range {v11 .. v16}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/i$a;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    return-object v11

    :pswitch_1
    check-cast v10, Ljava/util/List;

    check-cast v7, Ljava/util/concurrent/atomic/AtomicInteger;

    check-cast v9, Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v8, Lcom/perfectcorp/common/network/ProgressCallback;

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Download SKU by GUID failed (insert DB). original GUID="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", SKU GUID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v9, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Lrx0;

    const/4 v1, 0x5

    invoke-direct {v0, v8, v7, v6, v1}, Lrx0;-><init>(Lcom/perfectcorp/common/network/ProgressCallback;Ljava/util/concurrent/atomic/AtomicInteger;II)V

    invoke-static {v0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :pswitch_2
    check-cast v10, Ljava/lang/String;

    check-cast v9, Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v8, Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;

    check-cast v7, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[downloadSkuSets] get downloaded SkuSetInfo failed, skuSetId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v9, v10, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lay0;

    invoke-direct {v0, v8, v7, v6, v3}, Lay0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;Ljava/util/concurrent/atomic/AtomicInteger;II)V

    invoke-static {v0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    :pswitch_3
    check-cast v10, Ljava/util/HashSet;

    check-cast v7, Ljava/util/concurrent/atomic/AtomicInteger;

    check-cast v9, Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v8, Lcom/perfectcorp/common/network/ProgressCallback;

    move-object/from16 v0, p1

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    new-instance v2, Lcom/perfectcorp/perfectlib/exceptions/ProductMappingFailedException;

    const-string v5, "Can\'t map GUID="

    invoke-static {v5, v4}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/perfectcorp/perfectlib/exceptions/ProductMappingFailedException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v3

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    new-instance v1, Lrx0;

    const/4 v2, 0x2

    invoke-direct {v1, v8, v7, v6, v2}, Lrx0;-><init>(Lcom/perfectcorp/common/network/ProgressCallback;Ljava/util/concurrent/atomic/AtomicInteger;II)V

    invoke-static {v1}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :pswitch_4
    check-cast v10, Ljava/util/List;

    move-object v13, v9

    check-cast v13, Ljava/util/concurrent/ConcurrentHashMap;

    move-object v14, v8

    check-cast v14, Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;

    move-object v15, v7

    check-cast v15, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v12, p1

    check-cast v12, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v10}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v1

    new-instance v11, Lta0;

    iget v0, v0, Lta0;->f:I

    move/from16 v16, v0

    invoke-direct/range {v11 .. v16}, Lta0;-><init>(Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;Ljava/util/concurrent/atomic/AtomicInteger;I)V

    invoke-virtual {v1, v11}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->filter(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lf8;

    invoke-direct {v1, v12, v5}, Lf8;-><init>(Ljava/util/concurrent/ConcurrentHashMap;I)V

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    return-object v0

    :pswitch_5
    check-cast v10, Ljava/lang/String;

    check-cast v9, Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v8, Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;

    check-cast v7, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Throwable;

    instance-of v1, v0, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[downloadLooks] download look failed. guid="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v9, v10, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8, v7, v6}, Lcom/perfectcorp/perfectlib/LookHandler;->b(Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;Ljava/util/concurrent/atomic/AtomicInteger;I)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v0

    return-object v0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[downloadLooks] canceled. guid="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_6
    check-cast v10, Ljava/util/ArrayList;

    check-cast v9, Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v8, Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;

    check-cast v7, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Get look metadata failed. guids="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v9, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8, v7, v6}, Lcom/perfectcorp/perfectlib/LookHandler;->b(Lcom/perfectcorp/perfectlib/LookHandler$DownloadLooksCallback;Ljava/util/concurrent/atomic/AtomicInteger;I)V

    goto :goto_2

    :cond_5
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 6

    iget-object v0, p0, Lta0;->c:Ljava/io/Serializable;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lta0;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lta0;->d:Ljava/lang/Object;

    check-cast v2, Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;

    iget-object v3, p0, Lta0;->e:Ljava/io/Serializable;

    check-cast v3, Ljava/util/concurrent/atomic/AtomicInteger;

    check-cast p1, Landroid/util/Pair;

    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "[downloadSkuSets] sku set not found, id="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SkuHandler"

    invoke-static {p1, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/exceptions/SkuSetNotFoundException;

    const-string p1, "Can\'t find SKU set GUID="

    invoke-static {p1, v4}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/exceptions/SkuSetNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/response/b$c;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/perfectcorp/perfectlib/exceptions/ContentIssueException;

    const-string v5, "SKU set item is empty."

    invoke-direct {p1, v5}, Lcom/perfectcorp/perfectlib/exceptions/ContentIssueException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lay0;

    const/4 v1, 0x2

    iget p0, p0, Lta0;->f:I

    invoke-direct {p1, v2, v3, p0, v1}, Lay0;-><init>(Lcom/perfectcorp/perfectlib/SkuHandler$DownloadSkuSetsCallback;Ljava/util/concurrent/atomic/AtomicInteger;II)V

    invoke-static {p1}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
