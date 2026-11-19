.class public final Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0089\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002\u0012L\u0010\u0012\u001aH\u0008\u0001\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000e\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u00100\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0008\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate;",
        "",
        "",
        "shouldDisplayPrice",
        "Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;",
        "filterCommand",
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
        "Lkotlinx/coroutines/CoroutineScope;",
        "scope",
        "Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;",
        "isProductInWishlist",
        "<init>",
        "(ZLcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;ZZLkotlin/jvm/functions/Function3;Lkotlinx/coroutines/CoroutineScope;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;)V",
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
.field public final a:Lkotlinx/coroutines/CoroutineScope;

.field public final b:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final c:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final d:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

.field public final e:Lkotlinx/coroutines/flow/StateFlow;

.field public final f:Lkotlinx/coroutines/flow/StateFlow;

.field public final g:Lkotlinx/coroutines/flow/StateFlow;

.field public final h:Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate$special$$inlined$map$3;


# direct methods
.method public constructor <init>(ZLcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;ZZLkotlin/jvm/functions/Function3;Lkotlinx/coroutines/CoroutineScope;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;",
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
            ">;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v3, p6

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate;->a:Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object v4, v1

    new-instance v1, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

    const/16 v14, 0x521

    const/4 v15, 0x0

    move-object v5, v2

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v11, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v6, p6

    move-object/from16 v13, p7

    move-object/from16 v17, v4

    move-object/from16 v16, v5

    move/from16 v4, p1

    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v15}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;-><init>(ILkotlinx/coroutines/flow/Flow;ZLkotlin/jvm/functions/Function3;Lkotlinx/coroutines/CoroutineScope;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;ZZZLcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v11, v1

    move-object v10, v3

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate;->d:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

    new-instance v1, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate;

    sget-object v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;->SEARCH:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    new-instance v4, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate$special$$inlined$map$1;

    invoke-direct {v4, v10}, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v7, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate$special$$inlined$map$2;

    invoke-direct {v7, v10}, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static/range {v17 .. v17}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v9

    const/4 v5, 0x0

    iget-object v8, v11, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;->q:Lkotlinx/coroutines/flow/StateFlow;

    move-object/from16 v6, p2

    move-object/from16 v3, p6

    invoke-direct/range {v1 .. v9}, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/MutableStateFlow;)V

    iget-object v2, v11, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;->p:Lkotlinx/coroutines/flow/StateFlow;

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate;->e:Lkotlinx/coroutines/flow/StateFlow;

    new-instance v2, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate$pspViewState$1;

    move/from16 v4, p3

    move/from16 v9, p4

    move-object/from16 v5, v17

    invoke-direct {v2, v4, v9, v5}, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate$pspViewState$1;-><init>(ZZLkotlin/coroutines/Continuation;)V

    move-object/from16 v5, v16

    invoke-static {v10, v8, v5, v2}, Lkotlinx/coroutines/flow/FlowKt;->h(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object v2

    sget-object v4, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance v9, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;

    const/16 v15, 0x1f

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v16}, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;-><init>(Ljava/lang/String;Ljava/lang/Integer;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2, v3, v4, v9}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate;->f:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate;->a:Lkotlinx/coroutines/flow/StateFlow;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate;->g:Lkotlinx/coroutines/flow/StateFlow;

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    invoke-direct {v1, v8}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate$special$$inlined$filter$1;

    invoke-direct {v2, v1}, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate$special$$inlined$filter$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate$special$$inlined$map$3;

    invoke-direct {v1, v2, v0}, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate$special$$inlined$map$3;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate;)V

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate;->h:Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate$special$$inlined$map$3;

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;ZZLkotlin/jvm/functions/Function3;Lkotlinx/coroutines/CoroutineScope;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x4

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move p3, v0

    :cond_0
    and-int/lit8 p8, p8, 0x8

    if-eqz p8, :cond_1

    move p4, v0

    .line 170
    :cond_1
    invoke-direct/range {p0 .. p7}, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate;-><init>(ZLcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;ZZLkotlin/jvm/functions/Function3;Lkotlinx/coroutines/CoroutineScope;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;)V

    return-void
.end method
