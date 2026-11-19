.class public final Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySearchDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0089\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0004\u0012L\u0010\u0016\u001aH\u0008\u0001\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0010\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0012\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u00140\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000c\u00a2\u0006\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySearchDelegate;",
        "",
        "Lkotlinx/coroutines/CoroutineScope;",
        "scope",
        "",
        "shouldDisplayPrice",
        "Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;",
        "filterCommand",
        "Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;",
        "isProductInWishlist",
        "isPlpV3GridViewEnabled",
        "isAiCompanionEnabled",
        "Lkotlin/Function3;",
        "Lcom/vuitton/android/presentation/screen/filter/model/SearchParams;",
        "Lkotlin/ParameterName;",
        "name",
        "param",
        "",
        "pageIndex",
        "Lkotlin/coroutines/Continuation;",
        "Lkotlin/Result;",
        "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;",
        "requestPage",
        "<init>",
        "(Lkotlinx/coroutines/CoroutineScope;ZLcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;ZZLkotlin/jvm/functions/Function3;)V",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final b:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final c:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

.field public final d:Lkotlinx/coroutines/flow/StateFlow;

.field public final e:Lkotlinx/coroutines/flow/StateFlow;

.field public final f:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySearchDelegate$special$$inlined$map$1;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;ZLcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;ZZLkotlin/jvm/functions/Function3;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Z",
            "Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;",
            "Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;",
            "ZZ",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcom/vuitton/android/presentation/screen/filter/model/SearchParams;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;",
            ">;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySearchDelegate;->a:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySearchDelegate;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object v3, v2

    new-instance v2, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

    sget-object v8, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;->SEARCH:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    const/16 v15, 0x501

    const/16 v16, 0x0

    move-object v5, v3

    const/4 v3, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p1

    move-object/from16 v12, p3

    move-object/from16 v14, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v6, p7

    move-object/from16 v17, v5

    move/from16 v5, p2

    invoke-direct/range {v2 .. v16}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;-><init>(ILkotlinx/coroutines/flow/Flow;ZLkotlin/jvm/functions/Function3;Lkotlinx/coroutines/CoroutineScope;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;ZZZLcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySearchDelegate;->c:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;->p:Lkotlinx/coroutines/flow/StateFlow;

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySearchDelegate;->d:Lkotlinx/coroutines/flow/StateFlow;

    new-instance v3, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySearchDelegate$pspViewState$1;

    invoke-direct {v3, v9, v10, v1}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySearchDelegate$pspViewState$1;-><init>(ZZLkotlin/coroutines/Continuation;)V

    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;->q:Lkotlinx/coroutines/flow/StateFlow;

    move-object/from16 v5, v17

    invoke-static {v4, v1, v5, v3}, Lkotlinx/coroutines/flow/FlowKt;->h(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object v2

    sget-object v3, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance v4, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;

    const/16 v10, 0x1f

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;-><init>(Ljava/lang/String;Ljava/lang/Integer;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v7, p1

    invoke-static {v2, v7, v3, v4}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySearchDelegate;->e:Lkotlinx/coroutines/flow/StateFlow;

    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    invoke-direct {v2, v1}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySearchDelegate$special$$inlined$filter$1;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySearchDelegate$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySearchDelegate$special$$inlined$map$1;

    invoke-direct {v2, v1, v0}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySearchDelegate$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySearchDelegate;)V

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySearchDelegate;->f:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySearchDelegate$special$$inlined$map$1;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/CoroutineScope;ZLcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;ZZLkotlin/jvm/functions/Function3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x10

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move p5, v0

    :cond_0
    and-int/lit8 p8, p8, 0x20

    if-eqz p8, :cond_1

    move p6, v0

    .line 129
    :cond_1
    invoke-direct/range {p0 .. p7}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySearchDelegate;-><init>(Lkotlinx/coroutines/CoroutineScope;ZLcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;ZZLkotlin/jvm/functions/Function3;)V

    return-void
.end method
