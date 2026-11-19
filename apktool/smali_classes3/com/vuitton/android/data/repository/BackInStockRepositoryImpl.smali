.class public final Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/BackInStockRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/BackInStockRepository;",
        "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;",
        "dispatcherProvider",
        "Lcom/vuitton/android/data/api/bff/user/BackInStockApi;",
        "backInStockApi",
        "<init>",
        "(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lcom/vuitton/android/data/api/bff/user/BackInStockApi;)V",
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

.field public final b:Lcom/vuitton/android/data/api/bff/user/BackInStockApi;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lcom/vuitton/android/data/api/bff/user/BackInStockApi;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl;->a:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl;->b:Lcom/vuitton/android/data/api/bff/user/BackInStockApi;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl$subscribe$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl$subscribe$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl$subscribe$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl$subscribe$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl$subscribe$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl$subscribe$1;-><init>(Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl$subscribe$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl$subscribe$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-static {}, Lcom/batch/android/Batch$User;->getInstallationID()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move-object p3, v4

    :cond_4
    if-nez p3, :cond_5

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p0, Lcom/vuitton/foundation/model/domain/error/batch/NoBatchInstallationIdFoundException;

    invoke-direct {p0}, Lcom/vuitton/foundation/model/domain/error/batch/NoBatchInstallationIdFoundException;-><init>()V

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p1

    :cond_5
    new-instance v2, Lcom/vuitton/foundation/model/domain/model/product/availability/BackInStockSubscribeBody;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v2, p1, p3, p2, v4}, Lcom/vuitton/foundation/model/domain/model/product/availability/BackInStockSubscribeBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p1, p0, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl;->a:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p1}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p1

    new-instance p2, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl$subscribe$2;

    invoke-direct {p2, p0, v2, v4}, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl$subscribe$2;-><init>(Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl;Lcom/vuitton/foundation/model/domain/model/product/availability/BackInStockSubscribeBody;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl$subscribe$1;->d:I

    invoke-static {p1, p2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6

    return-object v1

    :cond_6
    :goto_1
    check-cast p3, Lkotlin/Result;

    iget-object p0, p3, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl$unsubscribe$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl$unsubscribe$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl$unsubscribe$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl$unsubscribe$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl$unsubscribe$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl$unsubscribe$1;-><init>(Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl$unsubscribe$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl$unsubscribe$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-static {}, Lcom/batch/android/Batch$User;->getInstallationID()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move-object p1, v3

    :cond_4
    if-nez p1, :cond_5

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p0, Lcom/vuitton/foundation/model/domain/error/batch/NoBatchInstallationIdFoundException;

    invoke-direct {p0}, Lcom/vuitton/foundation/model/domain/error/batch/NoBatchInstallationIdFoundException;-><init>()V

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p1

    :cond_5
    iget-object v2, p0, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl;->a:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {v2}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object v2

    new-instance v5, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl$unsubscribe$2;

    invoke-direct {v5, p0, p1, v3}, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl$unsubscribe$2;-><init>(Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl$unsubscribe$1;->d:I

    invoke-static {v2, v5, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_1
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0
.end method
