.class final Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrderList$2$1;
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
        "Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;",
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
    c = "com.vuitton.android.data.datasource.orders.OrdersRemoteDataSource$getOrderList$2$1"
    f = "OrdersRemoteDataSource.kt"
    l = {
        0x37,
        0x38
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:I

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrderList$2$1;->f:Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrderList$2$1;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrderList$2$1;->f:Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrderList$2$1;-><init>(Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrderList$2$1;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrderList$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrderList$2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrderList$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrderList$2$1;->e:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrderList$2$1;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrderList$2$1;->c:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_1
    iget-object v0, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrderList$2$1;->b:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/Deferred;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p1, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrderList$2$1$historyResult$1;

    iget-object v2, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrderList$2$1;->f:Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;

    invoke-direct {p1, v2, v5}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrderList$2$1$historyResult$1;-><init>(Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    invoke-static {v0, v5, p1, v6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    new-instance v7, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrderList$2$1$ongoingResult$1;

    invoke-direct {v7, v2, v5}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrderList$2$1$ongoingResult$1;-><init>(Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v5, v7, v6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    iput-object v5, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrderList$2$1;->e:Ljava/lang/Object;

    iput-object v0, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrderList$2$1;->b:Ljava/lang/Object;

    iput v4, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrderList$2$1;->d:I

    invoke-interface {p1, p0}, Lkotlinx/coroutines/Deferred;->k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    iput-object v5, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrderList$2$1;->e:Ljava/lang/Object;

    iput-object v5, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrderList$2$1;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrderList$2$1;->c:Ljava/lang/Object;

    iput v3, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrderList$2$1;->d:I

    invoke-interface {v0, p0}, Lkotlinx/coroutines/Deferred;->k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    :goto_1
    return-object v1

    :cond_4
    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    :goto_2
    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/vuitton/foundation/model/domain/error/account/AccountUnderProcessException;

    if-nez v0, :cond_d

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/vuitton/foundation/model/domain/error/account/AccountUnderProcessException;

    if-nez v0, :cond_d

    instance-of v0, p0, Lkotlin/Result$Failure;

    if-eqz v0, :cond_6

    instance-of v1, p1, Lkotlin/Result$Failure;

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    const-string p0, "Getting order failed"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_6
    :goto_3
    if-eqz v0, :cond_7

    move-object p0, v5

    :cond_7
    check-cast p0, Lcom/vuitton/android/data/dto/account/orders/HistoryOrdersDtoResponse;

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-eqz v0, :cond_8

    move-object p1, v5

    :cond_8
    check-cast p1, Lcom/vuitton/android/data/dto/account/orders/OngoingOrdersDtoResponse;

    new-instance v0, Lcom/vuitton/android/data/dto/account/orders/OrdersDtoResponse;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcom/vuitton/android/data/dto/account/orders/OngoingOrdersDtoResponse;->a:Ljava/util/List;

    goto :goto_4

    :cond_9
    move-object p1, v5

    :goto_4
    if-eqz p0, :cond_a

    iget-object p0, p0, Lcom/vuitton/android/data/dto/account/orders/HistoryOrdersDtoResponse;->a:Ljava/util/List;

    goto :goto_5

    :cond_a
    move-object p0, v5

    :goto_5
    invoke-direct {v0, p1, p0}, Lcom/vuitton/android/data/dto/account/orders/OrdersDtoResponse;-><init>(Ljava/util/List;Ljava/util/List;)V

    new-instance p0, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;

    iget-object p1, v0, Lcom/vuitton/android/data/dto/account/orders/OrdersDtoResponse;->b:Ljava/util/List;

    if-eqz p1, :cond_b

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/vuitton/android/data/dto/account/orders/mapper/OrdersMapperKt;->c(Ljava/util/List;Z)Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    move-result-object p1

    goto :goto_6

    :cond_b
    move-object p1, v5

    :goto_6
    iget-object v0, v0, Lcom/vuitton/android/data/dto/account/orders/OrdersDtoResponse;->a:Ljava/util/List;

    if-eqz v0, :cond_c

    invoke-static {v0, v4}, Lcom/vuitton/android/data/dto/account/orders/mapper/OrdersMapperKt;->c(Ljava/util/List;Z)Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    move-result-object v5

    :cond_c
    invoke-direct {p0, p1, v5}, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;-><init>(Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;)V

    return-object p0

    :cond_d
    new-instance p0, Lcom/vuitton/foundation/model/domain/error/account/AccountUnderProcessException;

    invoke-direct {p0}, Lcom/vuitton/foundation/model/domain/error/account/AccountUnderProcessException;-><init>()V

    throw p0
.end method
