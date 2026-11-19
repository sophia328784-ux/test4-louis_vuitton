.class final Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$lazyFetchProducts$1;
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
    c = "com.vuitton.android.presentation.screen.spotlight.SpotlightViewModelImpl$lazyFetchProducts$1"
    f = "SpotlightViewModelImpl.kt"
    l = {
        0xb5
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$lazyFetchProducts$1;->c:Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$lazyFetchProducts$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$lazyFetchProducts$1;->c:Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;

    invoke-direct {p1, p2, p0}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$lazyFetchProducts$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$lazyFetchProducts$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$lazyFetchProducts$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$lazyFetchProducts$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$lazyFetchProducts$1;->c:Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$lazyFetchProducts$1;->b:I

    const/4 v5, 0x1

    const/16 v6, 0xa

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    if-ne v4, v5, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_4

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    iget-object v9, v9, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->g:Ljava/util/List;

    check-cast v9, Ljava/lang/Iterable;

    invoke-static {v8, v9}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;

    iget-object v9, v9, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->d:Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;

    iget-object v9, v9, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;->a:Ljava/lang/String;

    if-eqz v9, :cond_4

    new-instance v10, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v10, v9}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v10, v7

    :goto_2
    if-eqz v10, :cond_3

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/products/GetProductShortListUseCase;

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    iget-object v9, v9, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->b:Ljava/lang/String;

    sget-object v10, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v10, v9}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    iput v5, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$lazyFetchProducts$1;->b:I

    invoke-virtual {v1, v8, v0}, Lcom/vuitton/android/domain/usecase/products/GetProductShortListUseCase;->a(Ljava/util/ArrayList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_7

    return-object v3

    :cond_7
    :goto_4
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v1, v0, Lkotlin/Result$Failure;

    if-nez v1, :cond_d

    :try_start_0
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;

    const-string v4, ""

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;

    sget-object v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v9, v3, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->e:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v3, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->b:Ljava/lang/String;

    iget-object v5, v3, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->c:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/common/Asset;->a:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    if-eqz v5, :cond_8

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;->a:Ljava/lang/String;

    goto :goto_6

    :cond_8
    move-object v5, v7

    :goto_6
    if-nez v5, :cond_9

    move-object v11, v4

    goto :goto_7

    :cond_9
    move-object v11, v5

    :goto_7
    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->o:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;

    if-eqz v3, :cond_a

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;->b:Ljava/lang/String;

    goto :goto_8

    :cond_a
    move-object v3, v7

    :goto_8
    if-nez v3, :cond_b

    move-object v12, v4

    goto :goto_9

    :cond_b
    move-object v12, v3

    :goto_9
    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_b

    :cond_c
    :goto_a
    move-object v0, v1

    goto :goto_c

    :goto_b
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_d
    :goto_c
    instance-of v1, v0, Lkotlin/Result$Failure;

    if-nez v1, :cond_17

    check-cast v0, Ljava/util/List;

    :goto_d
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    iget-object v8, v5, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->g:Ljava/util/List;

    check-cast v8, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_e
    :goto_f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;

    move-object v11, v0

    check-cast v11, Ljava/lang/Iterable;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;

    iget-object v13, v13, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;->a:Ljava/lang/String;

    iget-object v14, v10, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->d:Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;

    iget-object v14, v14, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;->a:Ljava/lang/String;

    if-nez v14, :cond_10

    const/4 v13, 0x0

    goto :goto_10

    :cond_10
    sget-object v15, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    :goto_10
    if-eqz v13, :cond_f

    goto :goto_11

    :cond_11
    move-object v12, v7

    :goto_11
    check-cast v12, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;

    iget-object v11, v10, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->d:Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;

    iget-object v13, v11, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;->b:Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;

    if-nez v12, :cond_13

    if-eqz v13, :cond_12

    goto :goto_12

    :cond_12
    move-object v13, v7

    goto :goto_13

    :cond_13
    :goto_12
    iget-object v11, v11, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;->a:Ljava/lang/String;

    new-instance v14, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;

    invoke-direct {v14, v11, v13, v12, v7}, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v11, v10, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->a:Ljava/lang/String;

    iget-object v12, v10, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->b:Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotPositionUiModel;

    iget-object v10, v10, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;

    invoke-direct {v13, v11, v12, v10, v14}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotPositionUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;)V

    :goto_13
    if-eqz v13, :cond_e

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_14
    iget-object v10, v5, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->a:Ljava/lang/String;

    iget-object v11, v5, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->b:Ljava/lang/String;

    iget-object v12, v5, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iget v13, v5, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->d:F

    iget-object v14, v5, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->e:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    iget-object v15, v5, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->f:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    iget-object v8, v5, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->h:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    iget-object v6, v5, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->i:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;

    iget-boolean v5, v5, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->j:Z

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v16, v9

    new-instance v9, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    move/from16 v19, v5

    move-object/from16 v18, v6

    move-object/from16 v17, v8

    invoke-direct/range {v9 .. v19}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetUiModel;FLcom/vuitton/android/presentation/model/common/AssetVideoUiModel;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;Z)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v6, 0xa

    goto/16 :goto_e

    :cond_15
    invoke-interface {v2, v1, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_14

    :cond_16
    const/16 v6, 0xa

    goto/16 :goto_d

    :cond_17
    :goto_14
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
