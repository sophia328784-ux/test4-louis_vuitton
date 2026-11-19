.class final Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$requestShoppingBag$1;
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
    c = "com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl$requestShoppingBag$1"
    f = "NativeCartViewModelImpl.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$requestShoppingBag$1;->b:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$requestShoppingBag$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$requestShoppingBag$1;->b:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    invoke-direct {p1, p2, p0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$requestShoppingBag$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$requestShoppingBag$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$requestShoppingBag$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$requestShoppingBag$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$requestShoppingBag$1;->b:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->U:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->K:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    if-eqz v3, :cond_3

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    iget-object v6, v2, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;->g:Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;

    if-eqz v6, :cond_1

    iget-boolean v6, v6, Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;->a:Z

    goto :goto_0

    :cond_1
    move v6, v5

    :goto_0
    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;->g:Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;

    if-eqz v2, :cond_2

    iget-boolean v5, v2, Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;->b:Z

    :cond_2
    xor-int/lit8 v2, v5, 0x1

    invoke-direct {v4, v6, v2}, Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;-><init>(ZZ)V

    invoke-static {v3, v4}, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;->a(Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;)Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    move-result-object v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    new-instance p1, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$ShoppingBagToggle;

    invoke-direct {p1, v0}, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$ShoppingBagToggle;-><init>(Z)V

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->W9(Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel;)V

    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
