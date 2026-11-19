.class public final Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B)\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;",
        "",
        "Lcom/vuitton/android/data/api/bff/user/CartApi;",
        "cartApi",
        "Lcom/vuitton/android/data/api/bff/publication/PublicationCartApi;",
        "publicationCartApi",
        "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;",
        "coroutinesDispatchers",
        "Lkotlinx/serialization/json/Json;",
        "json",
        "<init>",
        "(Lcom/vuitton/android/data/api/bff/user/CartApi;Lcom/vuitton/android/data/api/bff/publication/PublicationCartApi;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lkotlinx/serialization/json/Json;)V",
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
.field public final a:Lcom/vuitton/android/data/api/bff/user/CartApi;

.field public final b:Lcom/vuitton/android/data/api/bff/publication/PublicationCartApi;

.field public final c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

.field public final d:Lkotlinx/serialization/json/Json;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/api/bff/user/CartApi;Lcom/vuitton/android/data/api/bff/publication/PublicationCartApi;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lkotlinx/serialization/json/Json;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;->a:Lcom/vuitton/android/data/api/bff/user/CartApi;

    iput-object p2, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;->b:Lcom/vuitton/android/data/api/bff/publication/PublicationCartApi;

    iput-object p3, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;->c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    iput-object p4, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;->d:Lkotlinx/serialization/json/Json;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;Lkotlin/coroutines/jvm/internal/ContinuationImpl;Z)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$addGiftMessage$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$addGiftMessage$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$addGiftMessage$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$addGiftMessage$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$addGiftMessage$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$addGiftMessage$1;-><init>(Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$addGiftMessage$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$addGiftMessage$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;->c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p2}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p2

    new-instance v2, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$addGiftMessage$2;

    invoke-direct {v2, p0, p1, p3, v3}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$addGiftMessage$2;-><init>(Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;ZLkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$addGiftMessage$1;->d:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final b(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$addToCart$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$addToCart$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$addToCart$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$addToCart$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$addToCart$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$addToCart$1;-><init>(Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$addToCart$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$addToCart$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;->c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p3}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p3

    new-instance v2, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$addToCart$2;

    invoke-direct {v2, p0, p2, p1, v4}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$addToCart$2;-><init>(Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$addToCart$1;->d:I

    invoke-static {p3, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Lkotlin/Result;

    iget-object p0, p3, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final c(Ljava/util/List;ZLcom/vuitton/foundation/model/domain/model/cart/GiftOption;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p4, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$chooseSamples$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$chooseSamples$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$chooseSamples$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$chooseSamples$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$chooseSamples$1;

    invoke-direct {v0, p0, p4}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$chooseSamples$1;-><init>(Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p4, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$chooseSamples$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$chooseSamples$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p4, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;->c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p4}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p4

    new-instance v4, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$chooseSamples$2;

    const/4 v9, 0x0

    move-object v5, p0

    move-object v8, p1

    move v7, p2

    move-object v6, p3

    invoke-direct/range {v4 .. v9}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$chooseSamples$2;-><init>(Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;ZLjava/util/List;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$chooseSamples$1;->d:I

    invoke-static {p4, v4, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p4, Lkotlin/Result;

    iget-object p0, p4, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCart$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCart$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCart$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCart$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCart$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCart$1;-><init>(Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCart$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCart$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;->c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p1}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p1

    new-instance v2, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCart$2;

    invoke-direct {v2, p0, v3}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCart$2;-><init>(Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCart$1;->d:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final e(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCartContribution$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCartContribution$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCartContribution$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCartContribution$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCartContribution$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCartContribution$1;-><init>(Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCartContribution$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCartContribution$1;->d:I

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

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;->b:Lcom/vuitton/android/data/api/bff/publication/PublicationCartApi;

    iput v3, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCartContribution$1;->d:I

    invoke-interface {p0, v0}, Lcom/vuitton/android/data/api/bff/publication/PublicationCartApi;->getCartContribution(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto;

    invoke-static {p1}, Lcom/vuitton/android/data/dto/cart/bff/mapper/CartContributionMapperKt;->a(Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto;)Lcom/vuitton/foundation/model/domain/model/cart/CartContribution;

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

    if-eqz p1, :cond_5

    const-string v0, "CartContribution"

    const-string v1, "Error when fetching cart contribution"

    sget-object v2, Lcom/vuitton/foundation/logger/LegacyLogger;->a:Lcom/vuitton/foundation/logger/LegacyLogger;

    invoke-virtual {v2, v0, v1, p1}, Lcom/vuitton/foundation/logger/LegacyLogger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    return-object p0

    :cond_6
    throw p0
.end method

.method public final f(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCartCount$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCartCount$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCartCount$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCartCount$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCartCount$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCartCount$1;-><init>(Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCartCount$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCartCount$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;->c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p1}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p1

    new-instance v2, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCartCount$2;

    invoke-direct {v2, p0, v3}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCartCount$2;-><init>(Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getCartCount$1;->d:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final g(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getConfirmationDetails$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getConfirmationDetails$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getConfirmationDetails$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getConfirmationDetails$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getConfirmationDetails$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getConfirmationDetails$1;-><init>(Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getConfirmationDetails$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getConfirmationDetails$1;->d:I

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

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;->a:Lcom/vuitton/android/data/api/bff/user/CartApi;

    iput v3, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$getConfirmationDetails$1;->d:I

    invoke-interface {p0, v0}, Lcom/vuitton/android/data/api/bff/user/CartApi;->getConfirmationDetails(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;

    invoke-static {p1}, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/mapper/CheckoutConfirmationMapperKt;->a(Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;)Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;

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

.method public final h(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$prepareOrder$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$prepareOrder$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$prepareOrder$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$prepareOrder$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$prepareOrder$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$prepareOrder$1;-><init>(Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$prepareOrder$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$prepareOrder$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;->a:Lcom/vuitton/android/data/api/bff/user/CartApi;

    iput v3, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$prepareOrder$1;->d:I

    invoke-interface {p1, v0}, Lcom/vuitton/android/data/api/bff/user/CartApi;->prepareOrder(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lcom/vuitton/android/data/dto/cart/bff/PrepareOrderDto;

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_6

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v0, p1

    :goto_4
    check-cast v0, Lkotlin/Result;

    iget-object p1, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_5

    return-object p1

    :cond_5
    iget-object p0, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;->d:Lkotlinx/serialization/json/Json;

    invoke-static {p0, v0}, Lcom/vuitton/android/data/datasource/cart/CartErrorMapperKt;->a(Lkotlinx/serialization/json/Json;Ljava/lang/Throwable;)Lcom/vuitton/foundation/model/domain/error/cart/CartError;

    move-result-object p0

    throw p0

    :cond_6
    throw p1
.end method

.method public final i(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$removeItemFromCart$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$removeItemFromCart$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$removeItemFromCart$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$removeItemFromCart$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$removeItemFromCart$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$removeItemFromCart$1;-><init>(Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$removeItemFromCart$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$removeItemFromCart$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;->c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p2}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p2

    new-instance v2, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$removeItemFromCart$2;

    invoke-direct {v2, p0, p1, v3}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$removeItemFromCart$2;-><init>(Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$removeItemFromCart$1;->d:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final j(Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;->c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {v0}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$resetCartContainer$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$resetCartContainer$2;-><init>(Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final k(Lcom/vuitton/foundation/model/domain/model/cart/CheckoutFeedback;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$sendCheckoutFeedback$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$sendCheckoutFeedback$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$sendCheckoutFeedback$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$sendCheckoutFeedback$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$sendCheckoutFeedback$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$sendCheckoutFeedback$1;-><init>(Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$sendCheckoutFeedback$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$sendCheckoutFeedback$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;->a:Lcom/vuitton/android/data/api/bff/user/CartApi;

    new-instance p3, Lcom/vuitton/android/data/dto/account/orders/CheckoutSurveyBodyDto;

    iget-object v2, p1, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutFeedback;->a:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutFeedback;->b:Ljava/lang/String;

    invoke-direct {p3, v2, p1, p2}, Lcom/vuitton/android/data/dto/account/orders/CheckoutSurveyBodyDto;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    iput v3, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$sendCheckoutFeedback$1;->d:I

    invoke-interface {p0, p3, v0}, Lcom/vuitton/android/data/api/bff/user/CartApi;->sendCheckoutSurvey(Lcom/vuitton/android/data/dto/account/orders/CheckoutSurveyBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

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

.method public final l(Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p4, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$updateItemQuantity$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$updateItemQuantity$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$updateItemQuantity$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$updateItemQuantity$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$updateItemQuantity$1;

    invoke-direct {v0, p0, p4}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$updateItemQuantity$1;-><init>(Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p4, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$updateItemQuantity$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$updateItemQuantity$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p4, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;->c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p4}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p4

    new-instance v4, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$updateItemQuantity$2;

    const/4 v9, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$updateItemQuantity$2;-><init>(Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

    iput v3, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$updateItemQuantity$1;->d:I

    invoke-static {p4, v4, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p4, Lkotlin/Result;

    iget-object p0, p4, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final m(Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;Lkotlin/coroutines/jvm/internal/ContinuationImpl;Z)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$updateShoppingBag$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$updateShoppingBag$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$updateShoppingBag$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$updateShoppingBag$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$updateShoppingBag$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$updateShoppingBag$1;-><init>(Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$updateShoppingBag$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$updateShoppingBag$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;->c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p2}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p2

    new-instance v2, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$updateShoppingBag$2;

    invoke-direct {v2, p0, p1, p3, v3}, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$updateShoppingBag$2;-><init>(Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource;Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;ZLkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/datasource/cart/bff/CartDataSource$updateShoppingBag$1;->d:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0
.end method
