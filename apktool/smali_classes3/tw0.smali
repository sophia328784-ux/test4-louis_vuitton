.class public final synthetic Ltw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Ltw0;->a:I

    iput-object p1, p0, Ltw0;->b:Ljava/lang/Object;

    iput-object p2, p0, Ltw0;->c:Ljava/lang/Object;

    iput-object p3, p0, Ltw0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 11

    iget v0, p0, Ltw0;->a:I

    iget-object v1, p0, Ltw0;->d:Ljava/lang/Object;

    iget-object v2, p0, Ltw0;->c:Ljava/lang/Object;

    iget-object p0, p0, Ltw0;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/perfectcorp/perfectlib/SkuHandler;

    check-cast v2, Lcom/perfectcorp/perfectlib/PerfectEffect;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkuHandler;->d:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/SkuHandler$ListStatus;

    invoke-interface {p0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_0
    check-cast p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    check-cast v2, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;

    check-cast v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/SkuDataForProtocol;->k()V

    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_1
    check-cast p0, Ljava/util/List;

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v1, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

    check-cast p1, Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " product metadata queried"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    const-string v4, "SkinCare3RecommendationHandler"

    invoke-static {v3, v4, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/a;->d:Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/a;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "ProductId"

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7, v7}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->h(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    :try_start_0
    iget-object v6, v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->c:[Ljava/lang/String;

    invoke-virtual {v0, v5, v7, v7, v6}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->m(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v7}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v5, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;-><init>()V

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v7, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c;->a:Ljava/lang/String;

    invoke-virtual {v5, v7, v6}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-virtual {v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;->a()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a;

    invoke-interface {p0, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c;

    if-eqz v7, :cond_3

    iget-wide v7, v7, Lcom/perfectcorp/perfectlib/rh/database/ymk/skincare/c;->c:J

    iget-wide v9, v5, Lcom/perfectcorp/perfectlib/rh/kernelctrl/networktaskmanager/skincare/e$a;->lastModified:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_2

    :cond_3
    invoke-virtual {v2, v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " new products; "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " removed products"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v4, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/perfectcorp/perfectlib/y3;

    const/4 p1, 0x6

    invoke-direct {p0, v1, p1}, Lcom/perfectcorp/perfectlib/y3;-><init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;I)V

    invoke-static {p0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    goto :goto_3

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, ". To index multiple values under a key, use Multimaps.index."

    invoke-static {p0, p1}, La61;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    iget-object p1, v0, Lcom/perfectcorp/perfectlib/hc/database/ymk/BaseDao;->a:Ljava/lang/String;

    const-string v0, "[getAll] failed"

    invoke-static {p1, v0, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {v7}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
