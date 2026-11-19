.class final Lcom/vuitton/android/presentation/chat/ChatCoordinator$trackConfirmationDetails$1;
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
    c = "com.vuitton.android.presentation.chat.ChatCoordinator$trackConfirmationDetails$1"
    f = "ChatCoordinator.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;

.field public final synthetic c:Lcom/vuitton/android/presentation/chat/ChatCoordinator;


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;Lcom/vuitton/android/presentation/chat/ChatCoordinator;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/chat/ChatCoordinator$trackConfirmationDetails$1;->b:Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;

    iput-object p2, p0, Lcom/vuitton/android/presentation/chat/ChatCoordinator$trackConfirmationDetails$1;->c:Lcom/vuitton/android/presentation/chat/ChatCoordinator;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/chat/ChatCoordinator$trackConfirmationDetails$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/chat/ChatCoordinator$trackConfirmationDetails$1;->b:Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;

    iget-object p0, p0, Lcom/vuitton/android/presentation/chat/ChatCoordinator$trackConfirmationDetails$1;->c:Lcom/vuitton/android/presentation/chat/ChatCoordinator;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/chat/ChatCoordinator$trackConfirmationDetails$1;-><init>(Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;Lcom/vuitton/android/presentation/chat/ChatCoordinator;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/chat/ChatCoordinator$trackConfirmationDetails$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/chat/ChatCoordinator$trackConfirmationDetails$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/chat/ChatCoordinator$trackConfirmationDetails$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/chat/ChatCoordinator$trackConfirmationDetails$1;->b:Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;

    iget-object v0, p1, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->h:Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInfo;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInfo;->c:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    iget-wide v0, v0, Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;->a:D

    double-to-int v0, v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/chat/ChatCoordinator$trackConfirmationDetails$1;->c:Lcom/vuitton/android/presentation/chat/ChatCoordinator;

    iget-object v1, p0, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->h:Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;

    iget-object p0, p0, Lcom/vuitton/android/presentation/chat/ChatCoordinator;->h:Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;

    iget-object v1, v1, Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;->a:Lcom/vuitton/foundation/contracts/chat/ChatTracker;

    invoke-interface {v1}, Lcom/vuitton/foundation/contracts/chat/ChatTracker;->z()V

    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->g:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;

    iget-object v4, v2, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->b:Ljava/lang/String;

    iget-object v5, v2, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->d:Lcom/vuitton/foundation/model/domain/model/product/ProductImage;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/product/ProductImage;->a:Ljava/lang/String;

    new-instance v7, Ljava/math/BigDecimal;

    iget-object v6, v2, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->e:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    iget-wide v8, v6, Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;->a:D

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iget-object v9, v2, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->a:Ljava/lang/String;

    iget v10, v2, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->c:I

    iget-object v11, v6, Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;->c:Ljava/lang/String;

    const/4 v12, 0x0

    const-string v6, ""

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;->a:Lcom/vuitton/foundation/contracts/chat/ChatTracker;

    invoke-interface {v2, v3, v0}, Lcom/vuitton/foundation/contracts/chat/ChatTracker;->I(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/chat/ChatTrackerUseCase;->a:Lcom/vuitton/foundation/contracts/chat/ChatTracker;

    invoke-interface {p0, p1}, Lcom/vuitton/foundation/contracts/chat/ChatTracker;->k(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
