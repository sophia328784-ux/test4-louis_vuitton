.class public final Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$WhenMappings;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B)\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;",
        "",
        "Lcom/vuitton/android/data/api/bff/user/OrdersApi;",
        "ordersApi",
        "Lcom/vuitton/android/data/api/bff/user/OrderExchangeApi;",
        "orderExchangeApi",
        "Lcom/vuitton/android/data/api/bff/user/CartApi;",
        "cartApi",
        "Lkotlinx/serialization/json/Json;",
        "json",
        "<init>",
        "(Lcom/vuitton/android/data/api/bff/user/OrdersApi;Lcom/vuitton/android/data/api/bff/user/OrderExchangeApi;Lcom/vuitton/android/data/api/bff/user/CartApi;Lkotlinx/serialization/json/Json;)V",
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
.field public final a:Lcom/vuitton/android/data/api/bff/user/OrdersApi;

.field public final b:Lcom/vuitton/android/data/api/bff/user/OrderExchangeApi;

.field public final c:Lcom/vuitton/android/data/api/bff/user/CartApi;

.field public final d:Lkotlinx/serialization/json/Json;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/api/bff/user/OrdersApi;Lcom/vuitton/android/data/api/bff/user/OrderExchangeApi;Lcom/vuitton/android/data/api/bff/user/CartApi;Lkotlinx/serialization/json/Json;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;->a:Lcom/vuitton/android/data/api/bff/user/OrdersApi;

    iput-object p2, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;->b:Lcom/vuitton/android/data/api/bff/user/OrderExchangeApi;

    iput-object p3, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;->c:Lcom/vuitton/android/data/api/bff/user/CartApi;

    iput-object p4, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;->d:Lkotlinx/serialization/json/Json;

    return-void
.end method

.method public static final a(Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getPurchaseHistory$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getPurchaseHistory$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getPurchaseHistory$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getPurchaseHistory$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getPurchaseHistory$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getPurchaseHistory$1;-><init>(Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getPurchaseHistory$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getPurchaseHistory$1;->d:I

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

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;->a:Lcom/vuitton/android/data/api/bff/user/OrdersApi;

    iput v4, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getPurchaseHistory$1;->d:I

    invoke-interface {p1, v0}, Lcom/vuitton/android/data/api/bff/user/OrdersApi;->getPurchaseHistory(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lretrofit2/Response;

    iget-object v0, p1, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-boolean v0, v0, Lokhttp3/Response;->r:Z

    if-eqz v0, :cond_4

    iget-object p0, p1, Lretrofit2/Response;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/vuitton/android/data/dto/account/orders/HistoryOrdersDtoResponse;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;->j(Lretrofit2/Response;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_3

    :cond_5
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_6

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_6
    throw p0
.end method


# virtual methods
.method public final b(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p2, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$confirmReturn$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$confirmReturn$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$confirmReturn$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$confirmReturn$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$confirmReturn$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$confirmReturn$1;-><init>(Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$confirmReturn$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$confirmReturn$1;->d:I

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;->a:Lcom/vuitton/android/data/api/bff/user/OrdersApi;

    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/account/orders/OrderReturnItem;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/vuitton/android/data/dto/account/orders/OrderReturnItemDto;

    iget-object v6, v2, Lcom/vuitton/foundation/model/domain/model/account/orders/OrderReturnItem;->a:Ljava/lang/String;

    iget-object v7, v2, Lcom/vuitton/foundation/model/domain/model/account/orders/OrderReturnItem;->b:Ljava/lang/String;

    iget-object v8, v2, Lcom/vuitton/foundation/model/domain/model/account/orders/OrderReturnItem;->c:Ljava/lang/String;

    iget-object v9, v2, Lcom/vuitton/foundation/model/domain/model/account/orders/OrderReturnItem;->d:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/vuitton/android/data/dto/account/orders/OrderReturnItemDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iput v4, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$confirmReturn$1;->d:I

    invoke-interface {p0, p2, v0}, Lcom/vuitton/android/data/api/bff/user/OrdersApi;->confirmReturn(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    check-cast p2, Lretrofit2/Response;

    iget-object p0, p2, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-boolean p0, p0, Lokhttp3/Response;->r:Z

    if-eqz p0, :cond_7

    iget-object p0, p2, Lretrofit2/Response;->b:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/data/dto/account/orders/OrderReturnDtoResponse;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/vuitton/android/data/dto/account/orders/OrderReturnDtoResponse;->a:Ljava/util/List;

    if-eqz p0, :cond_5

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/android/data/dto/account/orders/OrderReturnErrorDto;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/account/orders/OrderReturnError;

    iget-object v1, p2, Lcom/vuitton/android/data/dto/account/orders/OrderReturnErrorDto;->a:Ljava/lang/String;

    iget-object v2, p2, Lcom/vuitton/android/data/dto/account/orders/OrderReturnErrorDto;->b:Ljava/lang/String;

    iget-object p2, p2, Lcom/vuitton/android/data/dto/account/orders/OrderReturnErrorDto;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/vuitton/foundation/model/domain/model/account/orders/OrderReturnError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    sget-object p1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_6
    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    new-instance p0, Lretrofit2/HttpException;

    invoke-direct {p0, p2}, Lretrofit2/HttpException;-><init>(Lretrofit2/Response;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_4
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_5

    :cond_8
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_9

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_5
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_9
    throw p1
.end method

.method public final c(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$exchangeRequest$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$exchangeRequest$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$exchangeRequest$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$exchangeRequest$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$exchangeRequest$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$exchangeRequest$1;-><init>(Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$exchangeRequest$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$exchangeRequest$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iput v3, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$exchangeRequest$1;->d:I

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p2}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p2, Lkotlin/Result$Failure;

    invoke-direct {p2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, p2

    :goto_3
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_4

    :cond_4
    instance-of p1, p2, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_18

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p2, Lkotlin/Result;

    invoke-direct {p2, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p2

    :goto_4
    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_5

    goto/16 :goto_12

    :cond_5
    :try_start_2
    instance-of p1, p2, Lretrofit2/HttpException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-string v0, ""

    if-eqz p1, :cond_17

    :try_start_3
    move-object p1, p2

    check-cast p1, Lretrofit2/HttpException;

    iget-object p1, p1, Lretrofit2/HttpException;->d:Lretrofit2/Response;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lretrofit2/Response;->c:Lokhttp3/ResponseBody;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_6
    move-object p1, v4

    :goto_5
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_11

    :cond_7
    iget-object p0, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;->d:Lkotlinx/serialization/json/Json;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {p1}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object p0, v4

    goto :goto_6

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/dto/account/orders/ExchangeErrorResponseDto;->Companion:Lcom/vuitton/android/data/dto/account/orders/ExchangeErrorResponseDto$Companion;

    invoke-virtual {v1}, Lcom/vuitton/android/data/dto/account/orders/ExchangeErrorResponseDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {p0, v1, p1}, Lkotlinx/serialization/json/Json;->b(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    :goto_6
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception p0

    :try_start_5
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_7
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_9

    goto :goto_8

    :cond_9
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_16

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_8
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-eqz p1, :cond_a

    move-object p0, v4

    :cond_a
    check-cast p0, Lcom/vuitton/android/data/dto/account/orders/ExchangeErrorResponseDto;

    if-eqz p0, :cond_b

    iget-object p0, p0, Lcom/vuitton/android/data/dto/account/orders/ExchangeErrorResponseDto;->f:Ljava/util/List;

    if-eqz p0, :cond_b

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/dto/account/orders/ExchangeErrorDetailsDto;

    goto :goto_9

    :cond_b
    move-object p0, v4

    :goto_9
    if-eqz p0, :cond_c

    iget-object p1, p0, Lcom/vuitton/android/data/dto/account/orders/ExchangeErrorDetailsDto;->a:Lcom/vuitton/android/data/dto/account/orders/ExchangeErrorCodeDto;

    goto :goto_a

    :cond_c
    move-object p1, v4

    :goto_a
    if-nez p1, :cond_d

    const/4 p1, -0x1

    goto :goto_b

    :cond_d
    sget-object v1, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    :goto_b
    if-eq p1, v3, :cond_14

    const/4 v1, 0x2

    if-eq p1, v1, :cond_12

    const/4 v1, 0x3

    if-eq p1, v1, :cond_10

    new-instance p1, Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException$Unknown;

    if-eqz p0, :cond_e

    iget-object v4, p0, Lcom/vuitton/android/data/dto/account/orders/ExchangeErrorDetailsDto;->b:Ljava/lang/String;

    :cond_e
    if-nez v4, :cond_f

    goto :goto_c

    :cond_f
    move-object v0, v4

    :goto_c
    check-cast p2, Lretrofit2/HttpException;

    iget p0, p2, Lretrofit2/HttpException;->b:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException$Unknown;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_10
    new-instance p1, Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException$OutOfStock;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/account/orders/ExchangeErrorDetailsDto;->b:Ljava/lang/String;

    if-nez p0, :cond_11

    goto :goto_d

    :cond_11
    move-object v0, p0

    :goto_d
    invoke-direct {p1, v0}, Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException$OutOfStock;-><init>(Ljava/lang/String;)V

    goto :goto_10

    :cond_12
    new-instance p1, Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException$Skip;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/account/orders/ExchangeErrorDetailsDto;->b:Ljava/lang/String;

    if-nez p0, :cond_13

    goto :goto_e

    :cond_13
    move-object v0, p0

    :goto_e
    invoke-direct {p1, v0}, Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException$Skip;-><init>(Ljava/lang/String;)V

    goto :goto_10

    :cond_14
    new-instance p1, Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException$NotSellable;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/account/orders/ExchangeErrorDetailsDto;->b:Ljava/lang/String;

    if-nez p0, :cond_15

    goto :goto_f

    :cond_15
    move-object v0, p0

    :goto_f
    invoke-direct {p1, v0}, Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException$NotSellable;-><init>(Ljava/lang/String;)V

    :goto_10
    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    :cond_16
    throw p0

    :cond_17
    :goto_11
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException$Unknown;

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException$Unknown;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    return-object p1

    :catchall_2
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_12
    return-object p1

    :cond_18
    throw p2
.end method

.method public final d(Ljava/lang/String;DDLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 11

    move-object/from16 v0, p6

    instance-of v2, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getExchangeVariations$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getExchangeVariations$1;

    iget v3, v2, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getExchangeVariations$1;->d:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getExchangeVariations$1;->d:I

    :goto_0
    move-object v8, v2

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getExchangeVariations$1;

    invoke-direct {v2, p0, v0}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getExchangeVariations$1;-><init>(Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object v0, v8, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getExchangeVariations$1;->b:Ljava/lang/Object;

    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v8, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getExchangeVariations$1;->d:I

    const/4 v10, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v10, :cond_1

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object v0

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getExchangeVariations$2;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getExchangeVariations$2;-><init>(Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;Ljava/lang/String;DDLkotlin/coroutines/Continuation;)V

    iput v10, v8, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getExchangeVariations$1;->d:I

    invoke-virtual {p0, v0, v8}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;->c(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_3

    return-object v9

    :cond_3
    return-object v0
.end method

.method public final e(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOngoingOrders$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOngoingOrders$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOngoingOrders$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOngoingOrders$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOngoingOrders$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOngoingOrders$1;-><init>(Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOngoingOrders$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOngoingOrders$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iput v3, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOngoingOrders$1;->d:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;->h(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p0, Lcom/vuitton/android/data/dto/account/orders/OngoingOrdersDtoResponse;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/account/orders/OngoingOrdersDtoResponse;->a:Ljava/util/List;

    invoke-static {p0, v3}, Lcom/vuitton/android/data/dto/account/orders/mapper/OrdersMapperKt;->c(Ljava/util/List;Z)Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    move-result-object p0

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

.method public final f(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrderList$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrderList$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrderList$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrderList$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrderList$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrderList$1;-><init>(Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrderList$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrderList$1;->d:I

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

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p1, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v2, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrderList$2$1;

    invoke-direct {v2, p0, v3}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrderList$2$1;-><init>(Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrderList$1;->d:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/account/orders/Orders;

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

.method public final g(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrdersHistoryPersonalization$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrdersHistoryPersonalization$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrdersHistoryPersonalization$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrdersHistoryPersonalization$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrdersHistoryPersonalization$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrdersHistoryPersonalization$1;-><init>(Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrdersHistoryPersonalization$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrdersHistoryPersonalization$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;->a:Lcom/vuitton/android/data/api/bff/user/OrdersApi;

    iput v3, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getOrdersHistoryPersonalization$1;->d:I

    invoke-interface {p1, v0}, Lcom/vuitton/android/data/api/bff/user/OrdersApi;->getPurchaseHistoryPersonalization(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lretrofit2/Response;

    iget-object v0, p1, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-boolean v0, v0, Lokhttp3/Response;->r:Z

    if-eqz v0, :cond_5

    iget-object p0, p1, Lretrofit2/Response;->b:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/data/dto/account/orders/PersonalizationDtoResponse;

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcom/vuitton/android/data/dto/account/orders/PersonalizationDtoResponse;->a:Lcom/vuitton/android/data/dto/producttiny/ProductTinyDto;

    if-eqz p0, :cond_4

    invoke-static {p0}, Lcom/vuitton/android/data/dto/producttiny/mapper/ProductTinyMapperKt;->a(Lcom/vuitton/android/data/dto/producttiny/ProductTinyDto;)Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;

    move-result-object v4

    :cond_4
    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, v4}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;->j(Lretrofit2/Response;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_2
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_7

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_3
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_7
    throw p1
.end method

.method public final h(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getPurchaseOngoing$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getPurchaseOngoing$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getPurchaseOngoing$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getPurchaseOngoing$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getPurchaseOngoing$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getPurchaseOngoing$1;-><init>(Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getPurchaseOngoing$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getPurchaseOngoing$1;->d:I

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

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;->a:Lcom/vuitton/android/data/api/bff/user/OrdersApi;

    iput v4, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getPurchaseOngoing$1;->d:I

    invoke-interface {p1, v0}, Lcom/vuitton/android/data/api/bff/user/OrdersApi;->getPurchaseOngoing(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lretrofit2/Response;

    iget-object v0, p1, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-boolean v0, v0, Lokhttp3/Response;->r:Z

    if-eqz v0, :cond_4

    iget-object p0, p1, Lretrofit2/Response;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/vuitton/android/data/dto/account/orders/OngoingOrdersDtoResponse;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;->j(Lretrofit2/Response;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_3

    :cond_5
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_6

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_6
    throw p0
.end method

.method public final i(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getReturnReasons$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getReturnReasons$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getReturnReasons$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getReturnReasons$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getReturnReasons$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getReturnReasons$1;-><init>(Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getReturnReasons$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getReturnReasons$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;->a:Lcom/vuitton/android/data/api/bff/user/OrdersApi;

    iput v3, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getReturnReasons$1;->d:I

    invoke-interface {p0, v0}, Lcom/vuitton/android/data/api/bff/user/OrdersApi;->getReturnReasons(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/dto/account/orders/OrderReturnReasonDto;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/account/orders/OrderReturnReason;

    iget-object v2, v0, Lcom/vuitton/android/data/dto/account/orders/OrderReturnReasonDto;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/account/orders/OrderReturnReasonDto;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/vuitton/foundation/model/domain/model/account/orders/OrderReturnReason;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_4

    :cond_5
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_6

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_4
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_6
    throw p0
.end method

.method public final j(Lretrofit2/Response;)V
    .locals 2

    iget-object p1, p1, Lretrofit2/Response;->c:Lokhttp3/ResponseBody;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;->d:Lkotlinx/serialization/json/Json;

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorDto;->Companion:Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorDto$Companion;

    invoke-virtual {v1}, Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {p0, v1, p1}, Lkotlinx/serialization/json/Json;->b(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_1
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_4

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_2
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-eqz p1, :cond_2

    move-object p0, v0

    :cond_2
    check-cast p0, Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorDto;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorDto;->a:Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorDetailsDto;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorDetailsDto;->a:Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorResponseDto;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorResponseDto;->a:Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorDataDto;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorDataDto;->a:Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorSubDetailsDto;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorSubDetailsDto;->a:Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorStatusDetailsDto;

    if-eqz p0, :cond_3

    iget-object v0, p0, Lcom/vuitton/android/data/dto/salesforce/SalesforceErrorStatusDetailsDto;->a:Ljava/lang/String;

    :cond_3
    const-string p0, "ACCT-CREATING"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Lcom/vuitton/foundation/model/domain/error/account/AccountUnderProcessException;

    invoke-direct {p0}, Lcom/vuitton/foundation/model/domain/error/account/AccountUnderProcessException;-><init>()V

    throw p0

    :cond_4
    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Getting history orders failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final k(Lcom/vuitton/foundation/model/domain/model/cart/ExchangeSetupPost;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$setupExchange$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$setupExchange$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$setupExchange$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$setupExchange$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$setupExchange$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$setupExchange$1;-><init>(Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$setupExchange$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$setupExchange$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p2, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$setupExchange$2;

    invoke-direct {p2, p0, p1, v3}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$setupExchange$2;-><init>(Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;Lcom/vuitton/foundation/model/domain/model/cart/ExchangeSetupPost;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$setupExchange$1;->d:I

    invoke-virtual {p0, p2, v0}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;->c(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final l(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$submitSelfExchange$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$submitSelfExchange$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$submitSelfExchange$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$submitSelfExchange$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$submitSelfExchange$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$submitSelfExchange$1;-><init>(Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$submitSelfExchange$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$submitSelfExchange$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p2, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$submitSelfExchange$2;

    invoke-direct {p2, p0, p1, v3}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$submitSelfExchange$2;-><init>(Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$submitSelfExchange$1;->d:I

    invoke-virtual {p0, p2, v0}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;->c(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method
