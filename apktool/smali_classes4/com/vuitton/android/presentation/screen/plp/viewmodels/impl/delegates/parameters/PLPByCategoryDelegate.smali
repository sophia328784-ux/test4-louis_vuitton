.class public final Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPByCategoryDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0091\u0001\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012L\u0010\u0018\u001aH\u0008\u0001\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u00160\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000e\u00a2\u0006\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPByCategoryDelegate;",
        "",
        "",
        "isPlpV3GridViewEnabled",
        "isAiCompanionEnabled",
        "",
        "initialKey",
        "Lkotlinx/coroutines/CoroutineScope;",
        "scope",
        "shouldDisplayPrice",
        "Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;",
        "filterCommand",
        "Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;",
        "isProductInWishlist",
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
        "<init>",
        "(ZZLjava/lang/String;Lkotlinx/coroutines/CoroutineScope;ZLcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lkotlin/jvm/functions/Function3;)V",
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


# direct methods
.method public constructor <init>(ZZLjava/lang/String;Lkotlinx/coroutines/CoroutineScope;ZLcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lkotlin/jvm/functions/Function3;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Z",
            "Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;",
            "Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;",
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
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;

    const/16 v7, 0x1c

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p3

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;Ljava/util/UUID;Lcom/vuitton/android/presentation/screen/filter/model/FilterType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPByCategoryDelegate;->a:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x0

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPByCategoryDelegate;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v2, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

    sget-object v8, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;->PLP:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    new-instance v13, Lrh0;

    const/16 v1, 0xe

    move-object/from16 v3, p3

    invoke-direct {v13, v0, v3, v1}, Lrh0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 v15, 0x101

    const/16 v16, 0x0

    const/4 v3, 0x0

    const/4 v11, 0x0

    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v7, p4

    move/from16 v5, p5

    move-object/from16 v12, p6

    move-object/from16 v14, p7

    move-object/from16 v6, p8

    invoke-direct/range {v2 .. v16}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;-><init>(ILkotlinx/coroutines/flow/Flow;ZLkotlin/jvm/functions/Function3;Lkotlinx/coroutines/CoroutineScope;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;ZZZLcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPByCategoryDelegate;->c:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

    invoke-static {v4}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPByCategoryDelegate;->d:Lkotlinx/coroutines/flow/StateFlow;

    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;->p:Lkotlinx/coroutines/flow/StateFlow;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPByCategoryDelegate;->e:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method

.method public synthetic constructor <init>(ZZLjava/lang/String;Lkotlinx/coroutines/CoroutineScope;ZLcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lkotlin/jvm/functions/Function3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p10, p9, 0x1

    const/4 v0, 0x0

    if-eqz p10, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p9, p9, 0x2

    if-eqz p9, :cond_1

    move p2, v0

    .line 96
    :cond_1
    invoke-direct/range {p0 .. p8}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPByCategoryDelegate;-><init>(ZZLjava/lang/String;Lkotlinx/coroutines/CoroutineScope;ZLcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lkotlin/jvm/functions/Function3;)V

    return-void
.end method
