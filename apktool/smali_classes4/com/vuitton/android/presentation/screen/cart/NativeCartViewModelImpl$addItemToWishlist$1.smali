.class final Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;
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
    c = "com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl$addItemToWishlist$1"
    f = "NativeCartViewModelImpl.kt"
    l = {
        0x281,
        0x288,
        0x29e,
        0x2a2,
        0x2a3
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:Ljava/lang/Object;

.field public d:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

.field public e:Ljava/lang/Object;

.field public f:Z

.field public g:I

.field public h:I

.field public final synthetic i:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

.field public final synthetic j:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

.field public final synthetic k:Z


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->i:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->j:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->k:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->j:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->k:Z

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->i:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;-><init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->i:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->M:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->h:I

    const-string v5, "NativeCartViewModelImpl"

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->j:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    const/4 v13, 0x0

    if-eqz v4, :cond_5

    if-eq v4, v11, :cond_4

    if-eq v4, v9, :cond_3

    if-eq v4, v8, :cond_2

    if-eq v4, v7, :cond_1

    if-ne v4, v6, :cond_0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->d:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v13

    :cond_1
    iget v10, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->g:I

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->d:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->c:Ljava/lang/Object;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v6, v1

    move-object v1, v4

    move-object v4, v8

    goto/16 :goto_5

    :cond_2
    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->d:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    check-cast v4, Lkotlin/Unit;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->c:Ljava/lang/Object;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v9, p1

    check-cast v9, Lkotlin/Result;

    iget-object v9, v9, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_2

    :cond_3
    iget v4, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->g:I

    iget-boolean v9, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->f:Z

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->e:Ljava/lang/Object;

    check-cast v14, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->d:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->c:Ljava/lang/Object;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v16, v6

    move v6, v4

    move-object/from16 v4, v16

    goto/16 :goto_1

    :cond_4
    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v6, p1

    check-cast v6, Lkotlin/Result;

    iget-object v6, v6, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$AddToWishlistEvent;

    iget-object v6, v12, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->a:Ljava/lang/String;

    iget-object v7, v12, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->a:Ljava/lang/String;

    invoke-direct {v4, v6, v13}, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$AddToWishlistEvent;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v4}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->W9(Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel;)V

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->b:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->A:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v14, Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Action$AddToWishlist;->a:Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Action$AddToWishlist;

    invoke-interface {v4, v6, v14}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v4

    sget-object v6, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    const-string v6, "sku"

    invoke-virtual {v4, v7, v6}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->T:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v6, v13}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->t:Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;

    sget-object v14, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v11, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->h:I

    invoke-virtual {v6, v7, v0}, Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_6

    goto/16 :goto_6

    :cond_6
    :goto_0
    sget-object v7, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v7, v6, Lkotlin/Result$Failure;

    if-nez v7, :cond_a

    move-object v7, v6

    check-cast v7, Lkotlin/Unit;

    new-instance v7, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$AddToWishlistSuccessEvent;

    iget-object v14, v12, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->a:Ljava/lang/String;

    invoke-direct {v7, v14, v13}, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$AddToWishlistSuccessEvent;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v7}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->W9(Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel;)V

    iget-object v7, v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->x:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;

    iget-object v14, v12, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->a:Ljava/lang/String;

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->c:Ljava/lang/Object;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->d:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->e:Ljava/lang/Object;

    iget-boolean v15, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->k:Z

    iput-boolean v15, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->f:Z

    iput v10, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->g:I

    iput v9, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->h:I

    invoke-virtual {v7, v14, v0}, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_7

    goto/16 :goto_6

    :cond_7
    move-object v7, v4

    move-object v4, v6

    move v6, v10

    move-object v14, v12

    move v9, v15

    move-object v15, v1

    :goto_1
    iget-object v11, v15, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->e:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

    new-instance v10, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$AddToWishlist;

    iget-object v8, v14, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->a:Ljava/lang/String;

    new-instance v13, Lkotlin/Pair;

    move/from16 p1, v9

    const-string v9, "af_content_id"

    invoke-direct {v13, v9, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v13}, Lkotlin/collections/MapsKt;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v8

    invoke-direct {v10, v8}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$AddToWishlist;-><init>(Ljava/util/Map;)V

    invoke-interface {v11, v5, v10}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;)V

    invoke-static {v15}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v8

    new-instance v9, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$showAddToWishlistNotification$1;

    const/4 v10, 0x0

    invoke-direct {v9, v10, v15}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$showAddToWishlistNotification$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;)V

    const/4 v11, 0x3

    invoke-static {v8, v10, v10, v9, v11}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_8

    const/4 v8, 0x0

    invoke-virtual {v15, v8, v14}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->P4(ZLcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;)V

    goto :goto_3

    :cond_8
    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->c:Ljava/lang/Object;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->d:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->e:Ljava/lang/Object;

    iput v6, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->g:I

    iput v11, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->h:I

    invoke-static {v15, v0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_9

    goto :goto_6

    :cond_9
    move-object v8, v7

    :goto_2
    sget-object v6, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    move-object v7, v8

    :goto_3
    move-object/from16 v16, v7

    move-object v7, v4

    move-object/from16 v4, v16

    goto :goto_4

    :cond_a
    move-object v7, v6

    :goto_4
    invoke-static {v7}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_d

    new-instance v8, Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Error$AddToWishlistError;

    invoke-direct {v8, v6}, Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Error$AddToWishlistError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v4, v8}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->c:Ljava/lang/Object;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->d:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->e:Ljava/lang/Object;

    const/4 v8, 0x0

    iput v8, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->g:I

    const/4 v9, 0x4

    iput v9, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->h:I

    const/4 v9, 0x1

    invoke-static {v1, v12, v9, v0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->Bc(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v3, :cond_b

    goto :goto_6

    :cond_b
    move v10, v8

    :goto_5
    new-instance v8, Lcom/vuitton/foundation/model/domain/error/cart/GenericCartError;

    const-string v9, "Generic cart error"

    invoke-direct {v8, v9}, Lcom/vuitton/foundation/model/domain/error/cart/GenericCartError;-><init>(Ljava/lang/String;)V

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->c:Ljava/lang/Object;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->d:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->e:Ljava/lang/Object;

    iput v10, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->g:I

    const/4 v7, 0x5

    iput v7, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;->h:I

    invoke-static {v1, v8, v0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->zc(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_c

    :goto_6
    return-object v3

    :cond_c
    move-object v3, v1

    move-object v0, v4

    move-object v1, v6

    :goto_7
    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string v4, "Unable to add item to wishlist"

    invoke-interface {v3, v5, v4, v1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v0

    :cond_d
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-interface {v4}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
