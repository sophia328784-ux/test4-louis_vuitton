.class final Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$fetchProductCarousel$1;
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
    c = "com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModelImpl$fetchProductCarousel$1"
    f = "AICompanionViewModelImpl.kt"
    l = {
        0x133
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Z

.field public c:I

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$fetchProductCarousel$1;->d:Ljava/util/List;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$fetchProductCarousel$1;->e:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$fetchProductCarousel$1;->f:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$fetchProductCarousel$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$fetchProductCarousel$1;->e:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$fetchProductCarousel$1;->f:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$fetchProductCarousel$1;->d:Ljava/util/List;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$fetchProductCarousel$1;-><init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$fetchProductCarousel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$fetchProductCarousel$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$fetchProductCarousel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$fetchProductCarousel$1;->c:I

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$fetchProductCarousel$1;->e:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    iget-boolean v1, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$fetchProductCarousel$1;->b:Z

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    check-cast v2, Lkotlin/Result;

    iget-object v2, v2, Lkotlin/Result;->b:Ljava/lang/Object;

    move v15, v1

    goto/16 :goto_3

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$fetchProductCarousel$1;->d:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessageSection$EditorialSection;

    if-eqz v8, :cond_2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessageSection$EditorialSection;

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessageSection$EditorialSection;->a:Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;

    instance-of v8, v8, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$ProductCarousel;

    if-eqz v8, :cond_4

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessageSection$EditorialSection;

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessageSection$EditorialSection;->a:Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$ProductCarousel;

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$ProductCarousel;->b:Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_2

    :cond_6
    iget-object v2, v3, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    invoke-virtual {v2}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->a0:Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;

    iget-boolean v2, v2, Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;->a:Z

    iget-object v7, v3, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/products/GetProductShortListUseCase;

    iput-boolean v2, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$fetchProductCarousel$1;->b:Z

    iput v4, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$fetchProductCarousel$1;->c:I

    invoke-virtual {v7, v6, v0}, Lcom/vuitton/android/domain/usecase/products/GetProductShortListUseCase;->a(Ljava/util/ArrayList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_7

    return-object v1

    :cond_7
    move v15, v2

    move-object v2, v6

    :goto_3
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v1, v2, Lkotlin/Result$Failure;

    if-nez v1, :cond_16

    move-object v1, v2

    check-cast v1, Ljava/util/List;

    iget-object v6, v3, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    :goto_4
    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;

    iget-object v9, v8, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;->d:Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatSessionUiModel;

    iget-object v9, v9, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatSessionUiModel;->b:Ljava/util/List;

    check-cast v9, Ljava/lang/Iterable;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$fetchProductCarousel$1;->f:Ljava/lang/String;

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;

    iget-object v12, v12, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->a:Ljava/lang/String;

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    goto :goto_5

    :cond_9
    move-object v10, v5

    :goto_5
    move-object v9, v10

    check-cast v9, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;

    if-nez v9, :cond_a

    move-object/from16 p1, v1

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object v0, v7

    move v7, v4

    goto/16 :goto_10

    :cond_a
    iget-object v10, v9, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->d:Ljava/util/List;

    check-cast v10, Ljava/lang/Iterable;

    instance-of v12, v10, Ljava/util/Collection;

    if-eqz v12, :cond_c

    move-object v12, v10

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_c

    :cond_b
    move-object/from16 p1, v1

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v29, v7

    move-object/from16 v16, v8

    move v7, v4

    goto/16 :goto_e

    :cond_c
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel;

    instance-of v14, v13, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel$EditorialSection;

    if-eqz v14, :cond_14

    check-cast v13, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel$EditorialSection;

    iget-object v13, v13, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel$EditorialSection;->a:Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    instance-of v13, v13, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$ProductCarouselUiModel;

    if-eqz v13, :cond_14

    new-instance v12, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v10, v13}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v12, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel;

    instance-of v14, v10, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel$EditorialSection;

    if-eqz v14, :cond_10

    move-object v14, v10

    check-cast v14, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel$EditorialSection;

    iget-object v14, v14, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel$EditorialSection;->a:Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    instance-of v5, v14, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$ProductCarouselUiModel;

    if-eqz v5, :cond_10

    move-object v5, v14

    check-cast v5, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$ProductCarouselUiModel;

    move-object v10, v1

    check-cast v10, Ljava/lang/Iterable;

    new-instance v14, Ljava/util/ArrayList;

    invoke-static {v10, v13}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v14, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v16, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    move-object/from16 v17, v8

    iget-object v8, v10, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->e:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v16, v9

    iget-object v9, v10, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->b:Ljava/lang/String;

    iget-object v13, v10, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->c:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-static {v13}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/Asset;)Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-result-object v13

    iget-object v13, v13, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v10, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->o:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;

    if-eqz v0, :cond_d

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/ProductShortMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    move-result-object v0

    move-object/from16 v19, v0

    goto :goto_9

    :cond_d
    const/16 v19, 0x0

    :goto_9
    iget-object v0, v10, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->k:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/ProductShortMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBackgroundUiModel;

    move-result-object v0

    iget-object v10, v10, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->n:Ljava/lang/String;

    if-eqz v10, :cond_e

    const/4 v10, 0x1

    :goto_a
    move-object/from16 v20, v7

    goto :goto_b

    :cond_e
    const/4 v10, 0x0

    goto :goto_a

    :goto_b
    new-instance v7, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;

    move-object/from16 v21, v16

    const/16 v16, 0x20

    move-object/from16 v22, v17

    const/16 v17, 0x0

    move-object/from16 v23, v14

    move v14, v10

    move-object v10, v13

    const/4 v13, 0x0

    move-object/from16 p1, v19

    move-object/from16 v19, v4

    move-object v4, v12

    move-object/from16 v12, p1

    move-object/from16 p1, v1

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v30, v11

    move-object/from16 v29, v20

    move-object/from16 v2, v21

    move-object/from16 v1, v22

    move-object/from16 v3, v23

    move-object v11, v0

    const/16 v0, 0xa

    invoke-direct/range {v7 .. v17}, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBackgroundUiModel;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v13, v0

    move-object v8, v1

    move-object v9, v2

    move-object v14, v3

    move-object v12, v4

    move-object/from16 v4, v19

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    move-object/from16 v7, v29

    move-object/from16 v11, v30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_8

    :cond_f
    move-object/from16 p1, v1

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v29, v7

    move-object v1, v8

    move-object v2, v9

    move-object/from16 v30, v11

    move-object v4, v12

    move v0, v13

    move-object v3, v14

    const/4 v7, 0x1

    invoke-static {v5, v3, v7}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$ProductCarouselUiModel;->b(Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$ProductCarouselUiModel;Ljava/util/ArrayList;I)Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$ProductCarouselUiModel;

    move-result-object v3

    new-instance v10, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel$EditorialSection;

    invoke-direct {v10, v3}, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel$EditorialSection;-><init>(Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;)V

    goto :goto_c

    :cond_10
    move-object/from16 p1, v1

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v29, v7

    move-object v1, v8

    move-object v2, v9

    move-object/from16 v30, v11

    move v0, v13

    move v7, v4

    move-object v4, v12

    :goto_c
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v13, v0

    move-object v8, v1

    move-object v9, v2

    move-object v12, v4

    move v4, v7

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    move-object/from16 v7, v29

    move-object/from16 v11, v30

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_7

    :cond_11
    move-object/from16 p1, v1

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v29, v7

    move-object v1, v8

    move-object v2, v9

    move-object/from16 v30, v11

    move v0, v13

    move v7, v4

    move-object v4, v12

    const/16 v3, 0x37

    invoke-static {v2, v4, v3}, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->a(Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;Ljava/util/ArrayList;I)Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;

    move-result-object v2

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;->d:Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatSessionUiModel;

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatSessionUiModel;->b:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4, v0}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;

    iget-object v8, v4, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->a:Ljava/lang/String;

    move-object/from16 v9, v30

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    move-object v4, v2

    :cond_12
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v30, v9

    goto :goto_d

    :cond_13
    invoke-static {v3, v5}, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatSessionUiModel;->a(Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatSessionUiModel;Ljava/util/ArrayList;)Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatSessionUiModel;

    move-result-object v20

    const/16 v25, 0x0

    const/16 v26, 0x1f7

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v16, v1

    invoke-static/range {v16 .. v26}, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;->a(Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;ZLcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionOnboardingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatSessionUiModel;Ljava/util/List;Ljava/lang/Boolean;ZZLjava/util/List;I)Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;

    move-result-object v8

    goto :goto_f

    :cond_14
    move-object/from16 p1, v1

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v29, v7

    move-object/from16 v16, v8

    move-object v2, v9

    move-object v9, v11

    move v7, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v7

    move-object v11, v9

    move-object/from16 v8, v16

    move-object/from16 v3, v28

    move-object/from16 v7, v29

    const/4 v5, 0x0

    move-object v9, v2

    move-object/from16 v2, v27

    goto/16 :goto_6

    :goto_e
    move-object/from16 v8, v16

    :goto_f
    move-object/from16 v0, v29

    :goto_10
    invoke-interface {v6, v0, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_11

    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v7

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_16
    move-object/from16 v27, v2

    move-object/from16 v28, v3

    :goto_11
    invoke-static/range {v27 .. v27}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_17

    move-object/from16 v1, v28

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    sget-object v2, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->v:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error fetching products for carousel: "

    invoke-static {v4, v3, v1, v2, v0}, La;->y(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_17
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
