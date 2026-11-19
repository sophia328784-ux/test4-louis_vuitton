.class final Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$fetchSpotlight$2;
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
    c = "com.vuitton.android.presentation.screen.spotlight.SpotlightViewModelImpl$fetchSpotlight$2"
    f = "SpotlightViewModelImpl.kt"
    l = {
        0x92,
        0xaa
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;

.field public final synthetic d:J


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;JLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$fetchSpotlight$2;->c:Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;

    iput-wide p2, p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$fetchSpotlight$2;->d:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance p1, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$fetchSpotlight$2;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$fetchSpotlight$2;->c:Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;

    iget-wide v1, p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$fetchSpotlight$2;->d:J

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$fetchSpotlight$2;-><init>(Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;JLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$fetchSpotlight$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$fetchSpotlight$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$fetchSpotlight$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 42

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$fetchSpotlight$2;->c:Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$fetchSpotlight$2;->b:I

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_2

    if-eq v4, v7, :cond_1

    if-ne v4, v6, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v30, v2

    goto/16 :goto_12

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    check-cast v4, Lkotlin/Result;

    iget-object v4, v4, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :goto_0
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v4, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/spotlight/GetSpotlightUseCase;

    iget-object v8, v1, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->l:Ljava/lang/String;

    iput v7, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$fetchSpotlight$2;->b:I

    invoke-virtual {v4, v8, v0}, Lcom/vuitton/android/domain/usecase/spotlight/GetSpotlightUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_3

    move-object v4, v3

    goto/16 :goto_11

    :cond_3
    :goto_1
    sget-object v8, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v8, v4, Lkotlin/Result$Failure;

    if-nez v8, :cond_13

    move-object v8, v4

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/spotlight/Spotlight;

    iget-object v9, v1, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    :goto_2
    invoke-interface {v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Ljava/util/List;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v8, Lcom/vuitton/foundation/model/domain/model/spotlight/Spotlight;->a:Ljava/lang/String;

    iget-object v12, v8, Lcom/vuitton/foundation/model/domain/model/spotlight/Spotlight;->b:Ljava/util/List;

    check-cast v12, Ljava/lang/Iterable;

    new-instance v13, Ljava/util/ArrayList;

    const/16 v14, 0xa

    invoke-static {v12, v14}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v15

    invoke-direct {v13, v15}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;

    iget-object v6, v15, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->a:Ljava/lang/String;

    iget-object v5, v15, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->f:Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    iget-object v7, v15, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->b:Ljava/lang/String;

    iget-object v14, v15, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->c:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-static {v14}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/Asset;)Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-result-object v19

    iget v14, v15, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->d:F

    move-object/from16 v28, v4

    iget-object v4, v15, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->e:Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    if-eqz v4, :cond_4

    invoke-static {v4}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;)Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    move-result-object v16

    move-object/from16 v21, v16

    goto :goto_4

    :cond_4
    const/16 v21, 0x0

    :goto_4
    if-eqz v5, :cond_5

    invoke-static {v5}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;)Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    move-result-object v16

    move-object/from16 v22, v16

    :goto_5
    move-object/from16 v17, v6

    goto :goto_6

    :cond_5
    const/16 v22, 0x0

    goto :goto_5

    :goto_6
    iget-object v6, v15, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->g:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    move-object/from16 v18, v7

    new-instance v7, Ljava/util/ArrayList;

    move-object/from16 v29, v8

    move-object/from16 v27, v12

    const/16 v8, 0xa

    invoke-static {v6, v8}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v7, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightHotspot;

    new-instance v8, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;

    move-object/from16 v16, v6

    iget-object v6, v12, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightHotspot;->a:Ljava/lang/String;

    move/from16 v20, v14

    iget-object v14, v12, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightHotspot;->b:Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightPosition;

    move-object/from16 v30, v2

    new-instance v2, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotPositionUiModel;

    move-object/from16 v31, v3

    iget v3, v14, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightPosition;->a:F

    const/high16 v23, 0x42c80000    # 100.0f

    div-float v3, v3, v23

    iget v14, v14, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightPosition;->b:F

    div-float v14, v14, v23

    invoke-direct {v2, v3, v14}, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotPositionUiModel;-><init>(FF)V

    iget-object v3, v12, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightHotspot;->c:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-static {v3}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/Asset;)Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-result-object v3

    iget-object v12, v12, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightHotspot;->d:Lcom/vuitton/foundation/model/domain/model/spotlight/HotspotContent;

    new-instance v32, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;

    iget-object v14, v12, Lcom/vuitton/foundation/model/domain/model/spotlight/HotspotContent;->a:Ljava/lang/String;

    if-eqz v14, :cond_6

    sget-object v23, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v33, v14

    goto :goto_8

    :cond_6
    const/16 v33, 0x0

    :goto_8
    iget-object v12, v12, Lcom/vuitton/foundation/model/domain/model/spotlight/HotspotContent;->b:Lcom/vuitton/foundation/model/domain/model/spotlight/HotspotDetail;

    if-eqz v12, :cond_7

    new-instance v14, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;

    iget-object v0, v12, Lcom/vuitton/foundation/model/domain/model/spotlight/HotspotDetail;->a:Ljava/lang/String;

    move-object/from16 v38, v1

    iget-object v1, v12, Lcom/vuitton/foundation/model/domain/model/spotlight/HotspotDetail;->b:Ljava/lang/String;

    move-object/from16 v39, v9

    iget-object v9, v12, Lcom/vuitton/foundation/model/domain/model/spotlight/HotspotDetail;->c:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    invoke-static {v9}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-result-object v9

    iget-object v12, v12, Lcom/vuitton/foundation/model/domain/model/spotlight/HotspotDetail;->d:Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightCta;

    move-object/from16 v40, v10

    new-instance v10, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;

    move-object/from16 v41, v11

    iget-object v11, v12, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightCta;->a:Ljava/lang/String;

    iget-object v12, v12, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightCta;->b:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    invoke-static {v12}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V

    invoke-direct {v14, v0, v1, v9, v10}, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;)V

    move-object/from16 v34, v14

    goto :goto_9

    :cond_7
    move-object/from16 v38, v1

    move-object/from16 v39, v9

    move-object/from16 v40, v10

    move-object/from16 v41, v11

    const/16 v34, 0x0

    :goto_9
    const/16 v36, 0x4

    const/16 v37, 0x0

    const/16 v35, 0x0

    invoke-direct/range {v32 .. v37}, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v32

    invoke-direct {v8, v6, v2, v3, v0}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotPositionUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v6, v16

    move/from16 v14, v20

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v1, v38

    move-object/from16 v9, v39

    move-object/from16 v10, v40

    move-object/from16 v11, v41

    const/16 v8, 0xa

    goto/16 :goto_7

    :cond_8
    move-object/from16 v38, v1

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v39, v9

    move-object/from16 v40, v10

    move-object/from16 v41, v11

    move/from16 v20, v14

    iget-object v0, v15, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->h:Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;

    invoke-static {v0}, Lcom/vuitton/android/presentation/model/common/mapper/FeatureThemeMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;)Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    move-result-object v24

    iget-object v0, v15, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightSlide;->i:Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightCta;

    if-eqz v0, :cond_9

    new-instance v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightCta;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/spotlight/SpotlightCta;->b:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    invoke-static {v0}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V

    move-object/from16 v25, v1

    goto :goto_a

    :cond_9
    const/16 v25, 0x0

    :goto_a
    if-eqz v4, :cond_a

    iget-object v0, v4, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->b:Ljava/lang/String;

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz v5, :cond_b

    iget-object v0, v5, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->b:Ljava/lang/String;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_d

    :cond_c
    const/16 v26, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/16 v26, 0x1

    :goto_e
    new-instance v16, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    move-object/from16 v23, v7

    invoke-direct/range {v16 .. v26}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetUiModel;FLcom/vuitton/android/presentation/model/common/AssetVideoUiModel;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;Z)V

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v12, v27

    move-object/from16 v4, v28

    move-object/from16 v8, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v1, v38

    move-object/from16 v9, v39

    move-object/from16 v10, v40

    move-object/from16 v11, v41

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/16 v14, 0xa

    goto/16 :goto_3

    :cond_e
    move-object/from16 v38, v1

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v28, v4

    move-object/from16 v29, v8

    move-object/from16 v39, v9

    move-object/from16 v40, v10

    move-object/from16 v41, v11

    new-instance v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightUiModel;

    move-object/from16 v1, v41

    invoke-direct {v0, v1, v13}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightUiModel;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightUiModel;->b:Ljava/util/List;

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-interface {v1, v2, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->j:Z

    move-object/from16 v2, v38

    if-nez v0, :cond_f

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->Ac(I)V

    :cond_f
    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnboardingScreen;->a:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$OnboardingScreen;

    invoke-virtual {v2, v0}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->X9(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel;)V

    goto :goto_f

    :cond_10
    new-instance v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$CollectionScreen;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel$CollectionScreen;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->X9(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightTrackingUiModel;)V

    :goto_f
    invoke-static {v2}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$lazyFetchProducts$1;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$lazyFetchProducts$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;)V

    const/4 v4, 0x3

    invoke-static {v0, v3, v3, v1, v4}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_10

    :cond_11
    move-object/from16 v2, v38

    goto :goto_10

    :cond_12
    move-object/from16 v0, p0

    move-object v9, v1

    move-object/from16 v4, v28

    move-object/from16 v8, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v1, v38

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_13
    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object/from16 v28, v4

    move-object v2, v1

    :goto_10
    invoke-static/range {v28 .. v28}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->A:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz v1, :cond_14

    new-instance v3, Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Error$OpenSpotlightError;

    invoke-direct {v3, v0}, Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Error$OpenSpotlightError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v3}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    :cond_14
    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->s:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_15
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_16
    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->A:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz v0, :cond_17

    invoke-interface {v0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :cond_17
    const/4 v1, 0x2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$fetchSpotlight$2;->b:I

    iget-wide v1, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$fetchSpotlight$2;->d:J

    invoke-static {v1, v2, v0}, Lcom/vuitton/android/presentation/loading/LoaderExt;->a(JLkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v4, v31

    if-ne v0, v4, :cond_18

    :goto_11
    return-object v4

    :cond_18
    :goto_12
    invoke-interface/range {v30 .. v30}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v5, v30

    invoke-interface {v5, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_19
    move-object/from16 v30, v5

    goto :goto_12

    :cond_1a
    move-object v4, v3

    move-object v3, v5

    move-object v5, v2

    move-object v5, v3

    move-object v3, v4

    goto/16 :goto_0
.end method
