.class final Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$chooseSamples$2;
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
        "Lcom/vuitton/foundation/model/domain/model/cart/Cart;",
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
        "Lcom/vuitton/foundation/model/domain/model/cart/Cart;",
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
    c = "com.vuitton.android.data.datasource.cart.bff.CartDataSource$chooseSamples$2"
    f = "CartDataSource.kt"
    l = {
        0x68
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;

.field public final synthetic d:Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;

.field public final synthetic e:Z

.field public final synthetic f:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;ZLjava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$chooseSamples$2;->c:Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;

    iput-object p2, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$chooseSamples$2;->d:Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;

    iput-boolean p3, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$chooseSamples$2;->e:Z

    iput-object p4, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$chooseSamples$2;->f:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$chooseSamples$2;

    iget-boolean v3, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$chooseSamples$2;->e:Z

    iget-object v4, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$chooseSamples$2;->f:Ljava/util/List;

    iget-object v1, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$chooseSamples$2;->c:Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;

    iget-object v2, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$chooseSamples$2;->d:Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$chooseSamples$2;-><init>(Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;ZLjava/util/List;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$chooseSamples$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$chooseSamples$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$chooseSamples$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$chooseSamples$2;->b:I

    iget-object v2, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$chooseSamples$2;->c:Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$chooseSamples$2;->d:Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;

    iget-boolean v1, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$chooseSamples$2;->e:Z

    iget-object v5, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$chooseSamples$2;->f:Ljava/util/List;

    :try_start_1
    sget-object v6, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v6, v2, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;->a:Lcom/vuitton/android/data/api/bff/user/CartApi;

    instance-of v7, p1, Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$Message;

    if-eqz v7, :cond_2

    move-object v7, p1

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$Message;

    goto :goto_0

    :cond_2
    move-object v7, v4

    :goto_0
    if-eqz v7, :cond_3

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$Message;->c:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v7, v4

    :goto_1
    if-nez v7, :cond_4

    const-string v7, ""

    :cond_4
    instance-of p1, p1, Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$Blank;

    new-instance v8, Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v8, v4, v1}, Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    check-cast v5, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v5, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/cart/PerfumeSample;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartSampleItemDto;

    iget-object v10, v5, Lcom/vuitton/foundation/model/domain/model/cart/PerfumeSample;->b:Ljava/lang/String;

    iget-boolean v5, v5, Lcom/vuitton/foundation/model/domain/model/cart/PerfumeSample;->f:Z

    invoke-direct {v9, v10, v5}, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartSampleItemDto;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance v4, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartSampleDto;

    invoke-direct {v4, v1}, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartSampleDto;-><init>(Ljava/util/List;)V

    new-instance v1, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;

    invoke-direct {v1, v7, p1, v8, v4}, Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;-><init>(Ljava/lang/String;ZLcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;Lcom/vuitton/android/data/dto/cart/bff/UpdateCartSampleDto;)V

    iput v3, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$chooseSamples$2;->b:I

    invoke-interface {v6, v1, p0}, Lcom/vuitton/android/data/api/bff/user/CartApi;->updateCart(Lcom/vuitton/android/data/dto/cart/bff/UpdateCartDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    :goto_3
    check-cast p1, Lcom/vuitton/android/data/dto/cart/bff/CartDto;

    invoke-static {p1}, Lcom/vuitton/android/data/dto/cart/bff/mapper/CartMapperKt;->b(Lcom/vuitton/android/data/dto/cart/bff/CartDto;)Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    move-result-object p0

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :goto_4
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_5
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_6

    :cond_7
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

    if-nez p1, :cond_8

    goto :goto_7

    :cond_8
    :try_start_2
    iget-object p0, v2, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;->d:Lkotlinx/serialization/json/Json;

    invoke-static {p0, p1}, Lcom/vuitton/android/data/datasource/cart/CartErrorMapperKt;->a(Lkotlinx/serialization/json/Json;Ljava/lang/Throwable;)Lcom/vuitton/foundation/model/domain/error/cart/CartError;

    move-result-object p0

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_7
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_9
    throw p0
.end method
