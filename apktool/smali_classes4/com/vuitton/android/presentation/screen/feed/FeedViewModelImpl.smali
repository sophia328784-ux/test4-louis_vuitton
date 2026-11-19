.class public final Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;
.implements Lcom/vuitton/android/presentation/contact/ContactUsDelegate;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0091\u0002\u0008\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0012\u001a\u00020\u0003\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020\'\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u0010,\u001a\u00020+\u0012\u0006\u0010.\u001a\u00020-\u0012\u0006\u00100\u001a\u00020/\u0012\u0006\u00102\u001a\u000201\u0012\u0006\u00104\u001a\u000203\u0012\u0006\u00106\u001a\u000205\u0012\u0006\u00108\u001a\u000207\u0012\u0006\u0010:\u001a\u000209\u0012\u0006\u0010<\u001a\u00020;\u0012\u0006\u0010>\u001a\u00020=\u0012\u0006\u0010@\u001a\u00020?\u0012\u0006\u0010B\u001a\u00020A\u0012\u0006\u0010D\u001a\u00020C\u00a2\u0006\u0004\u0008E\u0010F\u00a8\u0006G"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;",
        "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;",
        "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;",
        "requireCachedAppConfigUseCase",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/android/core/events/LVEventSender;",
        "eventSender",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/domain/monitoring/Monitor;",
        "monitor",
        "Landroid/app/Application;",
        "application",
        "Lcom/vuitton/android/presentation/screen/feed/CalendarManager;",
        "calendarManager",
        "contactUsDelegate",
        "Lcom/vuitton/android/domain/service/authentication/UserSessionService;",
        "userSessionService",
        "Lcom/vuitton/android/presentation/notification/NotificationBuilder;",
        "notificationBuilder",
        "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;",
        "getProfileUseCase",
        "Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;",
        "getLiveVideoUseCase",
        "Lcom/vuitton/android/domain/usecase/feed/GetFeedForYouUseCase;",
        "getFeedForYouUseCase",
        "Lcom/vuitton/android/domain/usecase/audioguide/GetAccessDataUseCase;",
        "getAccessDataUseCase",
        "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYClickUseCase;",
        "reportDYClickUseCase",
        "Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase;",
        "getFeedDiscoverUseCase",
        "Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;",
        "getOngoingOrdersUseCase",
        "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSlotClickUseCase;",
        "reportDYSlotClickUseCase",
        "Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;",
        "getHotContentUseCase",
        "Lcom/vuitton/android/domain/usecase/hotcontent/HasCachedHotContentUseCase;",
        "hasCachedHotContentUseCase",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/products/GetProductShortListUseCase;",
        "getProductShortListUseCase",
        "Lcom/vuitton/android/domain/usecase/account/CheckEligibilityForPassUseCase;",
        "checkEligibilityForPassUseCase",
        "Lcom/vuitton/android/domain/usecase/dynamicyield/IsDynamicYieldActivatedUseCase;",
        "isDynamicYieldActivatedUseCase",
        "Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase;",
        "getDYRecommendedProductsUseCase",
        "Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;",
        "getAllAccessibilityValuesUseCase",
        "Lcom/vuitton/android/domain/usecase/aicompanion/HasAITooltipBeenDisplayedUseCase;",
        "hasAITooltipBeenDisplayedUseCase",
        "Lcom/vuitton/android/domain/usecase/applink/GetContributionLinkToLaunchUseCase;",
        "getContributionLinkToLaunchUseCase",
        "Lcom/vuitton/android/domain/usecase/products/ListenToLastViewedProductSkuListUseCase;",
        "listenToLastViewedProductSkuListUseCase",
        "Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;",
        "getConsentForCustomisationTrackerUseCase",
        "Lcom/vuitton/android/domain/usecase/products/RemoveSkuFromLastViewedProductListUseCase;",
        "removeSkuFromLastViewedProductListUseCase",
        "Lcom/vuitton/android/domain/usecase/account/order/GetOrdersHistoryWithMostExpensiveProductUseCase;",
        "getOrdersHistoryWithMostExpensiveProductUseCase",
        "Lcom/vuitton/android/domain/usecase/products/GetRelatedProductsUseCase;",
        "getRelatedProductsUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Landroid/app/Application;Lcom/vuitton/android/presentation/screen/feed/CalendarManager;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;Lcom/vuitton/android/domain/usecase/feed/GetFeedForYouUseCase;Lcom/vuitton/android/domain/usecase/audioguide/GetAccessDataUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYClickUseCase;Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase;Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSlotClickUseCase;Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;Lcom/vuitton/android/domain/usecase/hotcontent/HasCachedHotContentUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/products/GetProductShortListUseCase;Lcom/vuitton/android/domain/usecase/account/CheckEligibilityForPassUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/IsDynamicYieldActivatedUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;Lcom/vuitton/android/domain/usecase/aicompanion/HasAITooltipBeenDisplayedUseCase;Lcom/vuitton/android/domain/usecase/applink/GetContributionLinkToLaunchUseCase;Lcom/vuitton/android/domain/usecase/products/ListenToLastViewedProductSkuListUseCase;Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;Lcom/vuitton/android/domain/usecase/products/RemoveSkuFromLastViewedProductListUseCase;Lcom/vuitton/android/domain/usecase/account/order/GetOrdersHistoryWithMostExpensiveProductUseCase;Lcom/vuitton/android/domain/usecase/products/GetRelatedProductsUseCase;)V",
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
.field public final A:Lcom/vuitton/android/domain/usecase/products/ListenToLastViewedProductSkuListUseCase;

.field public final B:Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;

.field public final C:Lcom/vuitton/android/domain/usecase/products/RemoveSkuFromLastViewedProductListUseCase;

.field public final D:Lcom/vuitton/android/domain/usecase/account/order/GetOrdersHistoryWithMostExpensiveProductUseCase;

.field public final E:Lcom/vuitton/android/domain/usecase/products/GetRelatedProductsUseCase;

.field public final F:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

.field public final G:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public H:Lcom/vuitton/foundation/model/domain/model/common/Coordinates;

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

.field public final U:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final V:Lkotlinx/coroutines/flow/Flow;

.field public final W:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final X:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final Y:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final Z:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final a:Lcom/vuitton/android/core/events/LVEventSender;

.field public final a0:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final b:Lcom/vuitton/foundation/logger/Logger;

.field public b0:Lkotlinx/coroutines/Job;

.field public final c:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final c0:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final d:Landroid/app/Application;

.field public final d0:Ljava/util/LinkedHashMap;

.field public final e:Lcom/vuitton/android/presentation/screen/feed/CalendarManager;

.field public final e0:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

.field public final f0:Lkotlinx/coroutines/flow/Flow;

.field public final g:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

.field public final g0:Lkotlinx/coroutines/flow/StateFlow;

.field public final h:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

.field public final i:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

.field public final j:Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;

.field public final k:Lcom/vuitton/android/domain/usecase/feed/GetFeedForYouUseCase;

.field public final l:Lcom/vuitton/android/domain/usecase/audioguide/GetAccessDataUseCase;

.field public final m:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYClickUseCase;

.field public final n:Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase;

.field public final o:Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;

.field public final p:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSlotClickUseCase;

.field public final q:Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;

.field public final r:Lcom/vuitton/android/domain/usecase/hotcontent/HasCachedHotContentUseCase;

.field public final s:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final t:Lcom/vuitton/android/domain/usecase/products/GetProductShortListUseCase;

.field public final u:Lcom/vuitton/android/domain/usecase/account/CheckEligibilityForPassUseCase;

.field public final v:Lcom/vuitton/android/domain/usecase/dynamicyield/IsDynamicYieldActivatedUseCase;

.field public final w:Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase;

.field public final x:Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;

.field public final y:Lcom/vuitton/android/domain/usecase/aicompanion/HasAITooltipBeenDisplayedUseCase;

.field public final z:Lcom/vuitton/android/domain/usecase/applink/GetContributionLinkToLaunchUseCase;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Landroid/app/Application;Lcom/vuitton/android/presentation/screen/feed/CalendarManager;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;Lcom/vuitton/android/domain/usecase/feed/GetFeedForYouUseCase;Lcom/vuitton/android/domain/usecase/audioguide/GetAccessDataUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYClickUseCase;Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase;Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSlotClickUseCase;Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;Lcom/vuitton/android/domain/usecase/hotcontent/HasCachedHotContentUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/products/GetProductShortListUseCase;Lcom/vuitton/android/domain/usecase/account/CheckEligibilityForPassUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/IsDynamicYieldActivatedUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;Lcom/vuitton/android/domain/usecase/aicompanion/HasAITooltipBeenDisplayedUseCase;Lcom/vuitton/android/domain/usecase/applink/GetContributionLinkToLaunchUseCase;Lcom/vuitton/android/domain/usecase/products/ListenToLastViewedProductSkuListUseCase;Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;Lcom/vuitton/android/domain/usecase/products/RemoveSkuFromLastViewedProductListUseCase;Lcom/vuitton/android/domain/usecase/account/order/GetOrdersHistoryWithMostExpensiveProductUseCase;Lcom/vuitton/android/domain/usecase/products/GetRelatedProductsUseCase;)V
    .locals 29
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

    invoke-virtual/range {p29 .. p29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p30 .. p30}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p31 .. p31}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p32 .. p32}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p33 .. p33}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModel;-><init>()V

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->a:Lcom/vuitton/android/core/events/LVEventSender;

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->d:Landroid/app/Application;

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->e:Lcom/vuitton/android/presentation/screen/feed/CalendarManager;

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    move-object/from16 v2, p9

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->g:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-object/from16 v2, p10

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->h:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-object/from16 v2, p11

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    move-object/from16 v2, p12

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/feed/GetFeedForYouUseCase;

    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/audioguide/GetAccessDataUseCase;

    move-object/from16 v2, p15

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->m:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYClickUseCase;

    move-object/from16 v2, p16

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->n:Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase;

    move-object/from16 v2, p17

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->o:Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;

    move-object/from16 v2, p18

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->p:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSlotClickUseCase;

    move-object/from16 v2, p19

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->q:Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;

    move-object/from16 v2, p20

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->r:Lcom/vuitton/android/domain/usecase/hotcontent/HasCachedHotContentUseCase;

    move-object/from16 v2, p21

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->s:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-object/from16 v2, p22

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->t:Lcom/vuitton/android/domain/usecase/products/GetProductShortListUseCase;

    move-object/from16 v2, p23

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->u:Lcom/vuitton/android/domain/usecase/account/CheckEligibilityForPassUseCase;

    move-object/from16 v2, p24

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->v:Lcom/vuitton/android/domain/usecase/dynamicyield/IsDynamicYieldActivatedUseCase;

    move-object/from16 v2, p25

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->w:Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase;

    move-object/from16 v2, p26

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->x:Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;

    move-object/from16 v2, p27

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->y:Lcom/vuitton/android/domain/usecase/aicompanion/HasAITooltipBeenDisplayedUseCase;

    move-object/from16 v2, p28

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->z:Lcom/vuitton/android/domain/usecase/applink/GetContributionLinkToLaunchUseCase;

    move-object/from16 v2, p29

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->A:Lcom/vuitton/android/domain/usecase/products/ListenToLastViewedProductSkuListUseCase;

    move-object/from16 v2, p30

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->B:Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;

    move-object/from16 v2, p31

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->C:Lcom/vuitton/android/domain/usecase/products/RemoveSkuFromLastViewedProductListUseCase;

    move-object/from16 v2, p32

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->D:Lcom/vuitton/android/domain/usecase/account/order/GetOrdersHistoryWithMostExpensiveProductUseCase;

    move-object/from16 v2, p33

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->E:Lcom/vuitton/android/domain/usecase/products/GetRelatedProductsUseCase;

    invoke-virtual/range {p1 .. p1}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->F:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-object/from16 v3, p2

    iget-object v3, v3, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v3}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v3

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->G:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->H:Lcom/vuitton/foundation/model/domain/model/config/FeedConfig;

    iget-object v3, v2, Lcom/vuitton/foundation/model/domain/model/config/FeedConfig;->a:Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;

    invoke-static {v3}, Lcom/vuitton/android/presentation/model/common/mapper/FeatureThemeMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;)Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->I:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v4, 0x0

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->J:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->K:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v8

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->L:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9}, Ljava/lang/String;-><init>()V

    invoke-static {v9}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v9

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->M:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v10, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Loading;->a:Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Loading;

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v11

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->N:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v10

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->O:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v12, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$special$$inlined$map$1;

    invoke-direct {v12, v10}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v10

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->P:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v13

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Q:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v14, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;

    const/16 v15, 0x1ff

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 p9, v14

    move/from16 p19, v15

    move-object/from16 p20, v16

    move/from16 p10, v17

    move/from16 p11, v18

    move/from16 p12, v19

    move/from16 p13, v20

    move/from16 p14, v21

    move/from16 p15, v22

    move/from16 p16, v23

    move/from16 p17, v24

    move/from16 p18, v25

    invoke-direct/range {p9 .. p20}, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;-><init>(ZZZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v14}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v14

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v15, Lcom/vuitton/android/presentation/model/common/A11ySettings;

    const/16 v16, 0x7

    const/16 v17, 0x0

    move-object/from16 p1, v15

    move/from16 p5, v16

    move-object/from16 p6, v17

    move/from16 p2, v18

    move/from16 p3, v19

    move/from16 p4, v20

    invoke-direct/range {p1 .. p6}, Lcom/vuitton/android/presentation/model/common/A11ySettings;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v15}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v15

    iput-object v15, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->S:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->T:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x0

    move-object/from16 p2, v3

    const/4 v3, 0x7

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->U:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v5}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->V:Lkotlinx/coroutines/flow/Flow;

    new-instance v4, Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;

    const/16 v5, 0xfff

    const/16 v16, 0x0

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

    const/16 v28, 0x0

    move-object/from16 p9, v4

    move/from16 p22, v5

    move-object/from16 p23, v16

    move-object/from16 p10, v17

    move-object/from16 p11, v18

    move-object/from16 p12, v19

    move-object/from16 p13, v20

    move-object/from16 p14, v21

    move-object/from16 p15, v22

    move-object/from16 p16, v23

    move-object/from16 p17, v24

    move-object/from16 p18, v25

    move-object/from16 p19, v26

    move-object/from16 p20, v27

    move-object/from16 p21, v28

    invoke-direct/range {p9 .. p23}, Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/time/LocalDateTime;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->W:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/16 p1, 0x0

    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->X:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Z:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v16, Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState$Unresolved;->a:Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState$Unresolved;

    move-object/from16 p7, v1

    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->a0:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p9, v3

    new-instance v3, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$special$$inlined$map$2;

    invoke-direct {v3, v1}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->c0:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->d0:Ljava/util/LinkedHashMap;

    move-object/from16 p10, v3

    move-object/from16 p11, v4

    const/4 v1, 0x0

    const/4 v3, 0x7

    const/4 v6, 0x0

    invoke-static {v6, v3, v1}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->e0:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v4}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->f0:Lkotlinx/coroutines/flow/Flow;

    invoke-interface/range {p8 .. p8}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->i()Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    const/16 v3, 0x12

    new-array v3, v3, [Lkotlinx/coroutines/flow/Flow;

    aput-object p2, v3, v6

    const/4 v4, 0x1

    aput-object p4, v3, v4

    const/4 v6, 0x2

    aput-object v11, v3, v6

    const/4 v6, 0x3

    aput-object v12, v3, v6

    const/4 v11, 0x4

    aput-object v10, v3, v11

    const/4 v10, 0x5

    aput-object v13, v3, v10

    const/4 v10, 0x6

    aput-object v14, v3, v10

    const/4 v10, 0x7

    aput-object v15, v3, v10

    const/16 v10, 0x8

    aput-object v1, v3, v10

    const/16 v1, 0x9

    aput-object v5, v3, v1

    const/16 v1, 0xa

    aput-object p11, v3, v1

    const/16 v1, 0xb

    aput-object p3, v3, v1

    const/16 v1, 0xc

    aput-object v7, v3, v1

    const/16 v1, 0xd

    aput-object v8, v3, v1

    const/16 v1, 0xe

    aput-object v9, v3, v1

    const/16 v1, 0xf

    aput-object p7, v3, v1

    const/16 v1, 0x10

    aput-object p9, v3, v1

    const/16 v1, 0x11

    aput-object p10, v3, v1

    new-instance v1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$special$$inlined$combine$1;

    invoke-direct {v1, v3}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v3

    sget-object v5, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance v7, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/config/FeedConfig;->a:Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;

    invoke-static {v2}, Lcom/vuitton/android/presentation/model/common/mapper/FeatureThemeMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;)Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    move-result-object v2

    new-instance v8, Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;

    const/16 v10, 0xfff

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 p6, v8

    move/from16 p19, v10

    move-object/from16 p20, v11

    move-object/from16 p7, v12

    move-object/from16 p8, v13

    move-object/from16 p9, v14

    move-object/from16 p10, v15

    move-object/from16 p11, v16

    move-object/from16 p12, v17

    move-object/from16 p13, v18

    move-object/from16 p14, v19

    move-object/from16 p15, v20

    move-object/from16 p16, v21

    move-object/from16 p17, v22

    move-object/from16 p18, v23

    invoke-direct/range {p6 .. p20}, Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/time/LocalDateTime;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v10, 0x3f7fe

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v26, 0x0

    move-object/from16 p7, v2

    move-object/from16 p6, v7

    move-object/from16 p18, v8

    move/from16 p25, v10

    move-object/from16 p26, v11

    move-object/from16 p8, v12

    move-object/from16 p9, v13

    move-object/from16 p10, v14

    move-object/from16 p11, v15

    move/from16 p12, v16

    move-object/from16 p13, v17

    move-object/from16 p14, v18

    move-object/from16 p15, v19

    move/from16 p16, v20

    move-object/from16 p17, v21

    move/from16 p19, v22

    move-object/from16 p20, v23

    move-object/from16 p21, v24

    move-object/from16 p22, v25

    move/from16 p23, v26

    move-object/from16 p24, v27

    invoke-direct/range {p6 .. p26}, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;-><init>(Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;Ljava/util/List;ZLcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;Lcom/vuitton/android/presentation/model/common/A11ySettings;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;ZLcom/vuitton/android/presentation/screen/feed/FeedBottomSheet;Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, p6

    invoke-static {v1, v3, v5, v2}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->g0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$initFeedTab$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$initFeedTab$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v3, v3, v2, v6}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;

    invoke-direct {v2, v0, v3}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getFeatureFlags$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v3, v3, v2, v6}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_0
    invoke-interface {v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->G:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v5, Ljava/time/format/FormatStyle;->FULL:Ljava/time/format/FormatStyle;

    invoke-static {v3, v2, v5}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->c(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/time/LocalDateTime;Ljava/time/format/FormatStyle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v8}, Lkotlin/text/CharsKt;->d(CLjava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_1
    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    invoke-interface {v9, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$observeLoginState$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$observeLoginState$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v3, v3, v2, v6}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$1;

    invoke-direct {v2, v0, v3}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v3, v3, v2, v6}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$checkIfContributionLinkToOpenExist$1;

    invoke-direct {v2, v0, v3}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$checkIfContributionLinkToOpenExist$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v3, v3, v2, v6}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Z3()V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$listenToAppEvents$1;

    invoke-direct {v2, v0, v3}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$listenToAppEvents$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v3, v3, v2, v6}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$2;

    invoke-direct {v2, v0, v3}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$2;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v3, v3, v2, v6}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$3;

    invoke-direct {v2, v0, v3}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$3;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v3, v3, v2, v6}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final Ac(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getUserName$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getUserName$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getUserName$1;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getUserName$1;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getUserName$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getUserName$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getUserName$1;->f:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getUserName$1;->h:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getUserName$1;->d:I

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getUserName$1;->c:Ljava/lang/Object;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getUserName$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :cond_2
    iget v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getUserName$1;->e:I

    iget v7, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getUserName$1;->d:I

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getUserName$1;->c:Ljava/lang/Object;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getUserName$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v10, v7

    move v7, v2

    move v2, v10

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->K:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->L:Lkotlinx/coroutines/flow/MutableStateFlow;

    if-nez p1, :cond_5

    :cond_4
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    invoke-interface {v2, p0, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_5
    move p1, v3

    :goto_1
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getUserName$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getUserName$1;->c:Ljava/lang/Object;

    iput p1, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getUserName$1;->d:I

    iput v3, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getUserName$1;->e:I

    iput v5, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getUserName$1;->h:I

    invoke-virtual {v8, v0}, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_6

    goto :goto_3

    :cond_6
    move-object v9, v2

    move v2, p1

    move-object p1, v8

    move-object v8, v7

    move v7, v3

    :goto_2
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getUserName$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getUserName$1;->c:Ljava/lang/Object;

    iput v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getUserName$1;->d:I

    iput v7, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getUserName$1;->e:I

    iput v4, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$getUserName$1;->h:I

    invoke-interface {p1, v0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    :goto_3
    return-object v1

    :cond_7
    move-object v7, v8

    move-object v8, v9

    :goto_4
    sget-object v9, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v9, p1, Lkotlin/Result$Failure;

    if-nez v9, :cond_8

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->s:Ljava/lang/String;

    :cond_8
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v9

    if-nez v9, :cond_9

    goto :goto_5

    :cond_9
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p1, v6

    :goto_5
    check-cast p1, Ljava/lang/String;

    invoke-interface {v8, v7, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_a
    move p1, v2

    move-object v2, v8

    goto :goto_1
.end method

.method public static final Bc(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/coroutines/intrinsics/CoroutineSingletons;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->A:Lcom/vuitton/android/domain/usecase/products/ListenToLastViewedProductSkuListUseCase;

    iget-object p2, p2, Lcom/vuitton/android/domain/usecase/products/ListenToLastViewedProductSkuListUseCase;->a:Lcom/vuitton/android/domain/repository/LastViewedProductRepository;

    invoke-interface {p2}, Lcom/vuitton/android/domain/repository/LastViewedProductRepository;->b()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    new-instance v2, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;

    invoke-direct {v2, p0, p1, v4}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v3, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$1;->d:I

    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/flow/FlowKt;->g(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const-string p0, "SharedFlow never completes, this call should never return."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4
.end method

.method public static final Cc(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;)V
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->K:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->b0:Lkotlinx/coroutines/Job;

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

    new-instance v1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadMostExpensiveSku$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadMostExpensiveSku$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x3

    invoke-static {v0, v2, v2, v1, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->b0:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final Dc(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;)V
    .locals 3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->a0:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;->c:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-result-object v0

    :cond_1
    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState;

    if-eqz v1, :cond_5

    invoke-static {v1}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    instance-of v2, p1, Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState$Loaded;

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState$Loaded;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState$Loaded;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    instance-of v2, p1, Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState$Loading;

    if-eqz v2, :cond_4

    move-object v2, p1

    check-cast v2, Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState$Loading;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState$Loading;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState$Loading;

    invoke-direct {p1, v1, v0}, Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState$Loading;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;)V

    goto :goto_2

    :cond_5
    :goto_1
    sget-object p1, Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState$NoSku;->a:Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState$NoSku;

    :goto_2
    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static Hc(Ljava/lang/String;Ljava/util/List;)Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;->a:Ljava/lang/String;

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    :cond_3
    check-cast v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;

    :cond_4
    return-object v0
.end method

.method public static Mc(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;I)V
    .locals 10

    and-int/lit8 v0, p5, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object v8, p3

    :goto_0
    and-int/lit8 p3, p5, 0x10

    if-eqz p3, :cond_1

    move-object p4, v1

    :cond_1
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->O:Lkotlinx/coroutines/flow/MutableStateFlow;

    :goto_1
    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p3

    move-object p5, p3

    check-cast p5, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;

    instance-of v0, p5, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;

    if-eqz v0, :cond_b

    check-cast p5, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;

    iget-object p5, p5, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;->a:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

    iget-object p5, p5, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;->a:Ljava/util/List;

    check-cast p5, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p5, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_2
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    instance-of v3, v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;

    const/4 v9, 0x0

    if-eqz v3, :cond_5

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;

    iget-object v4, v3, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;->b:Lcom/vuitton/android/presentation/common/editorial/models/HeaderUiModel;

    move-object v5, v3

    iget-object v3, v5, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;->a:Ljava/lang/String;

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz p4, :cond_4

    if-eqz v4, :cond_2

    invoke-static {v4, p4}, Lcom/vuitton/android/presentation/common/editorial/models/HeaderUiModel;->a(Lcom/vuitton/android/presentation/common/editorial/models/HeaderUiModel;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;)Lcom/vuitton/android/presentation/common/editorial/models/HeaderUiModel;

    move-result-object v2

    goto :goto_3

    :cond_2
    move-object v2, v1

    :goto_3
    if-nez v2, :cond_3

    goto :goto_4

    :cond_3
    move-object v4, v2

    :cond_4
    :goto_4
    move-object v2, v5

    iget-object v5, v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;->c:Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    iget-object v6, v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;->d:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;

    move-object v7, p2

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/HeaderUiModel;Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)V

    goto :goto_7

    :cond_5
    move-object v7, p2

    instance-of p2, v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;

    if-eqz p2, :cond_9

    move-object p2, v2

    check-cast p2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;

    iget-object v3, p2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;->b:Lcom/vuitton/android/presentation/common/editorial/models/HeaderUiModel;

    move-object v4, v3

    iget-object v3, p2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;->a:Ljava/lang/String;

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    if-eqz p4, :cond_8

    if-eqz v4, :cond_6

    invoke-static {v4, p4}, Lcom/vuitton/android/presentation/common/editorial/models/HeaderUiModel;->a(Lcom/vuitton/android/presentation/common/editorial/models/HeaderUiModel;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;)Lcom/vuitton/android/presentation/common/editorial/models/HeaderUiModel;

    move-result-object v2

    goto :goto_5

    :cond_6
    move-object v2, v1

    :goto_5
    if-nez v2, :cond_7

    goto :goto_6

    :cond_7
    move-object v4, v2

    :cond_8
    :goto_6
    iget-object v5, p2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;->c:Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    iget-object v6, p2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;->d:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/HeaderUiModel;Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)V

    :cond_9
    :goto_7
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p2, v7

    goto :goto_2

    :cond_a
    move-object v7, p2

    new-instance p5, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;

    new-instance p2, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

    invoke-direct {p2, v0}, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;-><init>(Ljava/util/List;)V

    invoke-direct {p5, p2}, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;)V

    goto :goto_8

    :cond_b
    move-object v7, p2

    :goto_8
    invoke-interface {p0, p3, p5}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    return-void

    :cond_c
    move-object p2, v7

    goto/16 :goto_1
.end method

.method public static final yc(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;)Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;
    .locals 12

    iget-object p0, p1, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;->a:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    instance-of v1, v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;

    iget-object v2, v1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;->g:Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel;

    instance-of v3, v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Live;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Live;

    iget-object v3, v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Live;->a:Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->a:Ljava/lang/String;

    sget-object v4, Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;->c:Lcom/vuitton/android/presentation/model/common/VideoIdUiModel$Companion;

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p3, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->b:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;

    sget-object v3, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;->LIVE_UPCOMING:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;

    if-ne v0, v3, :cond_0

    iget-object v0, p3, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->c:Ljava/time/Instant;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    iget-object v0, v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Live;->b:Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Live;

    invoke-direct {v11, p3, v0, v3}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Live;-><init>(Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;Z)V

    iget-object v5, v1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;->a:Ljava/lang/String;

    iget-object v6, v1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;->b:Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;

    iget-object v7, v1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;->c:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    iget-object v8, v1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;->d:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iget-object v9, v1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;->e:Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;

    iget-object v10, v1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;->f:Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;

    invoke-direct/range {v4 .. v11}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;Lcom/vuitton/android/presentation/common/editorial/models/TargetingUiModel;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel;)V

    move-object v0, v4

    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static final zc(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->a0:Lkotlinx/coroutines/flow/MutableStateFlow;

    instance-of v1, p3, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchRelatedProducts$1;

    if-eqz v1, :cond_0

    move-object v1, p3

    check-cast v1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchRelatedProducts$1;

    iget v2, v1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchRelatedProducts$1;->f:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchRelatedProducts$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchRelatedProducts$1;

    invoke-direct {v1, p0, p3}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchRelatedProducts$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchRelatedProducts$1;->d:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchRelatedProducts$1;->f:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p2, v1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchRelatedProducts$1;->c:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iget-object p1, v1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchRelatedProducts$1;->b:Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    iget-object p3, p3, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->E:Lcom/vuitton/android/domain/usecase/products/GetRelatedProductsUseCase;

    iput-object p1, v1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchRelatedProducts$1;->b:Ljava/lang/String;

    iput-object p2, v1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchRelatedProducts$1;->c:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iput v4, v1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchRelatedProducts$1;->f:I

    invoke-virtual {p3, p1, v1}, Lcom/vuitton/android/domain/usecase/products/GetRelatedProductsUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v2, :cond_3

    return-object v2

    :cond_3
    :goto_1
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v1, p3, Lkotlin/Result$Failure;

    if-nez v1, :cond_5

    move-object v1, p3

    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;

    invoke-static {v3}, Lcom/vuitton/android/presentation/model/common/mapper/ProductTinyMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;)Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v1, Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState$Loaded;

    invoke-direct {v1, p1, p2, v2}, Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState$Loaded;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_5
    invoke-static {p3}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState$NoSku;->a:Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState$NoSku;

    invoke-interface {v0, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final B(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2, p3}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->B(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V

    return-void
.end method

.method public final B1()V
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/screen/feed/FeedNotification$NotificationAlreadyEnabled;->a:Lcom/vuitton/android/presentation/screen/feed/FeedNotification$NotificationAlreadyEnabled;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Lc(Lcom/vuitton/android/presentation/screen/feed/FeedNotification;)V

    return-void
.end method

.method public final C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V

    return-void
.end method

.method public final C4()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshHotContentAnimationState$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshHotContentAnimationState$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final D9()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedForYou$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedForYou$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final E5(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->E5(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final Ec(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState;)V
    .locals 13

    sget-object v0, Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState$Unresolved;->a:Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState$Unresolved;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState$NoSku;->a:Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState$NoSku;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v7, p0

    move-object v8, p1

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState$Loading;

    if-eqz v0, :cond_2

    sget-object v3, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    check-cast p2, Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState$Loading;

    iget-object v5, p2, Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState$Loading;->b:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    const/4 v6, 0x4

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;I)V

    return-void

    :cond_2
    move-object v7, p0

    move-object v8, p1

    instance-of p0, p2, Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState$Loaded;

    if-eqz p0, :cond_3

    check-cast p2, Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState$Loaded;

    iget-object v9, p2, Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState$Loaded;->c:Ljava/util/List;

    iget-object v11, p2, Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState$Loaded;->b:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    const/16 v12, 0xc

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;I)V

    return-void

    :cond_3
    invoke-static {}, Lv40;->g()V

    return-void

    :goto_0
    sget-object v9, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    const/4 v11, 0x0

    const/16 v12, 0x14

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;I)V

    return-void
.end method

.method public final F4()V
    .locals 14

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->S:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/model/common/A11ySettings;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;->SIMPLIFY_NAVIGATION:Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;->DISABLE_AUTOPLAY:Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;->ENHANCED_CONTRAST:Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;

    filled-new-array {v2, v3, v4}, [Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;

    move-result-object v5

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->x:Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;

    invoke-virtual {v6, v5}, Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;->a([Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-nez v6, :cond_4

    check-cast v5, Ljava/util/Map;

    new-instance v6, Lcom/vuitton/android/presentation/model/common/A11ySettings;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    const/4 v7, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v7

    :goto_0
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_1

    :cond_2
    move v4, v7

    :goto_1
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    :cond_3
    invoke-direct {v6, v3, v4, v7}, Lcom/vuitton/android/presentation/model/common/A11ySettings;-><init>(ZZZ)V

    goto :goto_2

    :cond_4
    new-instance v8, Lcom/vuitton/android/presentation/model/common/A11ySettings;

    const/4 v12, 0x7

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/vuitton/android/presentation/model/common/A11ySettings;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v6, v8

    :goto_2
    invoke-interface {v0, v1, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final Fc(ZLkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->K:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->P:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    :cond_1
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Q:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, p2, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->h:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Jc(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_3

    return-object p0

    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_4
    invoke-virtual {p0, p2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Gc(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_5

    return-object p0

    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final Gc(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchOngoingOrdersLegacy$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchOngoingOrdersLegacy$1;

    iget v3, v2, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchOngoingOrdersLegacy$1;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchOngoingOrdersLegacy$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchOngoingOrdersLegacy$1;

    invoke-direct {v2, v0, v1}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchOngoingOrdersLegacy$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchOngoingOrdersLegacy$1;->d:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchOngoingOrdersLegacy$1;->f:I

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Q:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->P:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v8, "FeedViewModelImpl"

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    const/4 v10, 0x3

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->G:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eqz v4, :cond_4

    if-eq v4, v14, :cond_3

    if-eq v4, v13, :cond_2

    if-ne v4, v10, :cond_1

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchOngoingOrdersLegacy$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/Result;

    iget-object v1, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_5

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v12

    :cond_2
    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchOngoingOrdersLegacy$1;->c:Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchOngoingOrdersLegacy$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchOngoingOrdersLegacy$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    sget-object v4, Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Action$LoadOngoingOrders;->a:Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Action$LoadOngoingOrders;

    invoke-interface {v1, v11, v4}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v1

    iput-object v1, v2, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchOngoingOrdersLegacy$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v14, v2, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchOngoingOrdersLegacy$1;->f:I

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->o:Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;

    iget-object v0, v0, Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;->a:Lcom/vuitton/android/domain/repository/OrderRepository;

    invoke-interface {v0}, Lcom/vuitton/android/domain/repository/OrderRepository;->j()Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;

    move-result-object v0

    if-ne v0, v3, :cond_5

    goto/16 :goto_4

    :cond_5
    move-object/from16 v16, v1

    move-object v1, v0

    move-object/from16 v0, v16

    :goto_1
    check-cast v1, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput-object v0, v2, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchOngoingOrdersLegacy$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v1, v2, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchOngoingOrdersLegacy$1;->c:Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput v13, v2, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchOngoingOrdersLegacy$1;->f:I

    invoke-interface {v1, v2}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->g(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    move-result-object v4

    if-ne v4, v3, :cond_6

    goto/16 :goto_4

    :cond_6
    move-object/from16 v16, v4

    move-object v4, v0

    move-object v0, v1

    move-object/from16 v1, v16

    :goto_2
    check-cast v1, Lkotlin/Result;

    if-eqz v1, :cond_c

    iget-object v1, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v13, v1, Lkotlin/Result$Failure;

    xor-int/lit8 v15, v13, 0x1

    if-ne v15, v14, :cond_c

    if-nez v13, :cond_7

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    invoke-static {v1, v11, v5}, Lcom/vuitton/android/presentation/screen/orders/models/mappers/OrderMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Z)Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;

    move-result-object v0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;->a:Ljava/util/List;

    :cond_7
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    const-string v1, "Unable to retrieve orders list from cache"

    :cond_9
    invoke-interface {v9, v8, v1, v0}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Error$LoadOngoingOrdersError;

    invoke-direct {v1, v0}, Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Error$LoadOngoingOrdersError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v4, v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    sget-object v1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :goto_3
    check-cast v1, Ljava/util/List;

    :cond_a
    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    invoke-static {v1}, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemMapperKt;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v7, v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_b
    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v6, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_c
    iput-object v4, v2, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchOngoingOrdersLegacy$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v12, v2, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchOngoingOrdersLegacy$1;->c:Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput v10, v2, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchOngoingOrdersLegacy$1;->f:I

    invoke-interface {v0, v2}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_d

    :goto_4
    return-object v3

    :cond_d
    move-object v0, v4

    :goto_5
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, v1, Lkotlin/Result$Failure;

    if-nez v2, :cond_e

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    invoke-static {v1, v11, v5}, Lcom/vuitton/android/presentation/screen/orders/models/mappers/OrderMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Z)Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;->a:Ljava/util/List;

    :cond_e
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_f

    goto :goto_6

    :cond_f
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10

    const-string v1, "Unable to retrieve orders list from remote"

    :cond_10
    invoke-interface {v9, v8, v1, v2}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Error$LoadOngoingOrdersError;

    invoke-direct {v1, v2}, Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Error$LoadOngoingOrdersError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    sget-object v1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :goto_6
    check-cast v1, Ljava/util/List;

    :cond_11
    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/List;

    invoke-static {v1}, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemMapperKt;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v7, v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_12
    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v6, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final I(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->I(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V

    return-void
.end method

.method public final I1(Ljava/lang/String;)Ljava/util/List;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->g0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedViewState;->d:Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;->a:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;->a:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    check-cast v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    instance-of p0, v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;

    const-string p1, ""

    const/16 v2, 0xa

    if-eqz p0, :cond_6

    check-cast v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;

    iget-object p0, v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;->e:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;

    new-instance v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SlottedSku;

    iget-object v4, v2, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;->g:Ljava/lang/String;

    if-nez v2, :cond_4

    move-object v2, p1

    :cond_4
    invoke-direct {v3, v4, v2, v1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SlottedSku;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    return-object v0

    :cond_6
    instance-of p0, v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;

    if-eqz p0, :cond_9

    check-cast v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;

    iget-object p0, v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;->e:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;

    new-instance v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SlottedSku;

    iget-object v4, v2, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;->g:Ljava/lang/String;

    if-nez v2, :cond_7

    move-object v2, p1

    :cond_7
    invoke-direct {v3, v4, v2, v1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SlottedSku;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    return-object v0

    :cond_9
    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public final Ia()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedDiscover$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedDiscover$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final Ic()Ljava/util/List;
    .locals 5

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->O:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;->a:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;->a:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    instance-of v3, v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;

    if-eqz v3, :cond_3

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;->c:Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;->MOST_PURCHASED_WITH:Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    if-eq v3, v4, :cond_4

    :cond_3
    instance-of v3, v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;

    if-eqz v3, :cond_2

    check-cast v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;->c:Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;->MOST_PURCHASED_WITH:Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    if-ne v2, v3, :cond_2

    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    return-object p0
.end method

.method public final Jc(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadHotContent$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadHotContent$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadHotContent$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadHotContent$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadHotContent$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadHotContent$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadHotContent$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadHotContent$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p1, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v4, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadHotContent$1;->d:I

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->q:Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;

    invoke-virtual {p2, p1, v0}, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;->d(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p2, p1, Lkotlin/Result$Failure;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Q:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->P:Lkotlinx/coroutines/flow/MutableStateFlow;

    if-nez p2, :cond_8

    move-object p2, p1

    check-cast p2, Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContent;

    :cond_4
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/util/List;

    iget-object v5, p2, Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContent;->a:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem;

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->G:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {v7, v8}, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-interface {v1, v2, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_7
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v5, p2, Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContent;->b:Z

    xor-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_8
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_9

    const-string p2, "Unable to retrieve hot content"

    :cond_9
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    const-string v2, "FeedViewModelImpl"

    invoke-interface {p0, v2, p2, p1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/util/List;

    invoke-interface {v1, p0, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    :cond_b
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    :cond_c
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final Kc(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;Ljava/util/List;)V
    .locals 9

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->d0:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/Job;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1, v2}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v3, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadProductsForSection$1;

    const/4 v8, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v4, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadProductsForSection$1;-><init>(Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v1, v2, v2, v3, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    invoke-interface {v0, v6, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final Lc(Lcom/vuitton/android/presentation/screen/feed/FeedNotification;)V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$showNotification$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$showNotification$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedNotification;Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final M1(Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->M1(Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final P1()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$addEventToCalendar$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$addEventToCalendar$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final Q0()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->Q0()V

    return-void
.end method

.method public final Q3(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$reportDYClick$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$reportDYClick$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final S0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->S0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final W1(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->J:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final Z3()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$checkForAudioGuideAccess$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$checkForAudioGuideAccess$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->g0:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final b()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->V:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final c()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$setUserChatConsentEnabled$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$setUserChatConsentEnabled$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final f8(Lcom/vuitton/android/presentation/contact/ContactUsMode;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->f8(Lcom/vuitton/android/presentation/contact/ContactUsMode;)V

    return-void
.end method

.method public final i()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->i()Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final ib(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshLiveSection$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshLiveSection$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final j6()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$removeEventFromCalendar$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$removeEventFromCalendar$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final la()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$updateOngoingOrders$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$updateOngoingOrders$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final m4(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->m4(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V

    return-void
.end method

.method public final n1(Lcom/vuitton/android/presentation/screen/feed/models/CalendarEventData;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$checkForSavedCalendarEvents$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$checkForSavedCalendarEvents$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lcom/vuitton/android/presentation/screen/feed/models/CalendarEventData;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final o7()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->f0:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final oa()V
    .locals 3

    new-instance v0, Lck;

    const/16 v1, 0x18

    invoke-direct {v0, p0, v1}, Lck;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lss;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2}, Lss;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->d:Landroid/app/Application;

    invoke-static {p0, v0, v1}, Lcom/vuitton/android/presentation/utils/LocationUtilsKt;->a(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final qa(Lcom/vuitton/android/presentation/screen/feed/FeedBottomSheet;)V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$setBottomSheet$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$setBottomSheet$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lcom/vuitton/android/presentation/screen/feed/FeedBottomSheet;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final r(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->r(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;)V

    return-void
.end method

.method public final s()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->s()V

    return-void
.end method

.method public final t3(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$reportDYSlotClick$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$reportDYSlotClick$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final u0(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->N:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->O:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;

    if-eqz v3, :cond_1

    check-cast v1, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;->a:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;->a:Ljava/util/List;

    goto :goto_2

    :cond_2
    move-object v0, v2

    :goto_2
    invoke-static {p1, v0}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Hc(Ljava/lang/String;Ljava/util/List;)Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;

    move-result-object v0

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;->a:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;->a:Ljava/util/List;

    goto :goto_3

    :cond_3
    move-object v1, v2

    :goto_3
    invoke-static {p1, v1}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Hc(Ljava/lang/String;Ljava/util/List;)Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;

    move-result-object v1

    if-nez v0, :cond_4

    if-nez v1, :cond_5

    goto :goto_4

    :cond_4
    move-object v1, v0

    :cond_5
    iget-object v1, v1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;->g:Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel;

    instance-of v3, v1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Event;

    if-eqz v3, :cond_7

    const/4 v1, 0x3

    if-eqz v0, :cond_6

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshFeedDiscover$1;

    invoke-direct {v3, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshFeedDiscover$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v2, v2, v3, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void

    :cond_6
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshFeedForYou$1;

    invoke-direct {v3, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshFeedForYou$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v2, v2, v3, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void

    :cond_7
    instance-of p1, v1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Live;

    if-eqz p1, :cond_8

    check-cast v1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Live;

    iget-object p1, v1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Live;->a:Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->ib(Ljava/lang/String;)V

    :cond_8
    :goto_4
    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final vc(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->vc(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final x(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->x(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V

    return-void
.end method

.method public final y3(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Ic()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final z()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->z()V

    return-void
.end method
