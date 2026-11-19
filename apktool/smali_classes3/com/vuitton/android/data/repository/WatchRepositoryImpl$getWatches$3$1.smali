.class final Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/util/List<",
        "+",
        "Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.data.repository.WatchRepositoryImpl$getWatches$3$1"
    f = "WatchRepositoryImpl.kt"
    l = {
        0x41,
        0x4c
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/data/repository/WatchRepositoryImpl;

.field public c:Ljava/util/Collection;

.field public d:Ljava/util/Iterator;

.field public e:Lcom/vuitton/android/data/dto/connectivity/watch/WatchDto;

.field public f:Ljava/util/Collection;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public final synthetic n:Lcom/vuitton/android/data/repository/WatchRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/repository/WatchRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;->n:Lcom/vuitton/android/data/repository/WatchRepositoryImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;->n:Lcom/vuitton/android/data/repository/WatchRepositoryImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;-><init>(Lcom/vuitton/android/data/repository/WatchRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;->m:I

    iget-object v3, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;->n:Lcom/vuitton/android/data/repository/WatchRepositoryImpl;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v2, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    iget v2, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;->l:I

    iget v5, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;->k:I

    iget v6, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;->j:I

    iget v8, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;->i:I

    iget v9, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;->h:I

    iget-object v10, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;->g:Ljava/lang/String;

    iget-object v11, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;->f:Ljava/util/Collection;

    check-cast v11, Ljava/util/Collection;

    iget-object v12, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;->e:Lcom/vuitton/android/data/dto/connectivity/watch/WatchDto;

    iget-object v13, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;->d:Ljava/util/Iterator;

    iget-object v14, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;->c:Ljava/util/Collection;

    check-cast v14, Ljava/util/Collection;

    iget-object v15, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;->b:Lcom/vuitton/android/data/repository/WatchRepositoryImpl;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v7, p1

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_1
    iget v2, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;->j:I

    iget v8, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;->i:I

    iget v9, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;->h:I

    iget-object v10, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;->b:Lcom/vuitton/android/data/repository/WatchRepositoryImpl;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v11, v10

    move v10, v9

    move v9, v8

    move v8, v2

    move-object/from16 v2, p1

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v2, v3, Lcom/vuitton/android/data/repository/WatchRepositoryImpl;->c:Lcom/vuitton/android/data/api/connectivity/BffWatchApi;

    iput-object v3, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;->b:Lcom/vuitton/android/data/repository/WatchRepositoryImpl;

    iput v6, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;->h:I

    iput v6, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;->i:I

    iput v6, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;->j:I

    iput v5, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;->m:I

    invoke-interface {v2, v0}, Lcom/vuitton/android/data/api/connectivity/BffWatchApi;->getWatches(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_3

    goto/16 :goto_2

    :cond_3
    move-object v11, v3

    move v8, v6

    move v9, v8

    move v10, v9

    :goto_0
    check-cast v2, Ljava/util/List;

    iget-object v12, v11, Lcom/vuitton/android/data/repository/WatchRepositoryImpl;->f:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    const-string v13, "pref_has_watch"

    move-object v14, v2

    check-cast v14, Ljava/util/Collection;

    invoke-interface {v14}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    xor-int/2addr v5, v14

    invoke-interface {v12, v13, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->apply()V

    check-cast v2, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v2, v12}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v5, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v13, v2

    move v2, v6

    move-object v15, v11

    move-object v11, v5

    move v5, v2

    move v6, v8

    move v8, v9

    move v9, v10

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Lcom/vuitton/android/data/dto/connectivity/watch/WatchDto;

    iget-object v10, v12, Lcom/vuitton/android/data/dto/connectivity/watch/WatchDto;->f:Ljava/lang/String;

    invoke-static {v15, v10}, Lcom/vuitton/android/data/repository/WatchRepositoryImpl;->j(Lcom/vuitton/android/data/repository/WatchRepositoryImpl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    iget-object v14, v15, Lcom/vuitton/android/data/repository/WatchRepositoryImpl;->e:Lcom/vuitton/android/data/api/bff/catalog/ProductApi;

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v15, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;->b:Lcom/vuitton/android/data/repository/WatchRepositoryImpl;

    move-object v4, v11

    check-cast v4, Ljava/util/Collection;

    iput-object v4, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;->c:Ljava/util/Collection;

    iput-object v13, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;->d:Ljava/util/Iterator;

    iput-object v12, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;->e:Lcom/vuitton/android/data/dto/connectivity/watch/WatchDto;

    move-object v4, v11

    check-cast v4, Ljava/util/Collection;

    iput-object v4, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;->f:Ljava/util/Collection;

    iput-object v10, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;->g:Ljava/lang/String;

    iput v9, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;->h:I

    iput v8, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;->i:I

    iput v6, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;->j:I

    iput v2, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;->k:I

    iput v5, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;->l:I

    const/4 v4, 0x2

    iput v4, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatches$3$1;->m:I

    invoke-interface {v14, v7, v0}, Lcom/vuitton/android/data/api/bff/catalog/ProductApi;->getProducts(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_4

    :goto_2
    return-object v1

    :cond_4
    move v14, v5

    move v5, v2

    move v2, v14

    move-object v14, v11

    :goto_3
    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;

    if-eqz v7, :cond_5

    iget-object v7, v7, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    if-eqz v7, :cond_5

    iget-object v7, v7, Lcom/vuitton/android/data/dto/common/AssetDto;->a:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    if-eqz v7, :cond_5

    iget-object v7, v7, Lcom/vuitton/android/data/dto/common/AssetImageDto;->b:Ljava/lang/String;

    goto :goto_4

    :cond_5
    const/4 v7, 0x0

    :goto_4
    invoke-static {v12, v10, v7}, Lcom/vuitton/android/data/dto/connectivity/watch/mapper/WatchMapperKt;->a(Lcom/vuitton/android/data/dto/connectivity/watch/WatchDto;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;

    move-result-object v7

    move/from16 v16, v5

    move v5, v2

    move/from16 v2, v16

    goto :goto_5

    :cond_6
    invoke-static {v12, v10, v7}, Lcom/vuitton/android/data/dto/connectivity/watch/mapper/WatchMapperKt;->a(Lcom/vuitton/android/data/dto/connectivity/watch/WatchDto;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;

    move-result-object v10

    move-object v7, v10

    move-object v14, v11

    :goto_5
    invoke-interface {v11, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v11, v14

    const/4 v7, 0x0

    goto :goto_1

    :cond_7
    check-cast v11, Ljava/util/List;

    iget-object v0, v15, Lcom/vuitton/android/data/repository/WatchRepositoryImpl;->g:Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;

    new-instance v1, Ljava/util/ArrayList;

    move-object v2, v11

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v0, Lcom/vuitton/android/data/datasource/connectivity/ConnectedObjectLocalDataSource;->a:Ljava/util/ArrayList;

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, v11}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    :goto_6
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_7
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_8

    :cond_8
    instance-of v0, v1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_a

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, v1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v1, Lkotlin/Result;

    invoke-direct {v1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_8
    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_9

    return-object v0

    :cond_9
    iget-object v0, v3, Lcom/vuitton/android/data/repository/WatchRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    sget-object v2, Lcom/vuitton/android/data/repository/WatchRepositoryImpl;->i:Lcom/vuitton/android/data/repository/WatchRepositoryImpl$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/data/repository/WatchRepositoryImpl;->j:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Get watch list failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    invoke-interface {v0, v2, v1, v7}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    return-object v0

    :cond_a
    throw v1
.end method
