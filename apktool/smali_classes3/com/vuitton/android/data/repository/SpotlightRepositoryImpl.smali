.class public final Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/SpotlightRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/SpotlightRepository;",
        "Lcom/vuitton/android/data/api/bff/publication/SpotlightApi;",
        "spotlightApi",
        "Landroidx/work/WorkManager;",
        "workManager",
        "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;",
        "coroutinesDispatchers",
        "<init>",
        "(Lcom/vuitton/android/data/api/bff/publication/SpotlightApi;Landroidx/work/WorkManager;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/vuitton/android/data/api/bff/publication/SpotlightApi;

.field public final b:Landroidx/work/WorkManager;

.field public final c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/api/bff/publication/SpotlightApi;Landroidx/work/WorkManager;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/publication/SpotlightApi;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl;->b:Landroidx/work/WorkManager;

    iput-object p3, p0, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl;->c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/UUID;)Lkotlinx/coroutines/flow/Flow;
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl$listenPreCache$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl$listenPreCache$1;-><init>(Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl;Ljava/util/UUID;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->t(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Ljava/util/UUID;
    .locals 4

    sget-object v0, Lcom/vuitton/android/data/repository/VideoPreloadWorker;->h:Lcom/vuitton/android/data/repository/VideoPreloadWorker$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/work/Data$Builder;

    invoke-direct {v0}, Landroidx/work/Data$Builder;-><init>()V

    const-string v1, "video_url"

    iget-object v2, v0, Landroidx/work/Data$Builder;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/work/Data$Builder;->a()Landroidx/work/Data;

    move-result-object v0

    new-instance v1, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v2, Lcom/vuitton/android/data/repository/VideoPreloadWorker;

    invoke-direct {v1, v2}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    iget-object v2, v1, Landroidx/work/WorkRequest$Builder;->b:Landroidx/work/impl/model/WorkSpec;

    iput-object v0, v2, Landroidx/work/impl/model/WorkSpec;->e:Landroidx/work/Data;

    invoke-virtual {v1}, Landroidx/work/WorkRequest$Builder;->a()Landroidx/work/WorkRequest;

    move-result-object v0

    check-cast v0, Landroidx/work/OneTimeWorkRequest;

    sget-object v1, Lkotlin/random/Random;->b:Lkotlin/random/Random$Default;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlin/random/Random;->c:Lkotlin/random/AbstractPlatformRandom;

    invoke-virtual {v1}, Lkotlin/random/AbstractPlatformRandom;->d()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "VideoPreloadWorker "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl;->b:Landroidx/work/WorkManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Landroidx/work/WorkManager;->b(Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;)Landroidx/work/Operation;

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, v0, Landroidx/work/WorkRequest;->a:Ljava/util/UUID;

    return-object p0
.end method

.method public final c(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl$getSpotlight$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl$getSpotlight$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl$getSpotlight$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl$getSpotlight$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl$getSpotlight$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl$getSpotlight$1;-><init>(Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl$getSpotlight$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl$getSpotlight$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/publication/SpotlightApi;

    iput v3, v0, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl$getSpotlight$1;->d:I

    invoke-interface {p0, p1, v0}, Lcom/vuitton/android/data/api/bff/publication/SpotlightApi;->getSpotlight(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lcom/vuitton/android/data/dto/spotlight/SpotlightDto;

    invoke-static {p2}, Lcom/vuitton/android/data/dto/spotlight/mapper/SpotlightMapperKt;->a(Lcom/vuitton/android/data/dto/spotlight/SpotlightDto;)Lcom/vuitton/foundation/model/domain/model/spotlight/Spotlight;

    move-result-object p0

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_5
    throw p0
.end method

.method public final d(Ljava/util/UUID;)Lkotlin/Unit;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl;->b:Landroidx/work/WorkManager;

    invoke-virtual {p0, p1}, Landroidx/work/WorkManager;->a(Ljava/util/UUID;)Landroidx/work/Operation;

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
