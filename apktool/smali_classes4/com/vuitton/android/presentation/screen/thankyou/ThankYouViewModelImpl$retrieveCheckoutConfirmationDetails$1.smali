.class final Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1;
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
    c = "com.vuitton.android.presentation.screen.thankyou.ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1"
    f = "ThankYouViewModelImpl.kt"
    l = {
        0x6b,
        0x6f,
        0x75
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;

.field public d:Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;

.field public e:Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;

.field public f:Ljava/lang/Object;

.field public g:I

.field public h:I

.field public final synthetic i:Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1;->i:Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1;->i:Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1;-><init>(Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v5, p0

    iget-object v6, v5, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1;->i:Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;

    iget-object v7, v6, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v8, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, v5, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1;->h:I

    const/4 v9, 0x3

    const/4 v1, 0x2

    const-string v10, "thankYouFeatureFlags"

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v11, :cond_2

    if-eq v0, v1, :cond_1

    if-ne v0, v9, :cond_0

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1;->d:Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;

    iget-object v1, v5, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1;->c:Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;

    iget-object v2, v5, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1;->b:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v16, v10

    goto/16 :goto_3

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v12

    :cond_1
    iget v0, v5, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1;->g:I

    iget-object v1, v5, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1;->f:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v2, v5, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1;->e:Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;

    iget-object v3, v5, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1;->d:Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;

    iget-object v4, v5, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1;->c:Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;

    iget-object v13, v5, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1;->b:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v14, v13

    move-object v13, v3

    move-object v3, v14

    move-object/from16 v16, v2

    move-object v14, v4

    move-object v2, v1

    move-object/from16 v1, p1

    goto :goto_1

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Loading;->a:Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Loading;

    invoke-interface {v7, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/cart/GetConfirmationDetailsUseCase;

    iput v11, v5, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1;->h:I

    invoke-virtual {v0, v5}, Lcom/vuitton/android/domain/usecase/cart/GetConfirmationDetailsUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_4

    goto/16 :goto_2

    :cond_4
    :goto_0
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, v0, Lkotlin/Result$Failure;

    if-nez v2, :cond_b

    move-object v2, v0

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/thankyou/models/mappers/CheckoutConfirmationDetailMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;)Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;

    move-result-object v3

    iget-object v4, v2, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->o:Ljava/lang/String;

    iput-object v0, v5, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1;->b:Ljava/lang/Object;

    iput-object v6, v5, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1;->c:Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;

    iput-object v2, v5, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1;->d:Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;

    iput-object v3, v5, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1;->e:Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;

    iput-object v7, v5, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1;->f:Ljava/lang/Object;

    const/4 v13, 0x0

    iput v13, v5, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1;->g:I

    iput v1, v5, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1;->h:I

    invoke-static {v6, v4, v5}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v16, v3

    move-object v14, v6

    move-object v3, v0

    move v0, v13

    move-object v13, v2

    move-object v2, v7

    :goto_1
    move-object/from16 v17, v1

    check-cast v17, Ljava/lang/String;

    iget-object v1, v14, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->u:Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeatureFlags;

    if-eqz v1, :cond_a

    new-instance v15, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;

    const/16 v18, 0x0

    const/16 v20, 0x4

    const/16 v21, 0x0

    move-object/from16 v19, v1

    invoke-direct/range {v15 .. v21}, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;-><init>(Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeatureFlags;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v15}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v1, v14, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->a:Lcom/vuitton/android/presentation/chat/ChatCoordinator;

    invoke-virtual {v1, v13}, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->d(Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;)V

    iget-object v1, v14, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYPurchaseEventUseCase;

    iget-object v2, v13, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->h:Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInfo;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInfo;->b:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    move-object/from16 v16, v10

    iget-wide v9, v2, Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;->a:D

    double-to-float v4, v9

    iget-object v9, v13, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->a:Ljava/lang/String;

    iget-object v10, v13, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->g:Ljava/util/List;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;->c:Ljava/lang/String;

    iput-object v3, v5, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1;->b:Ljava/lang/Object;

    iput-object v14, v5, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1;->c:Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;

    iput-object v13, v5, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1;->d:Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;

    iput-object v12, v5, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1;->e:Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;

    iput-object v12, v5, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1;->f:Ljava/lang/Object;

    iput v0, v5, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1;->g:I

    const/4 v15, 0x3

    iput v15, v5, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$retrieveCheckoutConfirmationDetails$1;->h:I

    move-object v0, v1

    move v1, v4

    move-object v4, v2

    move-object v2, v9

    move-object v9, v3

    move-object v3, v10

    invoke-virtual/range {v0 .. v5}, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYPurchaseEventUseCase;->a(FLjava/lang/String;Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_6

    :goto_2
    return-object v8

    :cond_6
    move-object v2, v9

    move-object v0, v13

    move-object v1, v14

    :goto_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->h:Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInfo;

    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->g:Ljava/util/List;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInfo;->b:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    iget-wide v8, v4, Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;->a:D

    new-instance v4, Ljava/lang/Double;

    invoke-direct {v4, v8, v9}, Ljava/lang/Double;-><init>(D)V

    const-string v8, "af_revenue"

    invoke-virtual {v3, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v5, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v5, v8}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;

    iget-object v10, v10, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->e:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    iget-wide v13, v10, Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;->a:D

    new-instance v10, Ljava/lang/Double;

    invoke-direct {v10, v13, v14}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    const-string v9, "af_price"

    invoke-virtual {v3, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v5, v8}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;

    iget-object v10, v10, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->a:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    const-string v9, "af_content_id"

    invoke-virtual {v3, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->h:Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInfo;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInfo;->b:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;->c:Ljava/lang/String;

    const-string v4, "af_currency"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v5, v8}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;

    iget v5, v5, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->c:I

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    const-string v4, "af_quantity"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->c:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

    new-instance v1, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$Purchase;

    invoke-direct {v1, v3}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$Purchase;-><init>(Ljava/util/Map;)V

    const-string v3, "ThankYouViewModel"

    invoke-interface {v0, v3, v1}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;)V

    move-object v0, v2

    goto :goto_7

    :cond_a
    move-object/from16 v16, v10

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v12

    :cond_b
    move-object/from16 v16, v10

    :goto_7
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_d

    new-instance v1, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Error;

    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->u:Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeatureFlags;

    if-eqz v2, :cond_c

    invoke-direct {v1, v12, v2, v11, v12}, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Error;-><init>(Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeatureFlags;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v7, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_8

    :cond_c
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v12

    :cond_d
    :goto_8
    instance-of v1, v0, Lkotlin/Result$Failure;

    if-eqz v1, :cond_e

    move-object v0, v12

    :cond_e
    check-cast v0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;

    if-eqz v0, :cond_f

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/thankyou/models/mappers/CheckoutConfirmationDetailMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;)Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;

    move-result-object v0

    goto :goto_9

    :cond_f
    move-object v0, v12

    :goto_9
    iget-object v1, v6, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->u:Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeatureFlags;

    if-eqz v1, :cond_11

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeatureFlags;->b:Z

    if-eqz v1, :cond_10

    invoke-static {v6}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$displayFeedbackNotification$1;

    invoke-direct {v2, v6, v12}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl$displayFeedbackNotification$1;-><init>(Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v15, 0x3

    invoke-static {v1, v12, v12, v2, v15}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_10
    new-instance v1, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModel$Screen;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModel$Screen;-><init>(Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;)V

    invoke-virtual {v6, v1}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->Ba(Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModel;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModel$PurchaseConfirmation;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModel$PurchaseConfirmation;-><init>(Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;)V

    invoke-virtual {v6, v1}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;->Ba(Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouTrackingUiModel;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_11
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v12
.end method
