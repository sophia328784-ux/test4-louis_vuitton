.class final Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$shareWishlist$1$1;
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
    c = "com.vuitton.android.presentation.screen.wishlist.WishlistViewModelImpl$shareWishlist$1$1"
    f = "WishlistViewModelImpl.kt"
    l = {
        0x186
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$shareWishlist$1$1;->c:Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$shareWishlist$1$1;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$shareWishlist$1$1;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$shareWishlist$1$1;->f:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$shareWishlist$1$1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$shareWishlist$1$1;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$shareWishlist$1$1;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$shareWishlist$1$1;->c:Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$shareWishlist$1$1;->d:Ljava/lang/String;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$shareWishlist$1$1;-><init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$shareWishlist$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$shareWishlist$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$shareWishlist$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$shareWishlist$1$1;->c:Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$shareWishlist$1$1;->b:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    if-ne v4, v6, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_3

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase;

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    if-eqz p1, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {p1, v8}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    :goto_0
    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/snapshots/StateListIterator;

    invoke-virtual {v8}, Landroidx/compose/runtime/snapshots/StateListIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Landroidx/compose/runtime/snapshots/StateListIterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistItemUiModel;

    iget-object v8, v8, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistItemUiModel;->b:Ljava/lang/String;

    sget-object v9, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    move-object v11, v4

    goto :goto_2

    :cond_3
    sget-object v4, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_1

    :goto_2
    iput v6, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$shareWishlist$1$1;->b:I

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$shareWishlist$1$1;->d:Ljava/lang/String;

    iget-object v9, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$shareWishlist$1$1;->e:Ljava/lang/String;

    iget-object v10, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$shareWishlist$1$1;->f:Ljava/lang/String;

    move-object v12, p0

    invoke-virtual/range {v7 .. v12}, Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v3, :cond_4

    return-object v3

    :cond_4
    :goto_3
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_5

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$ShareWishlistSuccessEvent;->a:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$ShareWishlistSuccessEvent;

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->h1(Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p0

    new-instance p1, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$showSuccessNotification$1;

    const v1, 0x7f140e00

    invoke-direct {p1, v0, v1, v5}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$showSuccessNotification$1;-><init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;ILkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    invoke-static {p0, v5, v5, p1, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_4

    :cond_5
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v2, Lkotlin/Result;

    invoke-direct {v2, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    const p0, 0x7f140967

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->Ac(I)V

    iget-object p0, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    const-string v0, "WishlistViewModelImpl"

    const-string v1, "Unable to share wishlist"

    invoke-interface {p0, v0, v1, p1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
