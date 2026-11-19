.class final Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setGiftOption$1;
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
    c = "com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl$setGiftOption$1"
    f = "NativeCartViewModelImpl.kt"
    l = {
        0x323,
        0x328,
        0x329,
        0x32c
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

.field public d:Ljava/lang/Object;

.field public e:I

.field public f:I

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

.field public final synthetic h:Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setGiftOption$1;->g:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setGiftOption$1;->h:Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setGiftOption$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setGiftOption$1;->g:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setGiftOption$1;->h:Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setGiftOption$1;-><init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setGiftOption$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setGiftOption$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setGiftOption$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setGiftOption$1;->g:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->M:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setGiftOption$1;->f:I

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v3, :cond_4

    if-eq v3, v8, :cond_3

    if-eq v3, v7, :cond_2

    if-eq v3, v6, :cond_1

    if-ne v3, v5, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setGiftOption$1;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setGiftOption$1;->c:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v3, v0

    move-object v0, p0

    goto/16 :goto_5

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_1
    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setGiftOption$1;->c:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setGiftOption$1;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    iget v3, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setGiftOption$1;->e:I

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setGiftOption$1;->d:Ljava/lang/Object;

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setGiftOption$1;->c:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iget-object v10, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setGiftOption$1;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move p1, v3

    move-object v3, v10

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/cart/AddGiftMessageUseCase;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->K:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    if-eqz v3, :cond_5

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;->g:Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;

    if-eqz v3, :cond_5

    iget-boolean v3, v3, Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;->b:Z

    goto :goto_0

    :cond_5
    move v3, v9

    :goto_0
    iput v8, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setGiftOption$1;->f:I

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setGiftOption$1;->h:Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;

    invoke-virtual {p1, v8, p0, v3}, Lcom/vuitton/android/domain/usecase/cart/AddGiftMessageUseCase;->a(Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;Lkotlin/coroutines/jvm/internal/ContinuationImpl;Z)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_6

    goto :goto_4

    :cond_6
    :goto_1
    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v3, p1, Lkotlin/Result$Failure;

    if-nez v3, :cond_9

    move-object v3, p1

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->B:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v11, Lkotlin/Result;

    invoke-direct {v11, v10}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setGiftOption$1;->b:Ljava/lang/Object;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setGiftOption$1;->c:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setGiftOption$1;->d:Ljava/lang/Object;

    iput v9, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setGiftOption$1;->e:I

    iput v7, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setGiftOption$1;->f:I

    invoke-interface {v8, v11, p0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v2, :cond_7

    goto :goto_4

    :cond_7
    move-object v8, v0

    move-object v7, v3

    move-object v3, p1

    move p1, v9

    :goto_2
    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setGiftOption$1;->b:Ljava/lang/Object;

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setGiftOption$1;->c:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setGiftOption$1;->d:Ljava/lang/Object;

    iput p1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setGiftOption$1;->e:I

    iput v6, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setGiftOption$1;->f:I

    invoke-virtual {v8, v7, p0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->Dc(Lcom/vuitton/foundation/model/domain/model/cart/Cart;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    move-object p1, v3

    :cond_9
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_b

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setGiftOption$1;->b:Ljava/lang/Object;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setGiftOption$1;->c:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setGiftOption$1;->d:Ljava/lang/Object;

    iput v9, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setGiftOption$1;->e:I

    iput v5, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setGiftOption$1;->f:I

    invoke-static {v0, v3, p0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->zc(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_a

    :goto_4
    return-object v2

    :cond_a
    :goto_5
    iget-object p0, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string p1, "NativeCartViewModelImpl"

    const-string v0, "Unable to set gift message"

    invoke-interface {p0, p1, v0, v3}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
