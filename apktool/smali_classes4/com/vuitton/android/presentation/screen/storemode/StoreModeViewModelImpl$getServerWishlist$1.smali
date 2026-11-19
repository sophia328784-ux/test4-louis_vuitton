.class final Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getServerWishlist$1;
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
    c = "com.vuitton.android.presentation.screen.storemode.StoreModeViewModelImpl$getServerWishlist$1"
    f = "StoreModeViewModelImpl.kt"
    l = {
        0x12a,
        0x12b
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getServerWishlist$1;->c:Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getServerWishlist$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getServerWishlist$1;->c:Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getServerWishlist$1;-><init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getServerWishlist$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getServerWishlist$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getServerWishlist$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getServerWishlist$1;->b:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getServerWishlist$1;->c:Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v3, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;

    iput v5, p0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getServerWishlist$1;->b:I

    iget-object p1, p1, Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;->a:Lcom/vuitton/android/domain/repository/WishlistRepository;

    invoke-interface {p1}, Lcom/vuitton/android/domain/repository/WishlistRepository;->f()Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getServerWishlist$1;->b:I

    invoke-interface {p1, p0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    :goto_2
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_7

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/wishlist/Wishlist;

    iget-object p1, v3, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistSummaryUiModel;

    if-eqz p0, :cond_5

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/wishlist/Wishlist;->a:Ljava/util/List;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-eqz p0, :cond_6

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/wishlist/Wishlist;->a:Ljava/util/List;

    if-eqz p0, :cond_6

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->N(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistItem;

    if-eqz p0, :cond_6

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistItem;->d:Ljava/lang/String;

    :cond_6
    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistSummaryUiModel;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
