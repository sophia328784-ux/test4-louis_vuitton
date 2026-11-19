.class final Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getExchangeVariations$2;
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
        "Lcom/vuitton/foundation/model/domain/model/account/orders/ProductExchangeCategory;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/vuitton/foundation/model/domain/model/account/orders/ProductExchangeCategory;"
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
    c = "com.vuitton.android.data.datasource.orders.OrdersRemoteDataSource$getExchangeVariations$2"
    f = "OrdersRemoteDataSource.kt"
    l = {
        0x64
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:D

.field public final synthetic f:D


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;Ljava/lang/String;DDLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getExchangeVariations$2;->c:Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;

    iput-object p2, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getExchangeVariations$2;->d:Ljava/lang/String;

    iput-wide p3, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getExchangeVariations$2;->e:D

    iput-wide p5, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getExchangeVariations$2;->f:D

    const/4 p1, 0x1

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    new-instance v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getExchangeVariations$2;

    iget-wide v3, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getExchangeVariations$2;->e:D

    iget-wide v5, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getExchangeVariations$2;->f:D

    iget-object v1, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getExchangeVariations$2;->c:Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;

    iget-object v2, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getExchangeVariations$2;->d:Ljava/lang/String;

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getExchangeVariations$2;-><init>(Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;Ljava/lang/String;DDLkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getExchangeVariations$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getExchangeVariations$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getExchangeVariations$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getExchangeVariations$2;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getExchangeVariations$2;->c:Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;

    iget-object v3, p1, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;->b:Lcom/vuitton/android/data/api/bff/user/OrderExchangeApi;

    iput v2, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getExchangeVariations$2;->b:I

    iget-object v4, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getExchangeVariations$2;->d:Ljava/lang/String;

    iget-wide v5, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getExchangeVariations$2;->e:D

    iget-wide v7, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$getExchangeVariations$2;->f:D

    move-object v9, p0

    invoke-interface/range {v3 .. v9}, Lcom/vuitton/android/data/api/bff/user/OrderExchangeApi;->getExchangeVariations-1cKmzHo(Ljava/lang/String;DDLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;

    invoke-static {p1}, Lcom/vuitton/android/data/dto/account/orders/mapper/ProductExchangeCategoryMapperKt;->a(Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;)Lcom/vuitton/foundation/model/domain/model/account/orders/ProductExchangeCategory;

    move-result-object p0

    return-object p0
.end method
