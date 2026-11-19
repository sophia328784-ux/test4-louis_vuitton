.class public final Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/ConnectedObjectsConfigRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/ConnectedObjectsConfigRepository;",
        "Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigRemoteDataSource;",
        "connectedObjectsConfigRemoteDataSource",
        "Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource;",
        "connectedObjectsConfigLocalDataSource",
        "<init>",
        "(Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigRemoteDataSource;Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource;)V",
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
.field public final a:Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigRemoteDataSource;

.field public final b:Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigRemoteDataSource;Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigRemoteDataSource;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfigFromCache$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfigFromCache$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfigFromCache$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfigFromCache$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfigFromCache$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfigFromCache$1;-><init>(Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfigFromCache$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfigFromCache$1;->d:I

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

    iput v3, v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfigFromCache$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final b(JLjava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p4, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1;

    invoke-direct {v0, p0, p4}, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1;-><init>(Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p4, v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1;->e:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1;->g:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1;->d:Lcom/vuitton/android/data/dto/connectivity/sync/ConnectedObjectsConfigDto;

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p4, Lkotlin/Result;

    iget-object p1, p4, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_6

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :cond_2
    iget-wide p1, v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1;->b:J

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p4, Lkotlin/Result;

    iget-object p3, p4, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_4

    :cond_3
    iget-wide p1, v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1;->b:J

    iget-object p3, v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1;->c:Ljava/lang/String;

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p4, Lkotlin/Result;

    iget-object p4, p4, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object p3, v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1;->c:Ljava/lang/String;

    iput-wide p1, v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1;->b:J

    iput v5, v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1;->g:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_5

    goto :goto_5

    :cond_5
    :goto_1
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, p4, Lkotlin/Result$Failure;

    if-eqz v2, :cond_6

    move-object v2, v6

    goto :goto_2

    :cond_6
    move-object v2, p4

    :goto_2
    check-cast v2, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;

    if-eqz v2, :cond_8

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;->d:Ljava/lang/Long;

    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v2, v7, p1

    if-nez v2, :cond_8

    return-object p4

    :cond_8
    :goto_3
    iput-object v6, v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1;->c:Ljava/lang/String;

    iput-wide p1, v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1;->b:J

    iput v4, v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1;->g:I

    iget-object p4, p0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigRemoteDataSource;

    invoke-virtual {p4, p3, v0}, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigRemoteDataSource;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_9

    goto :goto_5

    :cond_9
    :goto_4
    sget-object p4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p4, p3, Lkotlin/Result$Failure;

    if-nez p4, :cond_a

    check-cast p3, Lcom/vuitton/android/data/dto/connectivity/sync/ConnectedObjectsConfigDto;

    new-instance p4, Ljava/lang/Long;

    invoke-direct {p4, p1, p2}, Ljava/lang/Long;-><init>(J)V

    iget-object v2, p3, Lcom/vuitton/android/data/dto/connectivity/sync/ConnectedObjectsConfigDto;->a:Ljava/util/List;

    iget-object v4, p3, Lcom/vuitton/android/data/dto/connectivity/sync/ConnectedObjectsConfigDto;->b:Lcom/vuitton/android/data/dto/connectivity/sync/SectionHomeDto;

    iget-object p3, p3, Lcom/vuitton/android/data/dto/connectivity/sync/ConnectedObjectsConfigDto;->c:Ljava/lang/String;

    new-instance v5, Lcom/vuitton/android/data/dto/connectivity/sync/ConnectedObjectsConfigDto;

    invoke-direct {v5, v2, v4, p3, p4}, Lcom/vuitton/android/data/dto/connectivity/sync/ConnectedObjectsConfigDto;-><init>(Ljava/util/List;Lcom/vuitton/android/data/dto/connectivity/sync/SectionHomeDto;Ljava/lang/String;Ljava/lang/Long;)V

    move-object p3, v5

    :cond_a
    invoke-static {p3}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p4

    if-nez p4, :cond_d

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p3, Lcom/vuitton/android/data/dto/connectivity/sync/ConnectedObjectsConfigDto;

    iput-object v6, v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1;->c:Ljava/lang/String;

    iput-object p3, v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1;->d:Lcom/vuitton/android/data/dto/connectivity/sync/ConnectedObjectsConfigDto;

    iput-wide p1, v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1;->b:J

    iput v3, v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfig$1;->g:I

    invoke-virtual {p0, p3, v0}, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl;->d(Lcom/vuitton/android/data/dto/connectivity/sync/ConnectedObjectsConfigDto;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    :goto_5
    return-object v1

    :cond_b
    move-object p0, p3

    :goto_6
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p2, p1, Lkotlin/Result$Failure;

    if-nez p2, :cond_c

    check-cast p1, Lkotlin/Unit;

    invoke-static {p0}, Lcom/vuitton/android/data/dto/connectivity/sync/mapper/ConnectedObjectsConfigMapperKt;->a(Lcom/vuitton/android/data/dto/connectivity/sync/ConnectedObjectsConfigDto;)Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;

    move-result-object p0

    return-object p0

    :cond_c
    return-object p1

    :cond_d
    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p4}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public final c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$clearConnectedObjectsConfig$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$clearConnectedObjectsConfig$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$clearConnectedObjectsConfig$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$clearConnectedObjectsConfig$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$clearConnectedObjectsConfig$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$clearConnectedObjectsConfig$1;-><init>(Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$clearConnectedObjectsConfig$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$clearConnectedObjectsConfig$1;->d:I

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

    iput v3, v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$clearConnectedObjectsConfig$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final d(Lcom/vuitton/android/data/dto/connectivity/sync/ConnectedObjectsConfigDto;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$persistConnectedObjectsConfig$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$persistConnectedObjectsConfig$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$persistConnectedObjectsConfig$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$persistConnectedObjectsConfig$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$persistConnectedObjectsConfig$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$persistConnectedObjectsConfig$1;-><init>(Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$persistConnectedObjectsConfig$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$persistConnectedObjectsConfig$1;->d:I

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

    iput v3, v0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl$persistConnectedObjectsConfig$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/ConnectedObjectsConfigRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource;

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource;->c(Lcom/vuitton/android/data/dto/connectivity/sync/ConnectedObjectsConfigDto;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method
