.class public final Lcom/vuitton/android/data/repository/OrderRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/OrderRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/OrderRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/OrderRepository;",
        "Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;",
        "ordersRemoteDataSource",
        "Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;",
        "ordersLocalDataSource",
        "Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource;",
        "invoiceRemoteDataSource",
        "<init>",
        "(Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource;)V",
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
.field public final a:Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;

.field public final b:Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;

.field public final c:Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;

    iput-object p3, p0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource;

    return-void
.end method

.method public static final k(Lcom/vuitton/android/data/repository/OrderRepositoryImpl;Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;)Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;
    .locals 7

    iget-object p0, p1, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;->a:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    iget-object v0, p1, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;->b:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;->a:Ljava/util/List;

    if-eqz p0, :cond_3

    check-cast p0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/account/orders/PurchasedOrder;

    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;->a:Ljava/util/List;

    if-eqz v4, :cond_2

    check-cast v4, Ljava/lang/Iterable;

    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/account/orders/PurchasedOrder;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/account/orders/PurchasedOrder;->d:Ljava/lang/String;

    iget-object v6, v3, Lcom/vuitton/foundation/model/domain/model/account/orders/PurchasedOrder;->d:Ljava/lang/String;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    sget-object v1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_4
    iget-object p0, p1, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;->a:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    if-eqz p0, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-instance p1, Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    invoke-direct {p1, v1, p0}, Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;-><init>(Ljava/util/List;I)V

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;

    invoke-direct {p0, p1, v0}, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;-><init>(Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;)V

    return-object p0
.end method

.method public static final l(Lcom/vuitton/android/data/repository/OrderRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getAndCacheRemoteOngoingOrders$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getAndCacheRemoteOngoingOrders$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getAndCacheRemoteOngoingOrders$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getAndCacheRemoteOngoingOrders$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getAndCacheRemoteOngoingOrders$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getAndCacheRemoteOngoingOrders$1;-><init>(Lcom/vuitton/android/data/repository/OrderRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getAndCacheRemoteOngoingOrders$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getAndCacheRemoteOngoingOrders$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;

    iput v4, v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getAndCacheRemoteOngoingOrders$1;->d:I

    invoke-virtual {p1, v0}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;->e(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v3, p1

    :goto_2
    check-cast v3, Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    if-eqz v3, :cond_5

    iget-object p0, p0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, p0, Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;->a:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    :cond_5
    return-object p1
.end method


# virtual methods
.method public final a()Lkotlin/Unit;
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;->a:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    iput-object v0, p0, Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;->b:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    iput-object v0, p0, Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;->c:Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final b(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$submitExchange$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$submitExchange$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$submitExchange$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$submitExchange$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$submitExchange$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$submitExchange$1;-><init>(Lcom/vuitton/android/data/repository/OrderRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$submitExchange$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$submitExchange$1;->d:I

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

    iput v3, v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$submitExchange$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;->l(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getReturnReasons$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getReturnReasons$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getReturnReasons$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getReturnReasons$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getReturnReasons$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getReturnReasons$1;-><init>(Lcom/vuitton/android/data/repository/OrderRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getReturnReasons$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getReturnReasons$1;->d:I

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

    iput v3, v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getReturnReasons$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;->i(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final d(Lcom/vuitton/foundation/model/domain/model/cart/ExchangeSetupPost;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$setupExchange$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$setupExchange$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$setupExchange$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$setupExchange$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$setupExchange$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$setupExchange$1;-><init>(Lcom/vuitton/android/data/repository/OrderRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$setupExchange$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$setupExchange$1;->d:I

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

    iput v3, v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$setupExchange$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;->k(Lcom/vuitton/foundation/model/domain/model/cart/ExchangeSetupPost;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final e()Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;
    .locals 4

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;

    new-instance v1, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getOrdersHistoryPersonalization$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getOrdersHistoryPersonalization$2;-><init>(Lcom/vuitton/android/data/repository/OrderRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v3, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getOrdersHistoryPersonalization$3;

    invoke-direct {v3, p0, v2}, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getOrdersHistoryPersonalization$3;-><init>(Lcom/vuitton/android/data/repository/OrderRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-direct {v0, v1, v3}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public final f(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$confirmReturn$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$confirmReturn$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$confirmReturn$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$confirmReturn$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$confirmReturn$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$confirmReturn$1;-><init>(Lcom/vuitton/android/data/repository/OrderRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$confirmReturn$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$confirmReturn$1;->d:I

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

    iput v3, v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$confirmReturn$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;->b(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final g()Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;
    .locals 4

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;

    new-instance v1, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getOrders$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getOrders$2;-><init>(Lcom/vuitton/android/data/repository/OrderRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v3, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getOrders$3;

    invoke-direct {v3, p0, v2}, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getOrders$3;-><init>(Lcom/vuitton/android/data/repository/OrderRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-direct {v0, v1, v3}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public final h(Ljava/lang/String;DDLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p6, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getExchangeVariations$1;

    if-eqz v0, :cond_0

    move-object v0, p6

    check-cast v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getExchangeVariations$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getExchangeVariations$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getExchangeVariations$1;->d:I

    :goto_0
    move-object p6, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getExchangeVariations$1;

    invoke-direct {v0, p0, p6}, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getExchangeVariations$1;-><init>(Lcom/vuitton/android/data/repository/OrderRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object v0, p6, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getExchangeVariations$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p6, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getExchangeVariations$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/Result;

    iget-object p0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v3, p6, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getExchangeVariations$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;

    invoke-virtual/range {p0 .. p6}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;->d(Ljava/lang/String;DDLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p4, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$downloadInvoice$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$downloadInvoice$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$downloadInvoice$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$downloadInvoice$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$downloadInvoice$1;

    invoke-direct {v0, p0, p4}, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$downloadInvoice$1;-><init>(Lcom/vuitton/android/data/repository/OrderRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p4, v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$downloadInvoice$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$downloadInvoice$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p4, Lkotlin/Result;

    iget-object p0, p4, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v3, v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$downloadInvoice$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/vuitton/android/data/datasource/orders/InvoiceRemoteDataSource;->a(Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final j()Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;
    .locals 10

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;

    new-instance v1, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getOngoingOrders$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getOngoingOrders$2;-><init>(Lcom/vuitton/android/data/repository/OrderRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v3, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getOngoingOrders$3;

    const-string v8, "getOngoingOrders-xLWZpok()Lkotlin/Result;"

    const/4 v9, 0x4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;

    const-class v6, Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;

    const-string v7, "getOngoingOrders"

    invoke-direct/range {v3 .. v9}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v0, v1, v3}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method
