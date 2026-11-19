.class final Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$addToCart$2;
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
        "Lcom/vuitton/foundation/model/domain/model/cart/CartResponse;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Result;",
        "Lcom/vuitton/foundation/model/domain/model/cart/CartResponse;",
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
    c = "com.vuitton.android.data.datasource.cart.bff.CartDataSource$addToCart$2"
    f = "CartDataSource.kt"
    l = {
        0xb5
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$addToCart$2;->c:Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;

    iput-object p2, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$addToCart$2;->d:Ljava/util/List;

    iput-object p3, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$addToCart$2;->e:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$addToCart$2;

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$addToCart$2;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$addToCart$2;->e:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$addToCart$2;->c:Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$addToCart$2;-><init>(Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$addToCart$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$addToCart$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$addToCart$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$addToCart$2;->b:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$addToCart$2;->c:Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$addToCart$2;->d:Ljava/util/List;

    :try_start_1
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v1, v3, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;->a:Lcom/vuitton/android/data/api/bff/user/CartApi;

    move-object v5, p1

    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v5, v12}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/Pair;

    iget-object v7, v7, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->a:Ljava/lang/String;

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v8, v7}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v7, ","

    const/4 v10, 0x0

    const/16 v11, 0x3e

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v5

    check-cast p1, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {p1, v12}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/Pair;

    new-instance v8, Lcom/vuitton/android/data/dto/cart/bff/AddToCartItemDto;

    iget-object v9, v7, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v9, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    iget-object v9, v9, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->a:Ljava/lang/String;

    iget-object v7, v7, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-direct {v8, v9, v7, v2}, Lcom/vuitton/android/data/dto/cart/bff/AddToCartItemDto;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/vuitton/android/data/dto/cart/bff/AddToCartDto;

    invoke-direct {p1, v6}, Lcom/vuitton/android/data/dto/cart/bff/AddToCartDto;-><init>(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v6, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$addToCart$2;->e:Ljava/lang/String;

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, v6

    :goto_2
    :try_start_2
    iput v4, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$addToCart$2;->b:I

    invoke-interface {v1, v5, v2, p1, p0}, Lcom/vuitton/android/data/api/bff/user/CartApi;->addToCart(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/cart/bff/AddToCartDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_3
    check-cast p1, Lcom/vuitton/android/data/dto/cart/bff/CartResponseMultipleDto;

    invoke-static {p1}, Lcom/vuitton/android/data/dto/cart/bff/mapper/CartMapperKt;->c(Lcom/vuitton/android/data/dto/cart/bff/CartResponseMultipleDto;)Lcom/vuitton/foundation/model/domain/model/cart/CartResponse;

    move-result-object p0

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :goto_4
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_5
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_6

    goto :goto_6

    :cond_6
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_9

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_6
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_8

    :cond_7
    :try_start_3
    instance-of p0, p1, Lretrofit2/HttpException;

    if-eqz p0, :cond_8

    move-object p0, p1

    check-cast p0, Lretrofit2/HttpException;

    iget p0, p0, Lretrofit2/HttpException;->b:I

    const/16 v0, 0x1ad

    if-ne p0, v0, :cond_8

    new-instance p0, Lcom/vuitton/foundation/model/domain/error/cart/ServerOverloadException;

    invoke-direct {p0}, Lcom/vuitton/foundation/model/domain/error/cart/ServerOverloadException;-><init>()V

    goto :goto_7

    :cond_8
    iget-object p0, v3, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;->d:Lkotlinx/serialization/json/Json;

    invoke-static {p0, p1}, Lcom/vuitton/android/data/datasource/cart/CartErrorMapperKt;->a(Lkotlinx/serialization/json/Json;Ljava/lang/Throwable;)Lcom/vuitton/foundation/model/domain/error/cart/CartError;

    move-result-object p0

    :goto_7
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_8
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_9
    throw p0
.end method
