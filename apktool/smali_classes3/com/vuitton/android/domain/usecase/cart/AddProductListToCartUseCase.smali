.class public final Lcom/vuitton/android/domain/usecase/cart/AddProductListToCartUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/cart/AddProductListToCartUseCase;",
        "",
        "Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSotTokenForTwistUserOrNullUseCase;",
        "getSotTokenForTwistUserOrNullUseCase",
        "Lcom/vuitton/android/domain/repository/CartRepository;",
        "cartRepository",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSotTokenForTwistUserOrNullUseCase;Lcom/vuitton/android/domain/repository/CartRepository;)V",
        "domain"
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
.field public final a:Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSotTokenForTwistUserOrNullUseCase;

.field public final b:Lcom/vuitton/android/domain/repository/CartRepository;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSotTokenForTwistUserOrNullUseCase;Lcom/vuitton/android/domain/repository/CartRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/cart/AddProductListToCartUseCase;->a:Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSotTokenForTwistUserOrNullUseCase;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/cart/AddProductListToCartUseCase;->b:Lcom/vuitton/android/domain/repository/CartRepository;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/vuitton/android/domain/usecase/cart/AddProductListToCartUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/domain/usecase/cart/AddProductListToCartUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/cart/AddProductListToCartUseCase$run$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/cart/AddProductListToCartUseCase$run$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/cart/AddProductListToCartUseCase$run$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/domain/usecase/cart/AddProductListToCartUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/cart/AddProductListToCartUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/domain/usecase/cart/AddProductListToCartUseCase$run$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/cart/AddProductListToCartUseCase$run$1;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_4

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
    iget-object p0, v0, Lcom/vuitton/android/domain/usecase/cart/AddProductListToCartUseCase$run$1;->c:Ljava/util/List;

    move-object p1, p0

    check-cast p1, Ljava/util/List;

    iget-object p0, v0, Lcom/vuitton/android/domain/usecase/cart/AddProductListToCartUseCase$run$1;->b:Lcom/vuitton/android/domain/repository/CartRepository;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lcom/vuitton/foundation/model/domain/model/authentication/SotToken;

    if-eqz p2, :cond_3

    iget-object p2, p2, Lcom/vuitton/foundation/model/domain/model/authentication/SotToken;->a:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object p2, v5

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/vuitton/android/domain/usecase/cart/AddProductListToCartUseCase;->b:Lcom/vuitton/android/domain/repository/CartRepository;

    iput-object p2, v0, Lcom/vuitton/android/domain/usecase/cart/AddProductListToCartUseCase$run$1;->b:Lcom/vuitton/android/domain/repository/CartRepository;

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    iput-object v2, v0, Lcom/vuitton/android/domain/usecase/cart/AddProductListToCartUseCase$run$1;->c:Ljava/util/List;

    iput v4, v0, Lcom/vuitton/android/domain/usecase/cart/AddProductListToCartUseCase$run$1;->f:I

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/cart/AddProductListToCartUseCase;->a:Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSotTokenForTwistUserOrNullUseCase;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSotTokenForTwistUserOrNullUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    goto :goto_2

    :cond_5
    move-object v6, p2

    move-object p2, p0

    move-object p0, v6

    :goto_1
    check-cast p2, Ljava/lang/String;

    iput-object v5, v0, Lcom/vuitton/android/domain/usecase/cart/AddProductListToCartUseCase$run$1;->b:Lcom/vuitton/android/domain/repository/CartRepository;

    iput-object v5, v0, Lcom/vuitton/android/domain/usecase/cart/AddProductListToCartUseCase$run$1;->c:Ljava/util/List;

    iput v3, v0, Lcom/vuitton/android/domain/usecase/cart/AddProductListToCartUseCase$run$1;->f:I

    invoke-interface {p0, p2, p1, v0}, Lcom/vuitton/android/domain/repository/CartRepository;->i(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    :goto_2
    return-object v1

    :cond_6
    return-object p0
.end method
