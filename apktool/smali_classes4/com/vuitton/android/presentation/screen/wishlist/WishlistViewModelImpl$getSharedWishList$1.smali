.class final Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$getSharedWishList$1;
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
    c = "com.vuitton.android.presentation.screen.wishlist.WishlistViewModelImpl$getSharedWishList$1"
    f = "WishlistViewModelImpl.kt"
    l = {
        0x1af
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;

.field public final synthetic f:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/monitoring/MonitorAction;Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$getSharedWishList$1;->d:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$getSharedWishList$1;->e:Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$getSharedWishList$1;->f:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$getSharedWishList$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$getSharedWishList$1;->e:Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$getSharedWishList$1;->f:Ljava/util/List;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$getSharedWishList$1;->d:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$getSharedWishList$1;-><init>(Lcom/vuitton/android/domain/monitoring/MonitorAction;Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$getSharedWishList$1;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$getSharedWishList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$getSharedWishList$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$getSharedWishList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$getSharedWishList$1;->e:Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$getSharedWishList$1;->c:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$getSharedWishList$1;->b:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$getSharedWishList$1;->d:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz v5, :cond_1

    if-ne v5, v6, :cond_0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$getSharedWishList$1;->f:Ljava/util/List;

    :try_start_1
    sget-object v9, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    const-string v9, "isSharedWishlist"

    const-string v10, "true"

    invoke-interface {v8, v10, v9}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v9, v1, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$getSharedWishList$1;->c:Ljava/lang/Object;

    iput v6, v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl$getSharedWishList$1;->b:I

    iget-object v6, v9, Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;->a:Lcom/vuitton/android/domain/repository/CatalogRepository;

    invoke-interface {v6, v5, v0}, Lcom/vuitton/android/domain/repository/CatalogRepository;->k(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_2

    return-object v4

    :cond_2
    :goto_0
    check-cast v0, Ljava/util/List;

    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v4, Lkotlin/Result$Failure;

    invoke-direct {v4, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v4

    :goto_2
    instance-of v4, v0, Lkotlin/Result$Failure;

    if-nez v4, :cond_a

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistItemUiModel;

    iget-object v10, v6, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->n:Ljava/lang/String;

    iget-object v11, v6, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->e:Ljava/lang/String;

    if-eqz v10, :cond_3

    sget-object v12, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel;->c:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel$Companion;

    goto :goto_4

    :cond_3
    sget-object v10, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel;->c:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel$Companion;

    move-object v10, v11

    :goto_4
    sget-object v12, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v6, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->b:Ljava/lang/String;

    iget-object v13, v6, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->c:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    iget-object v13, v13, Lcom/vuitton/foundation/model/domain/model/common/Asset;->a:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    if-eqz v13, :cond_4

    iget-object v13, v13, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;->a:Ljava/lang/String;

    goto :goto_5

    :cond_4
    move-object v13, v7

    :goto_5
    const-string v14, ""

    if-nez v13, :cond_5

    move-object v13, v14

    :cond_5
    iget-object v6, v6, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->o:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;

    if-eqz v6, :cond_6

    iget-object v6, v6, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;->b:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object v6, v7

    :goto_6
    if-nez v6, :cond_7

    goto :goto_7

    :cond_7
    move-object v14, v6

    :goto_7
    const/16 v16, 0x20

    const/16 v17, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v17}, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    new-instance v4, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-direct {v4}, Landroidx/compose/runtime/snapshots/SnapshotStateList;-><init>()V

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->addAll(Ljava/util/Collection;)Z

    new-instance v5, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;

    invoke-direct {v5, v4, v7}, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateList;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;

    if-eqz v2, :cond_9

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v2

    goto :goto_8

    :cond_9
    const/4 v2, 0x0

    :goto_8
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    const-string v2, "wishlistSize"

    invoke-interface {v8, v4, v2}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :cond_a
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_b

    new-instance v2, Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Error$OpenWishlistError;

    invoke-direct {v2, v0}, Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Error$OpenWishlistError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v8, v2}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    const v0, 0x7f140967

    invoke-virtual {v1, v0}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;->Ac(I)V

    :cond_b
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-interface {v8}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
