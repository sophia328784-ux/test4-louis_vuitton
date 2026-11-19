.class final Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;
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
    c = "com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModelImpl$setupExchange$1"
    f = "OrderReturnOrExchangeViewModelImpl.kt"
    l = {
        0x1e3,
        0x1f2
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public c:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Object;

.field public f:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public g:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public final synthetic l:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;

.field public final synthetic m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->l:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->m:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->l:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->m:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;-><init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->k:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const-string v6, ""

    const/4 v7, 0x0

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v5, :cond_0

    iget v2, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->j:I

    iget v8, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->h:I

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->g:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->f:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    check-cast v10, Ljava/lang/Throwable;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->e:Ljava/lang/Object;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->d:Ljava/lang/String;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->c:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v15, v5

    move-object v5, v7

    goto/16 :goto_e

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_1
    iget v2, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->i:I

    iget v8, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->h:I

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->f:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->e:Ljava/lang/Object;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->d:Ljava/lang/String;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->c:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v14, p1

    check-cast v14, Lkotlin/Result;

    iget-object v14, v14, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_5

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->l:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->E2()V

    iget-object v8, v2, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->F:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->m:Ljava/lang/String;

    move v10, v3

    :goto_0
    invoke-interface {v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupResponseUiModel;

    iget-object v12, v2, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v13, v2, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->o:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v14, Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Action$ExchangeSetup;->a:Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Action$ExchangeSetup;

    invoke-interface {v12, v13, v14}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v12

    iget-object v13, v2, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->B:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;

    if-eqz v13, :cond_3

    iget-object v13, v13, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    if-eqz v13, :cond_3

    iget-object v13, v13, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->g:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v13, v7

    :goto_1
    if-nez v13, :cond_4

    move-object v13, v6

    :cond_4
    const-string v14, "sku"

    invoke-virtual {v12, v13, v14}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v13, v2, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->B:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;

    if-eqz v13, :cond_5

    iget-object v13, v13, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    if-eqz v13, :cond_5

    iget-object v13, v13, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->j:Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;

    if-eqz v13, :cond_5

    iget-object v13, v13, Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;->c:Ljava/lang/String;

    goto :goto_2

    :cond_5
    move-object v13, v7

    :goto_2
    if-nez v13, :cond_6

    move-object v13, v6

    :cond_6
    const-string v14, "price"

    invoke-virtual {v12, v13, v14}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v13, v2, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/account/order/SetupExchangeUseCase;

    new-instance v14, Lcom/vuitton/foundation/model/domain/model/cart/ExchangeSetupPost;

    sget-object v15, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    iget-object v15, v2, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->B:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;

    if-eqz v15, :cond_7

    iget-object v5, v15, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;->c:Ljava/lang/String;

    goto :goto_3

    :cond_7
    move-object v5, v7

    :goto_3
    if-nez v5, :cond_8

    move-object v5, v6

    :cond_8
    if-eqz v15, :cond_9

    iget-object v15, v15, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;->e:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;

    if-eqz v15, :cond_9

    iget-object v15, v15, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;->b:Ljava/lang/String;

    goto :goto_4

    :cond_9
    move-object v15, v7

    :goto_4
    if-nez v15, :cond_a

    move-object v15, v6

    :cond_a
    invoke-direct {v14, v9, v5, v15, v7}, Lcom/vuitton/foundation/model/domain/model/cart/ExchangeSetupPost;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->c:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->d:Ljava/lang/String;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->e:Ljava/lang/Object;

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->f:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->g:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v10, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->h:I

    iput v3, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->i:I

    iput v4, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->k:I

    invoke-virtual {v13, v14, v0}, Lcom/vuitton/android/domain/usecase/account/order/SetupExchangeUseCase;->a(Lcom/vuitton/foundation/model/domain/model/cart/ExchangeSetupPost;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v1, :cond_b

    goto/16 :goto_d

    :cond_b
    move-object v13, v8

    move v8, v10

    move-object v10, v11

    move-object v11, v9

    move-object v9, v12

    move-object v12, v2

    move v2, v3

    :goto_5
    invoke-static {v14}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-nez v5, :cond_12

    check-cast v14, Lcom/vuitton/foundation/model/domain/model/cart/ExchangeSetupResult;

    new-instance v2, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupResponseUiModel$Result;

    iget-object v5, v12, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->D:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v14, Lcom/vuitton/foundation/model/domain/model/cart/ExchangeSetupResult;->a:Lcom/vuitton/foundation/model/domain/model/cart/ExchangeProduct;

    new-instance v16, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupProductUiModel;

    sget-object v17, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v3, v14, Lcom/vuitton/foundation/model/domain/model/cart/ExchangeSetupResult;->c:Lcom/vuitton/foundation/model/domain/model/cart/ExchangeShippingMethod;

    move-object/from16 v22, v7

    iget-object v7, v15, Lcom/vuitton/foundation/model/domain/model/cart/ExchangeProduct;->h:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v15, Lcom/vuitton/foundation/model/domain/model/cart/ExchangeProduct;->c:Ljava/lang/String;

    if-nez v4, :cond_c

    move-object/from16 v18, v6

    goto :goto_6

    :cond_c
    move-object/from16 v18, v4

    :goto_6
    iget-object v4, v15, Lcom/vuitton/foundation/model/domain/model/cart/ExchangeProduct;->e:Ljava/lang/String;

    move-object/from16 v19, v4

    iget-object v4, v15, Lcom/vuitton/foundation/model/domain/model/cart/ExchangeProduct;->b:Ljava/lang/String;

    iget-object v15, v15, Lcom/vuitton/foundation/model/domain/model/cart/ExchangeProduct;->g:Ljava/lang/String;

    filled-new-array {v4, v15}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/ArraysKt;->v([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v17, v7

    invoke-direct/range {v16 .. v21}, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupProductUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v4, v16

    iget-object v7, v14, Lcom/vuitton/foundation/model/domain/model/cart/ExchangeSetupResult;->b:Lcom/vuitton/foundation/model/domain/model/cart/ExchangeShippingAddress;

    iget-object v14, v7, Lcom/vuitton/foundation/model/domain/model/cart/ExchangeShippingAddress;->a:Ljava/lang/String;

    iget-object v15, v7, Lcom/vuitton/foundation/model/domain/model/cart/ExchangeShippingAddress;->b:Ljava/lang/String;

    move-object/from16 v16, v5

    iget-object v5, v7, Lcom/vuitton/foundation/model/domain/model/cart/ExchangeShippingAddress;->c:Ljava/lang/String;

    move-object/from16 v25, v5

    iget-object v5, v7, Lcom/vuitton/foundation/model/domain/model/cart/ExchangeShippingAddress;->d:Ljava/lang/String;

    move-object/from16 v26, v5

    iget-object v5, v7, Lcom/vuitton/foundation/model/domain/model/cart/ExchangeShippingAddress;->e:Ljava/lang/String;

    move-object/from16 v27, v5

    iget-object v5, v7, Lcom/vuitton/foundation/model/domain/model/cart/ExchangeShippingAddress;->g:Ljava/lang/String;

    move-object/from16 v28, v5

    iget-object v5, v7, Lcom/vuitton/foundation/model/domain/model/cart/ExchangeShippingAddress;->h:Ljava/lang/String;

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/cart/ExchangeShippingAddress;->f:Ljava/lang/String;

    move-object/from16 v29, v5

    move-object/from16 v30, v7

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    filled-new-array/range {v23 .. v30}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/ArraysKt;->v([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_d
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Ljava/lang/String;

    invoke-static {v15}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_d

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    const/16 v27, 0x0

    const/16 v28, 0x3f

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v23, v7

    invoke-static/range {v23 .. v28}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v3, Lcom/vuitton/foundation/model/domain/model/cart/ExchangeShippingMethod;->c:Lcom/vuitton/foundation/model/domain/model/cart/ExchangeShippingType;

    iget-object v14, v3, Lcom/vuitton/foundation/model/domain/model/cart/ExchangeShippingMethod;->b:Ljava/lang/String;

    sget-object v15, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupUiModelKt$WhenMappings;->a:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v15, v7

    const/4 v15, 0x1

    if-eq v7, v15, :cond_11

    const/4 v15, 0x2

    if-ne v7, v15, :cond_10

    new-instance v7, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupShippingMethodUiModel$ClickAndCollect;

    if-nez v16, :cond_f

    move-object v15, v6

    goto :goto_8

    :cond_f
    move-object/from16 v15, v16

    :goto_8
    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/cart/ExchangeShippingMethod;->a:Ljava/lang/String;

    invoke-direct {v7, v14, v15, v3}, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupShippingMethodUiModel$ClickAndCollect;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_10
    invoke-static {}, Lv40;->g()V

    return-object v22

    :cond_11
    new-instance v7, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupShippingMethodUiModel$Standard;

    invoke-direct {v7, v14}, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupShippingMethodUiModel$Standard;-><init>(Ljava/lang/String;)V

    :goto_9
    new-instance v3, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupUiModel;

    invoke-direct {v3, v4, v5, v7}, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupUiModel;-><init>(Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupProductUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupShippingMethodUiModel;)V

    invoke-direct {v2, v3}, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupResponseUiModel$Result;-><init>(Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupUiModel;)V

    move-object/from16 v5, v22

    const/4 v15, 0x2

    :goto_a
    move v3, v8

    move-object v8, v13

    goto :goto_f

    :cond_12
    move-object/from16 v22, v7

    new-instance v3, Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Error$ExchangeSetupError;

    invoke-direct {v3, v5}, Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Error$ExchangeSetupError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v9, v3}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    instance-of v3, v5, Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException$OutOfStock;

    iget-object v4, v12, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->t:Lkotlinx/coroutines/flow/SharedFlowImpl;

    iget-object v5, v12, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->m:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v7, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    if-eqz v3, :cond_14

    iget-object v14, v12, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v14}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel$Skip;

    if-eqz v14, :cond_13

    const v14, 0x7f14098e

    :goto_b
    move-object/from16 v16, v5

    move-object/from16 v5, v22

    const/4 v15, 0x2

    goto :goto_c

    :cond_13
    const v14, 0x7f14098d

    goto :goto_b

    :cond_14
    const v14, 0x7f140967

    goto :goto_b

    :goto_c
    invoke-direct {v7, v14, v5, v15, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v20, 0x0

    const/16 v21, 0x3c

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v7

    invoke-static/range {v16 .. v21}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v7

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->c:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->d:Ljava/lang/String;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->e:Ljava/lang/Object;

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->f:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->g:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v8, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->h:I

    iput v2, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->i:I

    iput v3, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->j:I

    const/4 v15, 0x2

    iput v15, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$setupExchange$1;->k:I

    invoke-virtual {v4, v7, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_15

    :goto_d
    return-object v1

    :cond_15
    move v2, v3

    :goto_e
    if-eqz v2, :cond_16

    sget-object v2, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupResponseUiModel$Error$OutOfStock;->a:Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupResponseUiModel$Error$OutOfStock;

    goto :goto_a

    :cond_16
    sget-object v2, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupResponseUiModel$Error$Generic;->a:Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupResponseUiModel$Error$Generic;

    goto :goto_a

    :goto_f
    invoke-interface {v9}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    invoke-interface {v8, v10, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_17
    move v10, v3

    move-object v7, v5

    move-object v9, v11

    move-object v2, v12

    move v5, v15

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto/16 :goto_0
.end method
