.class public final Lcom/vuitton/android/domain/usecase/config/AreConfigsInCacheUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/config/AreConfigsInCacheUseCase;",
        "",
        "Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;",
        "requireCachedConfigsVersionUseCase",
        "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;",
        "requireCachedAppConfigUseCase",
        "Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;",
        "requireCachedConnectedObjectsConfigUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;)V",
        "domain"
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
.field public final a:Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;

.field public final b:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

.field public final c:Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/config/AreConfigsInCacheUseCase;->a:Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/config/AreConfigsInCacheUseCase;->b:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    iput-object p3, p0, Lcom/vuitton/android/domain/usecase/config/AreConfigsInCacheUseCase;->c:Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/domain/usecase/config/AreConfigsInCacheUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/domain/usecase/config/AreConfigsInCacheUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/config/AreConfigsInCacheUseCase$run$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/config/AreConfigsInCacheUseCase$run$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/config/AreConfigsInCacheUseCase$run$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/domain/usecase/config/AreConfigsInCacheUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/config/AreConfigsInCacheUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/config/AreConfigsInCacheUseCase$run$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/config/AreConfigsInCacheUseCase$run$1;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_8

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p1, p0, Lcom/vuitton/android/domain/usecase/config/AreConfigsInCacheUseCase;->a:Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;

    iput v4, v0, Lcom/vuitton/android/domain/usecase/config/AreConfigsInCacheUseCase$run$1;->d:I

    invoke-virtual {p1, v0}, Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_7

    :cond_4
    :goto_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;

    new-instance v2, Lkotlin/Result;

    invoke-direct {v2, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :goto_2
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    invoke-static {v2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_c

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, v2}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v2, p1

    :goto_4
    check-cast v2, Lkotlin/Result;

    iget-object p1, v2, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of p1, p1, Lkotlin/Result$Failure;

    if-nez p1, :cond_b

    :try_start_3
    iget-object p1, p0, Lcom/vuitton/android/domain/usecase/config/AreConfigsInCacheUseCase;->b:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    invoke-virtual {p1}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object p1

    new-instance v2, Lkotlin/Result;

    invoke-direct {v2, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception p1

    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_5
    invoke-static {v2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_6

    :cond_6
    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_a

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, v2}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v2, p1

    :goto_6
    check-cast v2, Lkotlin/Result;

    iget-object p1, v2, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of p1, p1, Lkotlin/Result$Failure;

    if-nez p1, :cond_b

    :try_start_4
    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/config/AreConfigsInCacheUseCase;->c:Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;

    iput v3, v0, Lcom/vuitton/android/domain/usecase/config/AreConfigsInCacheUseCase$run$1;->d:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    :goto_7
    return-object v1

    :cond_7
    :goto_8
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_a

    :goto_9
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_a
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_b

    :cond_8
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_9

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_b
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of p0, p0, Lkotlin/Result$Failure;

    if-nez p0, :cond_b

    goto :goto_c

    :cond_9
    throw p1

    :cond_a
    throw p1

    :cond_b
    const/4 v4, 0x0

    :goto_c
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_c
    throw p1
.end method
