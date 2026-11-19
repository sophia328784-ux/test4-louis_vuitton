.class public final Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource;",
        "",
        "Lcom/vuitton/android/data/api/bff/user/TwistCartApi;",
        "twistCartApi",
        "Lcom/vuitton/android/domain/repository/AuthTokenRepository;",
        "authTokenRepository",
        "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;",
        "coroutinesDispatchers",
        "<init>",
        "(Lcom/vuitton/android/data/api/bff/user/TwistCartApi;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V",
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
.field public final a:Lcom/vuitton/android/data/api/bff/user/TwistCartApi;

.field public final b:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

.field public final c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/api/bff/user/TwistCartApi;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource;->a:Lcom/vuitton/android/data/api/bff/user/TwistCartApi;

    iput-object p2, p0, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource;->b:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    iput-object p3, p0, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource;->c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$1;

    iget v1, v0, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$1;-><init>(Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$1;->d:I

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

    iget-object p1, p0, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource;->c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p1}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p1

    new-instance v2, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$2;

    invoke-direct {v2, p0, v3}, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$2;-><init>(Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$1;->d:I

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
