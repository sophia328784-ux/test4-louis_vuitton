.class final Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadMostExpensiveSku$1;
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
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
    c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$loadMostExpensiveSku$1"
    f = "FeedViewModelImpl.kt"
    l = {
        0x264,
        0x266,
        0x26b
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

.field public c:Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;

.field public d:I

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadMostExpensiveSku$1;->e:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadMostExpensiveSku$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadMostExpensiveSku$1;->e:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadMostExpensiveSku$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadMostExpensiveSku$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadMostExpensiveSku$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadMostExpensiveSku$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadMostExpensiveSku$1;->d:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadMostExpensiveSku$1;->e:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadMostExpensiveSku$1;->c:Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_4

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_1
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadMostExpensiveSku$1;->b:Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v6, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->D:Lcom/vuitton/android/domain/usecase/account/order/GetOrdersHistoryWithMostExpensiveProductUseCase;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadMostExpensiveSku$1;->d:I

    iget-object p1, p1, Lcom/vuitton/android/domain/usecase/account/order/GetOrdersHistoryWithMostExpensiveProductUseCase;->a:Lcom/vuitton/android/domain/repository/OrderRepository;

    invoke-interface {p1}, Lcom/vuitton/android/domain/repository/OrderRepository;->e()Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_3

    :cond_4
    :goto_0
    move-object v1, p1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadMostExpensiveSku$1;->b:Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput v3, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadMostExpensiveSku$1;->d:I

    invoke-interface {v1, p0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->g(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    check-cast p1, Lkotlin/Result;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v3, p1, Lkotlin/Result$Failure;

    if-eqz v3, :cond_6

    move-object p1, v5

    :cond_6
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;

    goto :goto_2

    :cond_7
    move-object p1, v5

    :goto_2
    if-eqz p1, :cond_8

    invoke-static {v6, p1}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Dc(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;)V

    :cond_8
    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadMostExpensiveSku$1;->b:Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadMostExpensiveSku$1;->c:Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;

    iput v2, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadMostExpensiveSku$1;->d:I

    invoke-interface {v1, p0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_9

    :goto_3
    return-object v0

    :cond_9
    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    :goto_4
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_a

    move-object v0, p1

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;

    invoke-static {v6, v0}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Dc(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;)V

    :cond_a
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, v6, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p0, :cond_b

    invoke-static {v6, v5}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Dc(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;)V

    :cond_b
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
