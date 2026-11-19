.class public final Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/AppLinkRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/AppLinkRepository;",
        "Lcom/vuitton/android/data/api/bff/publication/AppLinkApi;",
        "appLinkApi",
        "Lcom/vuitton/android/data/datasource/config/AppLinkLocalDataSource;",
        "appLinkLocalDataSource",
        "Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;",
        "dispatchMemCacheDataSource",
        "<init>",
        "(Lcom/vuitton/android/data/api/bff/publication/AppLinkApi;Lcom/vuitton/android/data/datasource/config/AppLinkLocalDataSource;Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;)V",
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
.field public final a:Lcom/vuitton/android/data/api/bff/publication/AppLinkApi;

.field public final b:Lcom/vuitton/android/data/datasource/config/AppLinkLocalDataSource;

.field public final c:Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/api/bff/publication/AppLinkApi;Lcom/vuitton/android/data/datasource/config/AppLinkLocalDataSource;Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/publication/AppLinkApi;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/config/AppLinkLocalDataSource;

    iput-object p3, p0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$saveContributionLinkToLaunch$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$saveContributionLinkToLaunch$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$saveContributionLinkToLaunch$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$saveContributionLinkToLaunch$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$saveContributionLinkToLaunch$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$saveContributionLinkToLaunch$1;-><init>(Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$saveContributionLinkToLaunch$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$saveContributionLinkToLaunch$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v3, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$saveContributionLinkToLaunch$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/config/AppLinkLocalDataSource;

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/data/datasource/config/AppLinkLocalDataSource;->e(Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$clearContributionLinkToLaunchUseCase$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$clearContributionLinkToLaunchUseCase$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$clearContributionLinkToLaunchUseCase$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$clearContributionLinkToLaunchUseCase$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$clearContributionLinkToLaunchUseCase$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$clearContributionLinkToLaunchUseCase$1;-><init>(Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$clearContributionLinkToLaunchUseCase$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$clearContributionLinkToLaunchUseCase$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v3, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$clearContributionLinkToLaunchUseCase$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/config/AppLinkLocalDataSource;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/config/AppLinkLocalDataSource;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final c(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$getContributionLinkFromAppLink$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$getContributionLinkFromAppLink$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$getContributionLinkFromAppLink$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$getContributionLinkFromAppLink$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$getContributionLinkFromAppLink$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$getContributionLinkFromAppLink$1;-><init>(Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$getContributionLinkFromAppLink$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$getContributionLinkFromAppLink$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p2, p0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/publication/AppLinkApi;

    iput v3, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$getContributionLinkFromAppLink$1;->d:I

    invoke-interface {p2, p1, v0}, Lcom/vuitton/android/data/api/bff/publication/AppLinkApi;->getContributionLinkFromAppLink(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lcom/vuitton/android/data/applink/ContributionLinkFromAppLinkDto;

    iget-object p1, p2, Lcom/vuitton/android/data/applink/ContributionLinkFromAppLinkDto;->b:Lcom/vuitton/android/data/dto/dispatch/SwapDispatchDto;

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;->a:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p0, p0, Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    move-object p0, v4

    :goto_2
    :try_start_3
    monitor-exit v0

    if-eqz p0, :cond_5

    iget-object p1, p1, Lcom/vuitton/android/data/dto/dispatch/SwapDispatchDto;->a:Ljava/lang/String;

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p0}, Lcom/vuitton/foundation/model/domain/model/dispatch/DispatchAreaKt;->a(Ljava/lang/String;Ljava/util/List;)Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object p0

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_5
    move-object p0, v4

    :goto_3
    new-instance p1, Lcom/vuitton/foundation/model/domain/model/applink/ContributionLinkFromAppLink;

    iget-object v0, p2, Lcom/vuitton/android/data/applink/ContributionLinkFromAppLinkDto;->a:Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;

    invoke-static {v0}, Lcom/vuitton/android/data/dto/linktype/mapper/ContributionLinkMapperKt;->a(Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;)Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    move-result-object v0

    iget-object p2, p2, Lcom/vuitton/android/data/applink/ContributionLinkFromAppLinkDto;->b:Lcom/vuitton/android/data/dto/dispatch/SwapDispatchDto;

    if-eqz p2, :cond_7

    iget-object v1, p2, Lcom/vuitton/android/data/dto/dispatch/SwapDispatchDto;->b:Ljava/lang/String;

    iget-object p2, p2, Lcom/vuitton/android/data/dto/dispatch/SwapDispatchDto;->a:Ljava/lang/String;

    if-eqz p0, :cond_6

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->f:Ljava/lang/String;

    :cond_6
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/dispatch/SwapDispatch;

    invoke-direct {p0, p2, v1, v4}, Lcom/vuitton/foundation/model/domain/model/dispatch/SwapDispatch;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, p0

    :cond_7
    invoke-direct {p1, v0, v4}, Lcom/vuitton/foundation/model/domain/model/applink/ContributionLinkFromAppLink;-><init>(Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;Lcom/vuitton/foundation/model/domain/model/dispatch/SwapDispatch;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_4
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_5

    :cond_8
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_9

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_5
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_9
    throw p1
.end method

.method public final d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$getCachedAppLinkExclusions$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$getCachedAppLinkExclusions$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$getCachedAppLinkExclusions$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$getCachedAppLinkExclusions$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$getCachedAppLinkExclusions$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$getCachedAppLinkExclusions$1;-><init>(Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$getCachedAppLinkExclusions$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$getCachedAppLinkExclusions$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v3, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$getCachedAppLinkExclusions$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/config/AppLinkLocalDataSource;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/config/AppLinkLocalDataSource;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final e(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p1, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$fetchAppLinkExclusions$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$fetchAppLinkExclusions$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$fetchAppLinkExclusions$1;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$fetchAppLinkExclusions$1;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$fetchAppLinkExclusions$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$fetchAppLinkExclusions$1;-><init>(Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$fetchAppLinkExclusions$1;->e:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$fetchAppLinkExclusions$1;->g:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto :goto_6

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget v2, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$fetchAppLinkExclusions$1;->d:I

    iget v4, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$fetchAppLinkExclusions$1;->c:I

    iget v5, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$fetchAppLinkExclusions$1;->b:I

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v2, 0x0

    :try_start_3
    iget-object p1, p0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/publication/AppLinkApi;

    iput v2, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$fetchAppLinkExclusions$1;->b:I

    iput v2, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$fetchAppLinkExclusions$1;->c:I

    iput v2, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$fetchAppLinkExclusions$1;->d:I

    iput v4, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$fetchAppLinkExclusions$1;->g:I

    invoke-interface {p1, v0}, Lcom/vuitton/android/data/api/bff/publication/AppLinkApi;->getAppLinkExclusions(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne p1, v1, :cond_4

    goto :goto_5

    :cond_4
    move v4, v2

    move v5, v4

    :goto_1
    :try_start_4
    check-cast p1, Lcom/vuitton/android/data/applink/ExcludedAppLinksDto;

    iget-object p1, p1, Lcom/vuitton/android/data/applink/ExcludedAppLinksDto;->a:Ljava/util/List;

    sget-object v6, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_1
    move-exception p1

    move v4, v2

    move v5, v4

    :goto_2
    :try_start_5
    sget-object v6, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v6, Lkotlin/Result$Failure;

    invoke-direct {v6, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v6

    :goto_3
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-nez v6, :cond_5

    goto :goto_4

    :cond_5
    sget-object p1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :goto_4
    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/config/AppLinkLocalDataSource;

    iput v5, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$fetchAppLinkExclusions$1;->b:I

    iput v4, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$fetchAppLinkExclusions$1;->c:I

    iput v2, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$fetchAppLinkExclusions$1;->d:I

    iput v3, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$fetchAppLinkExclusions$1;->g:I

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/data/datasource/config/AppLinkLocalDataSource;->f(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    :goto_5
    return-object v1

    :cond_6
    :goto_6
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_7
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_8

    :cond_7
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_8

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_8
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_8
    throw p0
.end method

.method public final f(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$getContributionLinkToLaunch$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$getContributionLinkToLaunch$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$getContributionLinkToLaunch$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$getContributionLinkToLaunch$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$getContributionLinkToLaunch$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$getContributionLinkToLaunch$1;-><init>(Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$getContributionLinkToLaunch$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$getContributionLinkToLaunch$1;->e:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/config/AppLinkLocalDataSource;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$getContributionLinkToLaunch$1;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v4, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$getContributionLinkToLaunch$1;->e:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/config/AppLinkLocalDataSource;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, p1, Lkotlin/Result$Failure;

    if-nez v2, :cond_5

    move-object v2, p1

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    iput-object p1, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$getContributionLinkToLaunch$1;->b:Ljava/lang/Object;

    iput v3, v0, Lcom/vuitton/android/data/repository/AppLinkRepositoryImpl$getContributionLinkToLaunch$1;->e:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/config/AppLinkLocalDataSource;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    return-object p1
.end method
