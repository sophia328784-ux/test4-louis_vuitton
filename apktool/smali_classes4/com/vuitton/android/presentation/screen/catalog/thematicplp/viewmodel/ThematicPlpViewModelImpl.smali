.class public final Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002Bq\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u00a2\u0006\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;",
        "Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;",
        "getWishlistUseCase",
        "Lcom/vuitton/android/presentation/notification/NotificationBuilder;",
        "notificationBuilder",
        "Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;",
        "addProductToWishList",
        "Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;",
        "deleteProductFromWishlist",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;",
        "reportDYAddToWishlistEventUseCase",
        "Lcom/vuitton/android/domain/monitoring/Monitor;",
        "monitor",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;",
        "appsFlyerTracker",
        "Lcom/vuitton/android/core/events/LVEventSender;",
        "eventSender",
        "Lcom/vuitton/android/domain/service/authentication/UserSessionService;",
        "userSessionService",
        "Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;",
        "isProductInWishlistUseCase",
        "Lcom/vuitton/android/domain/usecase/catalog/GetThematicPlpThemesUseCase;",
        "getThematicPlpThemesUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/domain/usecase/catalog/GetThematicPlpThemesUseCase;)V",
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
.field public final a:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final c:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

.field public final d:Lcom/vuitton/android/core/events/LVEventSender;

.field public final e:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

.field public final f:Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;

.field public final g:Lcom/vuitton/android/domain/usecase/catalog/GetThematicPlpThemesUseCase;

.field public final h:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final i:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;

.field public final j:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final k:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final l:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final m:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final n:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final o:Ljava/util/LinkedHashMap;

.field public final p:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final q:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final r:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final s:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final t:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public u:Lkotlinx/coroutines/Job;

.field public final v:Lkotlinx/coroutines/flow/StateFlow;

.field public w:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/domain/usecase/catalog/GetThematicPlpThemesUseCase;)V
    .locals 16
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

    invoke-direct {v0}, Landroidx/lifecycle/ViewModel;-><init>()V

    move-object/from16 v2, p7

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->a:Lcom/vuitton/android/domain/monitoring/Monitor;

    move-object/from16 v7, p8

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-object/from16 v6, p9

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->c:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

    move-object/from16 v4, p10

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->d:Lcom/vuitton/android/core/events/LVEventSender;

    move-object/from16 v8, p11

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->e:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/catalog/GetThematicPlpThemesUseCase;

    move-object/from16 v1, p5

    iget-object v1, v1, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v1}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->h:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v3

    new-instance v1, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p6

    invoke-direct/range {v1 .. v13}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;-><init>(Lcom/vuitton/android/domain/monitoring/Monitor;Lkotlinx/coroutines/CoroutineScope;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;)V

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->i:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;

    sget-object v1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v3, 0x0

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v5, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Full;->b:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Full;

    invoke-static {v5}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->l:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->n:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->o:Ljava/util/LinkedHashMap;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v8

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->p:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v8

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->q:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v8

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v8

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->s:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v8, 0x6

    new-array v8, v8, [Lkotlinx/coroutines/flow/Flow;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v5, 0x1

    aput-object v4, v8, v5

    const/4 v4, 0x2

    aput-object v2, v8, v4

    const/4 v2, 0x3

    aput-object v6, v8, v2

    const/4 v4, 0x4

    aput-object v1, v8, v4

    const/4 v1, 0x5

    aput-object v7, v8, v1

    new-instance v1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$special$$inlined$combine$1;

    invoke-direct {v1, v8}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v4

    sget-object v5, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance v6, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewstate/ThematicPlpViewState;

    const/16 v7, 0x7f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 p1, v6

    move/from16 p9, v7

    move-object/from16 p10, v8

    move-object/from16 p2, v9

    move/from16 p3, v10

    move-object/from16 p4, v11

    move-object/from16 p5, v12

    move-object/from16 p6, v13

    move-object/from16 p7, v14

    move/from16 p8, v15

    invoke-direct/range {p1 .. p10}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewstate/ThematicPlpViewState;-><init>(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;ZLjava/lang/String;Ljava/util/List;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1, v4, v5, v6}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->v:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$listenToWishlistEvents$1;

    invoke-direct {v4, v0, v3}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$listenToWishlistEvents$1;-><init>(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v3, v3, v4, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final yc(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$withWishlistStatus$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$withWishlistStatus$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$withWishlistStatus$1;->j:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$withWishlistStatus$1;->j:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$withWishlistStatus$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$withWishlistStatus$1;-><init>(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$withWishlistStatus$1;->h:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$withWishlistStatus$1;->j:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$withWishlistStatus$1;->g:I

    iget v2, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$withWishlistStatus$1;->f:I

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$withWishlistStatus$1;->e:Ljava/util/Collection;

    check-cast v5, Ljava/util/Collection;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$withWishlistStatus$1;->d:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$withWishlistStatus$1;->c:Ljava/util/Iterator;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$withWishlistStatus$1;->b:Ljava/util/Collection;

    check-cast v8, Ljava/util/Collection;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v7, p1

    move-object v5, p2

    move p1, v4

    move v2, p1

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;

    sget-object v8, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v9, v6, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;

    iget-object v9, v9, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;->e:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    move-object v8, v5

    check-cast v8, Ljava/util/Collection;

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$withWishlistStatus$1;->b:Ljava/util/Collection;

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$withWishlistStatus$1;->c:Ljava/util/Iterator;

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$withWishlistStatus$1;->d:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$withWishlistStatus$1;->e:Ljava/util/Collection;

    iput v2, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$withWishlistStatus$1;->f:I

    iput p1, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$withWishlistStatus$1;->g:I

    iput v3, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$withWishlistStatus$1;->j:I

    invoke-virtual {p2, v9, v0}, Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v8, v5

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v9, 0x7

    invoke-static {v6, v4, p2, v9}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->a(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;ZZI)Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;

    move-result-object p2

    invoke-interface {v5, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v5, v8

    goto :goto_1

    :cond_4
    check-cast v5, Ljava/util/List;

    return-object v5
.end method


# virtual methods
.method public final B7()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public final D6(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->w:Ljava/lang/String;

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    move-object v0, p3

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;->b:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    move-object p1, p2

    :goto_1
    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    move-object p2, p1

    goto :goto_3

    :cond_4
    :goto_2
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;

    if-eqz p1, :cond_5

    iget-object p2, p1, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;->b:Ljava/lang/String;

    :cond_5
    :goto_3
    invoke-virtual {p0, p2}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->zc(Ljava/lang/String;)V

    return-void
.end method

.method public final E8()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->p:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public final F2()V
    .locals 11

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->u:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;->a:Ljava/lang/String;

    move-object v7, v2

    goto :goto_0

    :cond_1
    move-object v7, v3

    :goto_0
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;->b:Ljava/lang/Integer;

    goto :goto_1

    :cond_2
    move-object v1, v3

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v7, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v8

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->h:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v1, Lcom/vuitton/android/domain/monitoring/thematicplp/ThematicPlpMonitoring$Action$OpenThematicPages;->a:Lcom/vuitton/android/domain/monitoring/thematicplp/ThematicPlpMonitoring$Action$OpenThematicPages;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->a:Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-interface {v2, v0, v1}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v9

    const-string v0, "categoryId"

    invoke-virtual {v9, v6, v0}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "themeId"

    invoke-virtual {v9, v7, v0}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "pageNumber"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1, v0}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v4, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadMoreItems$1$1;

    const/4 v10, 0x0

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadMoreItems$1$1;-><init>(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;Ljava/lang/String;Ljava/lang/String;ILcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v3, v3, v4, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    iput-object p0, v5, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->u:Lkotlinx/coroutines/Job;

    :cond_3
    :goto_2
    return-void
.end method

.method public final J3(ZLcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/TrackingClickType;)V
    .locals 11

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;

    if-eqz v5, :cond_3

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;->c:Ljava/util/List;

    if-eqz v5, :cond_3

    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;

    iget-object v8, v7, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;

    iget-boolean v9, v7, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->d:Z

    iget-object v8, v8, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;->e:Ljava/lang/String;

    iget-object v10, v1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;

    iget-object v10, v10, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;->e:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz p2, :cond_1

    iget-object v8, v7, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;

    if-eqz v9, :cond_0

    new-instance v10, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$RemoveFromWishlistClickedEvent;

    iget-object v8, v8, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;->e:Ljava/lang/String;

    invoke-direct {v10, v8, p2, v4}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$RemoveFromWishlistClickedEvent;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/TrackingClickType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_0
    new-instance v10, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$AddToWishlistClickedEvent;

    iget-object v8, v8, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;->e:Ljava/lang/String;

    invoke-direct {v10, v8, p2, v4}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$AddToWishlistClickedEvent;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/TrackingClickType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_1
    invoke-virtual {p0, v10}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->w9(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel;)V

    :cond_1
    xor-int/lit8 v8, v9, 0x1

    const/4 v9, 0x3

    invoke-static {v7, v8, v8, v9}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->a(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;ZZI)Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;

    move-result-object v7

    :cond_2
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    sget-object v6, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_4
    invoke-static {v3, v6}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;->a(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;Ljava/util/List;)Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;

    move-result-object p0

    goto :goto_2

    :cond_5
    move-object p0, v4

    :goto_2
    invoke-interface {v2, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    if-eqz p1, :cond_6

    invoke-interface {v0, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public final Q(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->l:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$triggerChangeGridVocalization$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$triggerChangeGridVocalization$1;-><init>(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final X8(Ljava/util/List;)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;

    if-eqz v0, :cond_5

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;->c:Ljava/util/List;

    if-eqz v1, :cond_3

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;

    move-object v4, p1

    check-cast v4, Ljava/lang/Iterable;

    instance-of v5, v4, Ljava/util/Collection;

    const/4 v6, 0x7

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->b:Ljava/lang/String;

    iget-object v8, v3, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;

    iget-object v8, v8, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;->e:Ljava/lang/String;

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    invoke-static {v3, v7, v4, v6}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->a(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;ZZI)Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;

    move-result-object v3

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {v3, v7, v7, v6}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->a(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;ZZI)Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;

    move-result-object v3

    :goto_2
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    sget-object v2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_4
    invoke-static {v0, v2}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;->a(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;Ljava/util/List;)Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;

    move-result-object p1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    :goto_3
    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->v:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final a8()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->s:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public final b3(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;Z)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;

    if-eqz v0, :cond_3

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;->c:Ljava/util/List;

    if-eqz v1, :cond_1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;->e:Ljava/lang/String;

    iget-object v5, p1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    const/16 v5, 0xb

    invoke-static {v3, p2, v4, v5}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->a(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;ZZI)Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;

    move-result-object v3

    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_2
    invoke-static {v0, v2}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;->a(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;Ljava/util/List;)Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final b4()V
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->n:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;

    if-eqz v5, :cond_0

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;->a:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    :goto_2
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;

    if-nez v1, :cond_3

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, v1, v2}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->v7(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;Z)V

    return-void
.end method

.method public final g()Lkotlinx/coroutines/flow/SharedFlowImpl;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->i:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->p:Lkotlinx/coroutines/flow/SharedFlowImpl;

    return-object p0
.end method

.method public final h4(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/TrackingClickType;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;->c:Ljava/util/List;

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;->e:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-interface {p1, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->e:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    invoke-virtual {p1}, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->b()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-static {p0, p2, v0}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;->n5(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/TrackingClickType;I)V

    :cond_3
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->s:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-boolean p1, v1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->d:Z

    xor-int/lit8 p2, p1, 0x1

    new-instance v3, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;

    new-instance v4, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/ProductForWishlist;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;->e:Ljava/lang/String;

    new-instance v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;

    invoke-direct {v5, p1, v0}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;-><init>(ZZ)V

    invoke-static {v5}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    invoke-direct {v4, v1, p1, v2}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/ProductForWishlist;-><init>(Ljava/lang/String;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v3, v4, p2}, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;-><init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/ProductForWishlist;Z)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode$Legacy;->a:Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode$Legacy;

    sget-object p2, Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode$Legacy;->a:Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode$Legacy;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->i:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;

    invoke-virtual {p0, v3, p1, p2}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->e(Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode;Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final n7()V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final nb(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->zc(Ljava/lang/String;)V

    return-void
.end method

.method public final p()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->i:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->d()V

    return-void
.end method

.method public final v7(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;Z)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_3

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->h:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v1, Lcom/vuitton/android/domain/monitoring/thematicplp/ThematicPlpMonitoring$Action$OpenThematicPages;->a:Lcom/vuitton/android/domain/monitoring/thematicplp/ThematicPlpMonitoring$Action$OpenThematicPages;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->a:Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-interface {v2, p2, v1}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object p2

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;

    if-eqz v1, :cond_1

    const-string v2, "categoryId"

    invoke-virtual {p2, v5, v2}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "themeId"

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;->a:Ljava/lang/String;

    invoke-virtual {p2, v3, v2}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pageNumber"

    invoke-virtual {p2, v1, v2}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    move-object v4, p2

    goto :goto_1

    :cond_2
    move-object v4, v0

    :goto_1
    new-instance p2, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$ChangeThemeClickedEvent;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;->a:Ljava/lang/String;

    invoke-direct {p2, v1}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$ChangeThemeClickedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->w9(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p2

    new-instance v1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadNewTheme$1$1;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$loadNewTheme$1$1;-><init>(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;Lcom/vuitton/android/domain/monitoring/MonitorAction;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p2, v0, v0, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_3
    return-void
.end method

.method public final w9(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel;)V
    .locals 17

    move-object/from16 v0, p1

    sget-object v1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$ProductListScreen;->a:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$ProductListScreen;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v8, 0x11

    const/4 v9, 0x0

    const/4 v3, 0x0

    const-string v4, "thematic_product_list"

    const-string v5, "gift_recommendation"

    const-string v6, "thematic_product_list"

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, p0

    goto/16 :goto_4

    :cond_0
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$AddToWishlistClickedEvent;

    const-string v2, "click"

    const-string v3, "double_click"

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$AddToWishlistClickedEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$AddToWishlistClickedEvent;->b:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/TrackingClickType;

    sget-object v8, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModelKt$WhenMappings;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v8, v1

    if-eq v1, v5, :cond_2

    if-ne v1, v4, :cond_1

    move-object v12, v3

    goto :goto_0

    :cond_1
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_2
    move-object v12, v2

    :goto_0
    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$AddToWishlistClickedEvent;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-direct {v1, v0, v6}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v15, 0x21

    const/16 v16, 0x0

    const/4 v8, 0x0

    const-string v9, "thematic_product_list"

    const-string v10, "add_to_wishlist"

    const-string v11, "thematic_product_list"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_1
    move-object/from16 v0, p0

    move-object v2, v7

    goto/16 :goto_4

    :cond_3
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$AddToWishlistSuccessEvent;

    if-eqz v1, :cond_4

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$AddToWishlistSuccessEvent;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$AddToWishlistSuccessEvent;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-direct {v1, v0, v6}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v15, 0x20

    const/16 v16, 0x0

    sget-object v8, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$AddToWishlist;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$AddToWishlist;

    const-string v9, "thematic_product_list"

    const-string v10, "add_to_wishlist_success"

    const-string v11, "thematic_product_list"

    const-string v12, "add_to_wishlist"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_4
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$RemoveFromWishlistClickedEvent;

    if-eqz v1, :cond_7

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$RemoveFromWishlistClickedEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$RemoveFromWishlistClickedEvent;->b:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/TrackingClickType;

    sget-object v8, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModelKt$WhenMappings;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v8, v1

    if-eq v1, v5, :cond_6

    if-ne v1, v4, :cond_5

    move-object v12, v3

    goto :goto_2

    :cond_5
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_6
    move-object v12, v2

    :goto_2
    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$RemoveFromWishlistClickedEvent;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-direct {v1, v0, v6}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v15, 0x21

    const/16 v16, 0x0

    const/4 v8, 0x0

    const-string v9, "thematic_product_list"

    const-string v10, "remove_from_wishlist"

    const-string v11, "thematic_product_list"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_7
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$ChangeLayoutButtonClickedEvent;

    const-string v2, "staggered"

    const-string v3, "grid"

    if-eqz v1, :cond_a

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$ChangeLayoutButtonClickedEvent;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$ChangeLayoutButtonClickedEvent;->a:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;

    sget-object v4, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Reduced;->b:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Reduced;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v2, v3

    goto :goto_3

    :cond_8
    sget-object v3, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Full;->b:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Full;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_3
    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v15, 0x21

    const/16 v16, 0x0

    const/4 v8, 0x0

    const-string v9, "thematic_product_list"

    const-string v10, "change_layout"

    const-string v11, "thematic_product_list"

    const-string v12, "click"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_a
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$ChangeLayoutPinchInEvent;

    if-eqz v1, :cond_b

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    invoke-static {v3}, Lo60;->t(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    const/16 v15, 0x21

    const/16 v16, 0x0

    const/4 v8, 0x0

    const-string v9, "thematic_product_list"

    const-string v10, "change_layout"

    const-string v11, "thematic_product_list"

    const-string v12, "zoom_in"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :cond_b
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$ChangeLayoutPinchOutEvent;

    if-eqz v1, :cond_c

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    invoke-static {v2}, Lo60;->t(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    const/16 v15, 0x21

    const/16 v16, 0x0

    const/4 v8, 0x0

    const-string v9, "thematic_product_list"

    const-string v10, "change_layout"

    const-string v11, "thematic_product_list"

    const-string v12, "zoom_out"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :cond_c
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$ChangeThemeButtonClickedEvent;

    if-eqz v1, :cond_d

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v15, 0x61

    const/16 v16, 0x0

    const/4 v8, 0x0

    const-string v9, "thematic_product_list"

    const-string v10, "change_theme"

    const-string v11, "thematic_product_list"

    const-string v12, "click"

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :cond_d
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$ChangeThemeScrollEvent;

    if-eqz v1, :cond_e

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$ChangeThemeScrollEvent;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$ChangeThemeScrollEvent;->a:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v15, 0x21

    const/16 v16, 0x0

    const/4 v8, 0x0

    const-string v9, "thematic_product_list"

    const-string v10, "change_theme"

    const-string v11, "thematic_product_list"

    const-string v12, "scroll"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :cond_e
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$ChangeThemeClickedEvent;

    if-eqz v1, :cond_f

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$ChangeThemeClickedEvent;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$ChangeThemeClickedEvent;->a:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v15, 0x21

    const/16 v16, 0x0

    const/4 v8, 0x0

    const-string v9, "thematic_product_list"

    const-string v10, "select_theme"

    const-string v11, "thematic_product_list"

    const-string v12, "click"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :cond_f
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$BrandContentClickedEvent;

    if-eqz v1, :cond_10

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$BrandContentClickedEvent;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$BrandContentClickedEvent;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-direct {v1, v0, v6}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v15, 0x21

    const/16 v16, 0x0

    const/4 v8, 0x0

    const-string v9, "thematic_product_list"

    const-string v10, "open_brand_content"

    const-string v11, "thematic_product_list"

    const-string v12, "click"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :cond_10
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$ProductClickedEvent;

    if-eqz v1, :cond_11

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$ProductClickedEvent;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel$ProductClickedEvent;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-direct {v1, v0, v6}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v15, 0x21

    const/16 v16, 0x0

    const/4 v8, 0x0

    const-string v9, "thematic_product_list"

    const-string v10, "select_product"

    const-string v11, "thematic_product_list"

    const-string v12, "click"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :goto_4
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {v0, v2}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void

    :cond_11
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method public final wb()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->q:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public final zc(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->o:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->w:Ljava/lang/String;

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;->w:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$fetchThemes$1$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl$fetchThemes$1$1;-><init>(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v2, v1, v1, v3, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_1
    return-void
.end method
