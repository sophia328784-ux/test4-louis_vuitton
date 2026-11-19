.class public final Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u00e9\u0001\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020\'\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u0010,\u001a\u00020+\u0012\u0006\u0010.\u001a\u00020-\u0012\u0006\u00100\u001a\u00020/\u0012\u0006\u00102\u001a\u000201\u0012\u0006\u00104\u001a\u000203\u0012\u0006\u00106\u001a\u000205\u0012\u0006\u00108\u001a\u000207\u0012\u0006\u0010:\u001a\u000209\u00a2\u0006\u0004\u0008;\u0010<\u00a8\u0006="
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;",
        "Landroid/app/Application;",
        "application",
        "Landroidx/lifecycle/SavedStateHandle;",
        "savedStateHandle",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;",
        "requireCachedAppConfigUseCase",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/domain/monitoring/Monitor;",
        "monitor",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/core/events/LVEventSender;",
        "eventSender",
        "Lcom/vuitton/android/domain/service/authentication/UserSessionService;",
        "userSessionService",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTracker;",
        "shadeFinderTracker",
        "Lcom/vuitton/android/presentation/notification/NotificationBuilder;",
        "notificationBuilder",
        "Lcom/vuitton/android/domain/usecase/pdp/vto/GetTutorialUseCase;",
        "getTutorialUseCase",
        "Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase;",
        "getYmalProductListUseCase",
        "Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;",
        "isProductInWishlistUseCase",
        "Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;",
        "getSkusProductsListUseCase",
        "Lcom/vuitton/android/domain/usecase/pdp/vto/GetTryOnProductListUseCase;",
        "getTryOnProductListUseCase",
        "Lcom/vuitton/android/domain/usecase/pdp/backinstock/SubscribeBackInStockUseCase;",
        "subscribeBackInStockUseCase",
        "Lcom/vuitton/android/domain/usecase/cart/AddProductListToCartUseCase;",
        "addProductListToCartUseCase",
        "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;",
        "reportDYAddToCartEventUseCase",
        "Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase;",
        "getProductAvailabilityUseCase",
        "Lcom/vuitton/android/domain/usecase/pdp/vto/SetShadeFinderIntroDoneUseCase;",
        "setShadeFinderIntroDoneUseCase",
        "Lcom/vuitton/android/domain/usecase/pdp/vto/HasDoneShadeFinderIntroUseCase;",
        "hasDoneShadeFinderIntroUseCase",
        "Lcom/vuitton/android/domain/usecase/wishlist/AddProductListToWishlistUseCase;",
        "addProductListToWishlistUseCase",
        "Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;",
        "getAllAccessibilityValuesUseCase",
        "Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;",
        "deleteProductFromWishlistUseCase",
        "Lcom/vuitton/android/domain/usecase/pdp/vto/GetShadeFinderRecommendationsUseCase;",
        "getShadeFinderRecommendationsUseCase",
        "Lcom/vuitton/android/domain/usecase/pdp/vto/GetShadeFinderConsentTimeStampUseCase;",
        "getShadeFinderConsentTimeStampUseCase",
        "<init>",
        "(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTracker;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/pdp/vto/GetTutorialUseCase;Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;Lcom/vuitton/android/domain/usecase/pdp/vto/GetTryOnProductListUseCase;Lcom/vuitton/android/domain/usecase/pdp/backinstock/SubscribeBackInStockUseCase;Lcom/vuitton/android/domain/usecase/cart/AddProductListToCartUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase;Lcom/vuitton/android/domain/usecase/pdp/vto/SetShadeFinderIntroDoneUseCase;Lcom/vuitton/android/domain/usecase/pdp/vto/HasDoneShadeFinderIntroUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductListToWishlistUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/pdp/vto/GetShadeFinderRecommendationsUseCase;Lcom/vuitton/android/domain/usecase/pdp/vto/GetShadeFinderConsentTimeStampUseCase;)V",
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
.field public A:Lkotlinx/coroutines/Job;

.field public final B:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyFeatureFlags;

.field public final C:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public D:Lcom/perfectcorp/perfectlib/SkuHandler;

.field public E:Lcom/perfectcorp/perfectlib/LookHandler;

.field public F:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public final G:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

.field public final H:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final I:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final J:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final K:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final L:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final M:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final N:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final O:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final P:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final Q:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final R:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final S:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final T:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final U:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final V:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final W:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final X:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final Y:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final Z:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final a0:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final b:Lcom/vuitton/foundation/logger/Logger;

.field public final b0:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final c:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final c0:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final d0:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final e:Lcom/vuitton/android/core/events/LVEventSender;

.field public final e0:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final f:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

.field public final f0:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final g:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTracker;

.field public final g0:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final h:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

.field public final h0:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final i:Lcom/vuitton/android/domain/usecase/pdp/vto/GetTutorialUseCase;

.field public final i0:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final j:Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase;

.field public final j0:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final k:Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;

.field public final k0:Lkotlinx/coroutines/flow/StateFlow;

.field public final l:Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;

.field public final l0:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final m:Lcom/vuitton/android/domain/usecase/pdp/vto/GetTryOnProductListUseCase;

.field public final m0:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final n:Lcom/vuitton/android/domain/usecase/pdp/backinstock/SubscribeBackInStockUseCase;

.field public final n0:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final o:Lcom/vuitton/android/domain/usecase/cart/AddProductListToCartUseCase;

.field public final o0:Lkotlinx/coroutines/flow/StateFlow;

.field public final p:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;

.field public final q:Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase;

.field public final r:Lcom/vuitton/android/domain/usecase/pdp/vto/SetShadeFinderIntroDoneUseCase;

.field public final s:Lcom/vuitton/android/domain/usecase/pdp/vto/HasDoneShadeFinderIntroUseCase;

.field public final t:Lcom/vuitton/android/domain/usecase/wishlist/AddProductListToWishlistUseCase;

.field public final u:Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;

.field public final v:Lcom/vuitton/android/domain/usecase/pdp/vto/GetShadeFinderRecommendationsUseCase;

.field public final w:Lcom/vuitton/android/domain/usecase/pdp/vto/GetShadeFinderConsentTimeStampUseCase;

.field public x:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

.field public final y:Z

.field public final z:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;


# direct methods
.method public constructor <init>(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTracker;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/pdp/vto/GetTutorialUseCase;Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;Lcom/vuitton/android/domain/usecase/pdp/vto/GetTryOnProductListUseCase;Lcom/vuitton/android/domain/usecase/pdp/backinstock/SubscribeBackInStockUseCase;Lcom/vuitton/android/domain/usecase/cart/AddProductListToCartUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase;Lcom/vuitton/android/domain/usecase/pdp/vto/SetShadeFinderIntroDoneUseCase;Lcom/vuitton/android/domain/usecase/pdp/vto/HasDoneShadeFinderIntroUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductListToWishlistUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/pdp/vto/GetShadeFinderRecommendationsUseCase;Lcom/vuitton/android/domain/usecase/pdp/vto/GetShadeFinderConsentTimeStampUseCase;)V
    .locals 42
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p18 .. p18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p19 .. p19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p20 .. p20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p21 .. p21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p22 .. p22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p23 .. p23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p24 .. p24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p25 .. p25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p26 .. p26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p27 .. p27}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p28 .. p28}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct/range {p0 .. p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    move-object/from16 v4, p6

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    move-object/from16 v4, p8

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-object/from16 v4, p9

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->e:Lcom/vuitton/android/core/events/LVEventSender;

    move-object/from16 v4, p10

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->f:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-object/from16 v5, p11

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->g:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTracker;

    move-object/from16 v5, p12

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->h:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-object/from16 v5, p13

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/pdp/vto/GetTutorialUseCase;

    move-object/from16 v5, p14

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase;

    move-object/from16 v5, p15

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;

    move-object/from16 v5, p16

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;

    move-object/from16 v5, p17

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->m:Lcom/vuitton/android/domain/usecase/pdp/vto/GetTryOnProductListUseCase;

    move-object/from16 v5, p18

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->n:Lcom/vuitton/android/domain/usecase/pdp/backinstock/SubscribeBackInStockUseCase;

    move-object/from16 v5, p19

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->o:Lcom/vuitton/android/domain/usecase/cart/AddProductListToCartUseCase;

    move-object/from16 v5, p20

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->p:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;

    move-object/from16 v5, p21

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->q:Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase;

    move-object/from16 v5, p22

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->r:Lcom/vuitton/android/domain/usecase/pdp/vto/SetShadeFinderIntroDoneUseCase;

    move-object/from16 v5, p23

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->s:Lcom/vuitton/android/domain/usecase/pdp/vto/HasDoneShadeFinderIntroUseCase;

    move-object/from16 v5, p24

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->t:Lcom/vuitton/android/domain/usecase/wishlist/AddProductListToWishlistUseCase;

    move-object/from16 v5, p26

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->u:Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;

    move-object/from16 v5, p27

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->v:Lcom/vuitton/android/domain/usecase/pdp/vto/GetShadeFinderRecommendationsUseCase;

    move-object/from16 v5, p28

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->w:Lcom/vuitton/android/domain/usecase/pdp/vto/GetShadeFinderConsentTimeStampUseCase;

    const-string v5, "PRODUCT"

    invoke-virtual {v1, v5}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->x:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    const-string v5, "isShadeFinder"

    invoke-virtual {v1, v5}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->y:Z

    invoke-virtual/range {p4 .. p4}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->z:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    new-instance v27, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyFeatureFlags;

    iget-object v6, v1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->a0:Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;

    iget-boolean v6, v6, Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;->a:Z

    iget-boolean v7, v1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->Y:Z

    sget-object v8, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->NATIVE_CART:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v8}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v8

    sget-object v9, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->BACK_IN_STOCK:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v9}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v9

    sget-object v10, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->BACK_IN_STOCK_LEGAL_CONSENT:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v10}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v2

    move/from16 p16, v2

    move/from16 p12, v6

    move/from16 p13, v7

    move/from16 p14, v8

    move/from16 p15, v9

    move-object/from16 p11, v27

    invoke-direct/range {p11 .. p16}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyFeatureFlags;-><init>(ZZZZZ)V

    move-object/from16 v2, p11

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->B:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyFeatureFlags;

    move-object/from16 v6, p5

    iget-object v6, v6, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v6}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->C:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v7, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    sget-object v7, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;->NONE:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    new-instance v8, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v9, 0x7f141425

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-direct {v8, v9, v11, v10, v11}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v9, p1

    invoke-static {v8, v9}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    const v10, 0x7f08015c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, ""

    const-string v19, ""

    move-object/from16 p14, v7

    move-object/from16 p17, v8

    move-object/from16 p11, v9

    move-object/from16 p22, v10

    move-object/from16 p23, v11

    move-object/from16 p15, v12

    move/from16 p16, v13

    move-object/from16 p18, v14

    move-object/from16 p19, v15

    move/from16 p20, v16

    move/from16 p21, v17

    move-object/from16 p12, v18

    move-object/from16 p13, v19

    invoke-direct/range {p11 .. p23}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ColorUiModel;Ljava/util/List;ZZLjava/lang/Integer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v7, p11

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->G:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    sget-object v36, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static/range {v36 .. v36}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v8

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->H:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static/range {v36 .. v36}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v9

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->I:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v10, 0x0

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v10

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->J:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v10, 0x0

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v10

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->K:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v10, 0x0

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v10

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->L:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v11}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v11

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->M:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v12}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v12

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->N:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-virtual {v4}, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->b()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->O:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v13, Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;

    const/16 v14, 0x7f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 p8, v13

    move/from16 p16, v14

    move-object/from16 p17, v15

    move-object/from16 p9, v16

    move-object/from16 p10, v17

    move-object/from16 p11, v18

    move-object/from16 p12, v19

    move-object/from16 p13, v20

    move-object/from16 p14, v21

    move-object/from16 p15, v22

    invoke-direct/range {p8 .. p17}, Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/PdpVirtualStudioConfigValues;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v13}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v13

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->P:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static/range {v36 .. v36}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v14

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Q:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v15}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v15

    iput-object v15, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->S:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v7}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->T:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v16, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;->SIMPLE:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    move-object/from16 p11, v2

    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->U:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/16 v16, 0x0

    move-object/from16 p1, v2

    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->V:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p3, v2

    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->W:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialState$Loading;->a:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialState$Loading;

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->X:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    move-object/from16 p4, v2

    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Y:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v2, 0x0

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Z:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/16 v16, 0x0

    move-object/from16 p5, v2

    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->a0:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p6, v2

    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->b0:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p8, v2

    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->c0:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p9, v2

    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->d0:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p10, v2

    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->e0:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p12, v7

    invoke-static/range {v36 .. v36}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->f0:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p13, v7

    invoke-static/range {v36 .. v36}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->g0:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p14, v2

    const/4 v2, 0x7

    move-object/from16 p15, v4

    const/4 v4, 0x0

    move-object/from16 p16, v5

    const/4 v5, 0x0

    invoke-static {v5, v2, v4}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->h0:Lkotlinx/coroutines/channels/BufferedChannel;

    const/4 v2, 0x7

    invoke-static {v5, v2, v4}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->i0:Lkotlinx/coroutines/channels/BufferedChannel;

    const/4 v2, 0x0

    invoke-static {v2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->j0:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/16 v2, 0x16

    new-array v2, v2, [Lkotlinx/coroutines/flow/Flow;

    aput-object p1, v2, v5

    const/4 v4, 0x1

    aput-object v10, v2, v4

    const/4 v4, 0x2

    aput-object v11, v2, v4

    const/4 v4, 0x3

    aput-object v12, v2, v4

    const/4 v4, 0x4

    aput-object v15, v2, v4

    const/4 v4, 0x5

    aput-object p16, v2, v4

    const/4 v4, 0x6

    aput-object v13, v2, v4

    const/4 v4, 0x7

    aput-object p14, v2, v4

    const/16 v4, 0x8

    aput-object v8, v2, v4

    const/16 v4, 0x9

    aput-object v9, v2, v4

    const/16 v4, 0xa

    aput-object v14, v2, v4

    const/16 v4, 0xb

    aput-object p15, v2, v4

    const/16 v4, 0xc

    aput-object p5, v2, v4

    const/16 v4, 0xd

    aput-object p6, v2, v4

    const/16 v4, 0xe

    aput-object p8, v2, v4

    const/16 v4, 0xf

    aput-object p9, v2, v4

    const/16 v4, 0x10

    aput-object p10, v2, v4

    const/16 v4, 0x11

    aput-object p12, v2, v4

    const/16 v4, 0x12

    aput-object p3, v2, v4

    const/16 v4, 0x13

    aput-object p4, v2, v4

    const/16 v4, 0x14

    aput-object p13, v2, v4

    const/16 v4, 0x15

    aput-object v7, v2, v4

    new-instance v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$special$$inlined$combine$1;

    invoke-direct {v4, v2, v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v2

    sget-object v5, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    move-object v8, v6

    new-instance v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;

    const v34, 0x7efffff

    const/16 v35, 0x0

    move-object v10, v7

    const/4 v7, 0x0

    move-object v11, v8

    const/4 v8, 0x0

    move-object v12, v9

    const/4 v9, 0x0

    move-object v14, v10

    const/4 v10, 0x0

    move-object v15, v11

    const/4 v11, 0x0

    move-object/from16 v16, v12

    const/4 v12, 0x0

    move-object/from16 v17, v13

    const/4 v13, 0x0

    move-object/from16 v18, v14

    const/4 v14, 0x0

    move-object/from16 v19, v15

    const/4 v15, 0x0

    move-object/from16 v20, v16

    const/16 v16, 0x0

    move-object/from16 v21, v17

    const/16 v17, 0x0

    move-object/from16 v22, v18

    const/16 v18, 0x0

    move-object/from16 v23, v19

    const/16 v19, 0x0

    move-object/from16 v24, v20

    const/16 v20, 0x0

    move-object/from16 v25, v21

    const/16 v21, 0x0

    move-object/from16 v26, v22

    const/16 v22, 0x0

    move-object/from16 v27, v23

    const/16 v23, 0x0

    move-object/from16 v28, v24

    const/16 v24, 0x0

    move-object/from16 v29, v25

    const/16 v25, 0x0

    move-object/from16 v30, v26

    const/16 v26, 0x0

    move-object/from16 v31, v28

    const/16 v28, 0x0

    move-object/from16 v32, v29

    const/16 v29, 0x0

    move-object/from16 v33, v30

    const/16 v30, 0x0

    move-object/from16 v37, v31

    const/16 v31, 0x0

    move-object/from16 v38, v32

    const/16 v32, 0x0

    move-object/from16 v39, v33

    const/16 v33, 0x0

    move-object/from16 p4, v1

    move-object/from16 v40, v38

    move-object/from16 v41, v39

    move-object/from16 v1, p13

    move-object/from16 v38, v27

    move-object/from16 v27, p11

    invoke-direct/range {v6 .. v35}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyPictureUiModel;ZZLcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;ZZLcom/perfectcorp/perfectlib/SkuInfo;Lcom/perfectcorp/perfectlib/LookInfo;Lcom/perfectcorp/perfectlib/SkuInfo;Lcom/perfectcorp/perfectlib/SkuInfo;Lcom/perfectcorp/perfectlib/LookInfo;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyFeatureFlags;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialState;ZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v4, v2, v5, v6}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->k0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static/range {v36 .. v36}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->l0:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v4, 0x0

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->m0:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderScanState;

    const/4 v7, 0x7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 p8, v6

    move/from16 p12, v7

    move-object/from16 p13, v8

    move/from16 p9, v9

    move/from16 p10, v10

    move/from16 p11, v11

    invoke-direct/range {p8 .. p13}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderScanState;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->n0:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v7, 0x5

    new-array v7, v7, [Lkotlinx/coroutines/flow/Flow;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v2, 0x1

    aput-object v37, v7, v2

    const/4 v2, 0x2

    aput-object v6, v7, v2

    const/4 v2, 0x3

    aput-object v4, v7, v2

    const/4 v2, 0x4

    aput-object v1, v7, v2

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$special$$inlined$combine$2;

    invoke-direct {v2, v7, v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$special$$inlined$combine$2;-><init>([Lkotlinx/coroutines/flow/Flow;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v4

    new-instance v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;

    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object/from16 p16, v6

    move/from16 p23, v7

    move-object/from16 p24, v8

    move/from16 p17, v9

    move/from16 p18, v10

    move-object/from16 p19, v11

    move-object/from16 p20, v12

    move/from16 p21, v13

    move-object/from16 p22, v14

    invoke-direct/range {p16 .. p24}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;-><init>(ZZLcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderScanState;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;ZLcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyFeatureFlags;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2, v4, v5, v6}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->o0:Lkotlinx/coroutines/flow/StateFlow;

    sget-object v2, Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Action$OpenBeautyVTO;->a:Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Action$OpenBeautyVTO;

    move-object/from16 v8, v38

    invoke-interface {v3, v8, v2}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->F:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->x:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->r:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/VirtualTryOnUiModel;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/VirtualTryOnUiModel;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    if-eqz v2, :cond_1

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v3

    new-instance v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$initTryOnProductList$1;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v2, v5, v5}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$initTryOnProductList$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    invoke-static {v3, v5, v5, v4, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_1
    invoke-interface/range {p15 .. p15}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->a1()V

    :cond_2
    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;

    move-object/from16 v3, p4

    iget-object v4, v3, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->J:Ljava/lang/String;

    iget-object v5, v3, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->k:Ljava/lang/String;

    iget-object v6, v3, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->e:Ljava/lang/String;

    iget-object v7, v3, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->w:Ljava/lang/String;

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->p:Ljava/lang/String;

    const/16 v8, 0x60

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 p5, v2

    move-object/from16 p10, v3

    move-object/from16 p6, v4

    move-object/from16 p7, v5

    move-object/from16 p8, v6

    move-object/from16 p9, v7

    move/from16 p13, v8

    move-object/from16 p14, v9

    move-object/from16 p11, v10

    move-object/from16 p12, v11

    invoke-direct/range {p5 .. p14}, Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/PdpVirtualStudioConfigValues;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, p5

    move-object/from16 v2, v40

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$collectLoginState$1;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$collectLoginState$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;)V

    const/4 v0, 0x3

    invoke-static {v2, v4, v4, v3, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;->SIMPLIFY_NAVIGATION:Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;->DISABLE_AUTOPLAY:Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;

    filled-new-array {v0, v2}, [Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;

    move-result-object v3

    move-object/from16 v4, p25

    invoke-virtual {v4, v3}, Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;->a([Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v4, v3, Lkotlin/Result$Failure;

    if-nez v4, :cond_3

    check-cast v3, Ljava/util/Map;

    invoke-static {v3, v0}, Lkotlin/collections/MapsKt;->d(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {v3, v2}, Lkotlin/collections/MapsKt;->d(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v10, v41

    invoke-interface {v10, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public static final Ac(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;)V
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->C:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v2, Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Action$FetchSDKModel;->a:Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Action$FetchSDKModel;

    invoke-interface {v0, v1, v2}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->s5(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;)Lcom/perfectcorp/perfectlib/PerfectEffect;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->H:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_1
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$getMakeUpEffectList$2;

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$getMakeUpEffectList$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void

    :cond_2
    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->D:Lcom/perfectcorp/perfectlib/SkuHandler;

    if-eqz v2, :cond_3

    new-instance v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$getMakeUpEffectList$3;

    invoke-direct {v3, p0, v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$getMakeUpEffectList$3;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Lcom/vuitton/android/domain/monitoring/MonitorAction;)V

    invoke-virtual {v2, v1, v3}, Lcom/perfectcorp/perfectlib/SkuHandler;->getListByEffect(Lcom/perfectcorp/perfectlib/PerfectEffect;Lcom/perfectcorp/perfectlib/SkuHandler$GetListCallback;)V

    :cond_3
    return-void
.end method

.method public static final Bc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->l0:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v0, p1, Lcom/perfectcorp/perfectlib/exceptions/DetectFailedException;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v0, 0x7f1411dd

    invoke-direct {p1, v0, v2, v1, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/perfectcorp/perfectlib/exceptions/FaceRectOutOfBoundaryException;

    if-eqz v0, :cond_2

    new-instance p1, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v0, 0x7f1411d9

    invoke-direct {p1, v0, v2, v1, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_2
    instance-of p1, p1, Lcom/perfectcorp/perfectlib/exceptions/MultiFaceNotSupportedException;

    if-eqz p1, :cond_3

    new-instance p1, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v0, 0x7f1411dc

    invoke-direct {p1, v0, v2, v1, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v0, 0x7f140eb2

    invoke-direct {p1, v0, v2, v1, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$handleFaceAnalysisError$2;

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$handleFaceAnalysisError$2;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final Cc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Ljava/lang/Throwable;Lcom/vuitton/android/domain/monitoring/MonitorAction;)V
    .locals 1

    new-instance p0, Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error$RecommendedShadeFinderError;

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Unknown error"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error$RecommendedShadeFinderError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p2, p0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    return-void
.end method

.method public static final Dc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$removeFromWishlist$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$removeFromWishlist$1;

    iget v3, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$removeFromWishlist$1;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$removeFromWishlist$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$removeFromWishlist$1;

    invoke-direct {v2, v0, v1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$removeFromWishlist$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$removeFromWishlist$1;->d:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$removeFromWishlist$1;->f:I

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-eqz v4, :cond_5

    if-eq v4, v8, :cond_4

    if-eq v4, v9, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v6, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v10

    :cond_2
    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$removeFromWishlist$1;->b:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget v4, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$removeFromWishlist$1;->c:I

    iget-object v8, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$removeFromWishlist$1;->b:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v1, v4

    move-object v4, v8

    goto :goto_2

    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/Result;

    iget-object v1, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->u:Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    iput v8, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$removeFromWishlist$1;->f:I

    move-object/from16 v4, p1

    invoke-virtual {v1, v4, v2}, Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_6

    goto :goto_4

    :cond_6
    :goto_1
    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v4, v1, Lkotlin/Result$Failure;

    if-nez v4, :cond_9

    move-object v4, v1

    check-cast v4, Lkotlin/Unit;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->h0:Lkotlinx/coroutines/channels/BufferedChannel;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->h:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v12, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v8, 0x7f140dfb

    invoke-direct {v12, v8, v10, v9, v10}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v15, 0x0

    const/16 v16, 0x34

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v8

    iput-object v1, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$removeFromWishlist$1;->b:Ljava/lang/Object;

    iput v5, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$removeFromWishlist$1;->c:I

    iput v9, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$removeFromWishlist$1;->f:I

    invoke-interface {v4, v8, v2}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_7

    goto :goto_4

    :cond_7
    move-object v4, v1

    move v1, v5

    :goto_2
    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->e:Lcom/vuitton/android/core/events/LVEventSender;

    iput-object v4, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$removeFromWishlist$1;->b:Ljava/lang/Object;

    iput v1, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$removeFromWishlist$1;->c:I

    iput v7, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$removeFromWishlist$1;->f:I

    sget-object v1, Lcom/vuitton/android/core/events/AppEvent$WishListUpdatedEvent;->a:Lcom/vuitton/android/core/events/AppEvent$WishListUpdatedEvent;

    invoke-virtual {v8, v1, v2}, Lcom/vuitton/android/core/events/LVEventSender;->a(Lcom/vuitton/android/core/events/AppEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    move-object v1, v4

    :cond_9
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_a

    iput-object v1, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$removeFromWishlist$1;->b:Ljava/lang/Object;

    iput v5, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$removeFromWishlist$1;->c:I

    iput v6, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$removeFromWishlist$1;->f:I

    invoke-virtual {v0, v4, v2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Kc(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_a

    :goto_4
    return-object v3

    :cond_a
    :goto_5
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->a1()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public static final Ec(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Ljava/lang/String;Z)V
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->m0:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/RecommendationUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/RecommendationUiModel;->a:Lcom/vuitton/android/presentation/model/common/ProductTinyUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/model/common/ProductTinyUiModel;->d:Ljava/lang/String;

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/RecommendationUiModel;

    if-eqz v2, :cond_2

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/RecommendationUiModel;->a:Lcom/vuitton/android/presentation/model/common/ProductTinyUiModel;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/vuitton/android/presentation/model/common/ProductTinyUiModel;->b:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_3

    const-string v0, ""

    :cond_3
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->g:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTracker;

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance p2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnAddToCartFailureEvent;

    invoke-direct {p2, p1, v0, v1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnAddToCartFailureEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance p2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnAddToCartSuccessEvent;

    invoke-direct {p2, p1, v0, v1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel$OnAddToCartSuccessEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void
.end method

.method public static final yc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->U:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    instance-of v4, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;

    iget v5, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;->i:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;->i:I

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;

    invoke-direct {v4, v0, v1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v1, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;->g:Ljava/lang/Object;

    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v6, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;->i:I

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-eqz v6, :cond_5

    if-eq v6, v10, :cond_4

    if-eq v6, v11, :cond_3

    if-eq v6, v9, :cond_2

    if-ne v6, v8, :cond_1

    iget-object v2, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;->e:Ljava/lang/Throwable;

    iget-object v3, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v12

    :cond_2
    iget-object v6, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;->e:Ljava/lang/Throwable;

    check-cast v6, Lkotlin/Unit;

    iget-object v6, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;->d:Ljava/lang/Object;

    iget-object v9, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    iget v6, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;->f:I

    iget-object v10, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;->e:Ljava/lang/Throwable;

    check-cast v10, Lkotlin/Unit;

    iget-object v10, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;->d:Ljava/lang/Object;

    iget-object v11, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v1, v6

    move-object v6, v10

    move-object v9, v11

    goto/16 :goto_3

    :cond_4
    iget-object v6, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object v10, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;->b:Ljava/util/List;

    check-cast v10, Ljava/util/List;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/Result;

    iget-object v1, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->C:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v13, Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Action$AddToWishlist;->a:Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Action$AddToWishlist;

    invoke-interface {v1, v6, v13}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v6

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->t:Lcom/vuitton/android/domain/usecase/wishlist/AddProductListToWishlistUseCase;

    move-object/from16 v13, p1

    check-cast v13, Ljava/lang/Iterable;

    new-instance v14, Ljava/util/ArrayList;

    const/16 v15, 0xa

    invoke-static {v13, v15}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    iget-object v15, v15, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->b:Ljava/lang/String;

    sget-object v16, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v15}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v8, v15}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x4

    goto :goto_1

    :cond_6
    move-object/from16 v8, p1

    check-cast v8, Ljava/util/List;

    iput-object v8, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;->b:Ljava/util/List;

    iput-object v6, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v10, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;->i:I

    invoke-virtual {v1, v14, v4}, Lcom/vuitton/android/domain/usecase/wishlist/AddProductListToWishlistUseCase;->a(Ljava/util/ArrayList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_7

    goto/16 :goto_5

    :cond_7
    move-object/from16 v10, p1

    :goto_2
    sget-object v8, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v8, v1, Lkotlin/Result$Failure;

    if-nez v8, :cond_b

    move-object v8, v1

    check-cast v8, Lkotlin/Unit;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v8, :cond_8

    new-instance v13, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToWishlistSucceedEvent;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Gc()Ljava/util/List;

    move-result-object v14

    invoke-virtual {v0, v8}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Hc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;)Ljava/util/List;

    move-result-object v15

    iget-object v8, v8, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-direct {v13, v14, v15, v8, v9}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToWishlistSucceedEvent;-><init>(Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)V

    invoke-virtual {v0, v13}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;)V

    :cond_8
    move-object/from16 v17, v10

    check-cast v17, Ljava/lang/Iterable;

    sget-object v21, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$3$2;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$3$2;

    const/16 v22, 0x1e

    const-string v18, ","

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v17 .. v22}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "sku"

    invoke-interface {v6, v8, v9}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->h0:Lkotlinx/coroutines/channels/BufferedChannel;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->h:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v10, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v13, 0x7f140de9

    invoke-direct {v10, v13, v12, v11, v12}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v21, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyNotificationAction$GoToWishlist;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyNotificationAction$GoToWishlist;

    const/16 v22, 0x14

    const/16 v19, 0x1

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    invoke-static/range {v17 .. v22}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v9

    iput-object v12, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;->b:Ljava/util/List;

    iput-object v6, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v1, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;->d:Ljava/lang/Object;

    iput-object v12, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;->e:Ljava/lang/Throwable;

    iput v7, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;->f:I

    iput v11, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;->i:I

    invoke-interface {v8, v9, v4}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v5, :cond_9

    goto :goto_5

    :cond_9
    move-object v9, v6

    move-object v6, v1

    move v1, v7

    :goto_3
    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->e:Lcom/vuitton/android/core/events/LVEventSender;

    iput-object v12, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;->b:Ljava/util/List;

    iput-object v9, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v6, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;->d:Ljava/lang/Object;

    iput-object v12, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;->e:Ljava/lang/Throwable;

    iput v1, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;->f:I

    const/4 v1, 0x3

    iput v1, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;->i:I

    sget-object v1, Lcom/vuitton/android/core/events/AppEvent$WishListUpdatedEvent;->a:Lcom/vuitton/android/core/events/AppEvent$WishListUpdatedEvent;

    invoke-virtual {v8, v1, v4}, Lcom/vuitton/android/core/events/LVEventSender;->a(Lcom/vuitton/android/core/events/AppEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_a

    goto :goto_5

    :cond_a
    :goto_4
    move-object v1, v6

    move-object v6, v9

    :cond_b
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v8

    if-eqz v8, :cond_e

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v3, :cond_c

    new-instance v9, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToWishlistFailureEvent;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Gc()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v0, v3}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Hc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;)Ljava/util/List;

    move-result-object v11

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-direct {v9, v10, v11, v3, v2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToWishlistFailureEvent;-><init>(Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)V

    invoke-virtual {v0, v9}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;)V

    :cond_c
    iput-object v12, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;->b:Ljava/util/List;

    iput-object v6, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v1, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;->d:Ljava/lang/Object;

    iput-object v8, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;->e:Ljava/lang/Throwable;

    iput v7, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;->f:I

    const/4 v1, 0x4

    iput v1, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addProductListToWishlist$1;->i:I

    invoke-virtual {v0, v8, v4}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Kc(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_d

    :goto_5
    return-object v5

    :cond_d
    move-object v3, v6

    move-object v2, v8

    :goto_6
    new-instance v1, Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error$AddToWishlistError;

    invoke-direct {v1, v2}, Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Error$AddToWishlistError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v3, v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    move-object v6, v3

    :cond_e
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->a1()V

    invoke-interface {v6}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public static final zc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;)V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->H:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->E:Lcom/perfectcorp/perfectlib/LookHandler;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/perfectcorp/perfectlib/LookType;->MAKEUP:Lcom/perfectcorp/perfectlib/LookType;

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$getLookList$2;

    invoke-direct {v2, p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$getLookList$2;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/perfectlib/LookHandler;->getList(Lcom/perfectcorp/perfectlib/LookType;Lcom/perfectcorp/perfectlib/LookHandler$GetListCallback;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final A1(F)V
    .locals 3

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final A2(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnTakePictureClickedEvent;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Gc()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Hc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;)Ljava/util/List;

    move-result-object v3

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->U:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnTakePictureClickedEvent;-><init>(Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)V

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;)V

    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$onPictureTaken$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$onPictureTaken$2;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Landroid/graphics/Bitmap;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final E6()V
    .locals 8

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->U:Lkotlinx/coroutines/flow/MutableStateFlow;

    if-eqz v0, :cond_0

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnCompareClickedEvent;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Gc()Ljava/util/List;

    move-result-object v3

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->a:Ljava/lang/String;

    sget-object v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnCompareClickedEvent;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;)V

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->c0:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/perfectcorp/perfectlib/SkuInfo;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->d0:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/perfectcorp/perfectlib/LookInfo;

    invoke-interface {v0, v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;->DUAL:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    if-eq v0, v2, :cond_3

    :cond_2
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;->DUAL:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-interface {v1, v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;->SIMPLE:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-interface {v1, v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_4
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->T:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->G:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_5
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->b0:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/perfectcorp/perfectlib/SkuInfo;

    invoke-interface {v0, v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_6
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->a1()V

    return-void
.end method

.method public final E9(Landroid/graphics/Bitmap;)V
    .locals 3

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->l0:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->C:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v1, Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Action$RecommendedShadeFinder;->a:Lcom/vuitton/android/domain/monitoring/beauty/BeautyVTOMonitoring$Action$RecommendedShadeFinder;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-interface {v2, v0, v1}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$faceAnalysis$2;

    invoke-direct {v1, p1, v0, p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$faceAnalysis$2;-><init>(Landroid/graphics/Bitmap;Lcom/vuitton/android/domain/monitoring/MonitorAction;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;)V

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;->create(Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$CreateCallback;)V

    return-void
.end method

.method public final Ea()V
    .locals 5

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyClickedEvent;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->d:Ljava/lang/String;

    :goto_0
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    if-nez v1, :cond_2

    :cond_1
    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;->NONE:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    :cond_2
    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->V:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;

    if-eqz v3, :cond_3

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;->a:Ljava/lang/String;

    if-nez v3, :cond_4

    :cond_3
    const-string v3, ""

    :cond_4
    const/4 v4, 0x0

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyClickedEvent;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$openTutorial$1;

    invoke-direct {v1, v4, p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$openTutorial$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v4, v4, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final F0()V
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->a:Ljava/lang/String;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addOrRemoveFromWishlist$1$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addOrRemoveFromWishlist$1$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v1, v3, v3, v2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public final F3()V
    .locals 7

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->U:Lkotlinx/coroutines/flow/MutableStateFlow;

    if-eqz v1, :cond_0

    new-instance v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToCardClickedEvent;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Gc()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Hc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;)Ljava/util/List;

    move-result-object v5

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-direct {v3, v4, v5, v1, v6}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToCardClickedEvent;-><init>(Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)V

    invoke-virtual {p0, v3}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;)V

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v1

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->a:Ljava/lang/String;

    new-instance v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v4, v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_2

    iget-object v0, v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->b:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_3

    new-instance v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    new-instance v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v4, v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$WhenMappings;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    goto :goto_6

    :cond_4
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->T:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->a:Ljava/lang/String;

    new-instance v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v4, v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    move-object v4, v3

    :goto_2
    if-eqz v4, :cond_6

    iget-object v0, v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->b:Ljava/lang/String;

    goto :goto_3

    :cond_6
    move-object v0, v3

    :goto_3
    if-eqz v0, :cond_a

    new-instance v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    new-instance v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v4, v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->S:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->a:Ljava/lang/String;

    new-instance v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v4, v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    move-object v4, v3

    :goto_4
    if-eqz v4, :cond_9

    iget-object v0, v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->b:Ljava/lang/String;

    goto :goto_5

    :cond_9
    move-object v0, v3

    :goto_5
    if-eqz v0, :cond_a

    new-instance v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    new-instance v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v4, v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_6
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/collections/AbstractMutableList;->f()I

    move-result v1

    if-le v1, v2, :cond_b

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$checkAvailabilityForSkus$1;

    invoke-direct {v2, p0, v0, v3}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$checkAvailabilityForSkus$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Lkotlin/collections/builders/ListBuilder;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v1, v3, v3, v2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void

    :cond_b
    invoke-virtual {v0}, Lkotlin/collections/builders/ListBuilder;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->y6(Ljava/util/List;)V

    :cond_c
    return-void
.end method

.method public final Fc()Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;
    .locals 2

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->y:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->m0:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;->b:Ljava/util/List;

    if-eqz p0, :cond_2

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/RecommendationUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/RecommendationUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/RecommendationUiModel;

    if-eqz v0, :cond_2

    iget-object p0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/RecommendationUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;->NONE:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    return-object p0

    :cond_3
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->x:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->r:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/VirtualTryOnUiModel;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/VirtualTryOnUiModel;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    return-object p0

    :cond_5
    :goto_1
    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;->NONE:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    return-object p0
.end method

.method public final Ga()V
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->L:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_6

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->h:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_2
    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->H:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/perfectcorp/perfectlib/SkuHandler;->getInstance()Lcom/perfectcorp/perfectlib/SkuHandler;

    move-result-object v2

    iput-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->D:Lcom/perfectcorp/perfectlib/SkuHandler;

    if-eqz v2, :cond_3

    new-instance v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$initSkuHandler$2$1;

    invoke-direct {v3, p0, v2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$initSkuHandler$2$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Lcom/perfectcorp/perfectlib/SkuHandler;)V

    invoke-virtual {v2, v3}, Lcom/perfectcorp/perfectlib/SkuHandler;->checkNeedToUpdate(Lcom/perfectcorp/perfectlib/SkuHandler$CheckNeedToUpdateCallback;)V

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->h:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lcom/vuitton/foundation/model/domain/extensions/CollectionExtKt;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Lc()V

    :cond_6
    :goto_1
    return-void
.end method

.method public final Gc()Ljava/util/List;
    .locals 3

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->y:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->m0:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;->b:Ljava/util/List;

    if-eqz p0, :cond_1

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/RecommendationUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/RecommendationUiModel;->a:Lcom/vuitton/android/presentation/model/common/ProductTinyUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/model/common/ProductTinyUiModel;->d:Ljava/lang/String;

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v2, v1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->x:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object p0, v0

    :goto_1
    if-eqz p0, :cond_4

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    :cond_4
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->Q(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final H7(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;)V
    .locals 7

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Nc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;)V

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->S:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->T:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-nez p1, :cond_2

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->G:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    goto :goto_0

    :cond_2
    move-object v3, p1

    :goto_0
    invoke-interface {v0, v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->b0:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/perfectcorp/perfectlib/SkuInfo;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->J:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_7

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/perfectcorp/perfectlib/SkuInfo;

    invoke-virtual {v5}, Lcom/perfectcorp/perfectlib/SkuInfo;->getGuid()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v6, :cond_5

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->b:Ljava/lang/String;

    goto :goto_1

    :cond_5
    move-object v6, v2

    :goto_1
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_6
    move-object v4, v2

    :goto_2
    check-cast v4, Lcom/perfectcorp/perfectlib/SkuInfo;

    goto :goto_3

    :cond_7
    move-object v4, v2

    :goto_3
    invoke-interface {p1, v1, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->a1()V

    return-void
.end method

.method public final Hb()V
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnDiscardPhotoClickedEvent;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Gc()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Hc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Fc()Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    move-result-object v3

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->U:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnDiscardPhotoClickedEvent;-><init>(Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)V

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;)V

    :cond_0
    return-void
.end method

.method public final Hc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;)Ljava/util/List;
    .locals 3

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->U:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$WhenMappings;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p0, 0x3

    if-ne v0, p0, :cond_0

    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-object v2

    :cond_1
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->T:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->a:Ljava/lang/String;

    if-eqz p0, :cond_2

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    goto :goto_0

    :cond_2
    move-object p0, v2

    :goto_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_3

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v2, p0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    :cond_3
    filled-new-array {v0, v2}, [Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->v([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->S:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->a:Ljava/lang/String;

    if-eqz p0, :cond_5

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    goto :goto_1

    :cond_5
    move-object p0, v2

    :goto_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_6

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v2, p0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    :cond_6
    filled-new-array {v0, v2}, [Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->v([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final Ic()V
    .locals 8

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->V:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->h:Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    invoke-interface {v0, v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->h:Ljava/util/List;

    goto :goto_1

    :cond_2
    move-object v1, v4

    :goto_1
    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lcom/vuitton/foundation/model/domain/extensions/CollectionExtKt;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->a0:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/perfectcorp/perfectlib/LookInfo;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->W:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_7

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/perfectcorp/perfectlib/LookInfo;

    invoke-virtual {v6}, Lcom/perfectcorp/perfectlib/LookInfo;->getGuid()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;

    if-eqz v7, :cond_5

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;->b:Ljava/lang/String;

    goto :goto_2

    :cond_5
    move-object v7, v4

    :goto_2
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_6
    move-object v5, v4

    :goto_3
    check-cast v5, Lcom/perfectcorp/perfectlib/LookInfo;

    goto :goto_4

    :cond_7
    move-object v5, v4

    :goto_4
    invoke-interface {v1, v2, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_8

    :cond_8
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Z:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/perfectcorp/perfectlib/SkuInfo;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->J:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_c

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/perfectcorp/perfectlib/SkuInfo;

    invoke-virtual {v6}, Lcom/perfectcorp/perfectlib/SkuInfo;->getGuid()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v7, :cond_a

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->b:Ljava/lang/String;

    goto :goto_5

    :cond_a
    move-object v7, v4

    :goto_5
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_6

    :cond_b
    move-object v5, v4

    :goto_6
    check-cast v5, Lcom/perfectcorp/perfectlib/SkuInfo;

    goto :goto_7

    :cond_c
    move-object v5, v4

    :goto_7
    invoke-interface {v0, v1, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_8
    return-void
.end method

.method public final Jc()V
    .locals 8

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->S:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->h:Ljava/util/List;

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lcom/vuitton/foundation/model/domain/extensions/CollectionExtKt;->a(Ljava/util/Collection;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    :cond_1
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->d0:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/perfectcorp/perfectlib/LookInfo;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->W:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_5

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/perfectcorp/perfectlib/LookInfo;

    invoke-virtual {v6}, Lcom/perfectcorp/perfectlib/LookInfo;->getGuid()Ljava/lang/String;

    move-result-object v6

    if-eqz v1, :cond_3

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;

    if-eqz v7, :cond_3

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;->b:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object v7, v3

    :goto_0
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_4
    move-object v5, v3

    :goto_1
    check-cast v5, Lcom/perfectcorp/perfectlib/LookInfo;

    goto :goto_2

    :cond_5
    move-object v5, v3

    :goto_2
    invoke-interface {v0, v2, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_5

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->c0:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/perfectcorp/perfectlib/SkuInfo;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->K:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_9

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/perfectcorp/perfectlib/SkuInfo;

    invoke-virtual {v6}, Lcom/perfectcorp/perfectlib/SkuInfo;->getGuid()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->b:Ljava/lang/String;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_3

    :cond_8
    move-object v5, v3

    :goto_3
    check-cast v5, Lcom/perfectcorp/perfectlib/SkuInfo;

    goto :goto_4

    :cond_9
    move-object v5, v3

    :goto_4
    invoke-interface {v1, v2, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_5
    return-void
.end method

.method public final Kc(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p1, Lcom/vuitton/foundation/model/domain/error/wishlist/WishlistError;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/vuitton/foundation/model/domain/error/wishlist/WishlistError;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/error/wishlist/WishlistError;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v5, v1

    goto :goto_4

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v3, 0x7f140a5a

    invoke-direct {v0, v3, v2, v1, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_1
    move-object v5, v0

    goto :goto_4

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v3, v0, Lretrofit2/HttpException;

    if-eqz v3, :cond_2

    check-cast v0, Lretrofit2/HttpException;

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    if-eqz v0, :cond_3

    iget-object v0, v0, Lretrofit2/HttpException;->d:Lretrofit2/Response;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lretrofit2/Response;->c:Lokhttp3/ResponseBody;

    goto :goto_3

    :cond_3
    move-object v0, v2

    :goto_3
    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistHelper;->a(Lokhttp3/ResponseBody;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v3, 0x7f140967

    invoke-direct {v0, v3, v2, v1, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :goto_4
    instance-of v6, p1, Lcom/vuitton/foundation/model/domain/error/wishlist/WishlistError$AlreadyInWishlist;

    const/4 v8, 0x0

    const/16 v9, 0x3c

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->h:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->h0:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p0, p1, p2}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_5

    return-object p0

    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final Lc()V
    .locals 3

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->H:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/perfectcorp/perfectlib/LookHandler;->getInstance()Lcom/perfectcorp/perfectlib/LookHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->E:Lcom/perfectcorp/perfectlib/LookHandler;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/perfectcorp/perfectlib/LookType;->MAKEUP:Lcom/perfectcorp/perfectlib/LookType;

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$initLookHandler$2$1;

    invoke-direct {v2, p0, v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$initLookHandler$2$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Lcom/perfectcorp/perfectlib/LookHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/perfectlib/LookHandler;->checkNeedToUpdate(Lcom/perfectcorp/perfectlib/LookType;Lcom/perfectcorp/perfectlib/LookHandler$CheckNeedToUpdateCallback;)V

    :cond_1
    return-void
.end method

.method public final Mc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;)V
    .locals 21

    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$VtoScreen;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v6, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$VtoScreen;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$VtoScreen;->a:Ljava/util/List;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$VtoScreen;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-array v0, v4, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v6, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v6, 0x0

    const-string v7, "vto"

    const-string v8, "vto_camera"

    const-string v9, "vto"

    invoke-direct/range {v5 .. v12}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, p0

    goto/16 :goto_4

    :cond_0
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$VtoHowToApplyScreen;

    const/4 v5, 0x3

    if-eqz v1, :cond_1

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;

    sget-object v7, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$VtoHowToApplyScreen;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$VtoHowToApplyScreen;->a:Ljava/lang/String;

    new-instance v9, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v9, v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;-><init>(Ljava/util/List;)V

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$VtoHowToApplyScreen;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$VtoHowToApplyScreen;->c:Ljava/lang/String;

    invoke-direct {v8, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-array v0, v5, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v7, v0, v2

    aput-object v8, v0, v4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v7, 0x0

    const-string v8, "vto_how_to_apply"

    const-string v9, "vto_how_to_apply"

    const-string v10, "vto"

    invoke-direct/range {v6 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    move-object/from16 v0, p0

    move-object v5, v6

    goto/16 :goto_4

    :cond_1
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$VtoMultipleProductBottomSheetScreen;

    if-eqz v1, :cond_2

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$VtoMultipleProductBottomSheetScreen;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$VtoMultipleProductBottomSheetScreen;->a:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v7, 0x0

    const-string v8, "multiple_product_bottom_sheet_vto"

    const-string v9, "product_sheet_multiple_product_bottom_sheet"

    const-string v10, "vto"

    invoke-direct/range {v6 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnCompareClickedEvent;

    const/4 v6, 0x4

    sget-object v8, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Vto;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Vto;

    if-eqz v1, :cond_3

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v9, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnCompareClickedEvent;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnCompareClickedEvent;->a:Ljava/util/List;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnCompareClickedEvent;->b:Ljava/lang/String;

    new-instance v11, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v11, v10}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;-><init>(Ljava/util/List;)V

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnCompareClickedEvent;->d:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewStateKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnCompareClickedEvent;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-array v0, v6, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v9, v0, v2

    aput-object v10, v0, v4

    aput-object v11, v0, v5

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v15, 0x20

    const/16 v16, 0x0

    const-string v9, "vto"

    const-string v10, "compare_intention"

    const-string v11, "vto"

    const-string v12, "click"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_1
    move-object/from16 v0, p0

    move-object v5, v7

    goto/16 :goto_4

    :cond_3
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnStackingClickedEvent;

    if-eqz v1, :cond_4

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v9, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnStackingClickedEvent;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnStackingClickedEvent;->a:Ljava/util/List;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnStackingClickedEvent;->b:Ljava/lang/String;

    new-instance v11, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v11, v10}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;-><init>(Ljava/util/List;)V

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnStackingClickedEvent;->d:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewStateKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnStackingClickedEvent;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-array v0, v6, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v9, v0, v2

    aput-object v10, v0, v4

    aput-object v11, v0, v5

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v15, 0x20

    const/16 v16, 0x0

    const-string v9, "vto"

    const-string v10, "stacking_intention"

    const-string v11, "vto"

    const-string v12, "click"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_4
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnTakePictureClickedEvent;

    if-eqz v1, :cond_5

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v9, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnTakePictureClickedEvent;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnTakePictureClickedEvent;->a:Ljava/util/List;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnTakePictureClickedEvent;->b:Ljava/util/List;

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;-><init>(Ljava/util/List;)V

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnTakePictureClickedEvent;->d:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewStateKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnTakePictureClickedEvent;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-array v0, v6, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v9, v0, v2

    aput-object v10, v0, v4

    aput-object v11, v0, v5

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v15, 0x20

    const/16 v16, 0x0

    const-string v9, "vto"

    const-string v10, "take_picture"

    const-string v11, "vto"

    const-string v12, "click"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :cond_5
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnDiscardPhotoClickedEvent;

    if-eqz v1, :cond_6

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v9, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnDiscardPhotoClickedEvent;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnDiscardPhotoClickedEvent;->a:Ljava/util/List;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnDiscardPhotoClickedEvent;->b:Ljava/util/List;

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;-><init>(Ljava/util/List;)V

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnDiscardPhotoClickedEvent;->d:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewStateKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnDiscardPhotoClickedEvent;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-array v0, v6, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v9, v0, v2

    aput-object v10, v0, v4

    aput-object v11, v0, v5

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v15, 0x20

    const/16 v16, 0x0

    const-string v9, "vto"

    const-string v10, "discard_picture"

    const-string v11, "vto"

    const-string v12, "click"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :cond_6
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSharePhotoClickedEvent;

    if-eqz v1, :cond_7

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v9, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSharePhotoClickedEvent;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSharePhotoClickedEvent;->a:Ljava/util/List;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSharePhotoClickedEvent;->b:Ljava/util/List;

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;-><init>(Ljava/util/List;)V

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSharePhotoClickedEvent;->d:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewStateKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSharePhotoClickedEvent;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-array v0, v6, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v9, v0, v2

    aput-object v10, v0, v4

    aput-object v11, v0, v5

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v15, 0x20

    const/16 v16, 0x0

    const-string v9, "vto"

    const-string v10, "share_picture"

    const-string v11, "vto"

    const-string v12, "click"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :cond_7
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToWishlistClickedEvent;

    sget-object v10, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$AddToWishlist;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$AddToWishlist;

    if-eqz v1, :cond_8

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v7, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToWishlistClickedEvent;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToWishlistClickedEvent;->a:Ljava/util/List;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToWishlistClickedEvent;->b:Ljava/util/List;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;-><init>(Ljava/util/List;)V

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToWishlistClickedEvent;->d:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewStateKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToWishlistClickedEvent;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-array v0, v6, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v7, v0, v2

    aput-object v8, v0, v4

    aput-object v11, v0, v5

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x20

    const/16 v18, 0x0

    const-string v11, "vto"

    const-string v12, "add_to_wishlist_intention"

    const-string v13, "vto"

    const-string v14, "click"

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_2
    move-object/from16 v0, p0

    move-object v5, v9

    goto/16 :goto_4

    :cond_8
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToWishlistSucceedEvent;

    if-eqz v1, :cond_9

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v7, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToWishlistSucceedEvent;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToWishlistSucceedEvent;->a:Ljava/util/List;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToWishlistSucceedEvent;->b:Ljava/util/List;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;-><init>(Ljava/util/List;)V

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToWishlistSucceedEvent;->d:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewStateKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToWishlistSucceedEvent;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-array v0, v6, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v7, v0, v2

    aput-object v8, v0, v4

    aput-object v11, v0, v5

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x20

    const/16 v18, 0x0

    const-string v11, "vto"

    const-string v12, "add_to_wishlist_success"

    const-string v13, "vto"

    const-string v14, "event"

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    :cond_9
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToWishlistFailureEvent;

    if-eqz v1, :cond_a

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v7, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToWishlistFailureEvent;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToWishlistFailureEvent;->a:Ljava/util/List;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToWishlistFailureEvent;->b:Ljava/util/List;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;-><init>(Ljava/util/List;)V

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToWishlistFailureEvent;->d:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewStateKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToWishlistFailureEvent;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-array v0, v6, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v7, v0, v2

    aput-object v8, v0, v4

    aput-object v11, v0, v5

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x20

    const/16 v18, 0x0

    const-string v11, "vto"

    const-string v12, "add_to_wishlist_fail"

    const-string v13, "vto"

    const-string v14, "event"

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_2

    :cond_a
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToCardClickedEvent;

    sget-object v10, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$AddToCart;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$AddToCart;

    if-eqz v1, :cond_b

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v7, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToCardClickedEvent;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToCardClickedEvent;->a:Ljava/util/List;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToCardClickedEvent;->b:Ljava/util/List;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;-><init>(Ljava/util/List;)V

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToCardClickedEvent;->d:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewStateKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToCardClickedEvent;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-array v0, v6, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v7, v0, v2

    aput-object v8, v0, v4

    aput-object v11, v0, v5

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x20

    const/16 v18, 0x0

    const-string v11, "vto"

    const-string v12, "add_to_cart_intention"

    const-string v13, "vto"

    const-string v14, "click"

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_2

    :cond_b
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSnackbarRedirectToCartClickedEvent;

    if-eqz v1, :cond_c

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v6, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSnackbarRedirectToCartClickedEvent;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSnackbarRedirectToCartClickedEvent;->a:Ljava/util/List;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSnackbarRedirectToCartClickedEvent;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-static {v9}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewStateKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSnackbarRedirectToCartClickedEvent;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-array v0, v5, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v6, v0, v2

    aput-object v9, v0, v4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v15, 0x20

    const/16 v16, 0x0

    const-string v9, "vto"

    const-string v10, "view_my_cart"

    const-string v11, "vto"

    const-string v12, "click"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :cond_c
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSnackbarOpenAlertClickedEvent;

    if-eqz v1, :cond_d

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;

    sget-object v6, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSnackbarOpenAlertClickedEvent;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSnackbarOpenAlertClickedEvent;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    const/4 v6, 0x0

    invoke-direct {v1, v7, v6}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Sku;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSnackbarOpenAlertClickedEvent;->b:Ljava/lang/String;

    new-instance v8, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v8, v7}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;-><init>(Ljava/util/List;)V

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSnackbarOpenAlertClickedEvent;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewStateKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-array v0, v5, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v6, v0, v2

    aput-object v7, v0, v4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    const/16 v19, 0x21

    const/16 v20, 0x0

    const/4 v12, 0x0

    const-string v13, "vto"

    const-string v14, "open_alert_notification"

    const-string v15, "vto"

    const-string v16, "click"

    const/16 v17, 0x0

    invoke-direct/range {v11 .. v20}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, p0

    move-object v5, v11

    goto/16 :goto_4

    :cond_d
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnCloseVtoScreenClickedEvent;

    if-eqz v1, :cond_e

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v6, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnCloseVtoScreenClickedEvent;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnCloseVtoScreenClickedEvent;->a:Ljava/util/List;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnCloseVtoScreenClickedEvent;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-static {v9}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewStateKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnCloseVtoScreenClickedEvent;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-array v0, v5, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v6, v0, v2

    aput-object v9, v0, v4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v15, 0x20

    const/16 v16, 0x0

    const-string v9, "vto"

    const-string v10, "close_pop_in"

    const-string v11, "vto"

    const-string v12, "click"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :cond_e
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$SelectSkuMultipleProductBottomSheetEvent;

    if-eqz v1, :cond_10

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$SelectSkuMultipleProductBottomSheetEvent;

    iget-boolean v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$SelectSkuMultipleProductBottomSheetEvent;->a:Z

    if-eqz v1, :cond_f

    const-string v1, "select"

    goto :goto_3

    :cond_f
    const-string v1, "unselect"

    :goto_3
    const-string v5, "_product_multiple_add_to_cart_bottom_sheet"

    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$SelectSkuMultipleProductBottomSheetEvent;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-static {v5}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewStateKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v6, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$SelectSkuMultipleProductBottomSheetEvent;->c:Ljava/util/List;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-array v0, v4, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v5, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v15, 0x20

    const/16 v16, 0x0

    const-string v9, "multiple_product_bottom_sheet_vto"

    const-string v11, "vto"

    const-string v12, "click"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :cond_10
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$CloseMultipleProductBottomSheetEvent;

    if-eqz v1, :cond_11

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$CloseMultipleProductBottomSheetEvent;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$CloseMultipleProductBottomSheetEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-static {v5}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewStateKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v6, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$CloseMultipleProductBottomSheetEvent;->b:Ljava/util/List;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-array v0, v4, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v5, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v15, 0x20

    const/16 v16, 0x0

    const-string v9, "multiple_product_bottom_sheet_vto"

    const-string v10, "close_multiple_add_to_cart_bottom_sheet"

    const-string v11, "vto"

    const-string v12, "click"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :cond_11
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$AddToCartMultipleProductBottomSheetEvent;

    if-eqz v1, :cond_12

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$AddToCartMultipleProductBottomSheetEvent;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$AddToCartMultipleProductBottomSheetEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-static {v5}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewStateKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v6, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$AddToCartMultipleProductBottomSheetEvent;->b:Ljava/util/List;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-array v0, v4, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v5, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x20

    const/16 v18, 0x0

    const-string v11, "multiple_product_bottom_sheet_vto"

    const-string v12, "multiple_add_to_cart_bottom_sheet"

    const-string v13, "vto"

    const-string v14, "click"

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_2

    :cond_12
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OpenAlertMultipleProductBottomSheetEvent;

    if-eqz v1, :cond_13

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OpenAlertMultipleProductBottomSheetEvent;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OpenAlertMultipleProductBottomSheetEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-static {v5}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewStateKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v6, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OpenAlertMultipleProductBottomSheetEvent;->b:Ljava/util/List;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-array v0, v4, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v5, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v15, 0x20

    const/16 v16, 0x0

    const-string v9, "multiple_product_bottom_sheet_vto"

    const-string v10, "open_alert_multiple_add_to_cart_bottom_sheet"

    const-string v11, "vto"

    const-string v12, "click"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :cond_13
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$NotifyMeBottomSheetEvent;

    if-eqz v1, :cond_14

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$NotifyMeBottomSheetEvent;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$NotifyMeBottomSheetEvent;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcj;->q(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x21

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v11, "LVPass/Consent/Notifications"

    const-string v12, "notify_me_2"

    const-string v13, "back_in_stock"

    const-string v14, "notifications"

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_2

    :cond_14
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnLookSelectorClickedEvent;

    if-eqz v1, :cond_15

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v9, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnLookSelectorClickedEvent;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnLookSelectorClickedEvent;->a:Ljava/util/List;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnLookSelectorClickedEvent;->b:Ljava/lang/String;

    new-instance v10, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v10, v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;-><init>(Ljava/util/List;)V

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    sget-object v10, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;->SIMPLE:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewStateKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    sget-object v11, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;->EYESHADOW:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-array v6, v6, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v6, v3

    aput-object v9, v6, v2

    aput-object v0, v6, v4

    aput-object v10, v6, v5

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v15, 0x20

    const/16 v16, 0x0

    const-string v9, "vto"

    const-string v10, "open_eye_shadow_bottom_sheet"

    const-string v11, "vto"

    const-string v12, "click"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :cond_15
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnLookClickedEvent;

    if-eqz v1, :cond_16

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;

    sget-object v9, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnLookClickedEvent;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnLookClickedEvent;->a:Ljava/lang/String;

    new-instance v11, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v11, v10}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;-><init>(Ljava/util/List;)V

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    sget-object v10, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;->SIMPLE:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewStateKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    sget-object v11, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;->EYESHADOW:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$LookId;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnLookClickedEvent;->b:Ljava/lang/String;

    invoke-direct {v11, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$LookId;-><init>(Ljava/lang/String;)V

    new-array v0, v6, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v9, v0, v2

    aput-object v10, v0, v4

    aput-object v11, v0, v5

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v15, 0x20

    const/16 v16, 0x0

    const-string v9, "vto"

    const-string v10, "select_eyeshadow_look"

    const-string v11, "vto"

    const-string v12, "click"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :cond_16
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyClickedEvent;

    if-eqz v1, :cond_17

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;

    sget-object v9, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyClickedEvent;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyClickedEvent;->a:Ljava/lang/String;

    new-instance v11, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v11, v10}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;-><init>(Ljava/util/List;)V

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    sget-object v10, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;->SIMPLE:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewStateKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyClickedEvent;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$LookId;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyClickedEvent;->c:Ljava/lang/String;

    invoke-direct {v11, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$LookId;-><init>(Ljava/lang/String;)V

    new-array v0, v6, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v9, v0, v2

    aput-object v10, v0, v4

    aput-object v11, v0, v5

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v15, 0x20

    const/16 v16, 0x0

    const-string v9, "vto"

    const-string v10, "open_how_to_apply"

    const-string v11, "vto"

    const-string v12, "click"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :cond_17
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyClosedEvent;

    if-eqz v1, :cond_18

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;

    sget-object v9, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyClosedEvent;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyClosedEvent;->a:Ljava/lang/String;

    new-instance v11, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v11, v10}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;-><init>(Ljava/util/List;)V

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    sget-object v10, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;->SIMPLE:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewStateKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyClosedEvent;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$LookId;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyClosedEvent;->c:Ljava/lang/String;

    invoke-direct {v11, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$LookId;-><init>(Ljava/lang/String;)V

    new-array v0, v6, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v9, v0, v2

    aput-object v10, v0, v4

    aput-object v11, v0, v5

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v15, 0x20

    const/16 v16, 0x0

    const-string v9, "vto_how_to_apply"

    const-string v10, "close_how_to_apply"

    const-string v11, "vto"

    const-string v12, "click"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :cond_18
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyScrolledEvent;

    if-eqz v1, :cond_19

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;

    sget-object v9, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyScrolledEvent;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyScrolledEvent;->a:Ljava/lang/String;

    new-instance v11, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v11, v10}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;-><init>(Ljava/util/List;)V

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    sget-object v10, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;->SIMPLE:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewStateKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyScrolledEvent;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$LookId;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyScrolledEvent;->c:Ljava/lang/String;

    invoke-direct {v11, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$LookId;-><init>(Ljava/lang/String;)V

    new-array v0, v6, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v9, v0, v2

    aput-object v10, v0, v4

    aput-object v11, v0, v5

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v15, 0x20

    const/16 v16, 0x0

    const-string v9, "vto_how_to_apply"

    const-string v10, "scroll_how_to_apply"

    const-string v11, "vto"

    const-string v12, "scroll"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :cond_19
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyRecommendedSwipedEvent;

    if-eqz v1, :cond_1a

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;

    sget-object v9, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyRecommendedSwipedEvent;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyRecommendedSwipedEvent;->a:Ljava/lang/String;

    new-instance v11, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v11, v10}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;-><init>(Ljava/util/List;)V

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    sget-object v10, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;->SIMPLE:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewStateKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyRecommendedSwipedEvent;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$LookId;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyRecommendedSwipedEvent;->c:Ljava/lang/String;

    invoke-direct {v11, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$LookId;-><init>(Ljava/lang/String;)V

    new-array v0, v6, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v9, v0, v2

    aput-object v10, v0, v4

    aput-object v11, v0, v5

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v15, 0x20

    const/16 v16, 0x0

    const-string v9, "vto_how_to_apply"

    const-string v10, "swipe_recommended"

    const-string v11, "vto"

    const-string v12, "swipe"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :cond_1a
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyRecommendedClickedEvent;

    if-eqz v1, :cond_1b

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v9, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyRecommendedClickedEvent;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyRecommendedClickedEvent;->a:Ljava/util/List;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyRecommendedClickedEvent;->b:Ljava/lang/String;

    new-instance v11, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v11, v10}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;-><init>(Ljava/util/List;)V

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    sget-object v11, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;->SIMPLE:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewStateKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyRecommendedClickedEvent;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    invoke-static {v12}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$LookId;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyRecommendedClickedEvent;->d:Ljava/lang/String;

    invoke-direct {v12, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$LookId;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v9, v0, v2

    aput-object v10, v0, v4

    aput-object v11, v0, v5

    aput-object v12, v0, v6

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v15, 0x20

    const/16 v16, 0x0

    const-string v9, "vto_how_to_apply"

    const-string v10, "select_recommended_product"

    const-string v11, "vto"

    const-string v12, "click"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :cond_1b
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSelectAColorClickedEvent;

    if-eqz v1, :cond_1c

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v9, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSelectAColorClickedEvent;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSelectAColorClickedEvent;->a:Ljava/util/List;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSelectAColorClickedEvent;->b:Ljava/lang/String;

    new-instance v11, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v11, v10}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;-><init>(Ljava/util/List;)V

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSelectAColorClickedEvent;->d:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewStateKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSelectAColorClickedEvent;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-array v0, v6, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v9, v0, v2

    aput-object v10, v0, v4

    aput-object v11, v0, v5

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v15, 0x20

    const/16 v16, 0x0

    const-string v9, "vto"

    const-string v10, "select_tryOn_color"

    const-string v11, "vto"

    const-string v12, "click"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :cond_1c
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnColorSliderSwipedEvent;

    if-eqz v1, :cond_1d

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v6, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnColorSliderSwipedEvent;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnColorSliderSwipedEvent;->a:Ljava/util/List;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnColorSliderSwipedEvent;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-static {v9}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewStateKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnColorSliderSwipedEvent;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-array v0, v5, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v6, v0, v2

    aput-object v9, v0, v4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v15, 0x20

    const/16 v16, 0x0

    const-string v9, "vto"

    const-string v10, "swipe_tryOn_colors"

    const-string v11, "vto"

    const-string v12, "swipe"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :cond_1d
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnDualColorSliderOpenedEvent;

    if-eqz v1, :cond_1e

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v9, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnDualColorSliderOpenedEvent;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnDualColorSliderOpenedEvent;->a:Ljava/util/List;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnDualColorSliderOpenedEvent;->b:Ljava/lang/String;

    new-instance v11, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v11, v10}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VtoSkus;-><init>(Ljava/util/List;)V

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    sget-object v11, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;->DUAL:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewStateKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnDualColorSliderOpenedEvent;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-array v0, v6, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v9, v0, v2

    aput-object v10, v0, v4

    aput-object v11, v0, v5

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v15, 0x20

    const/16 v16, 0x0

    const-string v9, "vto"

    const-string v10, "compare_color_selection"

    const-string v11, "vto"

    const-string v12, "click"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_1

    :goto_4
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {v0, v5}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void

    :cond_1e
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method public final Nc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;)V
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSelectAColorClickedEvent;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Gc()Ljava/util/List;

    move-result-object v1

    iget-object v2, p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->U:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSelectAColorClickedEvent;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;)V

    return-void
.end method

.method public final Ob(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$NotifyMeBottomSheetEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$NotifyMeBottomSheetEvent;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$subscribeBackInStock$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$subscribeBackInStock$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v1, v1, v2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final P2(Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck;)V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->l0:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->A:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$handleShadeFinderScanResult$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$handleShadeFinderScanResult$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    invoke-static {v0, v2, v2, v1, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->A:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final P9()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->i0:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final Sb()V
    .locals 9

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->U:Lkotlinx/coroutines/flow/MutableStateFlow;

    if-eqz v1, :cond_0

    new-instance v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnStackingClickedEvent;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Gc()Ljava/util/List;

    move-result-object v4

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->a:Ljava/lang/String;

    sget-object v6, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnStackingClickedEvent;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v3}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;)V

    :cond_0
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;->STACKING:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    const/4 v4, 0x0

    if-eq v1, v3, :cond_3

    :cond_1
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;->STACKING:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-interface {v2, v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->d:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$initTryOnProductList$1;

    invoke-direct {v2, p0, v0, v4, v4}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$initTryOnProductList$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v1, v4, v4, v2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_2
    return-void

    :cond_3
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;->SIMPLE:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-interface {v2, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_4
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->S:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    invoke-interface {v0, v1, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_5
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->c0:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/perfectcorp/perfectlib/SkuInfo;

    invoke-interface {v0, v1, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_6
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->d0:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/perfectcorp/perfectlib/LookInfo;

    invoke-interface {v0, v1, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->a1()V

    return-void
.end method

.method public final T3()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnColorSliderSwipedEvent;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Gc()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    if-nez v2, :cond_1

    :cond_0
    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;->NONE:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    :cond_1
    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->U:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-direct {v0, v1, v2, v3}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnColorSliderSwipedEvent;-><init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;)V

    return-void
.end method

.method public final Ta()V
    .locals 5

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyRecommendedSwipedEvent;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->d:Ljava/lang/String;

    :goto_0
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    if-nez v1, :cond_2

    :cond_1
    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;->NONE:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    :cond_2
    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->V:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;

    if-eqz v3, :cond_3

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;->a:Ljava/lang/String;

    if-nez v3, :cond_4

    :cond_3
    const-string v3, ""

    :cond_4
    const/4 v4, 0x0

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyRecommendedSwipedEvent;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;)V

    return-void
.end method

.method public final U4(Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->m0:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;->b:Ljava/util/List;

    if-eqz v1, :cond_2

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/RecommendationUiModel;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/RecommendationUiModel;->a:Lcom/vuitton/android/presentation/model/common/ProductTinyUiModel;

    iget-object v4, v4, Lcom/vuitton/android/presentation/model/common/ProductTinyUiModel;->d:Ljava/lang/String;

    sget-object v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/RecommendationUiModel;

    if-eqz v3, :cond_2

    iget-object v1, v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/RecommendationUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    if-nez v1, :cond_6

    :cond_2
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;->b:Ljava/util/List;

    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/RecommendationUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/RecommendationUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_4
    move-object v1, v2

    :goto_1
    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/RecommendationUiModel;

    if-eqz v1, :cond_5

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/RecommendationUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    goto :goto_2

    :cond_5
    move-object v1, v2

    :cond_6
    :goto_2
    const/4 v0, 0x3

    if-eqz v1, :cond_7

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v3

    new-instance v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$initTryOnProductList$1;

    invoke-direct {v4, p0, v1, p1, v2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$initTryOnProductList$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, v2, v2, v4, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void

    :cond_7
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$updateTryOnProductListFromShadeFinder$1;

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$updateTryOnProductListFromShadeFinder$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;)V

    invoke-static {p1, v2, v2, v1, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final U6()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnLookSelectorClickedEvent;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Gc()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->d:Ljava/lang/String;

    :goto_0
    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnLookSelectorClickedEvent;-><init>(Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;)V

    return-void
.end method

.method public final X6(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Nc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;)V

    :cond_1
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    invoke-interface {v0, v1, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Ic()V

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;->NONE:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    if-eq p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->a1()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final Z9()V
    .locals 3

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->H:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->k0:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final a1()V
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->x:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$updateWishlistState$1$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$updateWishlistState$1$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v2, v1, v1, v3, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_2
    return-void
.end method

.method public final b()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->h0:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->j0:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public final f4(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Nc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;)V

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->S:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    invoke-interface {v0, v1, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Jc()V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->a1()V

    return-void
.end method

.method public final f9()V
    .locals 5

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyScrolledEvent;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->d:Ljava/lang/String;

    :goto_0
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    if-nez v1, :cond_2

    :cond_1
    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;->NONE:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    :cond_2
    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->V:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;

    if-eqz v3, :cond_3

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;->a:Ljava/lang/String;

    if-nez v3, :cond_4

    :cond_3
    const-string v3, ""

    :cond_4
    const/4 v4, 0x0

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyScrolledEvent;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;)V

    return-void
.end method

.method public final fb()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->F:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :cond_0
    return-void
.end method

.method public final g2()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    return-object p0
.end method

.method public final g3()V
    .locals 3

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$VtoScreen;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Gc()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Fc()Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$VtoScreen;-><init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;)V

    return-void
.end method

.method public final ga()V
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v1, :cond_2

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToWishlistClickedEvent;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Gc()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Hc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;->NONE:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    :cond_1
    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->U:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnAddToWishlistClickedEvent;-><init>(Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)V

    invoke-virtual {p0, v2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;)V

    :cond_2
    return-void
.end method

.method public final ia()V
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSharePhotoClickedEvent;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Gc()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Hc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Fc()Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    move-result-object v3

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->U:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSharePhotoClickedEvent;-><init>(Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)V

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;)V

    :cond_0
    return-void
.end method

.method public final ic(Ljava/lang/String;Z)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$SelectSkuMultipleProductBottomSheetEvent;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->U:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v2, p1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p2, v1, p1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$SelectSkuMultipleProductBottomSheetEvent;-><init>(ZLcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;)V

    return-void
.end method

.method public final n2(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnLookClickedEvent;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->d:Ljava/lang/String;

    :goto_0
    iget-object v2, p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnLookClickedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;)V

    :cond_1
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->V:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;

    invoke-interface {v0, v1, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_2
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->a0:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/perfectcorp/perfectlib/LookInfo;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->W:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_6

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/perfectcorp/perfectlib/LookInfo;

    invoke-virtual {v5}, Lcom/perfectcorp/perfectlib/LookInfo;->getGuid()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;

    if-eqz v6, :cond_4

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;->b:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object v6, v3

    :goto_1
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_5
    move-object v4, v3

    :goto_2
    check-cast v4, Lcom/perfectcorp/perfectlib/LookInfo;

    goto :goto_3

    :cond_6
    move-object v4, v3

    :goto_3
    invoke-interface {p1, v1, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void
.end method

.method public final onCleared()V
    .locals 2

    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->e0:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyPictureUiModel;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyPictureUiModel;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->D:Lcom/perfectcorp/perfectlib/SkuHandler;

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->E:Lcom/perfectcorp/perfectlib/LookHandler;

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->F:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->x:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    return-void
.end method

.method public final r3()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnCloseVtoScreenClickedEvent;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Gc()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Fc()Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    move-result-object v2

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->U:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-direct {v0, v1, v2, v3}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnCloseVtoScreenClickedEvent;-><init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;)V

    return-void
.end method

.method public final r6()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSnackbarRedirectToCartClickedEvent;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Gc()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Fc()Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    move-result-object v2

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->U:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-direct {v0, v1, v2, v3}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnSnackbarRedirectToCartClickedEvent;-><init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;)V

    return-void
.end method

.method public final rc()V
    .locals 5

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$VtoHowToApplyScreen;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->d:Ljava/lang/String;

    :goto_0
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    if-nez v1, :cond_2

    :cond_1
    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;->NONE:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    :cond_2
    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->V:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;

    if-eqz v3, :cond_3

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;->a:Ljava/lang/String;

    if-nez v3, :cond_4

    :cond_3
    const-string v3, ""

    :cond_4
    const/4 v4, 0x0

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$VtoHowToApplyScreen;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;)V

    return-void
.end method

.method public final s5(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;)Lcom/perfectcorp/perfectlib/PerfectEffect;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v1, 0x2

    if-eq p1, v1, :cond_7

    const/4 v2, 0x3

    if-eq p1, v2, :cond_6

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eq p1, v3, :cond_1

    return-object v4

    :cond_1
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->x:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->r:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/VirtualTryOnUiModel;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/VirtualTryOnUiModel;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    if-eqz p0, :cond_5

    sget-object p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModelKt$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    if-eq p0, v0, :cond_4

    if-eq p0, v1, :cond_3

    if-eq p0, v2, :cond_2

    return-object v4

    :cond_2
    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectEffect;->LIP_LINER:Lcom/perfectcorp/perfectlib/PerfectEffect;

    return-object p0

    :cond_3
    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectEffect;->EYESHADOW:Lcom/perfectcorp/perfectlib/PerfectEffect;

    return-object p0

    :cond_4
    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectEffect;->LIPSTICK:Lcom/perfectcorp/perfectlib/PerfectEffect;

    return-object p0

    :cond_5
    return-object v4

    :cond_6
    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectEffect;->LIP_LINER:Lcom/perfectcorp/perfectlib/PerfectEffect;

    return-object p0

    :cond_7
    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectEffect;->EYESHADOW:Lcom/perfectcorp/perfectlib/PerfectEffect;

    return-object p0

    :cond_8
    sget-object p0, Lcom/perfectcorp/perfectlib/PerfectEffect;->LIPSTICK:Lcom/perfectcorp/perfectlib/PerfectEffect;

    return-object p0
.end method

.method public final ta(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet;Z)V
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->j0:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet;

    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet$Tutorial;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->U:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    if-eqz v2, :cond_5

    new-instance p2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyClosedEvent;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->d:Ljava/lang/String;

    :goto_0
    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    if-nez v2, :cond_2

    :cond_1
    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;->NONE:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    :cond_2
    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->V:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;

    if-eqz v4, :cond_3

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;->a:Ljava/lang/String;

    if-nez v4, :cond_4

    :cond_3
    const-string v4, ""

    :cond_4
    const/4 v5, 0x0

    invoke-direct {p2, v1, v2, v4, v5}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyClosedEvent;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;)V

    goto :goto_1

    :cond_5
    instance-of v1, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet$AddToCartMultiple;

    if-eqz v1, :cond_6

    if-eqz p2, :cond_6

    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz p2, :cond_6

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$CloseMultipleProductBottomSheetEvent;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    invoke-virtual {p0, p2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Hc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$CloseMultipleProductBottomSheetEvent;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;)V

    :cond_6
    :goto_1
    instance-of p2, p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet$BackInStock;

    if-eqz p2, :cond_7

    new-instance p2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OpenAlertMultipleProductBottomSheetEvent;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    move-object v2, p1

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet$BackInStock;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet$BackInStock;->a:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;->a:Ljava/lang/String;

    new-instance v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v3, v2}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p2, v1, v2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OpenAlertMultipleProductBottomSheetEvent;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;Ljava/util/List;)V

    invoke-virtual {p0, p2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;)V

    :cond_7
    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final u9(Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyRecommendedClickedEvent;

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v1, p1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->d:Ljava/lang/String;

    :goto_0
    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    move-object v3, p1

    goto :goto_3

    :cond_2
    :goto_2
    sget-object p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;->NONE:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    goto :goto_1

    :goto_3
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->V:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;->a:Ljava/lang/String;

    if-nez p1, :cond_3

    goto :goto_5

    :cond_3
    :goto_4
    move-object v4, p1

    goto :goto_6

    :cond_4
    :goto_5
    const-string p1, ""

    goto :goto_4

    :goto_6
    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnHowToApplyRecommendedClickedEvent;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;)V

    return-void
.end method

.method public final v3()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$setHasDoneShadeFinderIntro$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$setHasDoneShadeFinderIntro$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final y6(Ljava/util/List;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->U:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;->SIMPLE:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Hc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->b:Ljava/lang/String;

    new-instance v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$AddToCartMultipleProductBottomSheetEvent;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    new-instance v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v5, v2}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$AddToCartMultipleProductBottomSheetEvent;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;Ljava/util/List;)V

    invoke-virtual {p0, v3}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$addToCart$2;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final yb()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->o0:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final z4()V
    .locals 5

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnDualColorSliderOpenedEvent;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Gc()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v3, :cond_0

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->d:Ljava/lang/String;

    :goto_0
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    if-nez v2, :cond_2

    :cond_1
    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;->NONE:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    :cond_2
    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel$OnDualColorSliderOpenedEvent;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/BeautyVtoTrackingUiModel;)V

    return-void
.end method

.method public final z6()Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes;
    .locals 1

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->y:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->s:Lcom/vuitton/android/domain/usecase/pdp/vto/HasDoneShadeFinderIntroUseCase;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/pdp/vto/HasDoneShadeFinderIntroUseCase;->a:Lcom/vuitton/android/domain/repository/BeautyRepository;

    invoke-interface {p0}, Lcom/vuitton/android/domain/repository/BeautyRepository;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes$ShadeFinderScan;->INSTANCE:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes$ShadeFinderScan;

    return-object p0

    :cond_0
    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes$ShadeFinderIntro;->INSTANCE:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes$ShadeFinderIntro;

    return-object p0

    :cond_1
    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes$Vto;->INSTANCE:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes$Vto;

    return-object p0
.end method
