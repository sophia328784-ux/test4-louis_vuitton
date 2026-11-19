.class final Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$requestSizeGuide$1;
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
    c = "com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModelImpl$requestSizeGuide$1"
    f = "OrderReturnOrExchangeViewModelImpl.kt"
    l = {
        0x1bb
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$requestSizeGuide$1;->d:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$requestSizeGuide$1;->e:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$requestSizeGuide$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$requestSizeGuide$1;->d:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$requestSizeGuide$1;->e:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$requestSizeGuide$1;-><init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$requestSizeGuide$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$requestSizeGuide$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$requestSizeGuide$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$requestSizeGuide$1;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$requestSizeGuide$1;->d:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$requestSizeGuide$1;->b:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p1, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide;

    sget-object v1, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide$SizeGuideRequest$Loading;->a:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide$SizeGuideRequest$Loading;

    invoke-direct {p1, v1}, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide;-><init>(Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide$SizeGuideRequest;)V

    invoke-virtual {v4, p1}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->X7(Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet;)V

    iget-object p1, v4, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/product/ProductId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/ProductId$Companion;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$requestSizeGuide$1;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$requestSizeGuide$1;->b:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;

    iput v3, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$requestSizeGuide$1;->c:I

    invoke-virtual {p1, v1, v2, p0}, Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object p0, v4

    :goto_0
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_3

    :try_start_0
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/sizeguide/SizeGuide;

    new-instance v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$requestSizeGuide$1$SizeGuideResponseUiModel;

    iget-object v1, v4, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->B:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v4, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->b:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    invoke-virtual {v3}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->e:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/vuitton/android/presentation/screen/pdp/mappers/ProductMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/sizeguide/SizeGuide;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeGuideUiModel;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$requestSizeGuide$1$SizeGuideResponseUiModel;-><init>(Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeGuideUiModel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    move-object p1, v0

    goto :goto_2

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_4

    check-cast p1, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$requestSizeGuide$1$SizeGuideResponseUiModel;

    new-instance v2, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide;

    new-instance v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide$SizeGuideRequest$Result;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$requestSizeGuide$1$SizeGuideResponseUiModel;->a:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$requestSizeGuide$1$SizeGuideResponseUiModel;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeGuideUiModel;

    iget-object v3, v4, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->o:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-direct {v0, v1, p1, v3}, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide$SizeGuideRequest$Result;-><init>(Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeGuideUiModel;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)V

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide;-><init>(Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide$SizeGuideRequest;)V

    :cond_4
    invoke-virtual {p0, v2}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->X7(Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
