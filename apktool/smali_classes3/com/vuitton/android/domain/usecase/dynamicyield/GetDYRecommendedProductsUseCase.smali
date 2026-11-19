.class public final Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase;",
        "",
        "Lcom/vuitton/android/domain/repository/DynamicYieldRepository;",
        "dynamicYieldRepository",
        "Lcom/vuitton/android/domain/usecase/config/GetDynamicYieldCampaignUseCase;",
        "getDynamicYieldCampaignUseCase",
        "Lcom/vuitton/android/domain/repository/ProductRepository;",
        "productRepository",
        "<init>",
        "(Lcom/vuitton/android/domain/repository/DynamicYieldRepository;Lcom/vuitton/android/domain/usecase/config/GetDynamicYieldCampaignUseCase;Lcom/vuitton/android/domain/repository/ProductRepository;)V",
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
.field public final a:Lcom/vuitton/android/domain/repository/DynamicYieldRepository;

.field public final b:Lcom/vuitton/android/domain/usecase/config/GetDynamicYieldCampaignUseCase;

.field public final c:Lcom/vuitton/android/domain/repository/ProductRepository;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/repository/DynamicYieldRepository;Lcom/vuitton/android/domain/usecase/config/GetDynamicYieldCampaignUseCase;Lcom/vuitton/android/domain/repository/ProductRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase;->a:Lcom/vuitton/android/domain/repository/DynamicYieldRepository;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase;->b:Lcom/vuitton/android/domain/usecase/config/GetDynamicYieldCampaignUseCase;

    iput-object p3, p0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase;->c:Lcom/vuitton/android/domain/repository/ProductRepository;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 13

    instance-of v0, p1, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase$run$1;->i:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase$run$1;->i:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase$run$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase$run$1;->g:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase$run$1;->i:I

    const/16 v3, 0xa

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase$run$1;->f:Ljava/util/List;

    check-cast p0, Ljava/util/List;

    iget-object v0, v0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase$run$1;->e:Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYVariation;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :cond_2
    iget v2, v0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase$run$1;->d:I

    iget v5, v0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase$run$1;->c:I

    iget v7, v0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase$run$1;->b:I

    iget-object v8, v0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase$run$1;->e:Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYVariation;

    check-cast v8, Ljava/lang/String;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p1, p0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase;->b:Lcom/vuitton/android/domain/usecase/config/GetDynamicYieldCampaignUseCase;

    invoke-virtual {p1}, Lcom/vuitton/android/domain/usecase/config/GetDynamicYieldCampaignUseCase;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object v2, p0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase;->a:Lcom/vuitton/android/domain/repository/DynamicYieldRepository;

    sget-object v7, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYPageType$HOMEPAGE;->a:Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYPageType$HOMEPAGE;

    iput-object v6, v0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase$run$1;->e:Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYVariation;

    const/4 v8, 0x0

    iput v8, v0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase$run$1;->b:I

    iput v8, v0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase$run$1;->c:I

    iput v8, v0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase$run$1;->d:I

    iput v5, v0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase$run$1;->i:I

    invoke-interface {v2, p1, v7, v0}, Lcom/vuitton/android/domain/repository/DynamicYieldRepository;->f(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYPageType;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_3

    :cond_4
    move v2, v8

    move v5, v2

    move v7, v5

    :goto_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYVariation;

    iget-object v8, p1, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYVariation;->a:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    new-instance p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYRecommendedProductList;

    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYVariation;->b:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYRecommendedProductList;-><init>(Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_5
    move-object v9, v8

    check-cast v9, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v9, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYRecommendation;

    iget-object v11, v11, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYRecommendation;->a:Ljava/lang/String;

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v12, v11}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase;->c:Lcom/vuitton/android/domain/repository/ProductRepository;

    iput-object p1, v0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase$run$1;->e:Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYVariation;

    move-object v9, v8

    check-cast v9, Ljava/util/List;

    iput-object v9, v0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase$run$1;->f:Ljava/util/List;

    iput v7, v0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase$run$1;->b:I

    iput v5, v0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase$run$1;->c:I

    iput v2, v0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase$run$1;->d:I

    iput v4, v0, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase$run$1;->i:I

    invoke-interface {p0, v10, v0}, Lcom/vuitton/android/domain/repository/ProductRepository;->g(Ljava/util/ArrayList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    :goto_3
    return-object v1

    :cond_7
    move-object v0, p1

    move-object p1, p0

    move-object p0, v8

    :goto_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->g(I)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_8

    move v1, v2

    :cond_8
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;->d:Ljava/lang/String;

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v4, v3}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_9
    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYRecommendation;

    iget-object v3, v1, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYRecommendation;->a:Ljava/lang/String;

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v4, v3}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;

    if-eqz v3, :cond_b

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYRecommendedProduct;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYRecommendation;->b:Ljava/lang/String;

    invoke-direct {v4, v3, v1}, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYRecommendedProduct;-><init>(Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;Ljava/lang/String;)V

    goto :goto_7

    :cond_b
    move-object v4, v6

    :goto_7
    if-eqz v4, :cond_a

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYRecommendedProductList;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYVariation;->b:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYRecommendedProductList;-><init>(Ljava/util/List;Ljava/lang/String;)V

    :goto_8
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_9

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No DY campaign available"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_9
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_e

    goto :goto_a

    :cond_e
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_f

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_a
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_f
    throw p0
.end method
