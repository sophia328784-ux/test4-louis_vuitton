.class final Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$selectExchangeOption$1;
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
    c = "com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModelImpl$selectExchangeOption$1"
    f = "OrderReturnOrExchangeViewModelImpl.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;

.field public final synthetic c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;ILcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$selectExchangeOption$1;->b:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;

    iput p2, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$selectExchangeOption$1;->c:I

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$selectExchangeOption$1;->d:Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$selectExchangeOption$1;

    iget v0, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$selectExchangeOption$1;->c:I

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$selectExchangeOption$1;->d:Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$selectExchangeOption$1;->b:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$selectExchangeOption$1;-><init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;ILcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$selectExchangeOption$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$selectExchangeOption$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$selectExchangeOption$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$selectExchangeOption$1;->b:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_0
    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v2

    check-cast v1, Ljava/lang/Iterable;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$selectExchangeOption$1;->c:I

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->q0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl$selectExchangeOption$1;->d:Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    invoke-virtual {v2, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
