.class final Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;
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
    c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$addToCart$1"
    f = "PdpViewModelImpl.kt"
    l = {
        0x2c8,
        0x2e4,
        0x300,
        0x303,
        0x307,
        0x312,
        0x31a,
        0x322,
        0x33b
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

.field public c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

.field public d:Lkotlinx/coroutines/Deferred;

.field public e:Ljava/lang/Object;

.field public f:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public g:Lcom/vuitton/foundation/model/domain/model/cart/Cart;

.field public h:I

.field public i:I

.field public j:I

.field public synthetic k:Ljava/lang/Object;

.field public final synthetic l:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->l:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->l:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    invoke-direct {v0, p2, p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->k:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->k:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->j:I

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v11, 0x0

    packed-switch v1, :pswitch_data_0

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v11

    :pswitch_0
    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->g:Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    check-cast v0, Ljava/lang/Throwable;

    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->f:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object v1, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->b:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_1
    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->g:Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    check-cast v0, Ljava/lang/Throwable;

    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->f:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object v1, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->b:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_2
    iget v0, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->h:I

    iget-object v1, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->f:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->e:Ljava/lang/Object;

    iget-object v3, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->b:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_3
    iget v0, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->i:I

    iget v1, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->h:I

    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->g:Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    iget-object v3, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->f:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object v4, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->e:Ljava/lang/Object;

    iget-object v5, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->b:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_4
    iget v0, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->i:I

    iget v1, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->h:I

    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->g:Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    iget-object v3, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->f:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object v4, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->e:Ljava/lang/Object;

    iget-object v5, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object v8, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->b:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v9, v5

    move-object v5, v4

    move-object/from16 v4, p1

    goto/16 :goto_7

    :pswitch_5
    iget v0, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->i:I

    iget v1, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->h:I

    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->g:Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    iget-object v3, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->f:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object v4, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->e:Ljava/lang/Object;

    iget-object v5, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->d:Lkotlinx/coroutines/Deferred;

    iget-object v12, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object v13, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->b:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_6
    iget v0, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->h:I

    iget-object v1, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->e:Ljava/lang/Object;

    check-cast v1, Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->d:Lkotlinx/coroutines/Deferred;

    iget-object v3, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object v4, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->b:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v12, v0

    move-object v13, v1

    move-object v14, v2

    move-object v15, v3

    move-object v0, v4

    move-object/from16 v4, p1

    goto :goto_0

    :pswitch_7
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v1, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->l:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->W:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    if-eqz v2, :cond_17

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->N:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v5, Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Action$AddToCartAction;->a:Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Action$AddToCartAction;

    invoke-interface {v3, v4, v5}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v3

    const-string v4, "sku"

    iget-object v5, v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->Z:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1$1$addToCartDeferred$1;

    invoke-direct {v4, v1, v2, v11}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1$1$addToCartDeferred$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v11, v4, v8}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Deferred;

    move-result-object v4

    new-instance v5, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1$1$crossSellProductsDeferred$1;

    invoke-direct {v5, v1, v2, v11}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1$1$crossSellProductsDeferred$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v11, v5, v8}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    iput-object v11, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->k:Ljava/lang/Object;

    iput-object v1, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->b:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    iput-object v2, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iput-object v0, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->d:Lkotlinx/coroutines/Deferred;

    iput-object v3, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->e:Ljava/lang/Object;

    iput v9, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->h:I

    const/4 v5, 0x1

    iput v5, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->j:I

    invoke-interface {v4, v6}, Lkotlinx/coroutines/Deferred;->k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v7, :cond_0

    goto/16 :goto_11

    :cond_0
    move-object v14, v0

    move-object v0, v1

    move-object v15, v2

    move-object v13, v3

    move v12, v9

    :goto_0
    check-cast v4, Lkotlin/Result;

    iget-object v1, v4, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v2, v1, Lkotlin/Result$Failure;

    if-nez v2, :cond_e

    move-object v2, v1

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    iget-object v3, v15, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->c:Ljava/lang/String;

    iget-object v4, v15, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b:Ljava/lang/String;

    iget-object v5, v15, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->C:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->O:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->e:Ljava/lang/String;

    invoke-static {v5, v8}, Lcom/vuitton/android/presentation/extensions/StringAndroidExtKt;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->l(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    iget-object v8, v15, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->c1:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductImageUiModel;

    if-eqz v8, :cond_1

    iget-object v8, v8, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductImageUiModel;->b:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v8, v11

    :goto_1
    if-eqz v3, :cond_6

    if-eqz v8, :cond_6

    new-instance v10, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnAddToCartSuccessEvent;

    invoke-direct {v10, v15}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnAddToCartSuccessEvent;-><init>(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;)V

    invoke-virtual {v0, v10}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->Gc(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;)V

    new-instance v10, Lcom/batch/android/BatchEventAttributes;

    invoke-direct {v10}, Lcom/batch/android/BatchEventAttributes;-><init>()V

    const-string v9, "product_name"

    invoke-virtual {v10, v9, v3}, Lcom/batch/android/BatchEventAttributes;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/BatchEventAttributes;

    const-string v3, "product_link"

    invoke-virtual {v10, v3, v5}, Lcom/batch/android/BatchEventAttributes;->put(Ljava/lang/String;Ljava/net/URI;)Lcom/batch/android/BatchEventAttributes;

    sget-object v3, Lokhttp3/HttpUrl;->j:Lokhttp3/HttpUrl$Companion;

    new-instance v5, Lkotlin/text/Regex;

    const-string v9, "\\p{InCombiningDiacriticalMarks}+"

    invoke-direct {v5, v9}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {v8, v9}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, ""

    invoke-virtual {v5, v8, v9}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lokhttp3/HttpUrl$Companion;->d(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "image_url"

    invoke-virtual {v10, v5, v3}, Lcom/batch/android/BatchEventAttributes;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/BatchEventAttributes;

    const-string v3, "SKU"

    invoke-virtual {v10, v3, v4}, Lcom/batch/android/BatchEventAttributes;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/BatchEventAttributes;

    const-string v3, "added_product_to_cart"

    invoke-static {v3, v10}, Lcom/batch/android/Batch$Profile;->trackEvent(Ljava/lang/String;Lcom/batch/android/BatchEventAttributes;)V

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->D:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;

    invoke-static {v15}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModelKt;->b(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-wide v8, v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;->c:D

    double-to-float v5, v8

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    invoke-static {v15}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModelKt;->b(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, v8, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;->b:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v8, v11

    :goto_3
    sget-object v9, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    iget-object v9, v2, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->c:Ljava/util/List;

    check-cast v9, Ljava/lang/Iterable;

    move-object v10, v4

    new-instance v4, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v9, v11}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v4, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    iput-object v11, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->k:Ljava/lang/Object;

    iput-object v0, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->b:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    iput-object v15, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iput-object v14, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->d:Lkotlinx/coroutines/Deferred;

    iput-object v1, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->e:Ljava/lang/Object;

    iput-object v13, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->f:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v2, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->g:Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    iput v12, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->h:I

    const/4 v9, 0x0

    iput v9, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->i:I

    const/4 v9, 0x2

    iput v9, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->j:I

    move-object v9, v0

    move-object v0, v3

    const/4 v3, 0x1

    move-object/from16 v23, v8

    move-object v8, v1

    move v1, v5

    move-object/from16 v5, v23

    move-object/from16 v23, v10

    move-object v10, v2

    move-object/from16 v2, v23

    invoke-virtual/range {v0 .. v6}, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;->a(FLjava/lang/String;ILjava/util/List;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_5

    goto/16 :goto_11

    :cond_5
    move-object v4, v8

    move-object v2, v10

    move v1, v12

    move-object v3, v13

    move-object v5, v14

    move-object v12, v15

    const/4 v0, 0x0

    move-object v13, v9

    :goto_5
    move-object v14, v3

    move v3, v0

    move-object v0, v13

    move-object v13, v14

    move-object v14, v5

    move-object v5, v12

    move v12, v1

    move-object v1, v4

    goto :goto_6

    :cond_6
    move-object v9, v0

    move-object v8, v1

    move-object v10, v2

    move-object v1, v8

    move-object v0, v9

    move-object v2, v10

    move-object v5, v15

    const/4 v3, 0x0

    :goto_6
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v5}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-object v8, v8, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;

    if-eqz v8, :cond_7

    iget-wide v9, v8, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;->c:D

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v9

    const-string v10, "af_price"

    invoke-virtual {v4, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v8, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;->b:Ljava/lang/String;

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "af_currency"

    invoke-virtual {v4, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string v8, "af_content_id"

    iget-object v9, v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "af_content"

    iget-object v9, v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->c:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->h:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

    new-instance v9, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$AddToCart;

    invoke-direct {v9, v4}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$AddToCart;-><init>(Ljava/util/Map;)V

    const-string v4, "ProductViewModel"

    invoke-interface {v8, v4, v9}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;)V

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->k0:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    const/4 v11, 0x0

    iput-object v11, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->k:Ljava/lang/Object;

    iput-object v0, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->b:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    iput-object v5, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iput-object v11, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->d:Lkotlinx/coroutines/Deferred;

    iput-object v1, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->e:Ljava/lang/Object;

    iput-object v13, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->f:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v2, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->g:Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    iput v12, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->h:I

    iput v3, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->i:I

    const/4 v4, 0x3

    iput v4, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->j:I

    invoke-interface {v14, v6}, Lkotlinx/coroutines/Deferred;->k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v7, :cond_8

    goto/16 :goto_11

    :cond_8
    move-object v8, v0

    move v0, v3

    move-object v9, v5

    move-object v3, v13

    move-object v5, v1

    move v1, v12

    :goto_7
    check-cast v4, Lkotlinx/collections/immutable/ImmutableList;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_a

    iget-object v9, v8, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->w0:Lkotlinx/coroutines/channels/BufferedChannel;

    new-instance v10, Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$CrossSellAddToCart;

    invoke-direct {v10, v4}, Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$CrossSellAddToCart;-><init>(Lkotlinx/collections/immutable/ImmutableList;)V

    const/4 v11, 0x0

    iput-object v11, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->k:Ljava/lang/Object;

    iput-object v8, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->b:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    iput-object v11, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iput-object v11, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->d:Lkotlinx/coroutines/Deferred;

    iput-object v5, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->e:Ljava/lang/Object;

    iput-object v3, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->f:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v2, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->g:Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    iput v1, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->h:I

    iput v0, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->i:I

    const/4 v4, 0x4

    iput v4, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->j:I

    invoke-interface {v9, v10, v6}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v7, :cond_9

    goto/16 :goto_11

    :cond_9
    move-object v4, v5

    move-object v5, v8

    :goto_8
    move/from16 v23, v1

    move v1, v0

    move/from16 v0, v23

    goto :goto_a

    :cond_a
    iget-object v4, v8, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->w0:Lkotlinx/coroutines/channels/BufferedChannel;

    iget-object v10, v8, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->e0:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v10}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;

    iget-boolean v11, v11, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->i:Z

    invoke-interface {v10}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;

    iget-boolean v10, v10, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;->j:Z

    invoke-static {v2, v11, v10}, Lcom/vuitton/android/presentation/screen/cart/models/CartMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/cart/Cart;ZZ)Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    move-result-object v10

    iget-object v10, v10, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;->c:Ljava/util/List;

    check-cast v10, Ljava/lang/Iterable;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    iget-object v12, v12, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->a:Ljava/lang/String;

    iget-object v13, v9, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b:Ljava/lang/String;

    sget-object v14, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    goto :goto_9

    :cond_c
    const/4 v11, 0x0

    :goto_9
    check-cast v11, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    new-instance v9, Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$AddedToCart;

    invoke-direct {v9, v11}, Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$AddedToCart;-><init>(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;)V

    const/4 v11, 0x0

    iput-object v11, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->k:Ljava/lang/Object;

    iput-object v8, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->b:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    iput-object v11, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iput-object v11, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->d:Lkotlinx/coroutines/Deferred;

    iput-object v5, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->e:Ljava/lang/Object;

    iput-object v3, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->f:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v2, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->g:Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    iput v1, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->h:I

    iput v0, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->i:I

    const/4 v10, 0x5

    iput v10, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->j:I

    invoke-interface {v4, v9, v6}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v7, :cond_9

    goto/16 :goto_11

    :goto_a
    iget-object v8, v5, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->g:Lcom/vuitton/android/core/events/LVEventSender;

    new-instance v9, Lcom/vuitton/android/core/events/AppEvent$RefreshCartCountEvent;

    iget v2, v2, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->b:I

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v9, v10}, Lcom/vuitton/android/core/events/AppEvent$RefreshCartCountEvent;-><init>(Ljava/lang/Integer;)V

    const/4 v11, 0x0

    iput-object v11, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->k:Ljava/lang/Object;

    iput-object v5, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->b:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    iput-object v11, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iput-object v11, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->d:Lkotlinx/coroutines/Deferred;

    iput-object v4, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->e:Ljava/lang/Object;

    iput-object v3, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->f:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v11, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->g:Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    iput v0, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->h:I

    iput v1, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->i:I

    const/4 v1, 0x6

    iput v1, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->j:I

    invoke-virtual {v8, v9, v6}, Lcom/vuitton/android/core/events/LVEventSender;->a(Lcom/vuitton/android/core/events/AppEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v7, :cond_d

    goto/16 :goto_11

    :cond_d
    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    :goto_b
    move v12, v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_c

    :cond_e
    move-object v9, v0

    move-object v8, v1

    move-object v3, v9

    move-object v0, v13

    :goto_c
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_16

    new-instance v4, Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Error$AddToCartError;

    invoke-direct {v4, v2}, Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Error$AddToCartError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v4}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    sget v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->z0:I

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnAddToCartErrorEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnAddToCartErrorEvent;

    invoke-virtual {v3, v4}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->Gc(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;)V

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->v0:Lkotlinx/coroutines/channels/BufferedChannel;

    instance-of v5, v2, Lcom/vuitton/foundation/model/domain/error/cart/ServerOverloadException;

    if-eqz v5, :cond_10

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnDisplayServerOverloadSheet;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnDisplayServerOverloadSheet;

    invoke-virtual {v3, v2}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->Gc(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;)V

    iget-object v2, v3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->w0:Lkotlinx/coroutines/channels/BufferedChannel;

    new-instance v4, Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$ServerOverload;

    new-instance v5, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f14147b

    const/4 v9, 0x2

    const/4 v11, 0x0

    invoke-direct {v5, v8, v11, v9, v11}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v8, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v10, 0x7f141478

    invoke-direct {v8, v10, v11, v9, v11}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v9, v3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->O:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iget-object v9, v9, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->S:Ljava/lang/String;

    invoke-direct {v4, v5, v8, v9}, Lcom/vuitton/android/presentation/screen/pdp/PdpBottomSheetAction$ServerOverload;-><init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;)V

    iput-object v11, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->k:Ljava/lang/Object;

    iput-object v3, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->b:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    iput-object v11, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iput-object v11, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->d:Lkotlinx/coroutines/Deferred;

    iput-object v1, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->e:Ljava/lang/Object;

    iput-object v0, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->f:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v11, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->g:Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    iput v12, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->h:I

    const/4 v9, 0x0

    iput v9, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->i:I

    const/4 v1, 0x7

    iput v1, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->j:I

    invoke-interface {v2, v4, v6}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v7, :cond_f

    goto/16 :goto_11

    :cond_f
    move-object v1, v3

    :goto_d
    move-object v3, v1

    goto/16 :goto_12

    :cond_10
    instance-of v5, v2, Lcom/vuitton/foundation/model/domain/error/cart/OutOfStockError;

    if-eqz v5, :cond_12

    iget-object v2, v3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->k:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v5, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f141019

    const/4 v9, 0x2

    const/4 v11, 0x0

    invoke-direct {v5, v8, v11, v9, v11}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v21, 0x0

    const/16 v22, 0x3c

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v2

    move-object/from16 v18, v5

    invoke-static/range {v17 .. v22}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v2

    iput-object v11, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->k:Ljava/lang/Object;

    iput-object v3, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->b:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    iput-object v11, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iput-object v11, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->d:Lkotlinx/coroutines/Deferred;

    iput-object v1, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->e:Ljava/lang/Object;

    iput-object v0, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->f:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v11, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->g:Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    iput v12, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->h:I

    const/4 v9, 0x0

    iput v9, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->i:I

    const/16 v1, 0x8

    iput v1, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->j:I

    invoke-interface {v4, v2, v6}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v7, :cond_11

    goto/16 :goto_11

    :cond_11
    move-object v1, v3

    :goto_e
    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->m0:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;->DisplayBackInStock:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_d

    :cond_12
    instance-of v5, v2, Lcom/vuitton/foundation/model/domain/error/cart/MaxQuantityReached;

    if-eqz v5, :cond_13

    new-instance v2, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v5, 0x7f1404f3

    const/4 v9, 0x2

    const/4 v11, 0x0

    invoke-direct {v2, v5, v11, v9, v11}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_f
    move-object/from16 v17, v2

    goto :goto_10

    :cond_13
    const/4 v9, 0x2

    const/4 v11, 0x0

    instance-of v5, v2, Lcom/vuitton/foundation/model/domain/error/cart/MaxSkuQuantityReached;

    if-eqz v5, :cond_14

    new-instance v2, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v5, 0x7f14095e

    invoke-direct {v2, v5, v11, v9, v11}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_f

    :cond_14
    instance-of v2, v2, Lcom/vuitton/foundation/model/domain/error/cart/MaxPersonalizationQuantityReached;

    if-eqz v2, :cond_15

    new-instance v2, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v5, 0x7f140506

    invoke-direct {v2, v5, v11, v9, v11}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_f

    :cond_15
    new-instance v2, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v5, 0x7f140a5a

    invoke-direct {v2, v5, v11, v9, v11}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_f

    :goto_10
    iget-object v2, v3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->k:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    const/16 v20, 0x0

    const/16 v21, 0x3c

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v2

    invoke-static/range {v16 .. v21}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v2

    iput-object v11, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->k:Ljava/lang/Object;

    iput-object v3, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->b:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    iput-object v11, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iput-object v11, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->d:Lkotlinx/coroutines/Deferred;

    iput-object v1, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->e:Ljava/lang/Object;

    iput-object v0, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->f:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v11, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->g:Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    iput v12, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->h:I

    const/4 v9, 0x0

    iput v9, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->i:I

    const/16 v1, 0x9

    iput v1, v6, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;->j:I

    invoke-interface {v4, v2, v6}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v7, :cond_f

    :goto_11
    return-object v7

    :cond_16
    :goto_12
    iget-object v1, v3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->Z:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    :cond_17
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
