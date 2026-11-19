.class final Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;
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
    c = "com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModelImpl$submitExchange$1"
    f = "OrderReturnOrExchangeViewModelImpl.kt"
    l = {
        0x22a,
        0x23d
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupUiModel;

.field public c:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public d:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;

.field public e:Ljava/lang/Object;

.field public f:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public g:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public final synthetic l:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->l:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->l:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;

    invoke-direct {p1, p2, p0}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->l:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->G:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->k:I

    const/4 v5, 0x1

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eqz v4, :cond_2

    if-eq v4, v5, :cond_1

    if-ne v4, v8, :cond_0

    iget v1, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->j:I

    iget v2, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->h:I

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->g:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->f:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    check-cast v10, Ljava/lang/Throwable;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->e:Ljava/lang/Object;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->d:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->b:Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupUiModel;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v5, v1

    move-object/from16 v23, v6

    move v1, v8

    goto/16 :goto_10

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v9

    :cond_1
    iget v1, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->i:I

    iget v2, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->h:I

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->f:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->e:Ljava/lang/Object;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->d:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->b:Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupUiModel;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v14, p1

    check-cast v14, Lkotlin/Result;

    iget-object v14, v14, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_7

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->F:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v10, v4, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupResponseUiModel$Result;

    if-eqz v10, :cond_3

    check-cast v4, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupResponseUiModel$Result;

    goto :goto_0

    :cond_3
    move-object v4, v9

    :goto_0
    if-eqz v4, :cond_19

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupResponseUiModel$Result;->a:Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupUiModel;

    if-nez v4, :cond_4

    goto/16 :goto_12

    :cond_4
    new-instance v10, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ConfirmExchangeClick;

    iget-object v11, v1, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->B:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;

    if-eqz v11, :cond_5

    iget-object v11, v11, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    if-eqz v11, :cond_5

    iget-object v11, v11, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->g:Ljava/lang/String;

    sget-object v12, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v11, v9

    :goto_1
    if-eqz v11, :cond_6

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v12, v11}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object v12, v9

    :goto_2
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->Q(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    iget-object v12, v4, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupUiModel;->c:Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupShippingMethodUiModel;

    instance-of v13, v12, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupShippingMethodUiModel$Standard;

    if-eqz v13, :cond_7

    const-string v12, "standard"

    goto :goto_3

    :cond_7
    instance-of v12, v12, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupShippingMethodUiModel$ClickAndCollect;

    if-eqz v12, :cond_18

    const-string v12, "click_and_collect"

    :goto_3
    invoke-direct {v10, v11, v12}, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ConfirmExchangeClick;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iget-object v11, v1, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->e:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    sget-object v10, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSubmitResponseUiModel$Loading;->a:Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSubmitResponseUiModel$Loading;

    invoke-interface {v2, v10}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object v10, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$ExchangeRequest;->a:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$ExchangeRequest;

    invoke-virtual {v1, v10}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->X7(Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet;)V

    move v10, v7

    :goto_4
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSubmitResponseUiModel;

    iget-object v12, v1, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v13, v1, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->o:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v14, Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Action$ExchangeSubmit;->a:Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Action$ExchangeSubmit;

    invoke-interface {v12, v13, v14}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v12

    iget-object v13, v1, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->B:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;

    if-eqz v13, :cond_8

    iget-object v13, v13, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    if-eqz v13, :cond_8

    iget-object v13, v13, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->g:Ljava/lang/String;

    goto :goto_5

    :cond_8
    move-object v13, v9

    :goto_5
    if-nez v13, :cond_9

    move-object v13, v6

    :cond_9
    const-string v14, "sku"

    invoke-virtual {v12, v13, v14}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v13, v1, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->B:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;

    if-eqz v13, :cond_a

    iget-object v13, v13, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    if-eqz v13, :cond_a

    iget-object v13, v13, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->j:Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;

    if-eqz v13, :cond_a

    iget-object v13, v13, Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;->c:Ljava/lang/String;

    goto :goto_6

    :cond_a
    move-object v13, v9

    :goto_6
    if-nez v13, :cond_b

    move-object v13, v6

    :cond_b
    const-string v14, "price"

    invoke-virtual {v12, v13, v14}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v13, v1, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/account/order/SubmitExchangeUseCase;

    sget-object v14, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v15, v4, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupUiModel;->a:Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupProductUiModel;

    iget-object v15, v15, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupProductUiModel;->a:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->b:Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupUiModel;

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->d:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->e:Ljava/lang/Object;

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->f:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->g:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v10, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->h:I

    iput v7, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->i:I

    iput v5, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->k:I

    invoke-virtual {v13, v15, v0}, Lcom/vuitton/android/domain/usecase/account/order/SubmitExchangeUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v3, :cond_c

    goto/16 :goto_f

    :cond_c
    move-object v13, v4

    move-object v4, v12

    move-object v12, v2

    move v2, v10

    move-object v10, v11

    move-object v11, v1

    move v1, v7

    :goto_7
    invoke-static {v14}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v15

    if-nez v15, :cond_d

    check-cast v14, Lkotlin/Unit;

    sget-object v1, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSubmitResponseUiModel$Success;->a:Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSubmitResponseUiModel$Success;

    move-object v5, v1

    move-object/from16 v23, v6

    move v1, v8

    :goto_8
    move v6, v2

    move-object v2, v12

    goto/16 :goto_11

    :cond_d
    new-instance v14, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangeFailure;

    iget-object v5, v11, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->B:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;

    if-eqz v5, :cond_e

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    if-eqz v5, :cond_e

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->g:Ljava/lang/String;

    sget-object v16, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    goto :goto_9

    :cond_e
    move-object v5, v9

    :goto_9
    if-eqz v5, :cond_f

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v7, v5}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :cond_f
    move-object v7, v9

    :goto_a
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->Q(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    instance-of v7, v15, Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException;

    if-eqz v7, :cond_10

    move-object v7, v15

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException;

    goto :goto_b

    :cond_10
    move-object v7, v9

    :goto_b
    if-eqz v7, :cond_11

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException;->c:Ljava/lang/String;

    goto :goto_c

    :cond_11
    move-object v7, v9

    :goto_c
    if-nez v7, :cond_12

    move-object v7, v6

    :cond_12
    invoke-direct {v14, v5, v7}, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangeFailure;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iget-object v5, v11, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->e:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {v14}, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    new-instance v5, Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Error$ExchangeSubmitError;

    invoke-direct {v5, v15}, Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Error$ExchangeSubmitError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v4, v5}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    invoke-virtual {v11, v9}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->X7(Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet;)V

    instance-of v5, v15, Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException$OutOfStock;

    iget-object v7, v11, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->t:Lkotlinx/coroutines/flow/SharedFlowImpl;

    iget-object v14, v11, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->m:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v15, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    if-eqz v5, :cond_14

    iget-object v8, v11, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel$Skip;

    if-eqz v8, :cond_13

    const v8, 0x7f14098e

    :goto_d
    move-object/from16 v23, v6

    const/4 v6, 0x2

    goto :goto_e

    :cond_13
    const v8, 0x7f14098d

    goto :goto_d

    :cond_14
    const v8, 0x7f1410e7

    goto :goto_d

    :goto_e
    invoke-direct {v15, v8, v9, v6, v9}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v21, 0x0

    const/16 v22, 0x3c

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v14

    move-object/from16 v18, v15

    invoke-static/range {v17 .. v22}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v6

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->b:Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupUiModel;

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->d:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->e:Ljava/lang/Object;

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->f:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->g:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v2, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->h:I

    iput v1, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->i:I

    iput v5, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->j:I

    const/4 v1, 0x2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$submitExchange$1;->k:I

    invoke-virtual {v7, v6, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_15

    :goto_f
    return-object v3

    :cond_15
    :goto_10
    if-eqz v5, :cond_16

    sget-object v5, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSubmitResponseUiModel$Error$OutOfStock;->a:Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSubmitResponseUiModel$Error$OutOfStock;

    goto/16 :goto_8

    :cond_16
    sget-object v5, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSubmitResponseUiModel$Error$Generic;->a:Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSubmitResponseUiModel$Error$Generic;

    goto/16 :goto_8

    :goto_11
    invoke-interface {v4}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    invoke-interface {v2, v10, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_17
    move v8, v1

    move v10, v6

    move-object v1, v11

    move-object v4, v13

    move-object/from16 v6, v23

    const/4 v5, 0x1

    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_18
    invoke-static {}, Lv40;->g()V

    return-object v9

    :cond_19
    :goto_12
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
