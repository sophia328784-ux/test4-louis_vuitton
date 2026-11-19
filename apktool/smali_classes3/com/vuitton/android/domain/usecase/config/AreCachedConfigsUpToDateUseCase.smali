.class public final Lcom/vuitton/android/domain/usecase/config/AreCachedConfigsUpToDateUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/config/AreCachedConfigsUpToDateUseCase;",
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

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/config/AreCachedConfigsUpToDateUseCase;->a:Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/config/AreCachedConfigsUpToDateUseCase;->b:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    iput-object p3, p0, Lcom/vuitton/android/domain/usecase/config/AreCachedConfigsUpToDateUseCase;->c:Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, Lcom/vuitton/android/domain/usecase/config/AreCachedConfigsUpToDateUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/domain/usecase/config/AreCachedConfigsUpToDateUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/config/AreCachedConfigsUpToDateUseCase$run$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/config/AreCachedConfigsUpToDateUseCase$run$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/config/AreCachedConfigsUpToDateUseCase$run$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/domain/usecase/config/AreCachedConfigsUpToDateUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/config/AreCachedConfigsUpToDateUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/domain/usecase/config/AreCachedConfigsUpToDateUseCase$run$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/config/AreCachedConfigsUpToDateUseCase$run$1;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "Failed requirement."

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/domain/usecase/config/AreCachedConfigsUpToDateUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_9

    :catchall_0
    move-exception p0

    goto/16 :goto_a

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/config/AreCachedConfigsUpToDateUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p2, p0, Lcom/vuitton/android/domain/usecase/config/AreCachedConfigsUpToDateUseCase;->a:Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;

    iput-object p1, v0, Lcom/vuitton/android/domain/usecase/config/AreCachedConfigsUpToDateUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;

    iput v4, v0, Lcom/vuitton/android/domain/usecase/config/AreCachedConfigsUpToDateUseCase$run$1;->e:I

    invoke-virtual {p2, v0}, Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto/16 :goto_8

    :cond_4
    :goto_1
    check-cast p2, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;

    iget-wide v6, p2, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->a:J

    iget-wide v8, p1, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->a:J

    cmp-long v2, v6, v8

    if-nez v2, :cond_6

    iget-wide v6, p2, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->b:J

    iget-wide v8, p1, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->b:J

    cmp-long p2, v6, v8

    if-nez p2, :cond_5

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance v2, Lkotlin/Result;

    invoke-direct {v2, p2}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, p2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    invoke-static {v2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_7

    goto :goto_4

    :cond_7
    instance-of v2, p2, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_10

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, p2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p2, Lkotlin/Result;

    invoke-direct {p2, v2}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v2, p2

    :goto_4
    check-cast v2, Lkotlin/Result;

    iget-object p2, v2, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of p2, p2, Lkotlin/Result$Failure;

    if-nez p2, :cond_f

    :try_start_3
    iget-object p2, p0, Lcom/vuitton/android/domain/usecase/config/AreCachedConfigsUpToDateUseCase;->b:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    invoke-virtual {p2}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object p2

    iget-wide v6, p2, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->e0:J

    iget-wide v8, p1, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->a:J

    cmp-long p2, v6, v8

    if-nez p2, :cond_8

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance v2, Lkotlin/Result;

    invoke-direct {v2, p2}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_6

    :catchall_2
    move-exception p2

    goto :goto_5

    :cond_8
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_5
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, p2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_6
    invoke-static {v2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_9

    goto :goto_7

    :cond_9
    instance-of v2, p2, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_e

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, p2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p2, Lkotlin/Result;

    invoke-direct {p2, v2}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v2, p2

    :goto_7
    check-cast v2, Lkotlin/Result;

    iget-object p2, v2, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of p2, p2, Lkotlin/Result$Failure;

    if-nez p2, :cond_f

    :try_start_4
    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/config/AreCachedConfigsUpToDateUseCase;->c:Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;

    iput-object p1, v0, Lcom/vuitton/android/domain/usecase/config/AreCachedConfigsUpToDateUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;

    iput v3, v0, Lcom/vuitton/android/domain/usecase/config/AreCachedConfigsUpToDateUseCase$run$1;->e:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_a

    :goto_8
    return-object v1

    :cond_a
    move-object p0, p1

    :goto_9
    check-cast p2, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;

    iget-object p1, p2, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;->d:Ljava/lang/Long;

    iget-wide v0, p0, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->b:J

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    cmp-long p0, p0, v0

    if-nez p0, :cond_b

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_b

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_a
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_b
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_c

    goto :goto_c

    :cond_c
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_d

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_c
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of p0, p0, Lkotlin/Result$Failure;

    if-nez p0, :cond_f

    goto :goto_d

    :cond_d
    throw p0

    :cond_e
    throw p2

    :cond_f
    const/4 v4, 0x0

    :goto_d
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_10
    throw p2
.end method
