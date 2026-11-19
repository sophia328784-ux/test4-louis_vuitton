.class final Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCart$2;
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
    c = "com.vuitton.android.data.datasource.cart.bff.CartDataSource$getCart$2"
    f = "CartDataSource.kt"
    l = {
        0x37
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCart$2;->c:Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCart$2;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCart$2;->c:Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCart$2;-><init>(Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCart$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCart$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCart$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCart$2;->b:I

    iget-object v2, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCart$2;->c:Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p1, v2, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;->a:Lcom/vuitton/android/data/api/bff/user/CartApi;

    iput v3, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCart$2;->b:I

    invoke-interface {p1, p0}, Lcom/vuitton/android/data/api/bff/user/CartApi;->getCart(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lcom/vuitton/android/data/dto/cart/bff/CartDto;

    iget p0, p1, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->b:I

    if-lez p0, :cond_3

    invoke-static {p1}, Lcom/vuitton/android/data/dto/cart/bff/mapper/CartMapperKt;->b(Lcom/vuitton/android/data/dto/cart/bff/CartDto;)Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    move-result-object p0

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    new-instance p0, Lcom/vuitton/foundation/model/domain/error/cart/Empty;

    const-string p1, "Cart is empty"

    invoke-direct {p0, p1}, Lcom/vuitton/foundation/model/domain/error/cart/Empty;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
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

    if-nez p1, :cond_6

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
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

    :goto_4
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_6
    throw p0
.end method
