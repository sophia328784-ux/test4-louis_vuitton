.class final Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$openTutorial$1;
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
    c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$openTutorial$1"
    f = "BeautyVtoViewModelImpl.kt"
    l = {
        0x35d,
        0x362
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

.field public d:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Throwable;

.field public g:I

.field public h:I

.field public final synthetic i:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$openTutorial$1;->i:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$openTutorial$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$openTutorial$1;->i:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

    invoke-direct {p1, p2, p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$openTutorial$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$openTutorial$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$openTutorial$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$openTutorial$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$openTutorial$1;->i:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->V:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$openTutorial$1;->h:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eqz v5, :cond_2

    if-eq v5, v6, :cond_1

    if-ne v5, v8, :cond_0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$openTutorial$1;->f:Ljava/lang/Throwable;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$openTutorial$1;->d:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$openTutorial$1;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$openTutorial$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v9

    :cond_1
    iget v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$openTutorial$1;->g:I

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$openTutorial$1;->d:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$openTutorial$1;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$openTutorial$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v10, p1

    check-cast v10, Lkotlin/Result;

    iget-object v10, v10, Lkotlin/Result;->b:Ljava/lang/Object;

    move-object/from16 v30, v2

    move v2, v1

    move-object v1, v3

    move-object/from16 v3, v30

    goto/16 :goto_5

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v5, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet$Tutorial;->a:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet$Tutorial;

    invoke-virtual {v1, v5, v7}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->ta(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet;Z)V

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v10, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->C:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v11, Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Action$OpenLooksDetail;->a:Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Action$OpenLooksDetail;

    invoke-interface {v5, v10, v11}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v5

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v10, :cond_3

    iget-object v10, v10, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->a:Ljava/lang/String;

    sget-object v11, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    goto :goto_0

    :cond_3
    move-object v10, v9

    :goto_0
    const-string v11, ""

    if-nez v10, :cond_4

    move-object v10, v11

    :cond_4
    const-string v12, "sku"

    invoke-virtual {v5, v10, v12}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;

    if-eqz v10, :cond_5

    iget-object v10, v10, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;->c:Ljava/lang/String;

    if-eqz v10, :cond_5

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_5
    move-object v10, v9

    :goto_1
    if-nez v10, :cond_6

    goto :goto_2

    :cond_6
    move-object v11, v10

    :goto_2
    const-string v10, "type"

    invoke-virtual {v5, v11, v10}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    move-object v5, v9

    :goto_3
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v2, :cond_14

    iget-object v10, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/pdp/vto/GetTutorialUseCase;

    sget-object v11, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v12, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->a:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;

    if-eqz v3, :cond_8

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;->a:Ljava/lang/String;

    goto :goto_4

    :cond_8
    move-object v3, v9

    :goto_4
    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$openTutorial$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$openTutorial$1;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$openTutorial$1;->d:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    iput v7, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$openTutorial$1;->g:I

    iput v6, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$openTutorial$1;->h:I

    invoke-virtual {v10, v12, v3, v0}, Lcom/vuitton/android/domain/usecase/pdp/vto/GetTutorialUseCase;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v4, :cond_9

    move-object v2, v4

    goto/16 :goto_d

    :cond_9
    move-object v3, v2

    move v2, v7

    :goto_5
    sget-object v11, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v11, v10, Lkotlin/Result$Failure;

    if-nez v11, :cond_12

    move-object v11, v10

    check-cast v11, Lcom/vuitton/foundation/model/domain/model/product/vto/Tutorial;

    iget-object v12, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->X:Lkotlinx/coroutines/flow/MutableStateFlow;

    :goto_6
    invoke-interface {v12}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialState;

    new-instance v14, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialState$Success;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v11, Lcom/vuitton/foundation/model/domain/model/product/vto/Tutorial;->a:Ljava/lang/String;

    iget-object v7, v11, Lcom/vuitton/foundation/model/domain/model/product/vto/Tutorial;->b:Ljava/lang/String;

    move-object/from16 v27, v9

    iget-object v9, v11, Lcom/vuitton/foundation/model/domain/model/product/vto/Tutorial;->c:Ljava/lang/String;

    iget-object v8, v11, Lcom/vuitton/foundation/model/domain/model/product/vto/Tutorial;->d:Ljava/lang/String;

    iget-object v6, v11, Lcom/vuitton/foundation/model/domain/model/product/vto/Tutorial;->e:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    if-eqz v6, :cond_a

    invoke-static {v6}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-result-object v6

    move-object/from16 v20, v6

    goto :goto_7

    :cond_a
    move-object/from16 v20, v27

    :goto_7
    iget-object v6, v11, Lcom/vuitton/foundation/model/domain/model/product/vto/Tutorial;->f:Ljava/lang/String;

    move-object/from16 v21, v6

    iget-object v6, v11, Lcom/vuitton/foundation/model/domain/model/product/vto/Tutorial;->g:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    move-object/from16 v17, v7

    new-instance v7, Ljava/util/ArrayList;

    move-object/from16 v19, v8

    const/16 v8, 0xa

    move-object/from16 v18, v9

    invoke-static {v6, v8}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/foundation/model/domain/model/product/vto/TutorialSection;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v9, Lcom/vuitton/foundation/model/domain/model/product/vto/TutorialSection;->a:Ljava/lang/String;

    move-object/from16 v16, v6

    iget-object v6, v9, Lcom/vuitton/foundation/model/domain/model/product/vto/TutorialSection;->c:Lcom/vuitton/foundation/model/domain/model/product/vto/TutorialSectionData;

    iget-object v9, v9, Lcom/vuitton/foundation/model/domain/model/product/vto/TutorialSection;->b:Lcom/vuitton/foundation/model/domain/model/product/vto/TutorialSectionType;

    sget-object v22, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/mappers/TutorialMapperKt$WhenMappings;->a:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v22, v9

    move-object/from16 v28, v11

    const/4 v11, 0x1

    if-eq v9, v11, :cond_c

    const/4 v11, 0x2

    if-ne v9, v11, :cond_b

    sget-object v9, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialSectionTypeUiModel;->STEPS:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialSectionTypeUiModel;

    goto :goto_9

    :cond_b
    invoke-static {}, Lv40;->g()V

    return-object v27

    :cond_c
    sget-object v9, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialSectionTypeUiModel;->ASSET_LIST:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialSectionTypeUiModel;

    :goto_9
    instance-of v11, v6, Lcom/vuitton/foundation/model/domain/model/product/vto/TutorialSectionData$AssetListSection;

    if-eqz v11, :cond_e

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/product/vto/TutorialSectionData$AssetListSection;

    iget-object v6, v6, Lcom/vuitton/foundation/model/domain/model/product/vto/TutorialSectionData$AssetListSection;->a:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    new-instance v11, Ljava/util/ArrayList;

    move-object/from16 v29, v4

    move-object/from16 v22, v15

    const/16 v15, 0xa

    invoke-static {v6, v15}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v11, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-static {v6}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/Asset;)Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_d
    new-instance v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialSectionDataUiModel$AssetListSectionUiModel;

    invoke-direct {v4, v11}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialSectionDataUiModel$AssetListSectionUiModel;-><init>(Ljava/util/List;)V

    goto :goto_b

    :cond_e
    move-object/from16 v29, v4

    move-object/from16 v22, v15

    const/16 v15, 0xa

    instance-of v4, v6, Lcom/vuitton/foundation/model/domain/model/product/vto/TutorialSectionData$StepsSection;

    if-eqz v4, :cond_f

    new-instance v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialSectionDataUiModel$StepsSectionUiModel;

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/product/vto/TutorialSectionData$StepsSection;

    iget-object v11, v6, Lcom/vuitton/foundation/model/domain/model/product/vto/TutorialSectionData$StepsSection;->a:Ljava/lang/String;

    iget-object v6, v6, Lcom/vuitton/foundation/model/domain/model/product/vto/TutorialSectionData$StepsSection;->b:Ljava/util/List;

    invoke-direct {v4, v11, v6}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialSectionDataUiModel$StepsSectionUiModel;-><init>(Ljava/lang/String;Ljava/util/List;)V

    :goto_b
    new-instance v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialSectionUiModel;

    invoke-direct {v6, v8, v9, v4}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialSectionUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialSectionTypeUiModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialSectionDataUiModel;)V

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v15

    move-object/from16 v6, v16

    move-object/from16 v15, v22

    move-object/from16 v11, v28

    move-object/from16 v4, v29

    goto/16 :goto_8

    :cond_f
    invoke-static {}, Lv40;->g()V

    return-object v27

    :cond_10
    move-object/from16 v29, v4

    move-object/from16 v28, v11

    move-object/from16 v22, v15

    new-instance v15, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialUiModel;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x180

    const/16 v26, 0x0

    move-object/from16 v16, v22

    move-object/from16 v22, v7

    invoke-direct/range {v15 .. v26}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v14, v15}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialState$Success;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialUiModel;)V

    invoke-interface {v12, v13, v14}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->a:Ljava/lang/String;

    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v6

    new-instance v7, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$getRecommendedProducts$1;

    move-object/from16 v8, v27

    invoke-direct {v7, v1, v4, v8}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$getRecommendedProducts$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    invoke-static {v6, v8, v8, v7, v4}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_c

    :cond_11
    move-object/from16 v9, v27

    move-object/from16 v11, v28

    move-object/from16 v4, v29

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    goto/16 :goto_6

    :cond_12
    move-object/from16 v29, v4

    move-object v8, v9

    :goto_c
    invoke-static {v10}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_14

    const/4 v6, 0x0

    invoke-virtual {v1, v8, v6}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->ta(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet;Z)V

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->h0:Lkotlinx/coroutines/channels/BufferedChannel;

    iget-object v11, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->h:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v12, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v7, 0x7f140967

    const/4 v9, 0x2

    invoke-direct {v12, v7, v8, v9, v8}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v15, 0x0

    const/16 v16, 0x3c

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v7

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$openTutorial$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$openTutorial$1;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$openTutorial$1;->d:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$openTutorial$1;->e:Ljava/lang/Object;

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$openTutorial$1;->f:Ljava/lang/Throwable;

    iput v2, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$openTutorial$1;->g:I

    const/4 v9, 0x2

    iput v9, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$openTutorial$1;->h:I

    invoke-interface {v6, v7, v0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v2, v29

    if-ne v0, v2, :cond_13

    :goto_d
    return-object v2

    :cond_13
    move-object v2, v3

    move-object v0, v5

    move-object v3, v1

    move-object v1, v4

    :goto_e
    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[getTutorial : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] onFailure"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "BeautyVtoViewModelImpl"

    invoke-interface {v3, v4, v2, v1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v0, :cond_14

    new-instance v2, Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error$OpenLooksDetailError;

    invoke-direct {v2, v1}, Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error$OpenLooksDetailError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v2}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :cond_14
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
