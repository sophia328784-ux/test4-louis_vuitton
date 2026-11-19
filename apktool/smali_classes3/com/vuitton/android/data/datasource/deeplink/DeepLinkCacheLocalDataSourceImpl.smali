.class public final Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\nB#\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl;",
        "Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheDataSource;",
        "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;",
        "schedulersProvider",
        "Landroid/content/SharedPreferences;",
        "sharedPreferences",
        "Lcom/vuitton/foundation/model/domain/model/time/TimeProvider;",
        "timeProvider",
        "<init>",
        "(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Landroid/content/SharedPreferences;Lcom/vuitton/foundation/model/domain/model/time/TimeProvider;)V",
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

.field public final c:Lcom/vuitton/foundation/model/domain/model/time/TimeProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Landroid/content/SharedPreferences;Lcom/vuitton/foundation/model/domain/model/time/TimeProvider;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl;->a:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    iput-object p2, p0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl;->b:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl;->c:Lcom/vuitton/foundation/model/domain/model/time/TimeProvider;

    return-void
.end method

.method public static final d(Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$isDeepLinkForRedirectionWithinValidTimeRange$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$isDeepLinkForRedirectionWithinValidTimeRange$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$isDeepLinkForRedirectionWithinValidTimeRange$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$isDeepLinkForRedirectionWithinValidTimeRange$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$isDeepLinkForRedirectionWithinValidTimeRange$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$isDeepLinkForRedirectionWithinValidTimeRange$1;-><init>(Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$isDeepLinkForRedirectionWithinValidTimeRange$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$isDeepLinkForRedirectionWithinValidTimeRange$1;->d:I

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

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl;->a:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p1}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p1

    new-instance v2, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$isDeepLinkForRedirectionWithinValidTimeRange$2$1;

    invoke-direct {v2, p0, v3}, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$isDeepLinkForRedirectionWithinValidTimeRange$2$1;-><init>(Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$isDeepLinkForRedirectionWithinValidTimeRange$1;->d:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    if-nez p0, :cond_6

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_3
    check-cast p0, Lkotlin/Result;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v0, p0, Lkotlin/Result$Failure;

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    move-object p1, p0

    :goto_4
    return-object p1

    :cond_6
    throw p1
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$clearDeepLinkForRedirection$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$clearDeepLinkForRedirection$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$clearDeepLinkForRedirection$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$clearDeepLinkForRedirection$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$clearDeepLinkForRedirection$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$clearDeepLinkForRedirection$1;-><init>(Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$clearDeepLinkForRedirection$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$clearDeepLinkForRedirection$1;->d:I

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

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl;->a:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p1}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p1

    new-instance v2, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$clearDeepLinkForRedirection$2$1;

    invoke-direct {v2, p0, v3}, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$clearDeepLinkForRedirection$2$1;-><init>(Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$clearDeepLinkForRedirection$1;->d:I

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

    invoke-static {p0}, Lcom/vuitton/foundation/util/ResultExtKt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    throw p0
.end method

.method public final b(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$1;-><init>(Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p2, p0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl;->a:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p2}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p2

    new-instance v2, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$2$1;

    invoke-direct {v2, p1, p0, v3}, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$2$1;-><init>(Ljava/lang/String;Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$1;->d:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-static {p0}, Lcom/vuitton/foundation/util/ResultExtKt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    throw p0
.end method

.method public final c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$1;-><init>(Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$1;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$1;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_6

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl;->a:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p1}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p1

    new-instance v2, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$2$1;

    invoke-direct {v2, p0, v5}, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$2$1;-><init>(Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$1;->e:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_5

    :cond_4
    :goto_1
    check-cast p1, Ljava/lang/String;

    new-instance v2, Lkotlin/Result;

    invoke-direct {v2, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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

    if-nez v2, :cond_9

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, v2}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v2, p1

    :goto_4
    check-cast v2, Lkotlin/Result;

    iget-object p1, v2, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_7

    iput-object p1, v0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$1;->b:Ljava/lang/Object;

    iput v3, v0, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$1;->e:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/deeplink/DeepLinkCacheLocalDataSourceImpl;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    :goto_5
    return-object v1

    :cond_6
    move-object p0, p1

    :goto_6
    move-object p1, p0

    :cond_7
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p0, p1, Lkotlin/Result$Failure;

    if-eqz p0, :cond_8

    goto :goto_7

    :cond_8
    move-object v5, p1

    :goto_7
    return-object v5

    :cond_9
    throw p1
.end method
