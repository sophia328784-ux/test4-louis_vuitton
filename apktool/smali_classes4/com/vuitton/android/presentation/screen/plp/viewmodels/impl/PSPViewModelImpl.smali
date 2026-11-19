.class public final Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/plp/viewmodels/PSPViewModel;
.implements Lcom/vuitton/android/presentation/contact/ContactUsDelegate;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0091\u0001\u0008\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\u001e\u001a\u00020\u0003\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u00a2\u0006\u0004\u0008%\u0010&\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/plp/viewmodels/PSPViewModel;",
        "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;",
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
        "contactUsDelegate",
        "Lcom/vuitton/android/domain/service/authentication/UserSessionService;",
        "userSessionService",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryProductUseCase;",
        "addSearchHistoryProductUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryProductUseCase;)V",
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

.field public final c:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

.field public final d:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

.field public final e:Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryProductUseCase;

.field public final f:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final g:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySearchDelegate;

.field public final h:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryProductUseCase;)V
    .locals 17
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p16

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

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModel;-><init>()V

    move-object/from16 v7, p12

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-object/from16 v6, p13

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->b:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->c:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    move-object/from16 v8, p15

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->d:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-object/from16 v2, p17

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryProductUseCase;

    move-object/from16 v2, p10

    iget-object v2, v2, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v2}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->f:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v10

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->PLP_V3_GRID_VIEW:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v2}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v14

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->AI_COMPANION:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v2}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v15

    new-instance v9, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySearchDelegate;

    new-instance v1, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl$delegate$1;

    const/4 v2, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    invoke-direct {v1, v3, v0, v4, v2}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl$delegate$1;-><init>(Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;Lkotlin/coroutines/Continuation;)V

    const/4 v11, 0x1

    move-object/from16 v12, p3

    move-object/from16 v13, p7

    move-object/from16 v16, v1

    invoke-direct/range {v9 .. v16}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySearchDelegate;-><init>(Lkotlinx/coroutines/CoroutineScope;ZLcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;ZZLkotlin/jvm/functions/Function3;)V

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->g:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySearchDelegate;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v3

    new-instance v1, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;

    move-object/from16 v4, p2

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p11

    move-object v14, v2

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v13}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;-><init>(Lcom/vuitton/android/domain/monitoring/Monitor;Lkotlinx/coroutines/CoroutineScope;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;)V

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->h:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl$1;

    invoke-direct {v2, v0, v14}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl$1;-><init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x3

    invoke-static {v1, v14, v14, v2, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl$2;

    move-object/from16 v12, p3

    invoke-direct {v2, v12, v0, v14}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl$2;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v14, v14, v2, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final B(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->c:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2, p3}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->B(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V

    return-void
.end method

.method public final C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->c:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V

    return-void
.end method

.method public final C1(Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->g:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySearchDelegate;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySearchDelegate;->c:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final E5(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->c:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->E5(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final I(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->c:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->I(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V

    return-void
.end method

.method public final K(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->g:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySearchDelegate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySearchDelegate;->c:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;->a(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;Z)V

    return-void
.end method

.method public final M0()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->g:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySearchDelegate;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySearchDelegate;->e:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final M1(Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->c:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->M1(Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final O0(Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;Ljava/lang/String;I)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void
.end method

.method public final Q(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->g:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySearchDelegate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySearchDelegate;->c:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;->b(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;)V

    return-void
.end method

.method public final Q0()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->c:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->Q0()V

    return-void
.end method

.method public final S0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->c:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->S0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final X0(Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->g:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySearchDelegate;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySearchDelegate;->a:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v1, Lcom/vuitton/android/presentation/screen/filter/model/SearchParams;

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/vuitton/android/presentation/screen/filter/model/SearchParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    new-instance p1, Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel$RequestSearch;

    invoke-direct {p1, v2}, Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel$RequestSearch;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->g:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySearchDelegate;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySearchDelegate;->d:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final c()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl$setUserChatConsentEnabled$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl$setUserChatConsentEnabled$1;-><init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final f8(Lcom/vuitton/android/presentation/contact/ContactUsMode;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->c:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->f8(Lcom/vuitton/android/presentation/contact/ContactUsMode;)V

    return-void
.end method

.method public final g()Lkotlinx/coroutines/flow/SharedFlowImpl;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->h:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->p:Lkotlinx/coroutines/flow/SharedFlowImpl;

    return-object p0
.end method

.method public final i()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->c:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->i()Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final j(Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {p1}, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModelKt;->a(Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void
.end method

.method public final ka(Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode;Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->h:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->e(Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode;Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode;)V

    return-void
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->g:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySearchDelegate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySearchDelegate;->a:Lkotlinx/coroutines/flow/MutableStateFlow;

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

.method public final m4(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->c:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->m4(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V

    return-void
.end method

.method public final p()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->h:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/PLPWishlistDelegate;->d()V

    return-void
.end method

.method public final r(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->c:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->r(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;)V

    return-void
.end method

.method public final s()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->c:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->s()V

    return-void
.end method

.method public final u5(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;Lcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode$Revamp;Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode$Revamp;)V
    .locals 10

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

    xor-int/lit8 v6, v1, 0x1

    new-instance v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;

    invoke-direct {v1, v6, v2}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;-><init>(ZZ)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->d:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    invoke-virtual {v0}, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->g:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySearchDelegate;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySearchDelegate;->c:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v2}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;->a(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;Z)V

    :cond_2
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl$onWishlistToggled$1;

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v9}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl$onWishlistToggled$1;-><init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;ZLcom/vuitton/android/presentation/screen/plp/models/PLPAddToWishlistTrackingMode$Revamp;Lcom/vuitton/android/presentation/screen/plp/models/PLPRemoveFromWishlistTrackingMode$Revamp;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    const/4 p1, 0x0

    invoke-static {v0, p1, p1, v3, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->c:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final vc(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->c:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->vc(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final x(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->c:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->x(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V

    return-void
.end method

.method public final x6(Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryProductUiModel;)V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl$saveProductInSearchHistory$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl$saveProductInSearchHistory$1;-><init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryProductUiModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final z()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;->c:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->z()V

    return-void
.end method
