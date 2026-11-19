.class public final Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0099\u0001\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u00a2\u0006\u0004\u0008\'\u0010(\u00a8\u0006)"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;",
        "Lcom/vuitton/android/domain/monitoring/Monitor;",
        "monitor",
        "Lcom/vuitton/android/core/events/LVEventSender;",
        "eventSender",
        "Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;",
        "filterCommand",
        "Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;",
        "getSearchPLP",
        "Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;",
        "getWishlistUseCase",
        "Lcom/vuitton/android/presentation/notification/NotificationBuilder;",
        "notificationBuilder",
        "Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;",
        "isProductInWishlist",
        "Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;",
        "addProductToWishList",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;",
        "deleteProductFromWishlist",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;",
        "reportDYAddToWishlistEventUseCase",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;",
        "appsFlyerTracker",
        "Lcom/vuitton/android/domain/service/authentication/UserSessionService;",
        "userSessionService",
        "Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;",
        "getRmsCode",
        "Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;",
        "disableStoreMode",
        "Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;",
        "isStoreModeStillValid",
        "<init>",
        "(Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;)V",
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
.field public final a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final b:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

.field public final c:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

.field public final d:Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;

.field public final e:Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;

.field public final f:Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;

.field public final g:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final h:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final i:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final j:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final k:Lkotlinx/coroutines/flow/StateFlow;

.field public final l:Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate;

.field public final m:Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate;

.field public final n:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;

.field public final o:Lkotlinx/coroutines/flow/StateFlow;

.field public final p:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;)V
    .locals 30
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p4

    move-object/from16 v3, p9

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p18 .. p18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModel;-><init>()V

    move-object/from16 v7, p13

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-object/from16 v6, p14

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

    move-object/from16 v8, p15

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->c:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-object/from16 v4, p16

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;

    move-object/from16 v4, p17

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;

    move-object/from16 v4, p18

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;

    move-object/from16 v4, p11

    iget-object v4, v4, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v4}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->g:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v4, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;->Companion:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;->a()Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

    move-result-object v4

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v14

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v4, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-static {v9, v10, v4, v11}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->i:Lkotlinx/coroutines/flow/SharedFlowImpl;

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->j:Lkotlinx/coroutines/flow/SharedFlowImpl;

    new-instance v4, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$special$$inlined$map$1;

    invoke-direct {v4, v14}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v9

    sget-object v10, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance v16, Lcom/vuitton/android/presentation/screen/storemode/models/PLPStoreModeViewState;

    const/16 v20, 0x7

    const/16 v21, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v16 .. v21}, Lcom/vuitton/android/presentation/screen/storemode/models/PLPStoreModeViewState;-><init>(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v10, v16

    invoke-static {v4, v9, v15, v10}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->k:Lkotlinx/coroutines/flow/StateFlow;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->PLP_V3_GRID_VIEW:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v4}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v19

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->AI_COMPANION:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v4}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v20

    new-instance v16, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate;

    new-instance v3, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$storeDelegate$1;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v0, v1, v4}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$storeDelegate$1;-><init>(Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v22

    const/16 v17, 0x1

    move-object/from16 v18, p3

    move-object/from16 v23, p7

    move-object/from16 v21, v3

    invoke-direct/range {v16 .. v23}, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate;-><init>(ZLcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;ZZLkotlin/jvm/functions/Function3;Lkotlinx/coroutines/CoroutineScope;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;)V

    move-object/from16 v3, v16

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->l:Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate;

    new-instance v16, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate;

    new-instance v3, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$onlineDelegate$1;

    invoke-direct {v3, v2, v0, v1, v4}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$onlineDelegate$1;-><init>(Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v22

    const/16 v17, 0x0

    move-object/from16 v21, v3

    invoke-direct/range {v16 .. v23}, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate;-><init>(ZLcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;ZZLkotlin/jvm/functions/Function3;Lkotlinx/coroutines/CoroutineScope;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;)V

    move-object/from16 v1, v16

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->m:Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v3

    new-instance v1, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p8

    move-object/from16 v12, p10

    move-object/from16 v13, p12

    move-object/from16 p11, v15

    move-object v15, v4

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v13}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;-><init>(Lcom/vuitton/android/domain/monitoring/Monitor;Lkotlinx/coroutines/CoroutineScope;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;)V

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->n:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;

    new-instance v1, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$special$$inlined$flatMapLatest$1;

    invoke-direct {v1, v15, v0}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;)V

    invoke-static {v14, v1}, Lkotlinx/coroutines/flow/FlowKt;->B(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v1

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v2

    new-instance v16, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;

    const/16 v28, 0x7ff

    const/16 v29, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v16 .. v29}, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/flow/Flow;ZZILcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;ZLcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;Ljava/lang/Integer;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, p11

    move-object/from16 v4, v16

    invoke-static {v1, v2, v3, v4}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->o:Lkotlinx/coroutines/flow/StateFlow;

    new-instance v1, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$special$$inlined$flatMapLatest$2;

    invoke-direct {v1, v15, v0}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$special$$inlined$flatMapLatest$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;)V

    invoke-static {v14, v1}, Lkotlinx/coroutines/flow/FlowKt;->B(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v1

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v2

    new-instance v4, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;

    const/16 v5, 0x3f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 p1, v4

    move/from16 p8, v5

    move-object/from16 p9, v6

    move-object/from16 p2, v7

    move-object/from16 p3, v8

    move-object/from16 p4, v9

    move/from16 p5, v10

    move/from16 p6, v11

    move-object/from16 p7, v12

    invoke-direct/range {p1 .. p9}, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1, v2, v3, v4}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->p:Lkotlinx/coroutines/flow/StateFlow;

    new-instance v1, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$1;

    invoke-direct {v1, v15, v0}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;)V

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->yc(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method


# virtual methods
.method public final E(Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode$Legacy;->a:Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode$Legacy;

    sget-object v1, Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode$Legacy;->a:Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode$Legacy;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->n:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;

    invoke-virtual {p0, p1, v0, v1}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->e(Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode;Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode;)V

    return-void
.end method

.method public final H(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->a:Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->h:Landroidx/compose/runtime/MutableState;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;->b:Z

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;->a:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;

    invoke-direct {v3, v1, v2}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;-><init>(ZZ)V

    invoke-interface {v0, v3}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->c:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    invoke-virtual {v0}, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->zc()Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate;->d:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v2}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;->a(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;Z)V

    :cond_2
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v2, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$onWishlistToggled$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v1, v3}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$onWishlistToggled$1;-><init>(Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;ZLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v3, v3, v2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final M0()Lkotlinx/coroutines/flow/StateFlow;
    .locals 10

    new-instance v0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$special$$inlined$flatMapLatest$3;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$special$$inlined$flatMapLatest$3;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1, v0}, Lkotlinx/coroutines/flow/FlowKt;->B(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object v0

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p0

    sget-object v1, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance v2, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;

    const/16 v8, 0x1f

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;-><init>(Ljava/lang/String;Ljava/lang/Integer;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0, p0, v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    return-object p0
.end method

.method public final N(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->zc()Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate;->d:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;->a(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;Z)V

    return-void
.end method

.method public final R8(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->zc()Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final Wa(Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel;)V
    .locals 1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->d0()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void
.end method

.method public final X0(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$search$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$search$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->yc(Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel$RequestSearch;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel$RequestSearch;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->Wa(Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel;)V

    return-void
.end method

.method public final Y()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->k:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final Z(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->o:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final c1()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->p:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final d0()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;->a:Lcom/vuitton/android/domain/repository/StoreModeRepository;

    invoke-interface {p0}, Lcom/vuitton/android/domain/repository/StoreModeRepository;->e()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v0, p0, Lkotlin/Result$Failure;

    if-eqz v0, :cond_0

    const-string p0, ""

    :cond_0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final g()Lkotlinx/coroutines/flow/SharedFlowImpl;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->n:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->p:Lkotlinx/coroutines/flow/SharedFlowImpl;

    return-object p0
.end method

.method public final j(Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {p1}, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModelKt;->a(Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->zc()Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v0, Lcom/vuitton/android/presentation/screen/filter/model/SearchParams;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/filter/model/SearchParams;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/filter/model/SearchParams;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/filter/model/SearchParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final p()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->n:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->d()V

    return-void
.end method

.method public final q0()Z
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;

    iget-object v0, v0, Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;->a:Lcom/vuitton/android/domain/repository/StoreModeRepository;

    invoke-interface {v0}, Lcom/vuitton/android/domain/repository/StoreModeRepository;->c()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;

    invoke-virtual {v1}, Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;->a()V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->i:Lkotlinx/coroutines/flow/SharedFlowImpl;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    :cond_0
    return v0
.end method

.method public final y0()Lkotlinx/coroutines/flow/SharedFlowImpl;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->j:Lkotlinx/coroutines/flow/SharedFlowImpl;

    return-object p0
.end method

.method public final yc(Lkotlin/jvm/functions/Function2;)V
    .locals 4

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$doForEachDelegate$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$doForEachDelegate$1;-><init>(Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x3

    invoke-static {v0, v2, v2, v1, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$doForEachDelegate$2;

    invoke-direct {v1, p1, p0, v2}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$doForEachDelegate$2;-><init>(Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v2, v2, v1, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final zc()Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate;
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->m:Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate;

    return-object p0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->l:Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate;

    return-object p0
.end method
