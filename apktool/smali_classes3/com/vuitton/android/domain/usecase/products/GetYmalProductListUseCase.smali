.class public final Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase;",
        "",
        "Lcom/vuitton/android/domain/repository/ProductRepository;",
        "productRepository",
        "Lcom/vuitton/android/domain/repository/AuthTokenRepository;",
        "authTokenRepository",
        "Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;",
        "analyticsWrapperRepository",
        "<init>",
        "(Lcom/vuitton/android/domain/repository/ProductRepository;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;)V",
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
.field public final a:Lcom/vuitton/android/domain/repository/ProductRepository;

.field public final b:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

.field public final c:Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/repository/ProductRepository;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase;->a:Lcom/vuitton/android/domain/repository/ProductRepository;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase;->b:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    iput-object p3, p0, Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase;->c:Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase$run$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase$run$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase$run$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase$run$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase$run$1;->f:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :cond_2
    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase$run$1;->c:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase$run$1;->b:Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase$run$1;->b:Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase$run$1;->b:Ljava/lang/String;

    iput v5, v0, Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase$run$1;->f:I

    iget-object p2, p0, Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase;->c:Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;

    invoke-interface {p2, v0}, Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;->f(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    check-cast p2, Ljava/lang/String;

    iput-object p1, v0, Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase$run$1;->b:Ljava/lang/String;

    iput-object p2, v0, Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase$run$1;->c:Ljava/lang/String;

    iput v4, v0, Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase$run$1;->f:I

    iget-object v2, p0, Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase;->b:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    invoke-interface {v2, v0}, Lcom/vuitton/android/domain/repository/AuthTokenRepository;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    goto :goto_3

    :cond_6
    move-object v7, v2

    move-object v2, p1

    move-object p1, p2

    move-object p2, v7

    :goto_2
    check-cast p2, Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;

    iput-object v6, v0, Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase$run$1;->b:Ljava/lang/String;

    iput-object v6, v0, Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase$run$1;->c:Ljava/lang/String;

    iput v3, v0, Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase$run$1;->f:I

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase;->a:Lcom/vuitton/android/domain/repository/ProductRepository;

    invoke-interface {p0, v2, p1, p2, v0}, Lcom/vuitton/android/domain/repository/ProductRepository;->f(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/authentication/AuthToken;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    :goto_3
    return-object v1

    :cond_7
    return-object p0
.end method
