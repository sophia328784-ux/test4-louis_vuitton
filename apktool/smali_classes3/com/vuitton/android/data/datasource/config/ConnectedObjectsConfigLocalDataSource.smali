.class public final Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\nB#\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource;",
        "",
        "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;",
        "schedulersProvider",
        "Landroid/content/SharedPreferences;",
        "encryptedSharedPreferences",
        "Lkotlinx/serialization/json/Json;",
        "json",
        "<init>",
        "(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Landroid/content/SharedPreferences;Lkotlinx/serialization/json/Json;)V",
        "Companion",
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
.field public final a:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

.field public final b:Landroid/content/SharedPreferences;

.field public final c:Lkotlinx/serialization/json/Json;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Landroid/content/SharedPreferences;Lkotlinx/serialization/json/Json;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource;->a:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    iput-object p2, p0, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource;->b:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource;->c:Lkotlinx/serialization/json/Json;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource$clearConnectedObjectsConfig$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource$clearConnectedObjectsConfig$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource$clearConnectedObjectsConfig$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource$clearConnectedObjectsConfig$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource$clearConnectedObjectsConfig$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource$clearConnectedObjectsConfig$1;-><init>(Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource$clearConnectedObjectsConfig$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource$clearConnectedObjectsConfig$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource;->a:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p1}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p1

    new-instance v2, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource$clearConnectedObjectsConfig$2$1;

    invoke-direct {v2, p0, v3}, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource$clearConnectedObjectsConfig$2$1;-><init>(Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource$clearConnectedObjectsConfig$1;->d:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

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

.method public final b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource$getConnectedObjectsConfig$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource$getConnectedObjectsConfig$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource$getConnectedObjectsConfig$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource$getConnectedObjectsConfig$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource$getConnectedObjectsConfig$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource$getConnectedObjectsConfig$1;-><init>(Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource$getConnectedObjectsConfig$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource$getConnectedObjectsConfig$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource;->a:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p1}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p1

    new-instance v2, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource$getConnectedObjectsConfig$2$1;

    invoke-direct {v2, p0, v3}, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource$getConnectedObjectsConfig$2$1;-><init>(Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource$getConnectedObjectsConfig$1;->d:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_2
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_5

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_3
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_5
    throw p1
.end method

.method public final c(Lcom/vuitton/android/data/dto/connectivity/sync/ConnectedObjectsConfigDto;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource$upsertConnectedObjectsConfig$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource$upsertConnectedObjectsConfig$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource$upsertConnectedObjectsConfig$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource$upsertConnectedObjectsConfig$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource$upsertConnectedObjectsConfig$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource$upsertConnectedObjectsConfig$1;-><init>(Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource$upsertConnectedObjectsConfig$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource$upsertConnectedObjectsConfig$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource;->a:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p2}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p2

    new-instance v2, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource$upsertConnectedObjectsConfig$2;

    invoke-direct {v2, p0, p1, v3}, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource$upsertConnectedObjectsConfig$2;-><init>(Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource;Lcom/vuitton/android/data/dto/connectivity/sync/ConnectedObjectsConfigDto;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/datasource/config/ConnectedObjectsConfigLocalDataSource$upsertConnectedObjectsConfig$1;->d:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0
.end method
