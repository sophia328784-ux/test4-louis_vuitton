.class public final Lcom/vuitton/android/data/repository/CartRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/CartRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B1\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/CartRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/CartRepository;",
        "Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;",
        "cartDataSource",
        "Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource;",
        "cartTwistDataSource",
        "Lcom/vuitton/android/data/datasource/cart/legacy/CartLegacyDataSource;",
        "cartLegacyDataSource",
        "Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;",
        "deviceIdLocalDataSource",
        "Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;",
        "cookieManager",
        "<init>",
        "(Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource;Lcom/vuitton/android/data/datasource/cart/legacy/CartLegacyDataSource;Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;)V",
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
.field public final a:Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;

.field public final b:Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource;

.field public final c:Lcom/vuitton/android/data/datasource/cart/legacy/CartLegacyDataSource;

.field public final d:Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;

.field public final e:Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource;Lcom/vuitton/android/data/datasource/cart/legacy/CartLegacyDataSource;Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/CartRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/CartRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource;

    iput-object p3, p0, Lcom/vuitton/android/data/repository/CartRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/cart/legacy/CartLegacyDataSource;

    iput-object p4, p0, Lcom/vuitton/android/data/repository/CartRepositoryImpl;->d:Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;

    iput-object p5, p0, Lcom/vuitton/android/data/repository/CartRepositoryImpl;->e:Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getCart$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getCart$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getCart$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getCart$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getCart$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getCart$1;-><init>(Lcom/vuitton/android/data/repository/CartRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getCart$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getCart$1;->d:I

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

    iput v3, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getCart$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/CartRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getCartContribution$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getCartContribution$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getCartContribution$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getCartContribution$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getCartContribution$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getCartContribution$1;-><init>(Lcom/vuitton/android/data/repository/CartRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getCartContribution$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getCartContribution$1;->d:I

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

    iput v3, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getCartContribution$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/CartRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;->e(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final c(Ljava/util/List;ZLcom/vuitton/foundation/model/domain/model/cart/GiftOption;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p4, Lcom/vuitton/android/data/repository/CartRepositoryImpl$chooseSamples$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$chooseSamples$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$chooseSamples$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$chooseSamples$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$chooseSamples$1;

    invoke-direct {v0, p0, p4}, Lcom/vuitton/android/data/repository/CartRepositoryImpl$chooseSamples$1;-><init>(Lcom/vuitton/android/data/repository/CartRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p4, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$chooseSamples$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$chooseSamples$1;->d:I

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

    iput v3, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$chooseSamples$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/CartRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;->c(Ljava/util/List;ZLcom/vuitton/foundation/model/domain/model/cart/GiftOption;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final d(Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/data/repository/CartRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;->j(Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final e(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/repository/CartRepositoryImpl$prepareOrder$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$prepareOrder$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$prepareOrder$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$prepareOrder$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$prepareOrder$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/CartRepositoryImpl$prepareOrder$1;-><init>(Lcom/vuitton/android/data/repository/CartRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$prepareOrder$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$prepareOrder$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v3, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$prepareOrder$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/CartRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;->h(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_5

    check-cast p0, Lcom/vuitton/android/data/dto/cart/bff/PrepareOrderDto;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/vuitton/foundation/model/domain/model/cart/PrepareOrder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/cart/bff/PrepareOrderDto;->a:Ljava/lang/Boolean;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    :goto_2
    invoke-direct {p1, p0}, Lcom/vuitton/foundation/model/domain/model/cart/PrepareOrder;-><init>(Z)V

    return-object p1

    :cond_5
    return-object p0
.end method

.method public final f(Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;Lkotlin/coroutines/jvm/internal/ContinuationImpl;Z)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/data/repository/CartRepositoryImpl$updateShoppingBag$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$updateShoppingBag$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$updateShoppingBag$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$updateShoppingBag$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$updateShoppingBag$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/CartRepositoryImpl$updateShoppingBag$1;-><init>(Lcom/vuitton/android/data/repository/CartRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$updateShoppingBag$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$updateShoppingBag$1;->d:I

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

    iput v3, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$updateShoppingBag$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/CartRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;

    invoke-virtual {p0, p1, v0, p3}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;->m(Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;Lkotlin/coroutines/jvm/internal/ContinuationImpl;Z)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final g(Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;Lkotlin/coroutines/jvm/internal/ContinuationImpl;Z)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/data/repository/CartRepositoryImpl$addGiftMessage$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$addGiftMessage$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$addGiftMessage$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$addGiftMessage$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$addGiftMessage$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/CartRepositoryImpl$addGiftMessage$1;-><init>(Lcom/vuitton/android/data/repository/CartRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$addGiftMessage$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$addGiftMessage$1;->d:I

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

    iput v3, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$addGiftMessage$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/CartRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;

    invoke-virtual {p0, p1, v0, p3}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;->a(Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;Lkotlin/coroutines/jvm/internal/ContinuationImpl;Z)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final h(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/data/repository/CartRepositoryImpl$removeItemFromCart$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$removeItemFromCart$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$removeItemFromCart$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$removeItemFromCart$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$removeItemFromCart$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/CartRepositoryImpl$removeItemFromCart$1;-><init>(Lcom/vuitton/android/data/repository/CartRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$removeItemFromCart$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$removeItemFromCart$1;->d:I

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

    iput v3, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$removeItemFromCart$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/CartRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;->i(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final i(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Lcom/vuitton/android/data/repository/CartRepositoryImpl$addToCart$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$addToCart$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$addToCart$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$addToCart$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$addToCart$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/repository/CartRepositoryImpl$addToCart$1;-><init>(Lcom/vuitton/android/data/repository/CartRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$addToCart$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$addToCart$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    iget-object p0, p3, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v3, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$addToCart$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/CartRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;

    invoke-virtual {p0, p1, p2, v0}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;->b(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final j(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getCartCount$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getCartCount$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getCartCount$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getCartCount$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getCartCount$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getCartCount$1;-><init>(Lcom/vuitton/android/data/repository/CartRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getCartCount$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getCartCount$1;->d:I

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

    iput v3, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getCartCount$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/CartRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;->f(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final k(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getCheckoutUrl$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getCheckoutUrl$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getCheckoutUrl$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getCheckoutUrl$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getCheckoutUrl$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getCheckoutUrl$1;-><init>(Lcom/vuitton/android/data/repository/CartRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getCheckoutUrl$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getCheckoutUrl$1;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

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

    check-cast p2, Lkotlin/Result;

    iget-object p1, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    if-eqz p1, :cond_7

    iput v4, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getCheckoutUrl$1;->d:I

    iget-object p1, p0, Lcom/vuitton/android/data/repository/CartRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource;

    invoke-virtual {p1, v0}, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_3

    :cond_4
    :goto_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p2, p1, Lkotlin/Result$Failure;

    if-nez p2, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/datasource/cart/bff/CheckoutUrlWithCookies;

    iget-object v0, v0, Lcom/vuitton/android/data/datasource/cart/bff/CheckoutUrlWithCookies;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/data/datasource/cart/bff/Cookie;

    iget-object v2, v1, Lcom/vuitton/android/data/datasource/cart/bff/Cookie;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/android/data/datasource/cart/bff/Cookie;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/data/repository/CartRepositoryImpl;->e:Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;

    invoke-virtual {v3, v2, v1}, Lcom/vuitton/android/data/net/cookiejar/WebkitCookieManagerProxy;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    if-nez p2, :cond_6

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    check-cast p1, Lcom/vuitton/android/data/datasource/cart/bff/CheckoutUrlWithCookies;

    iget-object p0, p1, Lcom/vuitton/android/data/datasource/cart/bff/CheckoutUrlWithCookies;->a:Ljava/lang/String;

    return-object p0

    :cond_6
    return-object p1

    :cond_7
    iput v3, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getCheckoutUrl$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/CartRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/cart/legacy/CartLegacyDataSource;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/cart/legacy/CartLegacyDataSource;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    :goto_3
    return-object v1

    :cond_8
    return-object p0
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p4, Lcom/vuitton/android/data/repository/CartRepositoryImpl$updateItemQuantity$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$updateItemQuantity$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$updateItemQuantity$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$updateItemQuantity$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$updateItemQuantity$1;

    invoke-direct {v0, p0, p4}, Lcom/vuitton/android/data/repository/CartRepositoryImpl$updateItemQuantity$1;-><init>(Lcom/vuitton/android/data/repository/CartRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p4, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$updateItemQuantity$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$updateItemQuantity$1;->d:I

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

    iput v3, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$updateItemQuantity$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/CartRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;->l(Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final m(Lcom/vuitton/foundation/model/domain/model/cart/CheckoutFeedback;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/vuitton/android/data/repository/CartRepositoryImpl$sendCheckoutFeedback$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$sendCheckoutFeedback$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$sendCheckoutFeedback$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$sendCheckoutFeedback$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$sendCheckoutFeedback$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/CartRepositoryImpl$sendCheckoutFeedback$1;-><init>(Lcom/vuitton/android/data/repository/CartRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$sendCheckoutFeedback$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$sendCheckoutFeedback$1;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    iget-object p1, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$sendCheckoutFeedback$1;->c:Lcom/vuitton/foundation/model/domain/model/cart/CheckoutFeedback;

    iget-object p0, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$sendCheckoutFeedback$1;->b:Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/vuitton/android/data/repository/CartRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;

    iput-object p2, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$sendCheckoutFeedback$1;->b:Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;

    iput-object p1, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$sendCheckoutFeedback$1;->c:Lcom/vuitton/foundation/model/domain/model/cart/CheckoutFeedback;

    iput v4, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$sendCheckoutFeedback$1;->f:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/CartRepositoryImpl;->d:Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v6, p2

    move-object p2, p0

    move-object p0, v6

    :goto_1
    check-cast p2, Ljava/lang/String;

    iput-object v5, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$sendCheckoutFeedback$1;->b:Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;

    iput-object v5, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$sendCheckoutFeedback$1;->c:Lcom/vuitton/foundation/model/domain/model/cart/CheckoutFeedback;

    iput v3, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$sendCheckoutFeedback$1;->f:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;->k(Lcom/vuitton/foundation/model/domain/model/cart/CheckoutFeedback;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    return-object p0
.end method

.method public final n(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getConfirmationDetails$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getConfirmationDetails$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getConfirmationDetails$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getConfirmationDetails$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getConfirmationDetails$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getConfirmationDetails$1;-><init>(Lcom/vuitton/android/data/repository/CartRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getConfirmationDetails$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getConfirmationDetails$1;->d:I

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

    iput v3, v0, Lcom/vuitton/android/data/repository/CartRepositoryImpl$getConfirmationDetails$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/CartRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;->g(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method
