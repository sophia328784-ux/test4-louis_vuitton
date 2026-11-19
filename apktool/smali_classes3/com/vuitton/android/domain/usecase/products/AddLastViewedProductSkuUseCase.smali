.class public final Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase;",
        "",
        "Lcom/vuitton/android/domain/repository/LastViewedProductRepository;",
        "lastViewedProductRepository",
        "Lcom/vuitton/android/domain/repository/RecommendedSourceRepository;",
        "recommendedSourceRepository",
        "<init>",
        "(Lcom/vuitton/android/domain/repository/LastViewedProductRepository;Lcom/vuitton/android/domain/repository/RecommendedSourceRepository;)V",
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

.field public final b:Lcom/vuitton/android/domain/repository/RecommendedSourceRepository;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/repository/LastViewedProductRepository;Lcom/vuitton/android/domain/repository/RecommendedSourceRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase;->a:Lcom/vuitton/android/domain/repository/LastViewedProductRepository;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase;->b:Lcom/vuitton/android/domain/repository/RecommendedSourceRepository;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p4, Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase$run$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase$run$1;->e:I

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase$run$1;

    invoke-direct {v0, p0, p4}, Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object p4, v7, Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase$run$1;->c:Ljava/lang/Object;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v7, Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase$run$1;->e:I

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v9, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    if-ne v1, v8, :cond_1

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v9

    :cond_2
    iget-object p1, v7, Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase$run$1;->b:Ljava/util/ArrayList;

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v1, p0

    goto :goto_2

    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v5

    iget-object p4, p0, Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase;->a:Lcom/vuitton/android/domain/repository/LastViewedProductRepository;

    invoke-interface {p4}, Lcom/vuitton/android/domain/repository/LastViewedProductRepository;->b()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p4

    invoke-interface {p4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Collection;

    invoke-static {p4}, Lkotlin/collections/CollectionsKt;->z0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, v7, Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase$run$1;->b:Ljava/util/ArrayList;

    iput v2, v7, Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase$run$1;->e:I

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v2, p4

    invoke-virtual/range {v1 .. v7}, Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase;->b(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/time/LocalDateTime;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    goto :goto_3

    :cond_4
    move-object p1, v2

    :goto_2
    iput-object v9, v7, Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase$run$1;->b:Ljava/util/ArrayList;

    iput v8, v7, Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase$run$1;->e:I

    invoke-virtual {v1, p1, v7}, Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase;->c(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    :goto_3
    return-object v0

    :cond_5
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final b(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/time/LocalDateTime;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 11

    move-object/from16 v1, p6

    instance-of v3, v1, Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase$updateLastViewedProductList$1;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase$updateLastViewedProductList$1;

    iget v4, v3, Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase$updateLastViewedProductList$1;->d:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase$updateLastViewedProductList$1;->d:I

    :goto_0
    move-object v7, v3

    goto :goto_1

    :cond_0
    new-instance v3, Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase$updateLastViewedProductList$1;

    invoke-direct {v3, p0, v1}, Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase$updateLastViewedProductList$1;-><init>(Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object v1, v7, Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase$updateLastViewedProductList$1;->b:Ljava/lang/Object;

    sget-object v8, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v7, Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase$updateLastViewedProductList$1;->d:I

    const/4 v9, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v9, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/Result;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_5

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const/4 v10, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/product/LastViewedProduct;

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/product/LastViewedProduct;->a:Ljava/lang/String;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v1, La4;

    invoke-direct {v1, p2, v10}, La4;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lb4;

    invoke-direct {v3, v1, v10}, Lb4;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/product/LastViewedProduct;

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/foundation/model/domain/model/product/LastViewedProduct;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/LocalDateTime;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v10, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_4

    :cond_5
    :goto_2
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/product/LastViewedProduct;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/product/LastViewedProduct;->b:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v1, La4;

    invoke-direct {v1, p3, v9}, La4;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lb4;

    invoke-direct {v2, v1, v9}, Lb4;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/product/LastViewedProduct;

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/foundation/model/domain/model/product/LastViewedProduct;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/LocalDateTime;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v10, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_4

    :cond_8
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_9

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/product/LastViewedProduct;

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/foundation/model/domain/model/product/LastViewedProduct;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/LocalDateTime;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v10, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_4

    :cond_9
    new-instance v1, Lcom/vuitton/foundation/model/domain/model/product/LastViewedProduct;

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/foundation/model/domain/model/product/LastViewedProduct;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/LocalDateTime;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v10, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_4
    iput v9, v7, Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase$updateLastViewedProductList$1;->d:I

    iget-object v0, p0, Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase;->a:Lcom/vuitton/android/domain/repository/LastViewedProductRepository;

    invoke-interface {v0, p1, v7}, Lcom/vuitton/android/domain/repository/LastViewedProductRepository;->a(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_a

    return-object v8

    :cond_a
    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final c(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase$updateRecommendedSource$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase$updateRecommendedSource$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase$updateRecommendedSource$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase$updateRecommendedSource$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase$updateRecommendedSource$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase$updateRecommendedSource$1;-><init>(Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase$updateRecommendedSource$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase$updateRecommendedSource$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_7

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase;->b:Lcom/vuitton/android/domain/repository/RecommendedSourceRepository;

    invoke-interface {p0}, Lcom/vuitton/android/domain/repository/RecommendedSourceRepository;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    invoke-interface {p2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x4

    if-lt v2, v5, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v4

    :goto_1
    if-eqz p1, :cond_8

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1, v5}, Lkotlin/collections/CollectionsKt;->q0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 v2, 0x0

    invoke-static {v2, p1}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/product/LastViewedProduct;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/product/LastViewedProduct;->d:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object v2, v4

    :goto_2
    if-eqz v2, :cond_8

    move-object v5, p1

    check-cast v5, Ljava/lang/Iterable;

    instance-of v6, v5, Ljava/util/Collection;

    if-eqz v6, :cond_5

    move-object v6, v5

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/product/LastViewedProduct;

    iget-object v6, v6, Lcom/vuitton/foundation/model/domain/model/product/LastViewedProduct;->d:Ljava/lang/String;

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_4

    :cond_7
    :goto_3
    move-object v4, p1

    :cond_8
    :goto_4
    if-eqz v4, :cond_f

    move-object p1, v4

    check-cast p1, Ljava/lang/Iterable;

    instance-of v2, p1, Ljava/util/Collection;

    if-eqz v2, :cond_9

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_6

    :cond_9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/product/LastViewedProduct;

    move-object v5, p2

    check-cast v5, Ljava/lang/Iterable;

    instance-of v6, v5, Ljava/util/Collection;

    if-eqz v6, :cond_b

    move-object v6, v5

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_5

    :cond_b
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/product/LastViewedProduct;

    iget-object v6, v6, Lcom/vuitton/foundation/model/domain/model/product/LastViewedProduct;->a:Ljava/lang/String;

    iget-object v7, v2, Lcom/vuitton/foundation/model/domain/model/product/LastViewedProduct;->a:Ljava/lang/String;

    sget-object v8, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_8

    :cond_d
    :goto_6
    iput v3, v0, Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase$updateRecommendedSource$1;->d:I

    invoke-interface {p0, v4, v0}, Lcom/vuitton/android/domain/repository/RecommendedSourceRepository;->b(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_e

    return-object v1

    :cond_e
    :goto_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_f
    :goto_8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
