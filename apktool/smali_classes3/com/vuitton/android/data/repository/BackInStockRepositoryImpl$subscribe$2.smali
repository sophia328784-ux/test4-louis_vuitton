.class final Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl$subscribe$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Result<",
        "+",
        "Lkotlin/Unit;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Result;",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.data.repository.BackInStockRepositoryImpl$subscribe$2"
    f = "BackInStockRepositoryImpl.kt"
    l = {
        0x25
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl;

.field public final synthetic d:Lcom/vuitton/foundation/model/domain/model/product/availability/BackInStockSubscribeBody;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl;Lcom/vuitton/foundation/model/domain/model/product/availability/BackInStockSubscribeBody;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl$subscribe$2;->c:Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl$subscribe$2;->d:Lcom/vuitton/foundation/model/domain/model/product/availability/BackInStockSubscribeBody;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl$subscribe$2;

    iget-object v0, p0, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl$subscribe$2;->c:Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl$subscribe$2;->d:Lcom/vuitton/foundation/model/domain/model/product/availability/BackInStockSubscribeBody;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl$subscribe$2;-><init>(Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl;Lcom/vuitton/foundation/model/domain/model/product/availability/BackInStockSubscribeBody;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl$subscribe$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl$subscribe$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl$subscribe$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl$subscribe$2;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl$subscribe$2;->c:Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl;

    iget-object v1, p0, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl$subscribe$2;->d:Lcom/vuitton/foundation/model/domain/model/product/availability/BackInStockSubscribeBody;

    :try_start_1
    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p1, p1, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl;->b:Lcom/vuitton/android/data/api/bff/user/BackInStockApi;

    new-instance v4, Lcom/vuitton/android/data/dto/product/availability/BackInStockSubscribeDto;

    iget-object v5, v1, Lcom/vuitton/foundation/model/domain/model/product/availability/BackInStockSubscribeBody;->a:Ljava/lang/String;

    iget-object v6, v1, Lcom/vuitton/foundation/model/domain/model/product/availability/BackInStockSubscribeBody;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/product/availability/BackInStockSubscribeBody;->c:Ljava/lang/Boolean;

    invoke-direct {v4, v5, v6, v1, v2}, Lcom/vuitton/android/data/dto/product/availability/BackInStockSubscribeDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput v3, p0, Lcom/vuitton/android/data/repository/BackInStockRepositoryImpl$subscribe$2;->b:I

    invoke-interface {p1, v4, p0}, Lcom/vuitton/android/data/api/bff/user/BackInStockApi;->subscribe(Lcom/vuitton/android/data/dto/product/availability/BackInStockSubscribeDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_1
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_4

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_2
    check-cast p1, Lkotlin/Result;

    new-instance p0, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_4
    throw p0
.end method
