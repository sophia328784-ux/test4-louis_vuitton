.class final Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$2;
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
        "Lcom/vuitton/android/data/datasource/cart/bff/CheckoutUrlWithCookies;",
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
        "Lcom/vuitton/android/data/datasource/cart/bff/CheckoutUrlWithCookies;",
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
    c = "com.vuitton.android.data.datasource.cart.twist.CartTwistDataSource$getCheckoutUrl$2"
    f = "CartTwistDataSource.kt"
    l = {
        0x1f,
        0x27,
        0x2b
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public final synthetic g:Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$2;->g:Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$2;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$2;->g:Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$2;-><init>(Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$2;->f:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$2;->b:Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource;

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_1
    iget-object p0, p0, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$2;->b:Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource;

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$2;->e:I

    iget v4, p0, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$2;->d:I

    iget v6, p0, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$2;->c:I

    iget-object v7, p0, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$2;->b:Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource;

    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$2;->g:Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource;

    :try_start_3
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p1, v7, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource;->b:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    iput-object v7, p0, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$2;->b:Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource;

    const/4 v1, 0x0

    iput v1, p0, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$2;->c:I

    iput v1, p0, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$2;->d:I

    iput v1, p0, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$2;->e:I

    iput v4, p0, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$2;->f:I

    invoke-interface {p1, p0}, Lcom/vuitton/android/domain/repository/AuthTokenRepository;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    move v4, v1

    move v6, v4

    :goto_0
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;

    instance-of v8, p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;

    if-eqz v8, :cond_e

    move-object v8, p1

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist;

    instance-of v9, v8, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;

    if-eqz v9, :cond_6

    iget-object v2, v7, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource;->a:Lcom/vuitton/android/data/api/bff/user/TwistCartApi;

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$Guest;->b:Ljava/lang/String;

    iput-object v5, p0, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$2;->b:Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource;

    iput v6, p0, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$2;->c:I

    iput v4, p0, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$2;->d:I

    iput v1, p0, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$2;->e:I

    iput v3, p0, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$2;->f:I

    invoke-interface {v2, p1, p0}, Lcom/vuitton/android/data/api/bff/user/TwistCartApi;->getCheckoutUrlGuest(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    check-cast p1, Lcom/vuitton/android/data/dto/common/PageUrlDto;

    goto :goto_4

    :cond_6
    instance-of v3, v8, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    if-eqz v3, :cond_d

    iget-object v3, v7, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource;->a:Lcom/vuitton/android/data/api/bff/user/TwistCartApi;

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken$Twist$User;->c:Ljava/lang/String;

    iput-object v5, p0, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$2;->b:Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource;

    iput v6, p0, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$2;->c:I

    iput v4, p0, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$2;->d:I

    iput v1, p0, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$2;->e:I

    iput v2, p0, Lcom/vuitton/android/data/datasource/cart/twist/CartTwistDataSource$getCheckoutUrl$2;->f:I

    invoke-interface {v3, p1, p0}, Lcom/vuitton/android/data/api/bff/user/TwistCartApi;->getCheckoutUrl(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    :goto_2
    return-object v0

    :cond_7
    :goto_3
    check-cast p1, Lcom/vuitton/android/data/dto/common/PageUrlDto;

    :goto_4
    iget-object p0, p1, Lcom/vuitton/android/data/dto/common/PageUrlDto;->a:Ljava/lang/String;

    if-eqz p0, :cond_c

    invoke-static {p0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v0

    iget-object p1, p1, Lcom/vuitton/android/data/dto/common/PageUrlDto;->b:Ljava/util/List;

    if-eqz p1, :cond_b

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/dto/common/CookieDto;

    invoke-static {v2}, Lcom/vuitton/android/data/dto/common/mapper/CookieMapperKt;->b(Lcom/vuitton/android/data/dto/common/CookieDto;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lkotlin/Result$Failure;

    if-eqz v4, :cond_8

    move-object v3, v5

    :cond_8
    check-cast v3, Ljava/lang/String;

    invoke-static {v2}, Lcom/vuitton/android/data/dto/common/mapper/CookieMapperKt;->a(Lcom/vuitton/android/data/dto/common/CookieDto;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Lkotlin/Result$Failure;

    if-eqz v4, :cond_9

    move-object v2, v5

    :cond_9
    check-cast v2, Ljava/lang/String;

    if-eqz v3, :cond_a

    if-eqz v2, :cond_a

    new-instance v4, Lcom/vuitton/android/data/datasource/cart/bff/Cookie;

    invoke-direct {v4, v2, v3}, Lcom/vuitton/android/data/datasource/cart/bff/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_a
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object p1

    new-instance v0, Lcom/vuitton/android/data/datasource/cart/bff/CheckoutUrlWithCookies;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/datasource/cart/bff/CheckoutUrlWithCookies;-><init>(Ljava/lang/String;Ljava/util/List;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_6

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Checkout url is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Should be Twist-authenticated"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_6
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_f

    goto :goto_7

    :cond_f
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_10

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_7
    check-cast p0, Lkotlin/Result;

    new-instance p1, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_10
    throw p1
.end method
