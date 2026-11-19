.class final Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadProductsForSection$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadProductsForSection$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
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
    c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$loadProductsForSection$1"
    f = "FeedViewModelImpl.kt"
    l = {
        0x2bb,
        0x2bc,
        0x2c2,
        0x2da,
        0x2e6
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadProductsForSection$1;->c:Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadProductsForSection$1;->d:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadProductsForSection$1;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadProductsForSection$1;->f:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadProductsForSection$1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadProductsForSection$1;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadProductsForSection$1;->f:Ljava/util/List;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadProductsForSection$1;->c:Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadProductsForSection$1;->d:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadProductsForSection$1;-><init>(Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadProductsForSection$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadProductsForSection$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadProductsForSection$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadProductsForSection$1;->d:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    iget-object v7, v1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadProductsForSection$1;->b:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v8, "FeedViewModelImpl"

    const/4 v6, 0x5

    const/16 v9, 0xa

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v3, :cond_5

    if-eq v3, v13, :cond_4

    if-eq v3, v12, :cond_3

    if-eq v3, v11, :cond_2

    if-eq v3, v10, :cond_1

    if-ne v3, v6, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    check-cast v2, Lkotlin/Result;

    iget-object v2, v2, Lkotlin/Result;->b:Ljava/lang/Object;

    move-object v10, v2

    goto/16 :goto_1

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    check-cast v2, Lkotlin/Result;

    iget-object v2, v2, Lkotlin/Result;->b:Ljava/lang/Object;

    move-object v10, v2

    goto/16 :goto_6

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    goto/16 :goto_4

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    check-cast v3, Lkotlin/Result;

    iget-object v3, v3, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_3

    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v3, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadProductsForSection$1$WhenMappings;->a:[I

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadProductsForSection$1;->c:Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v3, v3, v14

    if-eq v3, v13, :cond_f

    if-eq v3, v12, :cond_8

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadProductsForSection$1;->e:Ljava/lang/String;

    if-eq v3, v11, :cond_7

    if-ne v3, v10, :cond_6

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->a0:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState;

    invoke-virtual {v1, v5, v0}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Ec(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState;)V

    goto/16 :goto_8

    :cond_6
    invoke-static {}, Lv40;->g()V

    return-object v4

    :cond_7
    iput v6, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadProductsForSection$1;->b:I

    invoke-static {v1, v5, v0}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Bc(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    move-result-object v0

    if-ne v0, v2, :cond_18

    goto/16 :goto_5

    :cond_8
    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadProductsForSection$1;->f:Ljava/util/List;

    if-nez v3, :cond_9

    sget-object v3, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_9
    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3, v9}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v6, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v6, v5}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    const/4 v4, 0x0

    const/16 v5, 0x1c

    move-object v3, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadProductsForSection$1;->e:Ljava/lang/String;

    move-object v0, v3

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_b
    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->t:Lcom/vuitton/android/domain/usecase/products/GetProductShortListUseCase;

    iput v10, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadProductsForSection$1;->b:I

    invoke-virtual {v3, v4, v0}, Lcom/vuitton/android/domain/usecase/products/GetProductShortListUseCase;->a(Ljava/util/ArrayList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_c

    goto/16 :goto_5

    :cond_c
    move-object v10, v3

    :goto_1
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, v10, Lkotlin/Result$Failure;

    if-nez v2, :cond_e

    move-object v2, v10

    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2, v9}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;

    invoke-static {v4}, Lcom/vuitton/android/presentation/model/common/mapper/ProductShortMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;)Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_d
    const/4 v5, 0x0

    const/16 v6, 0x1c

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadProductsForSection$1;->e:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;I)V

    :cond_e
    invoke-static {v10}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v8, v3, v2}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    const/4 v4, 0x0

    const/16 v5, 0x1c

    move-object v3, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadProductsForSection$1;->e:Ljava/lang/String;

    move-object v0, v3

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;I)V

    goto/16 :goto_8

    :cond_f
    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->v:Lcom/vuitton/android/domain/usecase/dynamicyield/IsDynamicYieldActivatedUseCase;

    iput v13, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadProductsForSection$1;->b:I

    invoke-virtual {v3, v0}, Lcom/vuitton/android/domain/usecase/dynamicyield/IsDynamicYieldActivatedUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_10

    goto :goto_5

    :cond_10
    :goto_3
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v6, v3, Lkotlin/Result$Failure;

    if-eqz v6, :cond_11

    move-object v3, v4

    :cond_11
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->s:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->DYNAMIC_YIELD:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v4}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v4

    iput v12, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadProductsForSection$1;->b:I

    invoke-virtual {v3, v4, v5, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_12

    goto :goto_5

    :cond_12
    :goto_4
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_13

    move v5, v13

    :cond_13
    if-nez v5, :cond_14

    sget-object v2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    const/4 v4, 0x0

    const/16 v5, 0x1c

    move-object v3, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadProductsForSection$1;->e:Ljava/lang/String;

    move-object v0, v3

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_14
    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->w:Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase;

    iput v11, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadProductsForSection$1;->b:I

    invoke-virtual {v3, v0}, Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_15

    :goto_5
    return-object v2

    :cond_15
    move-object v10, v3

    :goto_6
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, v10, Lkotlin/Result$Failure;

    if-nez v2, :cond_17

    move-object v2, v10

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYRecommendedProductList;

    iget-object v3, v2, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYRecommendedProductList;->a:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3, v9}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYRecommendedProduct;

    iget-object v6, v5, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYRecommendedProduct;->a:Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;

    invoke-static {v6}, Lcom/vuitton/android/presentation/model/common/mapper/ProductTinyMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;)Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;

    move-result-object v6

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYRecommendedProduct;->b:Ljava/lang/String;

    iget-object v12, v6, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;->a:Ljava/lang/String;

    iget-object v13, v6, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;->b:Ljava/lang/String;

    iget-object v14, v6, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;->c:Ljava/lang/String;

    iget v15, v6, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;->d:I

    iget-object v9, v6, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;->e:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    iget-object v6, v6, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;->f:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;

    const/16 v19, 0x0

    move-object/from16 v18, v5

    move-object/from16 v17, v6

    move-object/from16 v16, v9

    invoke-direct/range {v11 .. v19}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_16
    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYRecommendedProductList;->b:Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x18

    move-object v3, v4

    move-object v4, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadProductsForSection$1;->e:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;I)V

    :cond_17
    invoke-static {v10}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v8, v3, v2}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    const/4 v4, 0x0

    const/16 v5, 0x1c

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadProductsForSection$1;->e:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v20, v1

    move-object v1, v0

    move-object/from16 v0, v20

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;I)V

    :cond_18
    :goto_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
