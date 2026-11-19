.class final Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$loadProductAvailabilities$1$1;
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
    c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$loadProductAvailabilities$1$1"
    f = "PdpViewModelImpl.kt"
    l = {
        0x36d,
        0x377
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:Ljava/lang/Object;

.field public d:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

.field public final synthetic i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$loadProductAvailabilities$1$1;->h:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$loadProductAvailabilities$1$1;->i:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$loadProductAvailabilities$1$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$loadProductAvailabilities$1$1;->h:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$loadProductAvailabilities$1$1;->i:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$loadProductAvailabilities$1$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$loadProductAvailabilities$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$loadProductAvailabilities$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$loadProductAvailabilities$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$loadProductAvailabilities$1$1;->h:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->m0:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$loadProductAvailabilities$1$1;->g:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v5, :cond_1

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$loadProductAvailabilities$1$1;->f:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$loadProductAvailabilities$1$1;->e:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$loadProductAvailabilities$1$1;->d:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$loadProductAvailabilities$1$1;->c:Ljava/lang/Object;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$loadProductAvailabilities$1$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v6, v4

    goto/16 :goto_4

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :cond_1
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$loadProductAvailabilities$1$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    move-object v13, v0

    move-object v0, p1

    move-object p1, v13

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->N:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v7, Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Action$GetAvailability;->a:Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Action$GetAvailability;

    invoke-interface {p1, v0, v7}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object p1

    const-string v0, "sku"

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$loadProductAvailabilities$1$1;->i:Ljava/lang/String;

    invoke-virtual {p1, v7, v0}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->Q:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v8, "isStoreMode"

    const-string v9, "true"

    invoke-virtual {p1, v9, v8}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v8, "rmsCode"

    invoke-virtual {p1, v0, v8}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :cond_3
    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->C:Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase;

    sget-object v8, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$loadProductAvailabilities$1$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v5, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$loadProductAvailabilities$1$1;->g:I

    invoke-virtual {v0, v7, p0}, Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_4

    goto :goto_3

    :cond_4
    :goto_0
    sget-object v5, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v5, v0, Lkotlin/Result$Failure;

    if-nez v5, :cond_6

    :try_start_0
    check-cast v0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;

    if-eqz v0, :cond_5

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->e0:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;

    iget-boolean v7, v7, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->a:Z

    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;

    iget-boolean v8, v8, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->i:Z

    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;

    iget-boolean v5, v5, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->j:Z

    invoke-static {v0, v7, v8, v5}, Lcom/vuitton/android/presentation/screen/pdp/mappers/SkuAvailabilityMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;ZZZ)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_5
    move-object v0, v6

    goto :goto_2

    :goto_1
    sget-object v5, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v5, Lkotlin/Result$Failure;

    invoke-direct {v5, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v5

    :cond_6
    :goto_2
    move-object v5, v0

    instance-of v0, v5, Lkotlin/Result$Failure;

    if-nez v0, :cond_a

    move-object v9, v5

    check-cast v9, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->W:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    if-eqz v7, :cond_9

    if-eqz v9, :cond_7

    iget-object v6, v9, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->f:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;

    :cond_7
    move-object v10, v6

    const/4 v11, -0x1

    const v12, 0x1ff3ff

    const/4 v8, 0x0

    invoke-static/range {v7 .. v12}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/util/Map;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;II)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    move-result-object v6

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$loadProductAvailabilities$1$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$loadProductAvailabilities$1$1;->c:Ljava/lang/Object;

    iput-object v6, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$loadProductAvailabilities$1$1;->d:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$loadProductAvailabilities$1$1;->e:Ljava/lang/Object;

    iput-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$loadProductAvailabilities$1$1;->f:Ljava/lang/Object;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$loadProductAvailabilities$1$1;->g:I

    invoke-static {v1, v6, p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->Ac(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Enum;

    move-result-object p0

    if-ne p0, v3, :cond_8

    :goto_3
    return-object v3

    :cond_8
    move-object v3, p1

    move-object p1, p0

    move-object p0, v3

    move-object v3, v0

    move-object v0, v2

    :goto_4
    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    move-object p1, p0

    move-object v0, v3

    :cond_9
    invoke-interface {v0, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_a
    invoke-static {v5}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_c

    instance-of v0, p0, Lcom/vuitton/android/domain/usecase/products/GetAvailabilityException$NotECommerce;

    if-nez v0, :cond_b

    new-instance v0, Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Error$GetAvailabilityError;

    invoke-direct {v0, p0}, Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Error$GetAvailabilityError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    :cond_b
    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;->CallForAvailability:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;

    invoke-interface {v2, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_c
    iget-object p0, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->a0:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
