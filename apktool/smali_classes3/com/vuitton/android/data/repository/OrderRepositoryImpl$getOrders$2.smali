.class final Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getOrders$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Result<",
        "+",
        "Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Result;",
        "Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;"
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
    c = "com.vuitton.android.data.repository.OrderRepositoryImpl$getOrders$2"
    f = "OrderRepositoryImpl.kt"
    l = {
        0x1d
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public c:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public d:I

.field public final synthetic e:Lcom/vuitton/android/data/repository/OrderRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/repository/OrderRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getOrders$2;->e:Lcom/vuitton/android/data/repository/OrderRepositoryImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getOrders$2;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getOrders$2;->e:Lcom/vuitton/android/data/repository/OrderRepositoryImpl;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getOrders$2;-><init>(Lcom/vuitton/android/data/repository/OrderRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getOrders$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getOrders$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getOrders$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getOrders$2;->e:Lcom/vuitton/android/data/repository/OrderRepositoryImpl;

    iget-object v1, v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getOrders$2;->d:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    if-ne v3, v4, :cond_0

    iget-object v2, p0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getOrders$2;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getOrders$2;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v3, v0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;

    iput-object p1, p0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getOrders$2;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p1, p0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getOrders$2;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput v4, p0, Lcom/vuitton/android/data/repository/OrderRepositoryImpl$getOrders$2;->d:I

    invoke-virtual {v3, p0}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;->f(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_2

    return-object v2

    :cond_2
    move-object v2, p1

    move-object p1, p0

    move-object p0, v2

    :goto_0
    iput-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    iget-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, p1, Lkotlin/Result$Failure;

    if-eqz v2, :cond_3

    move-object p1, v5

    :cond_3
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;

    if-eqz p1, :cond_4

    iget-object v2, p1, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;->b:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v1, Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;->a:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    :cond_4
    if-eqz p1, :cond_5

    iget-object v2, p1, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;->a:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v1, Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;->b:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    :cond_5
    invoke-virtual {v1}, Lcom/vuitton/android/data/datasource/orders/OrdersLocalDataSource;->a()Lkotlin/Result;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v2, v1, Lkotlin/Result$Failure;

    if-eqz v2, :cond_6

    move-object v1, v5

    :cond_6
    check-cast v1, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;

    goto :goto_1

    :cond_7
    move-object v1, v5

    :goto_1
    if-eqz p1, :cond_8

    iget-object v2, p1, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;->b:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    goto :goto_2

    :cond_8
    move-object v2, v5

    :goto_2
    if-nez v2, :cond_a

    if-eqz v1, :cond_a

    iget-object v2, v1, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;->b:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    if-eqz v2, :cond_a

    if-eqz p1, :cond_9

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;->a:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    goto :goto_3

    :cond_9
    move-object v3, v5

    :goto_3
    new-instance v4, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;

    invoke-direct {v4, v3, v2}, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;-><init>(Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;)V

    iput-object v4, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    :cond_a
    if-eqz p1, :cond_b

    iget-object v2, p1, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;->a:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    goto :goto_4

    :cond_b
    move-object v2, v5

    :goto_4
    if-nez v2, :cond_d

    if-eqz v1, :cond_d

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;->a:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    if-eqz v1, :cond_d

    if-eqz p1, :cond_c

    iget-object v5, p1, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;->b:Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    :cond_c
    new-instance p1, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;

    invoke-direct {p1, v1, v5}, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;-><init>(Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;)V

    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    :cond_d
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_e

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;

    invoke-static {v0, p0}, Lcom/vuitton/android/data/repository/OrderRepositoryImpl;->k(Lcom/vuitton/android/data/repository/OrderRepositoryImpl;Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;)Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;

    move-result-object p0

    :cond_e
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
