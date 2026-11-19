.class final Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$setupExchange$2;
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
        "Lcom/vuitton/foundation/model/domain/model/cart/ExchangeSetupResult;",
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
        "Lcom/vuitton/foundation/model/domain/model/cart/ExchangeSetupResult;"
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
    c = "com.vuitton.android.data.datasource.orders.OrdersRemoteDataSource$setupExchange$2"
    f = "OrdersRemoteDataSource.kt"
    l = {
        0x99
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;

.field public final synthetic d:Lcom/vuitton/foundation/model/domain/model/cart/ExchangeSetupPost;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;Lcom/vuitton/foundation/model/domain/model/cart/ExchangeSetupPost;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$setupExchange$2;->c:Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;

    iput-object p2, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$setupExchange$2;->d:Lcom/vuitton/foundation/model/domain/model/cart/ExchangeSetupPost;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$setupExchange$2;

    iget-object v1, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$setupExchange$2;->c:Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$setupExchange$2;->d:Lcom/vuitton/foundation/model/domain/model/cart/ExchangeSetupPost;

    invoke-direct {v0, v1, p0, p1}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$setupExchange$2;-><init>(Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;Lcom/vuitton/foundation/model/domain/model/cart/ExchangeSetupPost;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$setupExchange$2;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$setupExchange$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$setupExchange$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$setupExchange$2;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$setupExchange$2;->c:Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;

    iget-object p1, p1, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource;->c:Lcom/vuitton/android/data/api/bff/user/CartApi;

    iget-object v1, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$setupExchange$2;->d:Lcom/vuitton/foundation/model/domain/model/cart/ExchangeSetupPost;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/vuitton/android/data/dto/cart/bff/ExchangeSetupDto;

    iget-object v5, v1, Lcom/vuitton/foundation/model/domain/model/cart/ExchangeSetupPost;->a:Ljava/lang/String;

    iget-object v6, v1, Lcom/vuitton/foundation/model/domain/model/cart/ExchangeSetupPost;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/cart/ExchangeSetupPost;->c:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v1, v2}, Lcom/vuitton/android/data/dto/cart/bff/ExchangeSetupDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput v3, p0, Lcom/vuitton/android/data/datasource/orders/OrdersRemoteDataSource$setupExchange$2;->b:I

    invoke-interface {p1, v4, p0}, Lcom/vuitton/android/data/api/bff/user/CartApi;->setupExchange(Lcom/vuitton/android/data/dto/cart/bff/ExchangeSetupDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lcom/vuitton/android/data/dto/cart/bff/ExchangeSetupResponseDto;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/vuitton/foundation/model/domain/model/cart/ExchangeSetupResult;

    iget-object v0, p1, Lcom/vuitton/android/data/dto/cart/bff/ExchangeSetupResponseDto;->a:Lcom/vuitton/android/data/dto/cart/bff/ExchangeProductDto;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v0, Lcom/vuitton/android/data/dto/cart/bff/ExchangeProductDto;->e:Ljava/lang/String;

    iget-object v5, v0, Lcom/vuitton/android/data/dto/cart/bff/ExchangeProductDto;->a:Ljava/lang/String;

    iget-object v6, v0, Lcom/vuitton/android/data/dto/cart/bff/ExchangeProductDto;->b:Ljava/lang/String;

    iget-object v7, v0, Lcom/vuitton/android/data/dto/cart/bff/ExchangeProductDto;->c:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/android/data/dto/cart/bff/ExchangeProductDto;->d:Ljava/lang/String;

    iget-object v1, v0, Lcom/vuitton/android/data/dto/cart/bff/ExchangeProductDto;->f:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    invoke-static {v1}, Lcom/vuitton/android/data/dto/cart/bff/mapper/CartPriceMapperKt;->a(Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;)Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    move-result-object v10

    iget-object v11, v0, Lcom/vuitton/android/data/dto/cart/bff/ExchangeProductDto;->g:Ljava/lang/String;

    iget-object v12, v0, Lcom/vuitton/android/data/dto/cart/bff/ExchangeProductDto;->h:Ljava/lang/String;

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/cart/ExchangeProduct;

    const/4 v13, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/cart/ExchangeProduct;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v0, p1, Lcom/vuitton/android/data/dto/cart/bff/ExchangeSetupResponseDto;->b:Lcom/vuitton/android/data/dto/cart/bff/ExchangeShippingAddressDto;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/cart/ExchangeShippingAddress;

    iget-object v6, v0, Lcom/vuitton/android/data/dto/cart/bff/ExchangeShippingAddressDto;->a:Ljava/lang/String;

    iget-object v7, v0, Lcom/vuitton/android/data/dto/cart/bff/ExchangeShippingAddressDto;->b:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/android/data/dto/cart/bff/ExchangeShippingAddressDto;->c:Ljava/lang/String;

    iget-object v9, v0, Lcom/vuitton/android/data/dto/cart/bff/ExchangeShippingAddressDto;->d:Ljava/lang/String;

    iget-object v10, v0, Lcom/vuitton/android/data/dto/cart/bff/ExchangeShippingAddressDto;->e:Ljava/lang/String;

    iget-object v11, v0, Lcom/vuitton/android/data/dto/cart/bff/ExchangeShippingAddressDto;->f:Ljava/lang/String;

    iget-object v12, v0, Lcom/vuitton/android/data/dto/cart/bff/ExchangeShippingAddressDto;->g:Ljava/lang/String;

    iget-object v13, v0, Lcom/vuitton/android/data/dto/cart/bff/ExchangeShippingAddressDto;->h:Ljava/lang/String;

    invoke-direct/range {v5 .. v13}, Lcom/vuitton/foundation/model/domain/model/cart/ExchangeShippingAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/vuitton/android/data/dto/cart/bff/ExchangeSetupResponseDto;->c:Lcom/vuitton/android/data/dto/cart/bff/ExchangeShippingMethodDto;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/cart/ExchangeShippingMethod;

    iget-object v1, p1, Lcom/vuitton/android/data/dto/cart/bff/ExchangeShippingMethodDto;->a:Ljava/lang/String;

    iget-object v6, p1, Lcom/vuitton/android/data/dto/cart/bff/ExchangeShippingMethodDto;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/cart/bff/ExchangeShippingMethodDto;->c:Lcom/vuitton/android/data/dto/cart/bff/ExchangeShippingTypeDto;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/vuitton/android/data/dto/cart/bff/ExchangeSetupDtoKt$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v7, p1

    if-eq p1, v3, :cond_4

    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/cart/ExchangeShippingType;->CLICK_AND_COLLECT:Lcom/vuitton/foundation/model/domain/model/cart/ExchangeShippingType;

    goto :goto_1

    :cond_3
    invoke-static {}, Lv40;->g()V

    return-object v2

    :cond_4
    sget-object p1, Lcom/vuitton/foundation/model/domain/model/cart/ExchangeShippingType;->STANDARD:Lcom/vuitton/foundation/model/domain/model/cart/ExchangeShippingType;

    :goto_1
    invoke-direct {v0, v1, v6, p1}, Lcom/vuitton/foundation/model/domain/model/cart/ExchangeShippingMethod;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/cart/ExchangeShippingType;)V

    invoke-direct {p0, v4, v5, v0}, Lcom/vuitton/foundation/model/domain/model/cart/ExchangeSetupResult;-><init>(Lcom/vuitton/foundation/model/domain/model/cart/ExchangeProduct;Lcom/vuitton/foundation/model/domain/model/cart/ExchangeShippingAddress;Lcom/vuitton/foundation/model/domain/model/cart/ExchangeShippingMethod;)V

    return-object p0
.end method
