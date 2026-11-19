.class public final Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0081\u0001\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u00a2\u0006\u0004\u0008!\u0010\"\u00a8\u0006#"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;",
        "Landroidx/lifecycle/SavedStateHandle;",
        "savedStateHandle",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/core/events/LVEventSender;",
        "eventSender",
        "Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;",
        "getRmsCodeUseCase",
        "Lcom/vuitton/android/domain/usecase/catalog/GetCatalogStoreModeUseCase;",
        "getCatalogStoreModeUseCase",
        "Lcom/vuitton/android/domain/service/authentication/UserSessionService;",
        "userSessionService",
        "Lcom/vuitton/android/domain/usecase/storemode/EnableStoreModeUseCase;",
        "enableStoreModeUseCase",
        "Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase;",
        "getStoreModeInfoUseCase",
        "Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;",
        "disableStoreModeUseCase",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeValidityUseCase;",
        "getStoreModeValidityUseCase",
        "Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;",
        "getWishlistUseCase",
        "Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;",
        "isStoreModeStillValidUseCase",
        "Lcom/vuitton/android/domain/usecase/wishlist/GetLocalWishlistSummaryUseCase;",
        "getLocalWishlistSummaryUseCase",
        "<init>",
        "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;Lcom/vuitton/android/domain/usecase/catalog/GetCatalogStoreModeUseCase;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/storemode/EnableStoreModeUseCase;Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase;Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeValidityUseCase;Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;Lcom/vuitton/android/domain/usecase/wishlist/GetLocalWishlistSummaryUseCase;)V",
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
.field public final A:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final B:Lkotlinx/coroutines/flow/StateFlow;

.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final c:Lcom/vuitton/android/core/events/LVEventSender;

.field public final d:Lcom/vuitton/android/domain/usecase/catalog/GetCatalogStoreModeUseCase;

.field public final e:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

.field public final f:Lcom/vuitton/android/domain/usecase/storemode/EnableStoreModeUseCase;

.field public final g:Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase;

.field public final h:Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;

.field public final i:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final j:Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeValidityUseCase;

.field public final k:Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;

.field public final l:Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;

.field public final m:Lcom/vuitton/android/domain/usecase/wishlist/GetLocalWishlistSummaryUseCase;

.field public final n:Ljava/lang/String;

.field public final o:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final p:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final q:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final r:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final s:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final t:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final u:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final v:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final w:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final x:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final y:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final z:Lkotlinx/coroutines/flow/MutableStateFlow;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;Lcom/vuitton/android/domain/usecase/catalog/GetCatalogStoreModeUseCase;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/storemode/EnableStoreModeUseCase;Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase;Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeValidityUseCase;Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;Lcom/vuitton/android/domain/usecase/wishlist/GetLocalWishlistSummaryUseCase;)V
    .locals 31
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModel;-><init>()V

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->c:Lcom/vuitton/android/core/events/LVEventSender;

    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/catalog/GetCatalogStoreModeUseCase;

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->e:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/storemode/EnableStoreModeUseCase;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase;

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeValidityUseCase;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->m:Lcom/vuitton/android/domain/usecase/wishlist/GetLocalWishlistSummaryUseCase;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v1

    const-class v2, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;

    sget-object v3, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-static {v3, v2, v1}, Landroidx/navigation/SavedStateHandleKt;->a(Landroidx/lifecycle/SavedStateHandle;Lkotlin/reflect/KClass;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;->b:Ljava/lang/String;

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->n:Ljava/lang/String;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;->c:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/main/navigation/CatalogRoute;->d:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;

    sget-object v4, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;->NEW_FROM_DEEPLINK:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeLaunchMode;

    const/4 v6, 0x0

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v6

    :goto_0
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v8

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->p:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v9

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->q:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v11

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v12

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->s:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v13, ""

    invoke-static {v13}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v14

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v15, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeUiModel;

    const/16 v16, 0x1f

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 p6, v15

    move/from16 p12, v16

    move-object/from16 p13, v17

    move-object/from16 p7, v18

    move-object/from16 p8, v19

    move-object/from16 p9, v20

    move-object/from16 p10, v21

    move-object/from16 p11, v22

    invoke-direct/range {p6 .. p13}, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v15}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v15

    iput-object v15, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/16 p1, 0x1

    new-instance v5, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistSummaryUiModel;

    move/from16 p2, v1

    const/4 v1, 0x0

    move-object/from16 v16, v3

    const/4 v3, 0x3

    invoke-direct {v5, v6, v1, v3, v1}, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistSummaryUiModel;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v5}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    move/from16 p3, v3

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p4, v4

    const/4 v4, 0x7

    move-object/from16 p6, v5

    invoke-static {v6, v4, v1}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->y:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v17, Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState$Nothing;->a:Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState$Nothing;

    move/from16 p7, v4

    invoke-static/range {v17 .. v17}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->A:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/16 v4, 0xb

    new-array v4, v4, [Lkotlinx/coroutines/flow/Flow;

    aput-object v15, v4, v6

    aput-object v7, v4, p1

    const/4 v6, 0x2

    aput-object v8, v4, v6

    aput-object v9, v4, p3

    const/4 v6, 0x4

    aput-object p6, v4, v6

    const/4 v6, 0x5

    aput-object v11, v4, v6

    const/4 v6, 0x6

    aput-object v3, v4, v6

    aput-object v12, v4, p7

    const/16 v6, 0x8

    aput-object v5, v4, v6

    const/16 v6, 0x9

    aput-object p4, v4, v6

    const/16 v6, 0xa

    aput-object v14, v4, v6

    new-instance v6, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$special$$inlined$combine$1;

    invoke-direct {v6, v4}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v4

    sget-object v7, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance v17, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;

    const/16 v29, 0x7ff

    const/16 v30, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-direct/range {v17 .. v30}, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;-><init>(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeUiModel;ZZZZLcom/vuitton/android/presentation/screen/wishlist/model/WishlistSummaryUiModel;ZLjava/lang/String;Ljava/lang/Boolean;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v8, v17

    invoke-static {v6, v4, v7, v8}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->B:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v9, v10}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    move-object/from16 v2, p5

    goto :goto_1

    :cond_2
    invoke-interface {v3, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    iget-object v2, v2, Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;->a:Lcom/vuitton/android/domain/repository/StoreModeRepository;

    invoke-interface {v2}, Lcom/vuitton/android/domain/repository/StoreModeRepository;->e()Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v4, v2, Lkotlin/Result$Failure;

    if-nez v4, :cond_3

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_3
    :goto_2
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$requestStoreModeCatalog$1;

    invoke-direct {v3, v0, v1}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$requestStoreModeCatalog$1;-><init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;Lkotlin/coroutines/Continuation;)V

    move/from16 v4, p3

    invoke-static {v2, v1, v1, v3, v4}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    if-eqz p2, :cond_5

    if-nez v16, :cond_4

    move-object v3, v13

    goto :goto_3

    :cond_4
    move-object/from16 v3, v16

    :goto_3
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v2

    new-instance v5, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$checkStoreModeTokenValidity$1;

    invoke-direct {v5, v0, v3, v1}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$checkStoreModeTokenValidity$1;-><init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v1, v1, v5, v4}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_4

    :cond_5
    invoke-interface {v5, v10}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :goto_4
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$fetchUserInfo$1;

    invoke-direct {v3, v0, v1}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$fetchUserInfo$1;-><init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v1, v1, v3, v4}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$1;

    invoke-direct {v3, v0, v1}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$1;-><init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v1, v1, v3, v4}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final yc(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->p:Lkotlinx/coroutines/flow/MutableStateFlow;

    instance-of v4, v1, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getStoreModeInfo$1;

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getStoreModeInfo$1;

    iget v5, v4, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getStoreModeInfo$1;->j:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getStoreModeInfo$1;->j:I

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getStoreModeInfo$1;

    invoke-direct {v4, v0, v1}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getStoreModeInfo$1;-><init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v1, v4, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getStoreModeInfo$1;->h:Ljava/lang/Object;

    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v6, v4, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getStoreModeInfo$1;->j:I

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v6, :cond_3

    if-eq v6, v8, :cond_2

    if-ne v6, v7, :cond_1

    iget v6, v4, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getStoreModeInfo$1;->g:I

    iget v8, v4, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getStoreModeInfo$1;->f:I

    iget v10, v4, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getStoreModeInfo$1;->e:I

    iget-object v11, v4, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getStoreModeInfo$1;->d:Ljava/lang/Object;

    iget-object v12, v4, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getStoreModeInfo$1;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v13, v4, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getStoreModeInfo$1;->b:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v14, v9

    move v9, v7

    goto/16 :goto_5

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v10

    :cond_2
    iget v6, v4, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getStoreModeInfo$1;->e:I

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/Result;

    iget-object v1, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase;

    iput v9, v4, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getStoreModeInfo$1;->e:I

    iput v8, v4, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getStoreModeInfo$1;->j:I

    move-object/from16 v11, p1

    invoke-virtual {v6, v11, v1, v4}, Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase;->a(Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_4

    goto/16 :goto_4

    :cond_4
    move v6, v9

    :goto_1
    sget-object v11, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v11, v1, Lkotlin/Result$Failure;

    if-nez v11, :cond_c

    move-object v11, v1

    check-cast v11, Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeInfo;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeUiModel;

    iget-object v14, v11, Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeInfo;->a:Ljava/lang/String;

    iget-object v15, v11, Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeInfo;->b:Ljava/lang/String;

    if-nez v15, :cond_5

    const-string v15, ""

    :cond_5
    move-object/from16 p2, v10

    iget-object v10, v11, Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeInfo;->c:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    iget-object v9, v11, Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeInfo;->d:Ljava/util/List;

    iget-object v11, v11, Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeInfo;->e:Ljava/util/List;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v11, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v11, v8}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeSection;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 p1, v1

    new-instance v1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeSectionUiModel;

    move-object/from16 v19, v4

    iget-object v4, v11, Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeSection;->a:Ljava/lang/String;

    move/from16 v20, v6

    iget-object v6, v11, Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeSection;->b:Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeType;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v17, Lcom/vuitton/android/presentation/screen/storemode/models/mapper/StoreModeSectionMapperKt$WhenMappings;->a:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v17, v6

    move-object/from16 v17, v8

    const/4 v8, 0x1

    if-ne v6, v8, :cond_8

    sget-object v6, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTypeUiModel;->SIMPLE:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTypeUiModel;

    iget-object v11, v11, Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeSection;->c:Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeData;

    if-eqz v11, :cond_7

    instance-of v8, v11, Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeData$StoreModeSimple;

    if-eqz v8, :cond_6

    new-instance v8, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeDataUiModel$StoreModeSimpleUiModel;

    check-cast v11, Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeData$StoreModeSimple;

    move-object/from16 v18, v9

    iget-object v9, v11, Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeData$StoreModeSimple;->a:Ljava/lang/String;

    move-object/from16 v21, v10

    iget-object v10, v11, Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeData$StoreModeSimple;->b:Ljava/lang/String;

    move-object/from16 v22, v13

    iget-object v13, v11, Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeData$StoreModeSimple;->c:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    invoke-static {v13}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-result-object v13

    iget-object v11, v11, Lcom/vuitton/foundation/model/domain/model/storemode/StoreModeData$StoreModeSimple;->d:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    invoke-static {v11}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    move-result-object v11

    invoke-direct {v8, v9, v10, v13, v11}, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeDataUiModel$StoreModeSimpleUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V

    goto :goto_3

    :cond_6
    invoke-static {}, Lv40;->g()V

    return-object p2

    :cond_7
    move-object/from16 v18, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v13

    move-object/from16 v8, p2

    :goto_3
    invoke-direct {v1, v4, v6, v8}, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeSectionUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTypeUiModel;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeDataUiModel;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p1

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v4, v19

    move/from16 v6, v20

    move-object/from16 v10, v21

    move-object/from16 v13, v22

    goto :goto_2

    :cond_8
    invoke-static {}, Lv40;->g()V

    return-object p2

    :cond_9
    move-object/from16 p1, v1

    move-object/from16 v19, v4

    move/from16 v20, v6

    move-object/from16 v18, v7

    move-object/from16 v17, v9

    move-object/from16 v16, v10

    invoke-direct/range {v13 .. v18}, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v12, v13}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 v13, p1

    move-object v12, v1

    move/from16 v10, v20

    const/4 v6, 0x0

    const/4 v8, 0x0

    :cond_a
    invoke-interface {v12}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v11

    move-object v1, v11

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v7, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->STORE_MODE_V2:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v7}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v7

    iput-object v13, v4, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getStoreModeInfo$1;->b:Ljava/lang/Object;

    iput-object v12, v4, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getStoreModeInfo$1;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v11, v4, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getStoreModeInfo$1;->d:Ljava/lang/Object;

    iput v10, v4, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getStoreModeInfo$1;->e:I

    iput v8, v4, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getStoreModeInfo$1;->f:I

    iput v6, v4, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getStoreModeInfo$1;->g:I

    const/4 v9, 0x2

    iput v9, v4, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$getStoreModeInfo$1;->j:I

    const/4 v14, 0x0

    invoke-virtual {v1, v7, v14, v4}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_b

    :goto_4
    return-object v5

    :cond_b
    :goto_5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v12, v11, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object v1, v13

    goto :goto_6

    :cond_c
    move-object/from16 p1, v1

    :goto_6
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_d

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_d
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->q:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-interface {v3, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_e
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final C6()V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->s:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final F()Z
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;

    iget-object v0, v0, Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;->a:Lcom/vuitton/android/domain/repository/StoreModeRepository;

    invoke-interface {v0}, Lcom/vuitton/android/domain/repository/StoreModeRepository;->c()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;

    invoke-virtual {p0}, Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;->a()V

    :cond_0
    return v1
.end method

.method public final G()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;

    invoke-virtual {p0}, Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;->a()V

    return-void
.end method

.method public final H5()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->y:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final R1()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$fetchUserInfo$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$fetchUserInfo$1;-><init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final S6(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel;)V
    .locals 12

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CloseScreen;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/StoreMode/Activate"

    const-string v4, "LVPass/StoreMode/Activate"

    const-string v5, "journey"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_4

    :cond_0
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$ExploreScreen;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/StoreMode/End"

    const-string v4, "LVPass/StoreMode/End"

    const-string v5, "journey"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_4

    :cond_1
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$WelcomeScreen;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/StoreMode/Explore"

    const-string v4, "LVPass/StoreMode/Explore"

    const-string v5, "journey"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_4

    :cond_2
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogScreen;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/catalog"

    const-string v4, "shop"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_4

    :cond_3
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogCategoryClickScreen;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogCategoryClickScreen;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogCategoryClickScreen;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v1, "LVPass/catalog/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_4
    const-string v0, "LVPass/catalog"

    goto :goto_0

    :goto_1
    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogCategoryClickScreen;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/vuitton/android/presentation/extensions/TrackingExtKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v6

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "mega_menu"

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_4

    :cond_5
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogLevel1ClickEvent;

    if-eqz v0, :cond_6

    check-cast p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogLevel1ClickEvent;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogLevel1ClickEvent;->a:Ljava/lang/String;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$LevelName;

    const-string v1, "menu_level_1"

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$LevelName;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogLevel1ClickEvent;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/vuitton/android/presentation/extensions/TrackingExtKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v8, 0x21

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-string v2, "LVPass/products_catalog"

    const-string v4, "catalog"

    const-string v5, "mega_menu"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_2
    move-object v1, v0

    goto/16 :goto_4

    :cond_6
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogLevel2ClickEvent;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogLevel2ClickEvent;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogLevel2ClickEvent;->a:Ljava/lang/String;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$LevelName;

    const-string v1, "menu_level_2"

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$LevelName;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogLevel2ClickEvent;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/vuitton/android/presentation/extensions/TrackingExtKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v8, 0x21

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-string v2, "LVPass/products_catalog"

    const-string v4, "catalog"

    const-string v5, "mega_menu"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    :cond_7
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogLevel3ClickEvent;

    if-eqz v0, :cond_8

    check-cast p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogLevel3ClickEvent;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogLevel3ClickEvent;->a:Ljava/lang/String;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$LevelName;

    const-string v1, "menu_level_3"

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$LevelName;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogLevel3ClickEvent;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/vuitton/android/presentation/extensions/TrackingExtKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v7

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v8, 0x21

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-string v2, "LVPass/products_catalog"

    const-string v4, "catalog"

    const-string v5, "mega_menu"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    :cond_8
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$ActivationClickedEvent;

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreMode;

    check-cast p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$ActivationClickedEvent;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$ActivationClickedEvent;->a:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreMode;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/16 v10, 0x20

    const/4 v11, 0x0

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$ActivateStore;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$ActivateStore;

    const-string v4, "LVPass/StoreMode/Activate"

    const-string v5, "activate_store"

    const-string v6, "journey"

    const-string v7, "navigation"

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_3
    move-object v1, v2

    goto/16 :goto_4

    :cond_9
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CloseClickedEvent;

    if-eqz v0, :cond_a

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreMode;

    check-cast p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CloseClickedEvent;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CloseClickedEvent;->a:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreMode;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/16 v10, 0x20

    const/4 v11, 0x0

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$CloseStore;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$CloseStore;

    const/4 v4, 0x0

    const-string v5, "close_intention"

    const-string v6, "journey"

    const-string v7, "navigation"

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    :cond_a
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$ConfirmExitClickedEvent;

    if-eqz v0, :cond_b

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreMode;

    check-cast p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$ConfirmExitClickedEvent;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$ConfirmExitClickedEvent;->a:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreMode;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/16 v10, 0x21

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v4, "LVPass/StoreMode/Explore"

    const-string v5, "Store_History"

    const-string v6, "journey"

    const-string v7, "navigation"

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    :cond_b
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CancelExitClickedEvent;

    if-eqz v0, :cond_c

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreMode;

    check-cast p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CancelExitClickedEvent;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CancelExitClickedEvent;->a:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreMode;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/16 v10, 0x21

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v4, "LVPass/StoreMode/Close"

    const-string v5, "close_cancel"

    const-string v6, "journey"

    const-string v7, "navigation"

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    :cond_c
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$ExploreClickedEvent;

    if-eqz v0, :cond_d

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x61

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/StoreMode/Explore"

    const-string v4, "catalog"

    const-string v5, "product_sheet"

    const-string v6, "navigation"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_4

    :cond_d
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$SearchClickedEvent;

    if-eqz v0, :cond_e

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x61

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/StoreMode/Explore"

    const-string v4, "search"

    const-string v5, "journey"

    const-string v6, "navigation"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_4

    :cond_e
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$ArticleClickedEvent;

    if-eqz v0, :cond_f

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreModeArticle;

    check-cast p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$ArticleClickedEvent;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$ArticleClickedEvent;->a:Ljava/lang/String;

    invoke-direct {v0, p1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreModeArticle;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/16 v9, 0x21

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/StoreMode/Explore"

    const-string v4, "article"

    const-string v5, "journey"

    const-string v6, "navigation"

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_4
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void

    :cond_f
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->B:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final b1()V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v0, ""

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final b7()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$launchStoreModeTimer$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$launchStoreModeTimer$1;-><init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final d8()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->A:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    return-object p0
.end method

.method public final mb(Ljava/lang/String;Z)V
    .locals 3

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p2

    new-instance v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$updateSearch$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$updateSearch$2;-><init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p2, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_1
    return-void
.end method
