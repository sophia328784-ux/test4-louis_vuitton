.class final Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getInvoice$1;
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
    c = "com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl$getInvoice$1"
    f = "OrderViewModelImpl.kt"
    l = {
        0x158,
        0x15b,
        0x15e
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getInvoice$1;->d:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getInvoice$1;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getInvoice$1;->f:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getInvoice$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getInvoice$1;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getInvoice$1;->f:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getInvoice$1;->d:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getInvoice$1;-><init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getInvoice$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getInvoice$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getInvoice$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getInvoice$1;->d:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getInvoice$1;->c:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_4

    if-eq v3, v6, :cond_2

    if-eq v3, v5, :cond_1

    if-ne v3, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getInvoice$1;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    :cond_3
    move-object v3, p1

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :cond_5
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, p1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/account/order/GetInvoiceUseCase;

    iput v6, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getInvoice$1;->c:I

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getInvoice$1;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getInvoice$1;->f:Ljava/lang/String;

    invoke-virtual {p1, v3, v6, p0}, Lcom/vuitton/android/domain/usecase/account/order/GetInvoiceUseCase;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_3

    goto :goto_2

    :goto_0
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, v3, Lkotlin/Result$Failure;

    if-nez p1, :cond_7

    move-object p1, v3

    check-cast p1, Lcom/vuitton/android/core/type/FileLocation;

    iget-object p1, p1, Lcom/vuitton/android/core/type/FileLocation;->a:Ljava/lang/String;

    :cond_6
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v6, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->n:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getInvoice$1;->b:Ljava/lang/Object;

    iput v5, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getInvoice$1;->c:I

    invoke-interface {v6, p1, p0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_7

    goto :goto_2

    :cond_7
    :goto_1
    invoke-static {v3}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_9

    :cond_8
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v5, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getInvoice$1;->b:Ljava/lang/Object;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl$getInvoice$1;->c:I

    invoke-virtual {v0, p1, p0}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;->Dc(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_9

    :goto_2
    return-object v2

    :cond_9
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
