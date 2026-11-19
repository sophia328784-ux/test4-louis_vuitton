.class public final Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/ConfigsVersionRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/ConfigsVersionRepository;",
        "Lcom/vuitton/android/data/datasource/config/ConfigsVersionRemoteDataSource;",
        "configsVersionRemoteDataSource",
        "Lcom/vuitton/android/data/datasource/config/ConfigsVersionLocalDataSource;",
        "configsVersionLocalDataSource",
        "<init>",
        "(Lcom/vuitton/android/data/datasource/config/ConfigsVersionRemoteDataSource;Lcom/vuitton/android/data/datasource/config/ConfigsVersionLocalDataSource;)V",
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
.field public final a:Lcom/vuitton/android/data/datasource/config/ConfigsVersionRemoteDataSource;

.field public final b:Lcom/vuitton/android/data/datasource/config/ConfigsVersionLocalDataSource;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/config/ConfigsVersionRemoteDataSource;Lcom/vuitton/android/data/datasource/config/ConfigsVersionLocalDataSource;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/config/ConfigsVersionRemoteDataSource;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/config/ConfigsVersionLocalDataSource;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$getConfigsVersionFromCache$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$getConfigsVersionFromCache$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$getConfigsVersionFromCache$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$getConfigsVersionFromCache$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$getConfigsVersionFromCache$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$getConfigsVersionFromCache$1;-><init>(Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$getConfigsVersionFromCache$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$getConfigsVersionFromCache$1;->d:I

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

    iput v3, v0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$getConfigsVersionFromCache$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/config/ConfigsVersionLocalDataSource;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/config/ConfigsVersionLocalDataSource;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$getConfigsVersion$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$getConfigsVersion$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$getConfigsVersion$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$getConfigsVersion$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$getConfigsVersion$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$getConfigsVersion$1;-><init>(Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$getConfigsVersion$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$getConfigsVersion$1;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$getConfigsVersion$1;->b:Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_3

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

    iput v4, v0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$getConfigsVersion$1;->e:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_7

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;

    iput-object p1, v0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$getConfigsVersion$1;->b:Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;

    iput v3, v0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$getConfigsVersion$1;->e:I

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl;->e(Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    :goto_3
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_6

    check-cast p1, Lkotlin/Unit;

    return-object p0

    :cond_6
    return-object p1

    :cond_7
    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, v2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public final c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$clearConfigsVersion$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$clearConfigsVersion$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$clearConfigsVersion$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$clearConfigsVersion$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$clearConfigsVersion$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$clearConfigsVersion$1;-><init>(Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$clearConfigsVersion$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$clearConfigsVersion$1;->d:I

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

    iput v3, v0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$clearConfigsVersion$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/config/ConfigsVersionLocalDataSource;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/config/ConfigsVersionLocalDataSource;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p1, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$getConfigsVersionFromNetwork$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$getConfigsVersionFromNetwork$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$getConfigsVersionFromNetwork$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$getConfigsVersionFromNetwork$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$getConfigsVersionFromNetwork$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$getConfigsVersionFromNetwork$1;-><init>(Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$getConfigsVersionFromNetwork$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$getConfigsVersionFromNetwork$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v3, v0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$getConfigsVersionFromNetwork$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/config/ConfigsVersionRemoteDataSource;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/config/ConfigsVersionRemoteDataSource;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_6

    :try_start_0
    check-cast p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;

    iget-wide v1, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->a:J

    iget-wide v3, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->b:J

    iget-object v5, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->c:Ljava/lang/String;

    iget-object p1, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->d:Ljava/lang/Integer;

    const/4 v6, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_4
    move p1, v6

    :goto_2
    iget-object v7, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->e:Ljava/lang/String;

    iget-object v8, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->f:Ljava/lang/String;

    if-eqz v8, :cond_5

    invoke-static {v8}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_5
    move v8, v6

    iget-object v9, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->g:Ljava/lang/String;

    iget-object v10, p0, Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;->h:Ljava/lang/String;

    move v6, p1

    invoke-direct/range {v0 .. v10}, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;-><init>(JJLjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    move-object p0, v0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p1

    :cond_6
    return-object p0
.end method

.method public final e(Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$persistConfigsVersion$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$persistConfigsVersion$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$persistConfigsVersion$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$persistConfigsVersion$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$persistConfigsVersion$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$persistConfigsVersion$1;-><init>(Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$persistConfigsVersion$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$persistConfigsVersion$1;->d:I

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

    iput v3, v0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl$persistConfigsVersion$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/ConfigsVersionRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/config/ConfigsVersionLocalDataSource;

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/data/datasource/config/ConfigsVersionLocalDataSource;->c(Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method
