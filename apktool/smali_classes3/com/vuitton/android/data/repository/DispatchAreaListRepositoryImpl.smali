.class public final Lcom/vuitton/android/data/repository/DispatchAreaListRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/DispatchAreaListRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/DispatchAreaListRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/DispatchAreaListRepository;",
        "Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;",
        "memCacheDataSource",
        "Lcom/vuitton/android/data/datasource/dispatch/DispatchRemoteDataSource;",
        "remoteDataSource",
        "<init>",
        "(Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;Lcom/vuitton/android/data/datasource/dispatch/DispatchRemoteDataSource;)V",
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
.field public final a:Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;

.field public final b:Lcom/vuitton/android/data/datasource/dispatch/DispatchRemoteDataSource;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;Lcom/vuitton/android/data/datasource/dispatch/DispatchRemoteDataSource;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/DispatchAreaListRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/DispatchAreaListRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/dispatch/DispatchRemoteDataSource;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/vuitton/android/data/repository/DispatchAreaListRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;

    instance-of v1, p1, Lcom/vuitton/android/data/repository/DispatchAreaListRepositoryImpl$getAndCacheDispatchAreaList$1;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/vuitton/android/data/repository/DispatchAreaListRepositoryImpl$getAndCacheDispatchAreaList$1;

    iget v2, v1, Lcom/vuitton/android/data/repository/DispatchAreaListRepositoryImpl$getAndCacheDispatchAreaList$1;->d:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/vuitton/android/data/repository/DispatchAreaListRepositoryImpl$getAndCacheDispatchAreaList$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/vuitton/android/data/repository/DispatchAreaListRepositoryImpl$getAndCacheDispatchAreaList$1;

    invoke-direct {v1, p0, p1}, Lcom/vuitton/android/data/repository/DispatchAreaListRepositoryImpl$getAndCacheDispatchAreaList$1;-><init>(Lcom/vuitton/android/data/repository/DispatchAreaListRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v1, Lcom/vuitton/android/data/repository/DispatchAreaListRepositoryImpl$getAndCacheDispatchAreaList$1;->b:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v1, Lcom/vuitton/android/data/repository/DispatchAreaListRepositoryImpl$getAndCacheDispatchAreaList$1;->d:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v5, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p1, v0, Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;->a:Ljava/lang/Object;

    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v3, v0, Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v6, :cond_3

    move-object v4, v3

    :cond_3
    :try_start_3
    monitor-exit p1

    if-nez v4, :cond_7

    iget-object p0, p0, Lcom/vuitton/android/data/repository/DispatchAreaListRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/dispatch/DispatchRemoteDataSource;

    iput v5, v1, Lcom/vuitton/android/data/repository/DispatchAreaListRepositoryImpl$getAndCacheDispatchAreaList$1;->d:I

    invoke-virtual {p0, v1}, Lcom/vuitton/android/data/datasource/dispatch/DispatchRemoteDataSource;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_4

    return-object v2

    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_6

    move-object p1, p0

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0, p1}, Lcom/vuitton/android/data/datasource/dispatch/DispatchMemCacheDataSource;->a(Ljava/util/List;)V

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Dispatch area list must not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v4, p0

    check-cast v4, Ljava/util/List;

    :cond_7
    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, v4}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_3
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_9

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_4
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_9
    throw p1
.end method
