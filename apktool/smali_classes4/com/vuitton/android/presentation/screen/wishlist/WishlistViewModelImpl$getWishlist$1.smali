.class final Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$getWishlist$1;
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
    c = "com.vuitton.android.presentation.screen.wishlist.WishlistViewModelImpl$getWishlist$1"
    f = "WishlistViewModelImpl.kt"
    l = {
        0xbb,
        0xbc
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;

.field public final synthetic d:Lcom/vuitton/android/domain/monitoring/MonitorAction;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;Lcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$getWishlist$1;->c:Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$getWishlist$1;->d:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$getWishlist$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$getWishlist$1;->c:Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$getWishlist$1;->d:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$getWishlist$1;-><init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;Lcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$getWishlist$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$getWishlist$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$getWishlist$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$getWishlist$1;->c:Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v6, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$getWishlist$1;->b:I

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v6, :cond_2

    if-eq v6, v9, :cond_1

    if-ne v6, v8, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v5, p1

    check-cast v5, Lkotlin/Result;

    iget-object v5, v5, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v6, p1

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;

    iput v9, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$getWishlist$1;->b:I

    iget-object v6, v6, Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;->a:Lcom/vuitton/android/domain/repository/WishlistRepository;

    invoke-interface {v6}, Lcom/vuitton/android/domain/repository/WishlistRepository;->f()Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;

    move-result-object v6

    if-ne v6, v5, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    check-cast v6, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput v8, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$getWishlist$1;->b:I

    invoke-interface {v6, v0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v5, :cond_4

    :goto_1
    return-object v5

    :cond_4
    move-object v5, v6

    :goto_2
    sget-object v6, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v6, v5, Lkotlin/Result$Failure;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$getWishlist$1;->d:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-nez v6, :cond_8

    move-object v6, v5

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/wishlist/Wishlist;

    if-eqz v6, :cond_6

    iget-object v7, v6, Lcom/vuitton/foundation/model/domain/model/wishlist/Wishlist;->a:Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v7, v9}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistItem;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistItemUiModel;

    iget-object v11, v9, Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistItem;->a:Ljava/lang/String;

    sget-object v12, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel;->c:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel$Companion;

    sget-object v12, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    move-object v13, v12

    iget-object v12, v9, Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistItem;->b:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v9, Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistItem;->c:Ljava/lang/String;

    iget-object v14, v9, Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistItem;->d:Ljava/lang/String;

    iget-object v15, v9, Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistItem;->e:Ljava/lang/String;

    const/16 v17, 0x20

    const/16 v18, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v10 .. v18}, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    new-instance v7, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-direct {v7}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->addAll(Ljava/util/Collection;)Z

    iget-object v6, v6, Lcom/vuitton/foundation/model/domain/model/wishlist/Wishlist;->b:Ljava/lang/String;

    new-instance v8, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;

    invoke-direct {v8, v7, v6}, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateList;Ljava/lang/String;)V

    move-object v7, v8

    :cond_6
    invoke-interface {v2, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    if-eqz v0, :cond_8

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;

    if-eqz v2, :cond_7

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v2

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :goto_4
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "wishlistSize"

    invoke-interface {v0, v6, v2}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :cond_8
    invoke-static {v5}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_a

    if-eqz v0, :cond_9

    new-instance v5, Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Error$OpenWishlistError;

    invoke-direct {v5, v2}, Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Error$OpenWishlistError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v5}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    :cond_9
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    const-string v3, "WishlistViewModelImpl"

    const-string v4, "Unable to get wishlist"

    invoke-interface {v1, v3, v4, v2}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    :cond_b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
