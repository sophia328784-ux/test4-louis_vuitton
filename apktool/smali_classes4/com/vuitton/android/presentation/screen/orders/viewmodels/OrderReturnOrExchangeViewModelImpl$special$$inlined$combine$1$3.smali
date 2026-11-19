.class public final Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$special$$inlined$combine$1$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "-",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;",
        ">;[",
        "Ljava/lang/Object;",
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
        "\u0000\u0016\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\u0008\u0000\u0010\u0000\"\u0006\u0008\u0001\u0010\u0001\u0018\u0001*\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0003H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "R",
        "T",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "",
        "it",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModelImpl$special$$inlined$combine$1$3"
    f = "OrderReturnOrExchangeViewModelImpl.kt"
    l = {
        0xea
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Lkotlinx/coroutines/flow/FlowCollector;

.field public synthetic d:[Ljava/lang/Object;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$special$$inlined$combine$1$3;->e:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, [Ljava/lang/Object;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$special$$inlined$combine$1$3;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$special$$inlined$combine$1$3;->e:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;

    invoke-direct {v0, p3, p0}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$special$$inlined$combine$1$3;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$special$$inlined$combine$1$3;->c:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$special$$inlined$combine$1$3;->d:[Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$special$$inlined$combine$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$special$$inlined$combine$1$3;->c:Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$special$$inlined$combine$1$3;->d:[Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$special$$inlined$combine$1$3;->b:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    if-ne v4, v6, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$special$$inlined$combine$1$3;->e:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;

    iget-object v8, v4, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->o:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const/4 v7, 0x0

    aget-object v7, v2, v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v9, v7

    check-cast v9, Lcom/vuitton/android/presentation/screen/orders/models/ReasonsResponseUiModel;

    aget-object v7, v2, v6

    move-object v10, v7

    check-cast v10, Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel;

    const/4 v7, 0x2

    aget-object v7, v2, v7

    move-object v11, v7

    check-cast v11, Lcom/vuitton/android/presentation/screen/orders/models/ConfirmReturnResponseUiModel;

    const/4 v7, 0x3

    aget-object v7, v2, v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v12, v7

    check-cast v12, Ljava/util/List;

    const/4 v7, 0x4

    aget-object v7, v2, v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v13, v7

    check-cast v13, Ljava/util/List;

    iget-object v14, v4, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->q:Ljava/lang/String;

    iget-object v15, v4, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->t:Lkotlinx/coroutines/flow/SharedFlowImpl;

    iget-object v7, v4, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->p:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeFeatureFlags;

    const/16 v16, 0x5

    aget-object v16, v2, v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v18, v16

    check-cast v18, Ljava/util/List;

    iget-object v6, v4, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->B:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->C:Ljava/lang/String;

    const/16 v16, 0x6

    aget-object v16, v2, v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v20, v16

    check-cast v20, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupResponseUiModel;

    const/16 v16, 0x7

    aget-object v16, v2, v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v21, v16

    check-cast v21, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSubmitResponseUiModel;

    const/16 v16, 0x8

    aget-object v2, v2, v16

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    move-object/from16 v16, v7

    new-instance v7, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;

    const/16 v17, 0x0

    move-object/from16 v22, v4

    move-object/from16 v19, v6

    invoke-direct/range {v7 .. v23}, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/orders/models/ReasonsResponseUiModel;Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel;Lcom/vuitton/android/presentation/screen/orders/models/ConfirmReturnResponseUiModel;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeFeatureFlags;Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupResponseUiModel;Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSubmitResponseUiModel;Ljava/lang/String;Z)V

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$special$$inlined$combine$1$3;->c:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$special$$inlined$combine$1$3;->d:[Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$special$$inlined$combine$1$3;->b:I

    invoke-interface {v1, v7, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_2

    return-object v3

    :cond_2
    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
