.class public final Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySkusDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B]\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySkusDelegate;",
        "",
        "",
        "isPlpV3GridViewEnabled",
        "isAiCompanionEnabled",
        "Lkotlinx/coroutines/CoroutineScope;",
        "scope",
        "",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;",
        "skus",
        "shouldDisplayPrice",
        "Lcom/vuitton/android/domain/usecase/plp/GetSkusPLPUseCase;",
        "getSkusPLP",
        "Lkotlin/Function1;",
        "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;",
        "",
        "sendTrackingHit",
        "Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;",
        "isProductInWishlist",
        "<init>",
        "(ZZLkotlinx/coroutines/CoroutineScope;Ljava/util/List;ZLcom/vuitton/android/domain/usecase/plp/GetSkusPLPUseCase;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;)V",
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

.field public final b:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

.field public final c:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method public constructor <init>(ZZLkotlinx/coroutines/CoroutineScope;Ljava/util/List;ZLcom/vuitton/android/domain/usecase/plp/GetSkusPLPUseCase;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;",
            ">;Z",
            "Lcom/vuitton/android/domain/usecase/plp/GetSkusPLPUseCase;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static/range {p4 .. p4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySkusDelegate;->a:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v1, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

    new-instance v5, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySkusDelegate$coreDelegate$1;

    const/4 v2, 0x0

    move-object/from16 v4, p6

    move-object/from16 v6, p7

    invoke-direct {v5, v4, v6, v2}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySkusDelegate$coreDelegate$1;-><init>(Lcom/vuitton/android/domain/usecase/plp/GetSkusPLPUseCase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/16 v14, 0x720

    const/4 v15, 0x0

    const v2, 0x7fffffff

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v6, p3

    move/from16 v4, p5

    move-object/from16 v13, p8

    invoke-direct/range {v1 .. v15}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;-><init>(ILkotlinx/coroutines/flow/Flow;ZLkotlin/jvm/functions/Function3;Lkotlinx/coroutines/CoroutineScope;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;ZZZLcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySkusDelegate;->b:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;->p:Lkotlinx/coroutines/flow/StateFlow;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySkusDelegate;->c:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method

.method public synthetic constructor <init>(ZZLkotlinx/coroutines/CoroutineScope;Ljava/util/List;ZLcom/vuitton/android/domain/usecase/plp/GetSkusPLPUseCase;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p10, p9, 0x1

    const/4 v0, 0x0

    if-eqz p10, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p9, p9, 0x2

    if-eqz p9, :cond_1

    move p2, v0

    .line 68
    :cond_1
    invoke-direct/range {p0 .. p8}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySkusDelegate;-><init>(ZZLkotlinx/coroutines/CoroutineScope;Ljava/util/List;ZLcom/vuitton/android/domain/usecase/plp/GetSkusPLPUseCase;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;)V

    return-void
.end method
