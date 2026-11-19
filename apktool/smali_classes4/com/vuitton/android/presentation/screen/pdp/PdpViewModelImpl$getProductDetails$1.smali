.class final Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetails$1;
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
    c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$getProductDetails$1"
    f = "PdpViewModelImpl.kt"
    l = {
        0x1ee,
        0x1f5,
        0x202
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

.field public e:I

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;

.field public final synthetic i:Z

.field public final synthetic j:Lcom/vuitton/android/domain/monitoring/MonitorAction;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;ZLcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetails$1;->f:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetails$1;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetails$1;->h:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;

    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetails$1;->i:Z

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetails$1;->j:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetails$1;

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetails$1;->i:Z

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetails$1;->j:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetails$1;->f:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetails$1;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetails$1;->h:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetails$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;ZLcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetails$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetails$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetails$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v5, p0

    iget-object v6, v5, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetails$1;->f:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    iget-object v7, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->W:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v8, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->X:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v9, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->Y:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, v5, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetails$1;->e:I

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v1, 0x1

    iget-object v2, v5, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetails$1;->g:Ljava/lang/String;

    const/4 v13, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    if-eq v0, v12, :cond_1

    if-ne v0, v11, :cond_0

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetails$1;->d:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object v1, v5, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetails$1;->c:Ljava/lang/Object;

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    iget-object v3, v5, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetails$1;->b:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v14, v2

    goto/16 :goto_d

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v13

    :cond_1
    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetails$1;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;

    iget-object v1, v5, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetails$1;->b:Ljava/lang/Object;

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v1, p1

    move-object v14, v2

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object v14, v2

    goto/16 :goto_4

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    move-object v14, v2

    goto :goto_2

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :cond_4
    invoke-interface {v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v9, v0, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v8, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->a0:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->q:Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase;

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    move-object v3, v2

    iget-boolean v2, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->U:Z

    iget-object v4, v5, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetails$1;->h:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;

    if-eqz v4, :cond_5

    invoke-static {v4}, Lcom/vuitton/android/presentation/screen/pdp/mappers/ProductCustomizationMapperKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;)Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;

    move-result-object v4

    goto :goto_0

    :cond_5
    move-object v4, v13

    :goto_0
    iget-object v14, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->P:Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;

    sget-object v15, Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;->IN_STORE:Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;

    if-ne v14, v15, :cond_6

    iget-object v14, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->Q:Ljava/lang/String;

    goto :goto_1

    :cond_6
    move-object v14, v13

    :goto_1
    iput v1, v5, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetails$1;->e:I

    move-object v1, v3

    move-object v3, v4

    move-object v4, v14

    invoke-virtual/range {v0 .. v5}, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase;->a(Ljava/lang/String;ZLcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v1

    if-ne v0, v10, :cond_7

    goto/16 :goto_c

    :cond_7
    :goto_2
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v1, v0, Lkotlin/Result$Failure;

    if-nez v1, :cond_9

    :try_start_1
    check-cast v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;

    iget-object v1, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->t:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->DIAMONDS_PDP:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v2}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v2

    iput-object v13, v5, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetails$1;->b:Ljava/lang/Object;

    iput-object v0, v5, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetails$1;->c:Ljava/lang/Object;

    iput v12, v5, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetails$1;->e:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v5}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v10, :cond_8

    goto/16 :goto_c

    :cond_8
    :goto_3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/vuitton/android/presentation/screen/pdp/mappers/ProductMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/product/universal/Product;Z)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    move-result-object v0

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    :goto_4
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :cond_9
    :goto_5
    instance-of v1, v0, Lkotlin/Result$Failure;

    if-nez v1, :cond_14

    move-object v3, v0

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object v1, v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->V:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;

    if-eqz v1, :cond_a

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;->e:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;

    goto :goto_6

    :cond_a
    move-object v2, v13

    :goto_6
    if-eqz v2, :cond_b

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;->MONOGRAM:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    :goto_7
    move-object v4, v1

    goto :goto_b

    :cond_b
    if-eqz v1, :cond_c

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;->d:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;

    goto :goto_8

    :cond_c
    move-object v2, v13

    :goto_8
    if-eqz v2, :cond_d

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;->BEAUTY_ENGRAVING:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    goto :goto_7

    :cond_d
    if-eqz v1, :cond_e

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;

    goto :goto_9

    :cond_e
    move-object v2, v13

    :goto_9
    if-eqz v2, :cond_f

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;->HOTSTAMPING:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    goto :goto_7

    :cond_f
    if-eqz v1, :cond_10

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;

    goto :goto_a

    :cond_10
    move-object v1, v13

    :goto_a
    if-eqz v1, :cond_11

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;->PERFUME_ENGRAVING:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    goto :goto_7

    :cond_11
    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;->NO_CUSTOMIZATION:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    goto :goto_7

    :goto_b
    iget-object v1, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->c0:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v2, v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->t0:Ljava/lang/String;

    invoke-static {v2}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->g(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iput-object v0, v5, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetails$1;->b:Ljava/lang/Object;

    iput-object v6, v5, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetails$1;->c:Ljava/lang/Object;

    iput-object v3, v5, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetails$1;->d:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iput v11, v5, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetails$1;->e:I

    iget-object v2, v5, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetails$1;->g:Ljava/lang/String;

    move-object v1, v6

    move-object v6, v5

    iget-boolean v5, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetails$1;->i:Z

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->Bc(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v6

    move-object v6, v1

    if-ne v2, v10, :cond_12

    :goto_c
    return-object v10

    :cond_12
    move-object v1, v3

    move-object v3, v0

    move-object v0, v1

    move-object v1, v6

    :goto_d
    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->T:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel;

    instance-of v2, v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel$SellableUiModel;

    if-eqz v2, :cond_13

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModelKt;->b(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;

    move-result-object v2

    if-eqz v2, :cond_13

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->h:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

    new-instance v10, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$ContentView;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b:Ljava/lang/String;

    new-instance v15, Lkotlin/Pair;

    const-string v11, "af_content_id"

    invoke-direct {v15, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->c:Ljava/lang/String;

    new-instance v11, Lkotlin/Pair;

    const-string v12, "af_content"

    invoke-direct {v11, v12, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 p1, v14

    iget-wide v13, v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;->c:D

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    new-instance v12, Lkotlin/Pair;

    const-string v13, "af_price"

    invoke-direct {v12, v13, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;->b:Ljava/lang/String;

    new-instance v2, Lkotlin/Pair;

    const-string v13, "af_currency"

    invoke-direct {v2, v13, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v15, v11, v12, v2}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->i([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$ContentView;-><init>(Ljava/util/Map;)V

    const-string v0, "ProductViewModel"

    invoke-interface {v4, v0, v10}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;)V

    goto :goto_e

    :cond_13
    move-object/from16 p1, v14

    :goto_e
    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$PdpScreen;

    iget-boolean v2, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->U:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->e0:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;

    iget-boolean v4, v4, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->k:Z

    iget-boolean v10, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->V:Z

    invoke-direct {v0, v2, v4, v10}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$PdpScreen;-><init>(Ljava/lang/Boolean;ZZ)V

    invoke-virtual {v1, v0}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->Gc(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;)V

    move-object v0, v3

    goto :goto_f

    :cond_14
    move-object/from16 p1, v14

    :goto_f
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    iget-object v2, v5, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetails$1;->j:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz v0, :cond_15

    new-instance v1, Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Error$LoadProductScreenError;

    invoke-direct {v1, v0}, Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Error$LoadProductScreenError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    iget-object v1, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    const-string v3, "PDP details loading error"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_15
    invoke-interface {v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v9, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v2}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->y0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    if-eqz v0, :cond_17

    iget-boolean v1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->G:Z

    if-eqz v1, :cond_16

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->g:Ljava/lang/String;

    invoke-static {v6}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getSizeGuide$1;

    const/4 v4, 0x0

    invoke-direct {v2, v6, v0, v4}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getSizeGuide$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x3

    invoke-static {v1, v4, v4, v2, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_10

    :cond_16
    const/4 v4, 0x0

    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->n0:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_10

    :cond_17
    const/4 v4, 0x0

    :goto_10
    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    if-eqz v0, :cond_18

    invoke-static {v6}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$loadProductAvailabilities$1$1;

    move-object/from16 v14, p1

    invoke-direct {v1, v6, v14, v4}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$loadProductAvailabilities$1$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x3

    invoke-static {v0, v4, v4, v1, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_11

    :cond_18
    move-object/from16 v14, p1

    const/4 v3, 0x3

    :goto_11
    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    if-eqz v0, :cond_19

    invoke-static {v6}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$loadProductVariationsAvailabilities$1$1;

    invoke-direct {v2, v6, v14, v0, v4}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$loadProductVariationsAvailabilities$1$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v4, v4, v2, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_19
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
