.class final Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$getCartContribution$1;
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
    c = "com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl$getCartContribution$1"
    f = "NativeCartViewModelImpl.kt"
    l = {
        0x405
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$getCartContribution$1;->c:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$getCartContribution$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$getCartContribution$1;->c:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    invoke-direct {p1, p2, p0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$getCartContribution$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$getCartContribution$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$getCartContribution$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$getCartContribution$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$getCartContribution$1;->c:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->N:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$getCartContribution$1;->b:I

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->s:Lcom/vuitton/android/domain/usecase/cart/GetCartContributionUseCase;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$getCartContribution$1;->b:I

    invoke-virtual {p1, p0}, Lcom/vuitton/android/domain/usecase/cart/GetCartContributionUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_2

    return-object v2

    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_d

    move-object p1, p0

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/cart/CartContribution;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->Y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/vuitton/android/presentation/screen/cart/models/CartContributionUiModel;

    iget-object v4, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartContribution;->a:Lcom/vuitton/foundation/model/domain/model/cart/GiftingContribution;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/vuitton/android/presentation/screen/cart/models/ContributionGiftingUiModel;

    iget-object v6, v4, Lcom/vuitton/foundation/model/domain/model/cart/GiftingContribution;->a:Ljava/lang/String;

    const-string v7, ""

    if-nez v6, :cond_3

    move-object v6, v7

    :cond_3
    iget-object v8, v4, Lcom/vuitton/foundation/model/domain/model/cart/GiftingContribution;->b:Ljava/lang/String;

    if-nez v8, :cond_4

    move-object v8, v7

    :cond_4
    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/cart/GiftingContribution;->c:Ljava/lang/String;

    if-nez v4, :cond_5

    move-object v4, v7

    :cond_5
    invoke-direct {v5, v6, v8, v4}, Lcom/vuitton/android/presentation/screen/cart/models/ContributionGiftingUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartContribution;->b:Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBagContribution;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/vuitton/android/presentation/screen/cart/models/ContributionShoppingBagUiModel;

    iget-object v8, v4, Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBagContribution;->a:Ljava/lang/String;

    if-nez v8, :cond_6

    move-object v8, v7

    :cond_6
    iget-object v9, v4, Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBagContribution;->b:Ljava/lang/String;

    if-nez v9, :cond_7

    move-object v9, v7

    :cond_7
    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBagContribution;->c:Ljava/lang/String;

    if-nez v4, :cond_8

    move-object v4, v7

    :cond_8
    invoke-direct {v6, v8, v9, v4}, Lcom/vuitton/android/presentation/screen/cart/models/ContributionShoppingBagUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartContribution;->c:Lcom/vuitton/foundation/model/domain/model/cart/PackagingContribution;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/vuitton/android/presentation/screen/cart/models/ContributionPackagingUiModel;

    iget-object v8, p1, Lcom/vuitton/foundation/model/domain/model/cart/PackagingContribution;->a:Ljava/lang/String;

    if-nez v8, :cond_9

    move-object v8, v7

    :cond_9
    iget-object v9, p1, Lcom/vuitton/foundation/model/domain/model/cart/PackagingContribution;->b:Ljava/lang/String;

    if-nez v9, :cond_a

    move-object v9, v7

    :cond_a
    iget-object v10, p1, Lcom/vuitton/foundation/model/domain/model/cart/PackagingContribution;->c:Ljava/lang/String;

    if-nez v10, :cond_b

    move-object v10, v7

    :cond_b
    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/cart/PackagingContribution;->d:Ljava/lang/String;

    if-nez p1, :cond_c

    goto :goto_1

    :cond_c
    move-object v7, p1

    :goto_1
    invoke-direct {v4, v8, v9, v10, v7}, Lcom/vuitton/android/presentation/screen/cart/models/ContributionPackagingUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v5, v6, v4}, Lcom/vuitton/android/presentation/screen/cart/models/CartContributionUiModel;-><init>(Lcom/vuitton/android/presentation/screen/cart/models/ContributionGiftingUiModel;Lcom/vuitton/android/presentation/screen/cart/models/ContributionShoppingBagUiModel;Lcom/vuitton/android/presentation/screen/cart/models/ContributionPackagingUiModel;)V

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_d
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_e

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string v0, "NativeCartViewModelImpl"

    const-string v2, "Unable to get cart contribution"

    invoke-interface {p1, v0, v2, p0}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
