.class final Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;
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
    c = "com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl$updateQuantity$1"
    f = "NativeCartViewModelImpl.kt"
    l = {
        0x1ce,
        0x1d5,
        0x1d9,
        0x1f4,
        0x204,
        0x207
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:Ljava/lang/Object;

.field public d:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public h:I

.field public i:I

.field public final synthetic j:I

.field public final synthetic k:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

.field public final synthetic l:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;


# direct methods
.method public constructor <init>(ILcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput p1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->j:I

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->k:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->l:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->k:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->l:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iget p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->j:I

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;-><init>(ILcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v6, p0

    iget-object v7, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->l:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iget-object v8, v7, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->M:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->i:I

    const-string v10, "NativeCartViewModelImpl"

    const/4 v11, 0x0

    iget v1, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->j:I

    iget-object v12, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->k:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    const/4 v13, 0x0

    packed-switch v0, :pswitch_data_0

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v13

    :pswitch_0
    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    iget-object v1, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->d:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v18, v8

    goto/16 :goto_11

    :pswitch_1
    iget v11, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->g:I

    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    iget-object v1, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->e:Ljava/lang/Object;

    move-object v12, v1

    check-cast v12, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    iget-object v7, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->d:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iget-object v1, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->c:Ljava/lang/Object;

    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v3, v2

    move-object/from16 v18, v8

    move-object v2, v1

    move-object v1, v9

    goto/16 :goto_f

    :pswitch_2
    iget v0, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->g:I

    iget-object v1, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->f:Ljava/lang/Object;

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->e:Ljava/lang/Object;

    check-cast v2, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    iget-object v3, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->d:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iget-object v4, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->c:Ljava/lang/Object;

    iget-object v5, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v15, v1

    move-object/from16 v19, v7

    move-object/from16 v18, v8

    move-object v1, v9

    move-object/from16 v17, v12

    goto/16 :goto_c

    :pswitch_3
    iget v0, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->g:I

    iget-object v1, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->f:Ljava/lang/Object;

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->e:Ljava/lang/Object;

    check-cast v2, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    iget-object v3, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->d:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iget-object v4, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->c:Ljava/lang/Object;

    iget-object v5, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v18, v8

    move-object/from16 v17, v12

    goto/16 :goto_7

    :pswitch_4
    iget v0, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->h:I

    iget v1, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->g:I

    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->f:Ljava/lang/Object;

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    iget-object v3, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->e:Ljava/lang/Object;

    check-cast v3, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    iget-object v4, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->d:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iget-object v5, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->c:Ljava/lang/Object;

    iget-object v14, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v15, v2

    move-object v2, v4

    move-object v4, v14

    move v14, v1

    move-object v1, v3

    move-object v3, v5

    goto/16 :goto_3

    :pswitch_5
    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    check-cast v2, Lkotlin/Result;

    iget-object v2, v2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_2

    :pswitch_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget v0, v12, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->d:I

    iget-object v2, v12, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->a:Ljava/lang/String;

    if-le v1, v0, :cond_0

    const-string v0, "increase"

    goto :goto_0

    :cond_0
    const-string v0, "decrease"

    :goto_0
    iget-object v3, v7, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->b:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v4, v7, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->A:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v5, Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Action$ModifyQuantityCart;->a:Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Action$ModifyQuantityCart;

    invoke-interface {v3, v4, v5}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v3

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    const-string v4, "sku"

    invoke-virtual {v3, v2, v4}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v4, "action"

    invoke-virtual {v3, v0, v4}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$ChangeQuantityIntention;

    invoke-direct {v0, v12}, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$ChangeQuantityIntention;-><init>(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;)V

    invoke-virtual {v7, v0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->W9(Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel;)V

    iget-object v0, v7, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->v:Lcom/vuitton/android/domain/usecase/cart/UpdateCartItemQuantityUseCase;

    new-instance v4, Lcom/vuitton/android/domain/usecase/cart/UpdateCartItemQuantityUseCase$Param;

    iget-object v5, v12, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->j:Ljava/lang/String;

    sget-object v14, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    invoke-direct {v4, v5, v2, v1, v13}, Lcom/vuitton/android/domain/usecase/cart/UpdateCartItemQuantityUseCase$Param;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v3, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    const/4 v2, 0x1

    iput v2, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->i:I

    invoke-virtual {v0, v4, v6}, Lcom/vuitton/android/domain/usecase/cart/UpdateCartItemQuantityUseCase;->a(Lcom/vuitton/android/domain/usecase/cart/UpdateCartItemQuantityUseCase$Param;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v9, :cond_1

    :goto_1
    move-object v1, v9

    goto/16 :goto_10

    :cond_1
    move-object v0, v3

    :goto_2
    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v3, v2, Lkotlin/Result$Failure;

    if-nez v3, :cond_10

    move-object v3, v2

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    iput-object v0, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v2, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->c:Ljava/lang/Object;

    iput-object v7, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->d:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iput-object v12, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->e:Ljava/lang/Object;

    iput-object v3, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->f:Ljava/lang/Object;

    iput v1, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->g:I

    iput v11, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->h:I

    const/4 v4, 0x2

    iput v4, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->i:I

    invoke-virtual {v7, v3, v6}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->Dc(Lcom/vuitton/foundation/model/domain/model/cart/Cart;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v9, :cond_2

    goto :goto_1

    :cond_2
    move-object v4, v0

    move v14, v1

    move-object v15, v3

    move v0, v11

    move-object v1, v12

    move-object v3, v2

    move-object v2, v7

    :goto_3
    new-instance v5, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$ChangeQuantitySucceeded;

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v1, v13}, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$ChangeQuantitySucceeded;-><init>(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->W9(Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel;)V

    iget v5, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->d:I

    iget-object v13, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->a:Ljava/lang/String;

    iget-object v11, v1, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->b:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;

    const/16 v16, 0x0

    if-le v14, v5, :cond_8

    iget-object v5, v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->w:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;

    move-object/from16 p1, v5

    if-eqz v11, :cond_3

    iget-object v5, v11, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;->d:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    if-eqz v5, :cond_4

    iget-wide v12, v5, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;->a:D

    double-to-float v5, v12

    move/from16 v16, v5

    goto :goto_4

    :cond_3
    move-object/from16 v17, v12

    move-object/from16 v18, v13

    :cond_4
    :goto_4
    if-eqz v11, :cond_5

    iget-object v5, v11, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;->d:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    if-eqz v5, :cond_5

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;->c:Ljava/lang/String;

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    :goto_5
    sget-object v11, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v18 .. v18}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    iget-object v11, v15, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->c:Ljava/util/List;

    check-cast v11, Ljava/lang/Iterable;

    new-instance v12, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v11, v13}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_6
    iput-object v4, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v3, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->c:Ljava/lang/Object;

    iput-object v2, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->d:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iput-object v1, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->e:Ljava/lang/Object;

    iput-object v15, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->f:Ljava/lang/Object;

    iput v14, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->g:I

    iput v0, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->h:I

    const/4 v0, 0x3

    iput v0, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->i:I

    move-object v0, v3

    const/4 v3, 0x1

    move-object v11, v12

    move-object v12, v2

    move-object/from16 v2, v18

    move-object/from16 v18, v8

    move-object v8, v4

    move-object v4, v11

    move-object v11, v0

    move-object v13, v1

    move/from16 v1, v16

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;->a(FLjava/lang/String;ILjava/util/List;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_7

    goto/16 :goto_1

    :cond_7
    move-object v5, v8

    move-object v4, v11

    move-object v3, v12

    move-object v2, v13

    move v0, v14

    move-object v1, v15

    :goto_7
    move-object v15, v1

    move-object/from16 v19, v7

    move-object v1, v9

    goto/16 :goto_c

    :cond_8
    move-object/from16 v18, v8

    move-object/from16 v17, v12

    move-object v12, v2

    move-object v8, v4

    move-object v2, v13

    move-object v13, v1

    move-object v1, v3

    sub-int v3, v5, v14

    if-eqz v11, :cond_9

    iget-object v4, v11, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;->d:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    if-eqz v4, :cond_9

    iget-wide v4, v4, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;->a:D

    double-to-float v4, v4

    move/from16 v16, v4

    :cond_9
    int-to-float v4, v3

    mul-float v16, v16, v4

    if-eqz v11, :cond_a

    iget-object v4, v11, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;->d:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    if-eqz v4, :cond_a

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;->b:Ljava/lang/String;

    goto :goto_8

    :cond_a
    const/4 v4, 0x0

    :goto_8
    if-eqz v11, :cond_b

    iget-object v5, v11, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;->d:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    if-eqz v5, :cond_b

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;->c:Ljava/lang/String;

    goto :goto_9

    :cond_b
    const/4 v5, 0x0

    :goto_9
    if-eqz v4, :cond_c

    if-eqz v5, :cond_c

    move/from16 p1, v3

    iget-object v3, v12, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->e:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

    move-object/from16 v19, v7

    new-instance v7, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$RemoveFromCart;

    move-object/from16 v20, v9

    new-instance v9, Lkotlin/Pair;

    move/from16 v21, v0

    const-string v0, "af_content_id"

    invoke-direct {v9, v0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v13, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->h:Ljava/lang/String;

    move-object/from16 v22, v2

    new-instance v2, Lkotlin/Pair;

    move/from16 v23, v14

    const-string v14, "af_content"

    invoke-direct {v2, v14, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lkotlin/Pair;

    const-string v14, "af_price"

    invoke-direct {v0, v14, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Lkotlin/Pair;

    const-string v14, "af_quantity"

    move-object/from16 v24, v13

    const-string v13, "1"

    invoke-direct {v4, v14, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v13, Lkotlin/Pair;

    const-string v14, "af_currency"

    invoke-direct {v13, v14, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v9, v2, v0, v4, v13}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->i([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$RemoveFromCart;-><init>(Ljava/util/Map;)V

    invoke-interface {v3, v10, v7}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;)V

    goto :goto_a

    :cond_c
    move/from16 v21, v0

    move-object/from16 v22, v2

    move/from16 p1, v3

    move-object/from16 v19, v7

    move-object/from16 v20, v9

    move-object/from16 v24, v13

    move/from16 v23, v14

    :goto_a
    iget-object v0, v12, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->y:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYRemoveFromCartEventUseCase;

    if-eqz v11, :cond_d

    iget-object v2, v11, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;->d:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    if-eqz v2, :cond_d

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;->c:Ljava/lang/String;

    move-object v5, v2

    goto :goto_b

    :cond_d
    const/4 v5, 0x0

    :goto_b
    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v22 .. v22}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    iget-object v4, v15, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->c:Ljava/util/List;

    iput-object v8, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v1, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->c:Ljava/lang/Object;

    iput-object v12, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->d:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    move-object/from16 v13, v24

    iput-object v13, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->e:Ljava/lang/Object;

    iput-object v15, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->f:Ljava/lang/Object;

    move/from16 v7, v23

    iput v7, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->g:I

    move/from16 v11, v21

    iput v11, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->h:I

    const/4 v2, 0x4

    iput v2, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->i:I

    move/from16 v3, p1

    move-object v11, v1

    move/from16 v1, v16

    move-object/from16 v2, v22

    invoke-virtual/range {v0 .. v6}, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYRemoveFromCartEventUseCase;->a(FLjava/lang/String;ILjava/util/List;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_e

    goto/16 :goto_10

    :cond_e
    move v0, v7

    move-object v5, v8

    move-object v4, v11

    move-object v3, v12

    move-object v2, v13

    :goto_c
    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/cart/models/CartItemMapperKt;->a(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;)Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;

    move-result-object v2

    iget-object v7, v15, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->d:Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;

    if-eqz v7, :cond_f

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->a:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    if-eqz v7, :cond_f

    iget-wide v7, v7, Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;->a:D

    double-to-int v7, v7

    goto :goto_d

    :cond_f
    const/4 v7, 0x0

    :goto_d
    invoke-interface {v3, v2, v0, v7}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->B(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V

    move-object v2, v4

    move-object v0, v5

    goto :goto_e

    :cond_10
    move-object/from16 v19, v7

    move-object/from16 v18, v8

    move-object v1, v9

    move-object/from16 v17, v12

    :goto_e
    invoke-static {v2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_15

    new-instance v4, Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Error$ModifyQuantityCartError;

    invoke-direct {v4, v3}, Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Error$ModifyQuantityCartError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v4}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    iput-object v0, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v2, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->c:Ljava/lang/Object;

    move-object/from16 v4, v19

    iput-object v4, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->d:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    move-object/from16 v5, v17

    iput-object v5, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->e:Ljava/lang/Object;

    iput-object v3, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->f:Ljava/lang/Object;

    const/4 v7, 0x0

    iput v7, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->g:I

    const/4 v8, 0x5

    iput v8, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->i:I

    invoke-static {v4, v3, v6}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->zc(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_11

    goto :goto_10

    :cond_11
    move-object v11, v3

    move-object v3, v0

    move-object v0, v11

    move-object v12, v5

    move v11, v7

    move-object v7, v4

    :goto_f
    instance-of v4, v0, Lcom/vuitton/foundation/model/domain/error/cart/OutOfStockError;

    if-eqz v4, :cond_14

    new-instance v4, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$ChangeQuantityFailed;

    invoke-direct {v4, v12}, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$ChangeQuantityFailed;-><init>(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;)V

    invoke-virtual {v7, v4}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->W9(Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel;)V

    iget-object v4, v7, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->Q:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v5, Lkotlin/Pair;

    iget-object v8, v12, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->j:Ljava/lang/String;

    move-object v9, v0

    check-cast v9, Lcom/vuitton/foundation/model/domain/error/cart/OutOfStockError;

    iget-object v9, v9, Lcom/vuitton/foundation/model/domain/error/cart/OutOfStockError;->c:Ljava/lang/String;

    if-nez v9, :cond_12

    const-string v9, ""

    :cond_12
    invoke-direct {v5, v8, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v2, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->c:Ljava/lang/Object;

    iput-object v7, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->d:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iput-object v0, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->e:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->f:Ljava/lang/Object;

    iput v11, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->g:I

    const/4 v2, 0x6

    iput v2, v6, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;->i:I

    invoke-interface {v4, v5, v6}, Lkotlinx/coroutines/flow/MutableSharedFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_13

    :goto_10
    return-object v1

    :cond_13
    move-object v2, v3

    move-object v1, v7

    :goto_11
    move-object v7, v1

    goto :goto_12

    :cond_14
    move-object v2, v3

    :goto_12
    iget-object v1, v7, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string v3, "Unable to update quantity"

    invoke-interface {v1, v10, v3, v0}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    :cond_15
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v2, v18

    invoke-interface {v2, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

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
