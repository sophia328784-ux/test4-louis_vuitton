.class final Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;
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
    c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$addToCart$2"
    f = "BeautyVtoViewModelImpl.kt"
    l = {
        0x523,
        0x529,
        0x54c,
        0x555,
        0x562,
        0x568
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Lcom/vuitton/foundation/model/domain/model/cart/CartResponse;

.field public g:Lcom/vuitton/foundation/model/domain/error/cart/CartError;

.field public h:Ljava/util/Iterator;

.field public i:I

.field public j:I

.field public k:I

.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

.field public final synthetic n:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->m:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->n:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->m:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->n:Ljava/util/List;

    invoke-direct {v0, v1, p0, p2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    move-object/from16 v6, p0

    iget-object v7, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->m:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

    iget-object v8, v7, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->I:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->l:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lkotlinx/coroutines/CoroutineScope;

    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->k:I

    iget-object v11, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->n:Ljava/util/List;

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v15, 0x0

    packed-switch v0, :pswitch_data_0

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v15

    :pswitch_0
    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->e:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;

    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    iget-object v1, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v17, v8

    goto/16 :goto_1b

    :pswitch_1
    iget v1, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->j:I

    iget v2, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->i:I

    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->f:Lcom/vuitton/foundation/model/domain/model/cart/CartResponse;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->e:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->d:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

    iget-object v4, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->c:Ljava/lang/Object;

    iget-object v5, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p1

    move-object/from16 v17, v8

    goto/16 :goto_d

    :catchall_0
    move-exception v0

    move-object/from16 v17, v8

    goto/16 :goto_11

    :pswitch_2
    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->e:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/foundation/model/domain/error/cart/CartError;

    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->d:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/cart/CartResponse;

    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->c:Ljava/lang/Object;

    iget-object v1, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v18, v7

    move-object/from16 v17, v8

    goto/16 :goto_a

    :pswitch_3
    iget v0, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->j:I

    iget v1, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->i:I

    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->h:Ljava/util/Iterator;

    iget-object v3, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->f:Lcom/vuitton/foundation/model/domain/model/cart/CartResponse;

    check-cast v3, Ljava/lang/Iterable;

    iget-object v3, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->e:Ljava/lang/Object;

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/cart/CartResponse;

    iget-object v4, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->d:Ljava/lang/Object;

    check-cast v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

    iget-object v5, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->c:Ljava/lang/Object;

    iget-object v14, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v13, v0

    move v15, v1

    move-object v0, v2

    move-object v1, v3

    move-object v2, v4

    move-object v12, v5

    move-object/from16 v18, v7

    move-object/from16 v17, v8

    goto/16 :goto_9

    :pswitch_4
    iget v0, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->i:I

    iget-object v1, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->g:Lcom/vuitton/foundation/model/domain/error/cart/CartError;

    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->f:Lcom/vuitton/foundation/model/domain/model/cart/CartResponse;

    iget-object v3, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->e:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iget-object v4, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->d:Ljava/lang/Object;

    check-cast v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

    iget-object v5, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->c:Ljava/lang/Object;

    iget-object v14, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_5
    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    check-cast v1, Lkotlin/Result;

    iget-object v1, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    :cond_0
    move-object v14, v0

    move-object v5, v1

    goto :goto_1

    :pswitch_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v0, v7, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v1, v7, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->C:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v2, Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Action$AddToCart;->a:Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Action$AddToCart;

    invoke-interface {v0, v1, v2}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v0

    :cond_1
    invoke-interface {v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v7, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->o:Lcom/vuitton/android/domain/usecase/cart/AddProductListToCartUseCase;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->a:Ljava/lang/String;

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v5, v4}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v5, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iput-object v9, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->l:Ljava/lang/Object;

    iput-object v0, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v13, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->k:I

    invoke-virtual {v1, v3, v6}, Lcom/vuitton/android/domain/usecase/cart/AddProductListToCartUseCase;->a(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v10, :cond_0

    goto/16 :goto_1a

    :goto_1
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v0, v5, Lkotlin/Result$Failure;

    if-nez v0, :cond_e

    move-object v2, v5

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/cart/CartResponse;

    iget-object v0, v2, Lcom/vuitton/foundation/model/domain/model/cart/CartResponse;->b:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/model/domain/error/cart/CartMultipleError;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/error/cart/CartMultipleError;->b:Lcom/vuitton/foundation/model/domain/error/cart/CartError;

    move-object v1, v0

    goto :goto_2

    :cond_3
    move-object v1, v15

    :goto_2
    iget-object v0, v7, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->h0:Lkotlinx/coroutines/channels/BufferedChannel;

    if-eqz v1, :cond_4

    new-instance v3, Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error$AddToCartError;

    invoke-direct {v3, v13, v1}, Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error$AddToCartError;-><init>(ZLjava/lang/Throwable;)V

    invoke-interface {v14, v3}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    iget-object v3, v7, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->h:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v4, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v13, 0x7f140c8a

    invoke-direct {v4, v13, v15, v12, v15}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v20, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyNotificationAction$GoToCart;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyNotificationAction$GoToCart;

    const/16 v21, 0x14

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    invoke-static/range {v16 .. v21}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v3

    goto :goto_3

    :cond_4
    move-object/from16 v16, v11

    check-cast v16, Ljava/lang/Iterable;

    const/16 v20, 0x0

    const/16 v21, 0x3e

    const-string v17, ","

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "skus"

    invoke-interface {v14, v3, v4}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v2, Lcom/vuitton/foundation/model/domain/model/cart/CartResponse;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, v7, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->h:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v13, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$PluralResId;

    new-instance v15, Ljava/lang/Integer;

    invoke-direct {v15, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v15}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const v12, 0x7f120013

    invoke-direct {v13, v12, v3, v15}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$PluralResId;-><init>(IILjava/util/List;)V

    sget-object v20, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyNotificationAction$GoToCart;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyNotificationAction$GoToCart;

    const/16 v21, 0x14

    const/16 v18, 0x1

    move-object/from16 v16, v4

    move-object/from16 v17, v13

    invoke-static/range {v16 .. v21}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v3

    :goto_3
    iput-object v9, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->l:Ljava/lang/Object;

    iput-object v14, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v5, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->c:Ljava/lang/Object;

    iput-object v7, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->d:Ljava/lang/Object;

    iput-object v11, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->e:Ljava/lang/Object;

    iput-object v2, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->f:Lcom/vuitton/foundation/model/domain/model/cart/CartResponse;

    iput-object v1, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->g:Lcom/vuitton/foundation/model/domain/error/cart/CartError;

    const/4 v4, 0x0

    iput v4, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->i:I

    const/4 v4, 0x2

    iput v4, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->k:I

    invoke-interface {v0, v3, v6}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_5

    goto/16 :goto_1a

    :cond_5
    move-object v4, v7

    move-object v3, v11

    const/4 v0, 0x0

    :goto_4
    iget-boolean v12, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->y:Z

    if-eqz v12, :cond_7

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->b:Ljava/lang/String;

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_5
    invoke-static {v4, v3, v1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Ec(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Ljava/lang/String;Z)V

    :cond_7
    iget-object v1, v2, Lcom/vuitton/foundation/model/domain/model/cart/CartResponse;->a:Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->c:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v15, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    move-object v12, v5

    const/4 v13, 0x0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->p:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;

    iget-object v5, v3, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->b:Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;

    move-object/from16 v16, v4

    if-eqz v5, :cond_8

    iget-object v4, v5, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->d:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    move-object/from16 v18, v7

    move-object/from16 v17, v8

    if-eqz v4, :cond_9

    iget-wide v7, v4, Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;->a:D

    double-to-float v4, v7

    goto :goto_7

    :cond_8
    move-object/from16 v18, v7

    move-object/from16 v17, v8

    :cond_9
    const/4 v4, 0x0

    :goto_7
    if-eqz v5, :cond_a

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->d:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    if-eqz v5, :cond_a

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;->c:Ljava/lang/String;

    goto :goto_8

    :cond_a
    const/4 v5, 0x0

    :goto_8
    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->a:Ljava/lang/String;

    iget-object v7, v1, Lcom/vuitton/foundation/model/domain/model/cart/CartResponse;->a:Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->c:Ljava/util/List;

    iput-object v9, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->l:Ljava/lang/Object;

    iput-object v14, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v12, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->c:Ljava/lang/Object;

    iput-object v2, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->d:Ljava/lang/Object;

    iput-object v1, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->e:Ljava/lang/Object;

    const/4 v8, 0x0

    iput-object v8, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->f:Lcom/vuitton/foundation/model/domain/model/cart/CartResponse;

    iput-object v8, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->g:Lcom/vuitton/foundation/model/domain/error/cart/CartError;

    iput-object v0, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->h:Ljava/util/Iterator;

    iput v15, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->i:I

    iput v13, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->j:I

    const/4 v8, 0x3

    iput v8, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->k:I

    move-object v8, v2

    move-object v2, v3

    const/4 v3, 0x1

    move-object/from16 p1, v7

    move-object v7, v1

    move v1, v4

    move-object/from16 v4, p1

    move-object/from16 p1, v0

    move-object/from16 v0, v16

    invoke-virtual/range {v0 .. v6}, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;->a(FLjava/lang/String;ILjava/util/List;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_b

    goto/16 :goto_1a

    :cond_b
    move-object/from16 v0, p1

    move-object v1, v7

    move-object v2, v8

    :goto_9
    move-object/from16 v8, v17

    move-object/from16 v7, v18

    goto :goto_6

    :cond_c
    move-object/from16 v18, v7

    move-object/from16 v17, v8

    move-object v7, v1

    move-object v8, v2

    iget-object v0, v8, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->e:Lcom/vuitton/android/core/events/LVEventSender;

    new-instance v1, Lcom/vuitton/android/core/events/AppEvent$RefreshCartCountEvent;

    iget-object v2, v7, Lcom/vuitton/foundation/model/domain/model/cart/CartResponse;->a:Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    iget v2, v2, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->b:I

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v1, v3}, Lcom/vuitton/android/core/events/AppEvent$RefreshCartCountEvent;-><init>(Ljava/lang/Integer;)V

    iput-object v9, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->l:Ljava/lang/Object;

    iput-object v14, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v12, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->c:Ljava/lang/Object;

    const/4 v8, 0x0

    iput-object v8, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->d:Ljava/lang/Object;

    iput-object v8, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->e:Ljava/lang/Object;

    iput-object v8, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->f:Lcom/vuitton/foundation/model/domain/model/cart/CartResponse;

    iput-object v8, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->g:Lcom/vuitton/foundation/model/domain/error/cart/CartError;

    iput-object v8, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->h:Ljava/util/Iterator;

    iput v15, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->i:I

    const/4 v2, 0x4

    iput v2, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->k:I

    invoke-virtual {v0, v1, v6}, Lcom/vuitton/android/core/events/LVEventSender;->a(Lcom/vuitton/android/core/events/AppEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_d

    goto/16 :goto_1a

    :cond_d
    move-object v0, v12

    move-object v1, v14

    :goto_a
    move-object v4, v0

    move-object v5, v1

    goto :goto_b

    :cond_e
    move-object/from16 v18, v7

    move-object/from16 v17, v8

    move-object v4, v5

    move-object v5, v14

    :goto_b
    invoke-static {v4}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1c

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->b:Ljava/lang/String;

    move-object/from16 v2, v18

    const/4 v1, 0x1

    invoke-static {v2, v0, v1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Ec(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Ljava/lang/String;Z)V

    instance-of v0, v3, Lcom/vuitton/foundation/model/domain/error/cart/OutOfStockError;

    if-eqz v0, :cond_f

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_f

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->B:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyFeatureFlags;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyFeatureFlags;->d:Z

    if-eqz v0, :cond_f

    move v13, v1

    goto :goto_c

    :cond_f
    const/4 v13, 0x0

    :goto_c
    if-eqz v13, :cond_14

    :try_start_1
    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v1, v7}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v8, 0x0

    iput-object v8, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->l:Ljava/lang/Object;

    iput-object v5, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v4, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->c:Ljava/lang/Object;

    iput-object v2, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->d:Ljava/lang/Object;

    iput-object v3, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->e:Ljava/lang/Object;

    iput-object v8, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->f:Lcom/vuitton/foundation/model/domain/model/cart/CartResponse;

    const/4 v7, 0x0

    iput v7, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->i:I

    iput v13, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->j:I

    const/4 v7, 0x5

    iput v7, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->k:I

    iget-object v0, v0, Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;->a:Lcom/vuitton/android/domain/repository/CatalogRepository;

    invoke-interface {v0, v1, v6}, Lcom/vuitton/android/domain/repository/CatalogRepository;->k(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-ne v0, v10, :cond_10

    goto/16 :goto_1a

    :cond_10
    move-object v7, v2

    move v1, v13

    const/4 v2, 0x0

    :goto_d
    :try_start_2
    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;

    if-eqz v0, :cond_11

    const/4 v8, 0x0

    invoke-static {v0, v8}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;Z)Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;

    move-result-object v0

    move-object v8, v0

    goto :goto_e

    :catchall_1
    move-exception v0

    goto :goto_11

    :cond_11
    const/4 v8, 0x0

    :goto_e
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_f
    move v13, v1

    goto :goto_12

    :goto_10
    move-object v7, v2

    move v1, v13

    const/4 v2, 0x0

    goto :goto_11

    :catchall_2
    move-exception v0

    goto :goto_10

    :goto_11
    sget-object v8, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v8, Lkotlin/Result$Failure;

    invoke-direct {v8, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    goto :goto_f

    :goto_12
    instance-of v0, v8, Lkotlin/Result$Failure;

    if-eqz v0, :cond_12

    const/4 v8, 0x0

    :cond_12
    check-cast v8, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;

    if-eqz v8, :cond_13

    iget-boolean v0, v8, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;->g:Z

    if-eqz v0, :cond_13

    move-object v0, v3

    move-object v1, v5

    goto :goto_14

    :cond_13
    move-object v0, v3

    move-object v1, v5

    :goto_13
    const/4 v8, 0x0

    goto :goto_14

    :cond_14
    move-object v7, v2

    move-object v0, v3

    move-object v1, v5

    const/4 v2, 0x0

    goto :goto_13

    :goto_14
    iget-object v3, v7, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->h0:Lkotlinx/coroutines/channels/BufferedChannel;

    iget-object v5, v7, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->h:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    instance-of v9, v0, Lcom/vuitton/foundation/model/domain/error/cart/CartError;

    if-eqz v9, :cond_15

    move-object v9, v0

    check-cast v9, Lcom/vuitton/foundation/model/domain/error/cart/CartError;

    goto :goto_15

    :cond_15
    const/4 v9, 0x0

    :goto_15
    const v11, 0x7f140a5a

    if-eqz v9, :cond_19

    instance-of v12, v9, Lcom/vuitton/foundation/model/domain/error/cart/OutOfStockError;

    if-eqz v12, :cond_16

    new-instance v9, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v11, 0x7f140c8b

    const/4 v12, 0x2

    const/4 v14, 0x0

    invoke-direct {v9, v11, v14, v12, v14}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_16

    :cond_16
    const/4 v12, 0x2

    const/4 v14, 0x0

    instance-of v15, v9, Lcom/vuitton/foundation/model/domain/error/cart/MaxQuantityReached;

    if-eqz v15, :cond_17

    new-instance v9, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v11, 0x7f1404f3

    invoke-direct {v9, v11, v14, v12, v14}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_16

    :cond_17
    instance-of v9, v9, Lcom/vuitton/foundation/model/domain/error/cart/MaxSkuQuantityReached;

    if-eqz v9, :cond_18

    new-instance v9, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v11, 0x7f14095e

    invoke-direct {v9, v11, v14, v12, v14}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_16

    :cond_18
    new-instance v9, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    invoke-direct {v9, v11, v14, v12, v14}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_16
    move-object/from16 v23, v9

    goto :goto_17

    :cond_19
    const/4 v12, 0x2

    const/4 v14, 0x0

    new-instance v9, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    invoke-direct {v9, v11, v14, v12, v14}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_16

    :goto_17
    if-eqz v8, :cond_1a

    iget-object v9, v8, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;->a:Ljava/lang/String;

    new-instance v11, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSnackbarOpenAlertClickedEvent;

    sget-object v12, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v12, v7, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->U:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v12}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-direct {v11, v9, v9, v12, v14}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSnackbarOpenAlertClickedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v7, v11}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;)V

    new-instance v7, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyNotificationAction$NotifyItem;

    invoke-direct {v7, v8}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyNotificationAction$NotifyItem;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;)V

    :goto_18
    move-object/from16 v26, v7

    goto :goto_19

    :cond_1a
    sget-object v7, Lcom/vuitton/android/presentation/notification/NotificationAction$NoAction;->b:Lcom/vuitton/android/presentation/notification/NotificationAction$NoAction;

    goto :goto_18

    :goto_19
    const/16 v27, 0x1c

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v22, v5

    invoke-static/range {v22 .. v27}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v5

    iput-object v14, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->l:Ljava/lang/Object;

    iput-object v1, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v4, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->c:Ljava/lang/Object;

    iput-object v0, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->d:Ljava/lang/Object;

    iput-object v14, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->e:Ljava/lang/Object;

    iput-object v14, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->f:Lcom/vuitton/foundation/model/domain/model/cart/CartResponse;

    iput v2, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->i:I

    iput v13, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->j:I

    const/4 v2, 0x6

    iput v2, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;->k:I

    invoke-interface {v3, v5, v6}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v10, :cond_1b

    :goto_1a
    return-object v10

    :cond_1b
    :goto_1b
    new-instance v2, Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error$AddToCartError;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v0}, Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error$AddToCartError;-><init>(ZLjava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    move-object v5, v1

    :cond_1c
    invoke-interface {v5}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    :goto_1c
    invoke-interface/range {v17 .. v17}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v3, v17

    invoke-interface {v3, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_1d
    move-object/from16 v17, v3

    goto :goto_1c

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
