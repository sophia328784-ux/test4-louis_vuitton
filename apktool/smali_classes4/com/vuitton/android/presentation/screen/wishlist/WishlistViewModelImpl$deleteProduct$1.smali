.class final Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$deleteProduct$1;
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
    c = "com.vuitton.android.presentation.screen.wishlist.WishlistViewModelImpl$deleteProduct$1"
    f = "WishlistViewModelImpl.kt"
    l = {
        0xee,
        0xfa,
        0xfe
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:Ljava/lang/Object;

.field public d:Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;

.field public e:I

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$deleteProduct$1;->f:Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$deleteProduct$1;->g:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$deleteProduct$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$deleteProduct$1;->f:Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$deleteProduct$1;->g:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$deleteProduct$1;-><init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$deleteProduct$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$deleteProduct$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$deleteProduct$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$deleteProduct$1;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$deleteProduct$1;->g:Ljava/lang/String;

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$deleteProduct$1;->f:Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;

    if-eqz v1, :cond_3

    if-eq v1, v6, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$deleteProduct$1;->d:Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$deleteProduct$1;->c:Ljava/lang/Object;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$deleteProduct$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$deleteProduct$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    move-object v11, v1

    move-object v1, p1

    move-object p1, v11

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-wide v9, v8, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->q:J

    iput v6, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$deleteProduct$1;->e:I

    invoke-static {v9, v10, p0}, Lkotlinx/coroutines/DelayKt;->b(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    :goto_0
    iget-object p1, v8, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v1, v8, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->p:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v9, Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Action$RemoveFromWishlist;->a:Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Action$RemoveFromWishlist;

    invoke-interface {p1, v1, v9}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object p1

    const-string v1, "sku"

    invoke-virtual {p1, v7, v1}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v8, v7, v5}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;Ljava/lang/String;Z)V

    iget-object v1, v8, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;

    sget-object v9, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$deleteProduct$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$deleteProduct$1;->e:I

    invoke-virtual {v1, v7, p0}, Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v4, v1, Lkotlin/Result$Failure;

    if-nez v4, :cond_8

    move-object v4, v1

    check-cast v4, Lkotlin/Unit;

    iget-object v4, v8, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;

    if-eqz v4, :cond_6

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    if-eqz v4, :cond_6

    new-instance v9, Lk71;

    invoke-direct {v9, v7, v5}, Lk71;-><init>(Ljava/lang/String;I)V

    invoke-static {v4, v9}, Lkotlin/collections/CollectionsKt;->a0(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    :cond_6
    iget-object v4, v8, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->d:Lcom/vuitton/android/core/events/LVEventSender;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$deleteProduct$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$deleteProduct$1;->c:Ljava/lang/Object;

    iput-object v8, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$deleteProduct$1;->d:Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;

    iput v3, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$deleteProduct$1;->e:I

    sget-object v5, Lcom/vuitton/android/core/events/AppEvent$WishListUpdatedEvent;->a:Lcom/vuitton/android/core/events/AppEvent$WishListUpdatedEvent;

    invoke-virtual {v4, v5, p0}, Lcom/vuitton/android/core/events/LVEventSender;->a(Lcom/vuitton/android/core/events/AppEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    :goto_2
    return-object v0

    :cond_7
    move-object p0, p1

    move-object v0, v8

    :goto_3
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->s:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v5, Lkotlin/Result;

    invoke-direct {v5, v4}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v5}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance v4, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$showSuccessNotification$1;

    const v5, 0x7f140dfb

    invoke-direct {v4, v0, v5, v2}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$showSuccessNotification$1;-><init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;ILkotlin/coroutines/Continuation;)V

    invoke-static {p1, v2, v2, v4, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-object p1, p0

    :cond_8
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_9

    new-instance v0, Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Error$RemoveFromWishlistError;

    invoke-direct {v0, p0}, Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Error$RemoveFromWishlistError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    const v0, 0x7f140967

    invoke-virtual {v8, v0}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->Ac(I)V

    invoke-static {v8, v7, v6}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;Ljava/lang/String;Z)V

    iget-object v0, v8, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    const-string v1, "WishlistViewModelImpl"

    const-string v2, "Unable to delete item from wishlist"

    invoke-interface {v0, v1, v2, p0}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    invoke-interface {p1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
