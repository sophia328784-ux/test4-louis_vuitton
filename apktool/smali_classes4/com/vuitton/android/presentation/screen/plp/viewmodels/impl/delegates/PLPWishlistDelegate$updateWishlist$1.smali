.class final Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$updateWishlist$1;
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
    c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.PLPWishlistDelegate$updateWishlist$1"
    f = "PLPWishlistDelegate.kt"
    l = {
        0x69,
        0x6e,
        0x77
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode;

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode;Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$updateWishlist$1;->c:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$updateWishlist$1;->d:Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$updateWishlist$1;->e:Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$updateWishlist$1;->f:Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$updateWishlist$1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$updateWishlist$1;->e:Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$updateWishlist$1;->f:Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$updateWishlist$1;->c:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$updateWishlist$1;->d:Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$updateWishlist$1;-><init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode;Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$updateWishlist$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$updateWishlist$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$updateWishlist$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$updateWishlist$1;->b:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$updateWishlist$1;->c:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v4, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->g:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    invoke-virtual {p1}, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->b()Z

    move-result p1

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$updateWishlist$1;->d:Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;

    if-eqz p1, :cond_8

    iput-boolean v5, v4, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->n:Z

    iget-object p1, v1, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;->a:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/ProductForWishlist;

    iget-boolean v6, v1, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;->b:Z

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/ProductForWishlist;->b:Landroidx/compose/runtime/MutableState;

    if-eqz p1, :cond_4

    new-instance v7, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;

    invoke-direct {v7, v6, v5}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;-><init>(ZZ)V

    invoke-interface {p1, v7}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_4
    iget-object p1, v1, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;->a:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/ProductForWishlist;

    if-eqz v6, :cond_6

    iput v5, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$updateWishlist$1;->b:I

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$updateWishlist$1;->e:Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode;

    invoke-static {v4, p1, v1, p0}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->a(Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/ProductForWishlist;Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto :goto_3

    :cond_5
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_2

    :cond_6
    iput v3, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$updateWishlist$1;->b:I

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$updateWishlist$1;->f:Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode;

    invoke-static {v4, p1, v1, p0}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->b(Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/ProductForWishlist;Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    goto :goto_3

    :cond_7
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_2
    const/4 v1, 0x0

    iput-boolean v1, v4, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->n:Z

    if-eqz p1, :cond_9

    iput-boolean v5, v4, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->m:Z

    iget-object p1, v4, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->c:Lcom/vuitton/android/core/events/LVEventSender;

    iput v2, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate$updateWishlist$1;->b:I

    sget-object v1, Lcom/vuitton/android/core/events/AppEvent$WishListUpdatedEvent;->a:Lcom/vuitton/android/core/events/AppEvent$WishListUpdatedEvent;

    invoke-virtual {p1, v1, p0}, Lcom/vuitton/android/core/events/LVEventSender;->a(Lcom/vuitton/android/core/events/AppEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_9

    :goto_3
    return-object v0

    :cond_8
    iget-object p0, v4, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->o:Lkotlinx/coroutines/flow/SharedFlowImpl;

    new-instance p1, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$RequestAuth;

    invoke-direct {p1, v1}, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$RequestAuth;-><init>(Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;)V

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    :cond_9
    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
