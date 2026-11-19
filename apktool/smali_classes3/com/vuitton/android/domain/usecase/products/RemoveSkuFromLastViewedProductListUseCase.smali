.class public final Lcom/vuitton/android/domain/usecase/products/RemoveSkuFromLastViewedProductListUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/products/RemoveSkuFromLastViewedProductListUseCase;",
        "",
        "Lcom/vuitton/android/domain/repository/LastViewedProductRepository;",
        "lastViewedProductRepository",
        "<init>",
        "(Lcom/vuitton/android/domain/repository/LastViewedProductRepository;)V",
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
.field public final a:Lcom/vuitton/android/domain/repository/LastViewedProductRepository;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/repository/LastViewedProductRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/products/RemoveSkuFromLastViewedProductListUseCase;->a:Lcom/vuitton/android/domain/repository/LastViewedProductRepository;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/domain/usecase/products/RemoveSkuFromLastViewedProductListUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/domain/usecase/products/RemoveSkuFromLastViewedProductListUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/products/RemoveSkuFromLastViewedProductListUseCase$run$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/products/RemoveSkuFromLastViewedProductListUseCase$run$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/products/RemoveSkuFromLastViewedProductListUseCase$run$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/domain/usecase/products/RemoveSkuFromLastViewedProductListUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/products/RemoveSkuFromLastViewedProductListUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/domain/usecase/products/RemoveSkuFromLastViewedProductListUseCase$run$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/products/RemoveSkuFromLastViewedProductListUseCase$run$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/products/RemoveSkuFromLastViewedProductListUseCase;->a:Lcom/vuitton/android/domain/repository/LastViewedProductRepository;

    invoke-interface {p0}, Lcom/vuitton/android/domain/repository/LastViewedProductRepository;->b()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    invoke-interface {p2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->z0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p2

    new-instance v2, Lnj0;

    const/16 v4, 0xf

    invoke-direct {v2, p1, v4}, Lnj0;-><init>(Ljava/lang/String;I)V

    new-instance p1, Lb4;

    const/4 v4, 0x5

    invoke-direct {p1, v2, v4}, Lb4;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    iput v3, v0, Lcom/vuitton/android/domain/usecase/products/RemoveSkuFromLastViewedProductListUseCase$run$1;->d:I

    invoke-interface {p0, p2, v0}, Lcom/vuitton/android/domain/repository/LastViewedProductRepository;->a(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
