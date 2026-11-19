.class final Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$fetchVariations$1;
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
    c = "com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModelImpl$fetchVariations$1"
    f = "OrderReturnOrExchangeViewModelImpl.kt"
    l = {
        0x127
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public c:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;

.field public d:Ljava/lang/Object;

.field public e:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public f:I

.field public g:I

.field public final synthetic h:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$fetchVariations$1;->h:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$fetchVariations$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$fetchVariations$1;->h:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;

    invoke-direct {p1, p2, p0}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$fetchVariations$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$fetchVariations$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$fetchVariations$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$fetchVariations$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$fetchVariations$1;->h:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v6, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$fetchVariations$1;->g:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v2, :cond_1

    if-ne v2, v10, :cond_0

    iget v0, v6, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$fetchVariations$1;->f:I

    iget-object v1, v6, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$fetchVariations$1;->e:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$fetchVariations$1;->d:Ljava/lang/Object;

    iget-object v3, v6, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$fetchVariations$1;->c:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;

    iget-object v4, v6, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$fetchVariations$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v5, p1

    check-cast v5, Lkotlin/Result;

    iget-object v5, v5, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_1

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v11

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v2, Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel$Loading;->a:Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel$Loading;

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    const/4 v2, 0x0

    move-object v12, v0

    move-object v14, v1

    move v13, v2

    :goto_0
    invoke-interface {v14}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel;

    iget-object v0, v12, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->B:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    iget-object v1, v12, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v2, v12, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->o:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v3, Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Action$ExchangeFetchVariations;->a:Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Action$ExchangeFetchVariations;

    invoke-interface {v1, v2, v3}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v1

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->g:Ljava/lang/String;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->j:Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;

    const-string v4, "sku"

    invoke-virtual {v1, v2, v4}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "price"

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;->c:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v2, v12, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/account/order/GetExchangeVariationsUseCase;

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->g:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    iget-wide v3, v3, Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;->b:D

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->d:Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;

    iget-wide v8, v0, Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;->b:D

    iput-object v14, v6, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$fetchVariations$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v12, v6, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$fetchVariations$1;->c:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;

    iput-object v15, v6, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$fetchVariations$1;->d:Ljava/lang/Object;

    iput-object v1, v6, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$fetchVariations$1;->e:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v13, v6, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$fetchVariations$1;->f:I

    iput v10, v6, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$fetchVariations$1;->g:I

    move-object v0, v2

    move-wide v2, v3

    move-wide/from16 v16, v8

    move-object v8, v1

    move-object v1, v5

    move-wide/from16 v4, v16

    invoke-virtual/range {v0 .. v6}, Lcom/vuitton/android/domain/usecase/account/order/GetExchangeVariationsUseCase;->a(Ljava/lang/String;DDLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v7, :cond_2

    return-object v7

    :cond_2
    move-object v1, v8

    move-object v3, v12

    move v0, v13

    move-object v4, v14

    move-object v2, v15

    :goto_1
    invoke-static {v5}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-nez v6, :cond_3

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/account/orders/ProductExchangeCategory;

    new-instance v6, Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel$Result;

    invoke-static {v5}, Lcom/vuitton/android/presentation/screen/orders/models/mappers/OrderMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/account/orders/ProductExchangeCategory;)Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;

    move-result-object v5

    invoke-direct {v6, v5}, Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel$Result;-><init>(Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;)V

    const/4 v8, 0x2

    const v9, 0x7f14098c

    goto :goto_3

    :cond_3
    new-instance v5, Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Error$ExchangeFetchVariationsError;

    invoke-direct {v5, v6}, Lcom/vuitton/android/domain/monitoring/orders/OrdersMonitoring$Error$ExchangeFetchVariationsError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v5}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    instance-of v5, v6, Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException$Skip;

    if-eqz v5, :cond_4

    sget-object v5, Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel$Skip;->a:Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel$Skip;

    const/4 v8, 0x2

    const v9, 0x7f14098c

    :goto_2
    move-object v6, v5

    goto :goto_3

    :cond_4
    new-instance v5, Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel$Error;

    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const/4 v8, 0x2

    const v9, 0x7f14098c

    invoke-direct {v6, v9, v11, v8, v11}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v5, v6}, Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel$Error;-><init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V

    goto :goto_2

    :goto_3
    invoke-interface {v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    move v13, v0

    move-object v15, v2

    move-object v12, v3

    move-object v14, v4

    goto :goto_4

    :cond_5
    const/4 v8, 0x2

    const v9, 0x7f14098c

    new-instance v6, Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel$Error;

    new-instance v0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    invoke-direct {v0, v9, v11, v8, v11}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v6, v0}, Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel$Error;-><init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V

    :goto_4
    invoke-interface {v14, v15, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_6
    move-object/from16 v6, p0

    goto/16 :goto_0
.end method
