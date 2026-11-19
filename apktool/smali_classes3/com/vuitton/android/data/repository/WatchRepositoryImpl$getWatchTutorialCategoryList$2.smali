.class final Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatchTutorialCategoryList$2;
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
        "Lcom/vuitton/foundation/model/domain/model/connectivity/sync/WatchTutorialCategory;",
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
        "Lcom/vuitton/foundation/model/domain/model/connectivity/sync/WatchTutorialCategory;",
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
    c = "com.vuitton.android.data.repository.WatchRepositoryImpl$getWatchTutorialCategoryList$2"
    f = "WatchRepositoryImpl.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatchTutorialCategoryList$2;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatchTutorialCategoryList$2;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatchTutorialCategoryList$2;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatchTutorialCategoryList$2;-><init>(Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatchTutorialCategoryList$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatchTutorialCategoryList$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatchTutorialCategoryList$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/vuitton/android/data/repository/WatchRepositoryImpl$getWatchTutorialCategoryList$2;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionHome;

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionHome;->a:Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionConnectedObject;->a:Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionPromise;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/watch/SectionPromise;->g:Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionTutorials;

    iget-object v2, v1, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionTutorials;->d:Ljava/util/List;

    iget-object v3, v1, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionTutorials;->b:Ljava/lang/String;

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/WatchTutorialCategory;

    iget-object v5, v1, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionTutorials;->e:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/SectionTutorials;->a:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    move-object v3, p1

    :cond_2
    if-eqz v2, :cond_3

    new-instance v6, Ljava/util/ArrayList;

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_2

    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-direct {v4, v5, v1, v3, v6}, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/WatchTutorialCategory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v0

    :cond_5
    new-instance p0, Lcom/vuitton/android/data/exception/ConnectivityException$WatchTutorialException;

    invoke-direct {p0}, Lcom/vuitton/android/data/exception/ConnectivityException$WatchTutorialException;-><init>()V

    throw p0
.end method
