.class final Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;
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
    c = "com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl$removeItemFromCart$1"
    f = "NativeCartViewModelImpl.kt"
    l = {
        0x235,
        0x237,
        0x251,
        0x259,
        0x263,
        0x264
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Z

.field public h:I

.field public i:F

.field public j:I

.field public final synthetic k:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

.field public final synthetic l:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

.field public final synthetic m:Z


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->k:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->l:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->m:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->l:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->m:Z

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->k:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;-><init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v6, p0

    iget-object v7, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->k:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iget-object v8, v7, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->M:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->j:I

    const-string v11, "NativeCartViewModelImpl"

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v15, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->l:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    packed-switch v0, :pswitch_data_0

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v14

    :pswitch_0
    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    iget-object v1, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->e:Ljava/lang/Object;

    check-cast v1, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->d:Ljava/lang/Object;

    check-cast v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iget-object v3, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v16, v8

    goto/16 :goto_e

    :pswitch_1
    iget v13, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->h:I

    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    iget-object v1, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->e:Ljava/lang/Object;

    move-object v15, v1

    check-cast v15, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    iget-object v1, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->d:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iget-object v1, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->c:Ljava/lang/Object;

    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v3, v2

    move-object/from16 v16, v8

    move-object v2, v9

    goto/16 :goto_c

    :pswitch_2
    iget-boolean v0, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->g:Z

    iget-object v1, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->f:Ljava/lang/Object;

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->e:Ljava/lang/Object;

    check-cast v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iget-object v3, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->d:Ljava/lang/Object;

    check-cast v3, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    iget-object v4, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->c:Ljava/lang/Object;

    iget-object v5, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v10, v5

    move-object/from16 v16, v8

    move-object v5, v2

    move-object v2, v9

    goto/16 :goto_9

    :pswitch_3
    iget v0, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->i:F

    iget v1, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->h:I

    iget-boolean v2, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->g:Z

    iget-object v3, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->f:Ljava/lang/Object;

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    iget-object v4, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->e:Ljava/lang/Object;

    check-cast v4, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iget-object v5, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->d:Ljava/lang/Object;

    check-cast v5, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    iget-object v10, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->c:Ljava/lang/Object;

    iget-object v14, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v16, v14

    move-object v14, v10

    move-object/from16 v10, v16

    move-object/from16 v16, v8

    move-object v8, v5

    move-object v5, v4

    move v4, v1

    move v1, v0

    move v0, v2

    move-object v2, v9

    goto/16 :goto_8

    :pswitch_4
    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    check-cast v1, Lkotlin/Result;

    iget-object v1, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    :cond_0
    move-object v10, v0

    move-object v14, v1

    goto :goto_2

    :pswitch_5
    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v0, v7, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->b:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v1, v7, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->A:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v2, Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Action$DeleteFromCart;->a:Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Action$DeleteFromCart;

    invoke-interface {v0, v1, v2}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v0

    iget-object v1, v15, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->a:Ljava/lang/String;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    const-string v2, "sku"

    invoke-virtual {v0, v1, v2}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$RemoveItemConfirm;

    invoke-direct {v1, v15}, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$RemoveItemConfirm;-><init>(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;)V

    invoke-virtual {v7, v1}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->W9(Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel;)V

    iput-object v0, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v12, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->j:I

    invoke-static {v7, v15, v13, v6}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->Bc(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_1

    :goto_0
    move-object v2, v9

    goto/16 :goto_d

    :cond_1
    :goto_1
    iget-object v1, v7, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->T:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v1, v7, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/cart/RemoveCartItemUseCase;

    new-instance v2, Lcom/vuitton/android/domain/usecase/cart/RemoveCartItemUseCase$Param;

    iget-object v3, v15, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->j:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/vuitton/android/domain/usecase/cart/RemoveCartItemUseCase$Param;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    const/4 v3, 0x2

    iput v3, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->j:I

    invoke-virtual {v1, v2, v6}, Lcom/vuitton/android/domain/usecase/cart/RemoveCartItemUseCase;->a(Lcom/vuitton/android/domain/usecase/cart/RemoveCartItemUseCase$Param;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_0

    goto :goto_0

    :goto_2
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v0, v14, Lkotlin/Result$Failure;

    if-nez v0, :cond_b

    move-object v0, v14

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    iget-object v1, v15, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->b:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;

    iget-object v2, v15, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;->d:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;->b:Ljava/lang/String;

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    :goto_3
    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;->d:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;->c:Ljava/lang/String;

    goto :goto_4

    :cond_3
    const/4 v1, 0x0

    :goto_4
    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    iget-object v4, v7, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->e:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

    new-instance v5, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$RemoveFromCart;

    new-instance v12, Lkotlin/Pair;

    const-string v13, "af_content_id"

    invoke-direct {v12, v13, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v13, v15, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->h:Ljava/lang/String;

    move-object/from16 p1, v2

    new-instance v2, Lkotlin/Pair;

    move-object/from16 v16, v8

    const-string v8, "af_content"

    invoke-direct {v2, v8, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v8, Lkotlin/Pair;

    const-string v13, "af_price"

    invoke-direct {v8, v13, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lkotlin/Pair;

    const-string v13, "af_quantity"

    move-object/from16 v17, v9

    const-string v9, "1"

    invoke-direct {v3, v13, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v9, Lkotlin/Pair;

    const-string v13, "af_currency"

    invoke-direct {v9, v13, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v12, v2, v8, v3, v9}, [Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->i([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$RemoveFromCart;-><init>(Ljava/util/Map;)V

    invoke-interface {v4, v11, v5}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;)V

    goto :goto_5

    :cond_4
    move-object/from16 p1, v2

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    :goto_5
    new-instance v1, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$RemoveItemSucceeded;

    invoke-direct {v1, v15}, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$RemoveItemSucceeded;-><init>(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;)V

    invoke-virtual {v7, v1}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->W9(Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel;)V

    iget-object v1, v15, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->b:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;

    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;->d:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    if-eqz v2, :cond_5

    iget-wide v2, v2, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;->a:D

    double-to-float v2, v2

    goto :goto_6

    :cond_5
    const/4 v2, 0x0

    :goto_6
    iget v3, v15, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->d:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget-object v3, v7, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->y:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYRemoveFromCartEventUseCase;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;->d:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;->c:Ljava/lang/String;

    move-object v5, v1

    goto :goto_7

    :cond_6
    const/4 v5, 0x0

    :goto_7
    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    move-object v1, v3

    iget v3, v15, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->d:I

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->c:Ljava/util/List;

    iput-object v10, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v14, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->c:Ljava/lang/Object;

    iput-object v15, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->d:Ljava/lang/Object;

    iput-object v7, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->e:Ljava/lang/Object;

    iput-object v0, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->f:Ljava/lang/Object;

    iget-boolean v8, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->m:Z

    iput-boolean v8, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->g:Z

    const/4 v9, 0x0

    iput v9, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->h:I

    iput v2, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->i:F

    const/4 v9, 0x3

    iput v9, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->j:I

    move-object v9, v0

    move-object v0, v1

    move v1, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYRemoveFromCartEventUseCase;->a(FLjava/lang/String;ILjava/util/List;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v2, v17

    if-ne v0, v2, :cond_7

    goto/16 :goto_d

    :cond_7
    move-object v5, v7

    move v0, v8

    move-object v3, v9

    move-object v8, v15

    const/4 v4, 0x0

    :goto_8
    iput-object v10, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v14, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->c:Ljava/lang/Object;

    iput-object v8, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->d:Ljava/lang/Object;

    iput-object v5, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->e:Ljava/lang/Object;

    iput-object v3, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->f:Ljava/lang/Object;

    iput-boolean v0, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->g:Z

    iput v4, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->h:I

    iput v1, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->i:F

    const/4 v1, 0x4

    iput v1, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->j:I

    invoke-virtual {v5, v3, v6}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->Dc(Lcom/vuitton/foundation/model/domain/model/cart/Cart;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_8

    goto/16 :goto_d

    :cond_8
    move-object v1, v3

    move-object v3, v8

    move-object v4, v14

    :goto_9
    if-eqz v0, :cond_9

    iget-object v0, v3, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->h:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v8

    new-instance v9, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$showRemovalNotification$1;

    const/4 v12, 0x0

    invoke-direct {v9, v5, v0, v12}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$showRemovalNotification$1;-><init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    invoke-static {v8, v12, v12, v9, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_9
    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/cart/models/CartItemMapperKt;->a(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;)Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;

    move-result-object v3

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->d:Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;

    if-eqz v1, :cond_a

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->a:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    if-eqz v1, :cond_a

    iget-wide v8, v1, Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;->a:D

    double-to-int v9, v8

    goto :goto_a

    :cond_a
    const/4 v9, 0x0

    :goto_a
    invoke-interface {v0, v3, v9}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->x(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V

    move-object v1, v4

    goto :goto_b

    :cond_b
    move-object/from16 v16, v8

    move-object v2, v9

    move-object v1, v14

    :goto_b
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_e

    new-instance v3, Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Error$DeleteFromCartError;

    invoke-direct {v3, v0}, Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Error$DeleteFromCartError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v10, v3}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    iput-object v10, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v1, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->c:Ljava/lang/Object;

    iput-object v7, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->d:Ljava/lang/Object;

    iput-object v15, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->e:Ljava/lang/Object;

    iput-object v0, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->f:Ljava/lang/Object;

    const/4 v9, 0x0

    iput v9, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->h:I

    const/4 v3, 0x5

    iput v3, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->j:I

    const/4 v3, 0x1

    invoke-static {v7, v15, v3, v6}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->Bc(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_c

    goto :goto_d

    :cond_c
    move v13, v9

    move-object v3, v10

    :goto_c
    iput-object v3, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v1, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->c:Ljava/lang/Object;

    iput-object v7, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->d:Ljava/lang/Object;

    iput-object v15, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->e:Ljava/lang/Object;

    iput-object v0, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->f:Ljava/lang/Object;

    iput v13, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->h:I

    const/4 v1, 0x6

    iput v1, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;->j:I

    invoke-static {v7, v0, v6}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->zc(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_d

    :goto_d
    return-object v2

    :cond_d
    move-object v2, v7

    move-object v1, v15

    :goto_e
    new-instance v4, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$RemoveItemFailed;

    invoke-direct {v4, v1}, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$RemoveItemFailed;-><init>(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;)V

    invoke-virtual {v2, v4}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->W9(Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel;)V

    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string v2, "Unable to remove item from cart"

    invoke-interface {v1, v11, v2, v0}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v10, v3

    :cond_e
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v1, v16

    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-interface {v10}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
