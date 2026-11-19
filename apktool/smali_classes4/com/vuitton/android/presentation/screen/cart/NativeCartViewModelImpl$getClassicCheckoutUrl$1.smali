.class final Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$getClassicCheckoutUrl$1;
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
    c = "com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl$getClassicCheckoutUrl$1"
    f = "NativeCartViewModelImpl.kt"
    l = {
        0x30f,
        0x312
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:Ljava/lang/Object;

.field public d:I

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$getClassicCheckoutUrl$1;->e:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$getClassicCheckoutUrl$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$getClassicCheckoutUrl$1;->e:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    invoke-direct {p1, p2, p0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$getClassicCheckoutUrl$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$getClassicCheckoutUrl$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$getClassicCheckoutUrl$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$getClassicCheckoutUrl$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$getClassicCheckoutUrl$1;->e:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->O:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->M:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$getClassicCheckoutUrl$1;->d:I

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_2

    if-eq v4, v7, :cond_1

    if-ne v4, v6, :cond_0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$getClassicCheckoutUrl$1;->c:Ljava/lang/Object;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$getClassicCheckoutUrl$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_1
    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$getClassicCheckoutUrl$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    move-object v9, v4

    move-object v4, p1

    move-object p1, v9

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->b:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->A:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v8, Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Action$CheckoutUrl;->a:Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Action$CheckoutUrl;

    invoke-interface {p1, v4, v8}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object p1

    const-string v4, "checkoutOpenContext"

    const-string v8, "OtherPaymentMethods"

    invoke-virtual {p1, v8, v4}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->m:Lcom/vuitton/android/domain/usecase/cart/GetCheckoutUrlUseCase;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$getClassicCheckoutUrl$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v7, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$getClassicCheckoutUrl$1;->d:I

    invoke-virtual {v4, p0}, Lcom/vuitton/android/domain/usecase/cart/GetCheckoutUrlUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    sget-object v7, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v7, v4, Lkotlin/Result$Failure;

    if-nez v7, :cond_5

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->E:Lkotlinx/coroutines/flow/SharedFlowImpl;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$getClassicCheckoutUrl$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$getClassicCheckoutUrl$1;->c:Ljava/lang/Object;

    iput v6, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$getClassicCheckoutUrl$1;->d:I

    invoke-virtual {v8, v7, p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v3, :cond_4

    :goto_1
    return-object v3

    :cond_4
    move-object p0, p1

    move-object v3, v4

    :goto_2
    move-object p1, p0

    move-object v4, v3

    :cond_5
    invoke-static {v4}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_6

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string v3, "NativeCartViewModelImpl"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4, v5}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    new-instance v0, Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Error$CheckoutUrlError;

    invoke-direct {v0, p0}, Lcom/vuitton/android/domain/monitoring/cart/NativeCartMonitoring$Error$CheckoutUrlError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    :cond_6
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
