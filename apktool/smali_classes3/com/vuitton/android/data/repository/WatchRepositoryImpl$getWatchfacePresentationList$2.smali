.class final Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatchfacePresentationList$2;
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
        "Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/WatchfacePresentation;",
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
        "Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/WatchfacePresentation;",
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
    c = "com.vuitton.android.data.repository.WatchRepositoryImpl$getWatchfacePresentationList$2"
    f = "WatchRepositoryImpl.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatchfacePresentationList$2;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatchfacePresentationList$2;->c:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatchfacePresentationList$2;

    iget-object v0, p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatchfacePresentationList$2;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatchfacePresentationList$2;->c:Ljava/util/List;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatchfacePresentationList$2;-><init>(Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatchfacePresentationList$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatchfacePresentationList$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatchfacePresentationList$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatchfacePresentationList$2;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionHome;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionHome;->a:Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;->a:Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionPromise;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionPromise;->i:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    if-eqz v3, :cond_c

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/WatchfacePresentation;

    iget-object v6, v4, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;->c:Ljava/lang/String;

    iget-object v7, v4, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;->d:Ljava/lang/String;

    iget-object v8, v4, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/Content;

    if-eqz v8, :cond_1

    iget-object v9, v8, Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/Content;->e:Ljava/lang/String;

    goto :goto_2

    :cond_1
    const/4 v9, 0x0

    :goto_2
    iget-object v10, v4, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;->a:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v11, v8, Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/Content;->f:Ljava/util/ArrayList;

    goto :goto_3

    :cond_2
    const/4 v11, 0x0

    :goto_3
    if-eqz v8, :cond_3

    iget-object v12, v8, Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/Content;->b:Ljava/util/ArrayList;

    goto :goto_4

    :cond_3
    const/4 v12, 0x0

    :goto_4
    new-instance v13, Lcom/vuitton/foundation/model/domain/model/connectivity/common/Video;

    if-eqz v8, :cond_4

    iget-object v14, v8, Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/Content;->g:Ljava/lang/String;

    goto :goto_5

    :cond_4
    const/4 v14, 0x0

    :goto_5
    if-eqz v8, :cond_5

    iget-object v15, v8, Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/Content;->h:Ljava/lang/String;

    goto :goto_6

    :cond_5
    const/4 v15, 0x0

    :goto_6
    invoke-direct {v13, v14, v15}, Lcom/vuitton/foundation/model/domain/model/connectivity/common/Video;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    new-instance v13, Lcom/vuitton/foundation/model/domain/model/connectivity/common/Video;

    if-eqz v8, :cond_6

    iget-object v15, v8, Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/Content;->c:Ljava/lang/String;

    goto :goto_7

    :cond_6
    const/4 v15, 0x0

    :goto_7
    if-eqz v8, :cond_7

    iget-object v2, v8, Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/Content;->d:Ljava/lang/String;

    goto :goto_8

    :cond_7
    const/4 v2, 0x0

    :goto_8
    invoke-direct {v13, v15, v2}, Lcom/vuitton/foundation/model/domain/model/connectivity/common/Video;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_8

    iget-object v2, v8, Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/Content;->a:Ljava/lang/String;

    goto :goto_9

    :cond_8
    const/4 v2, 0x0

    :goto_9
    iget-object v15, v4, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionWatchfaces;->e:Ljava/util/ArrayList;

    move-object v8, v14

    move-object v14, v2

    invoke-direct/range {v5 .. v15}, Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/WatchfacePresentation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/vuitton/foundation/model/domain/model/connectivity/common/Video;Lcom/vuitton/foundation/model/domain/model/connectivity/common/Video;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/WatchfacePresentation;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/WatchfacePresentation;->j:Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatchfacePresentationList$2;->c:Ljava/util/List;

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v4, v5}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_b
    return-object v1

    :cond_c
    new-instance v0, Lcom/vuitton/android/data/exception/ConnectivityException$NoWatchfaceException;

    invoke-direct {v0}, Lcom/vuitton/android/data/exception/ConnectivityException$NoWatchfaceException;-><init>()V

    throw v0
.end method
