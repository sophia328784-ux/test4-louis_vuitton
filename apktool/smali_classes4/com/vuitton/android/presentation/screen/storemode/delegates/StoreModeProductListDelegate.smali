.class public final Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeProductListDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0091\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012L\u0010\u0012\u001aH\u0008\u0001\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000e\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u00100\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0008\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeProductListDelegate;",
        "",
        "",
        "initialKey",
        "",
        "shouldDisplayPrice",
        "Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;",
        "filterCommand",
        "Lkotlin/Function3;",
        "Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;",
        "Lkotlin/ParameterName;",
        "name",
        "id",
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
        "isPlpV3GridViewEnabled",
        "isAiCompanionEnabled",
        "<init>",
        "(Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/CoroutineScope;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;ZZ)V",
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

.field public final c:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

.field public final d:Lkotlinx/coroutines/flow/StateFlow;

.field public final e:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/CoroutineScope;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;ZZ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;",
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
            "ZZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v3, p5

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeProductListDelegate;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v4, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;

    const/16 v10, 0x1c

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v11}, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;Ljava/util/UUID;Lcom/vuitton/android/presentation/screen/filter/model/FilterType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeProductListDelegate;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object v3, v1

    new-instance v1, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

    const/16 v14, 0x521

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move/from16 v4, p2

    move-object/from16 v11, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v13, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v15}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;-><init>(ILkotlinx/coroutines/flow/Flow;ZLkotlin/jvm/functions/Function3;Lkotlinx/coroutines/CoroutineScope;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;ZZZLcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v1

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeProductListDelegate;->c:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

    new-instance v1, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate;

    sget-object v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;->PLP:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    new-instance v4, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeProductListDelegate$special$$inlined$map$1;

    invoke-direct {v4, v3}, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeProductListDelegate$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v7, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeProductListDelegate$special$$inlined$map$2;

    invoke-direct {v7, v3}, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeProductListDelegate$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    const/4 v3, 0x0

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v9

    iget-object v8, v10, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;->q:Lkotlinx/coroutines/flow/StateFlow;

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v3, p5

    invoke-direct/range {v1 .. v9}, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/Flow;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/MutableStateFlow;)V

    iget-object v2, v10, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;->p:Lkotlinx/coroutines/flow/StateFlow;

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeProductListDelegate;->d:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate;->a:Lkotlinx/coroutines/flow/StateFlow;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeProductListDelegate;->e:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/CoroutineScope;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p10, p9, 0x40

    const/4 v0, 0x0

    if-eqz p10, :cond_0

    move p7, v0

    :cond_0
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_1

    move p8, v0

    .line 112
    :cond_1
    invoke-direct/range {p0 .. p8}, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeProductListDelegate;-><init>(Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/CoroutineScope;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;ZZ)V

    return-void
.end method
