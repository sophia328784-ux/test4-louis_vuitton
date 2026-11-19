.class public final Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;
.implements Lcom/vuitton/android/presentation/contact/ContactUsDelegate;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00bc\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u00f1\u0001\u0008\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020\'\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u0010,\u001a\u00020+\u0012\u0006\u0010.\u001a\u00020-\u0012\u0006\u00100\u001a\u00020/\u0012\u0006\u00102\u001a\u000201\u0012\u0006\u00104\u001a\u000203\u0012\u0006\u00106\u001a\u000205\u0012\u0006\u00108\u001a\u000207\u0012\u0006\u0010:\u001a\u000209\u0012\u0006\u0010<\u001a\u00020;\u00a2\u0006\u0004\u0008=\u0010>\u00a8\u0006?"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;",
        "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;",
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
        "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;",
        "appsFlyerTracker",
        "contactUsDelegate",
        "Lcom/vuitton/android/domain/service/authentication/UserSessionService;",
        "userSessionService",
        "Lcom/vuitton/android/presentation/notification/NotificationBuilder;",
        "notificationBuilder",
        "Lcom/vuitton/android/domain/usecase/cart/GetCartFullUseCase;",
        "getCartFullUseCase",
        "Lcom/vuitton/android/domain/usecase/cart/ChooseSamplesUseCase;",
        "chooseSamplesUseCase",
        "Lcom/vuitton/android/domain/usecase/cart/AddGiftMessageUseCase;",
        "addGiftMessageUseCase",
        "Lcom/vuitton/android/domain/usecase/cart/RemoveCartItemUseCase;",
        "removeCartItemUseCase",
        "Lcom/vuitton/android/domain/usecase/cart/GetCheckoutUrlUseCase;",
        "getCheckoutUrlUseCase",
        "Lcom/vuitton/android/domain/usecase/cart/PutPrepareOrderUseCase;",
        "putPrepareOrderUseCase",
        "Lcom/vuitton/android/domain/usecase/cart/UpdateShoppingBagUseCase;",
        "updateShoppingBagUseCase",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/cart/ResetCartContainerUseCase;",
        "resetCartContainerUseCase",
        "Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;",
        "isProductInWishlistUseCase",
        "Lcom/vuitton/android/domain/usecase/cart/GetCartContributionUseCase;",
        "getCartContributionUseCase",
        "Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;",
        "addProductToWishlistUseCase",
        "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;",
        "requireCachedAppConfigUseCase",
        "Lcom/vuitton/android/domain/usecase/cart/UpdateCartItemQuantityUseCase;",
        "updateCartItemQuantityUseCase",
        "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;",
        "reportDYAddToCartEventUseCase",
        "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;",
        "reportDYAddToWishlistEventUseCase",
        "Lcom/vuitton/android/domain/usecase/config/GetNativeCartCommercialTextUseCase;",
        "getNativeCartCommercialTextUseCase",
        "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYRemoveFromCartEventUseCase;",
        "reportDYRemoveFromCartEventUseCase",
        "Lcom/vuitton/android/domain/usecase/config/GetNativeCartCommercialModalTitleUseCase;",
        "getNativeCartCommercialModalTitleUseCase",
        "Lcom/vuitton/android/domain/usecase/config/GetNativeCartCommercialModalContentUseCase;",
        "getNativeCartCommercialModalContentUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/cart/GetCartFullUseCase;Lcom/vuitton/android/domain/usecase/cart/ChooseSamplesUseCase;Lcom/vuitton/android/domain/usecase/cart/AddGiftMessageUseCase;Lcom/vuitton/android/domain/usecase/cart/RemoveCartItemUseCase;Lcom/vuitton/android/domain/usecase/cart/GetCheckoutUrlUseCase;Lcom/vuitton/android/domain/usecase/cart/PutPrepareOrderUseCase;Lcom/vuitton/android/domain/usecase/cart/UpdateShoppingBagUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/cart/ResetCartContainerUseCase;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/domain/usecase/cart/GetCartContributionUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/cart/UpdateCartItemQuantityUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;Lcom/vuitton/android/domain/usecase/config/GetNativeCartCommercialTextUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYRemoveFromCartEventUseCase;Lcom/vuitton/android/domain/usecase/config/GetNativeCartCommercialModalTitleUseCase;Lcom/vuitton/android/domain/usecase/config/GetNativeCartCommercialModalContentUseCase;)V",
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
.field public final A:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final B:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final C:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final D:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final E:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final F:Lkotlinx/coroutines/flow/SharedFlow;

.field public final G:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public H:I

.field public I:Z

.field public final J:J

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

.field public final X:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final Y:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final Z:Lkotlinx/coroutines/flow/StateFlow;

.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final c:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final d:Lcom/vuitton/android/core/events/LVEventSender;

.field public final e:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

.field public final f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

.field public final g:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

.field public final h:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

.field public final i:Lcom/vuitton/android/domain/usecase/cart/GetCartFullUseCase;

.field public final j:Lcom/vuitton/android/domain/usecase/cart/ChooseSamplesUseCase;

.field public final k:Lcom/vuitton/android/domain/usecase/cart/AddGiftMessageUseCase;

.field public final l:Lcom/vuitton/android/domain/usecase/cart/RemoveCartItemUseCase;

.field public final m:Lcom/vuitton/android/domain/usecase/cart/GetCheckoutUrlUseCase;

.field public final n:Lcom/vuitton/android/domain/usecase/cart/PutPrepareOrderUseCase;

.field public final o:Lcom/vuitton/android/domain/usecase/cart/UpdateShoppingBagUseCase;

.field public final p:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final q:Lcom/vuitton/android/domain/usecase/cart/ResetCartContainerUseCase;

.field public final r:Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;

.field public final s:Lcom/vuitton/android/domain/usecase/cart/GetCartContributionUseCase;

.field public final t:Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;

.field public final u:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

.field public final v:Lcom/vuitton/android/domain/usecase/cart/UpdateCartItemQuantityUseCase;

.field public final w:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;

.field public final x:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;

.field public final y:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYRemoveFromCartEventUseCase;

.field public final z:Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/cart/GetCartFullUseCase;Lcom/vuitton/android/domain/usecase/cart/ChooseSamplesUseCase;Lcom/vuitton/android/domain/usecase/cart/AddGiftMessageUseCase;Lcom/vuitton/android/domain/usecase/cart/RemoveCartItemUseCase;Lcom/vuitton/android/domain/usecase/cart/GetCheckoutUrlUseCase;Lcom/vuitton/android/domain/usecase/cart/PutPrepareOrderUseCase;Lcom/vuitton/android/domain/usecase/cart/UpdateShoppingBagUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/cart/ResetCartContainerUseCase;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/domain/usecase/cart/GetCartContributionUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/cart/UpdateCartItemQuantityUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;Lcom/vuitton/android/domain/usecase/config/GetNativeCartCommercialTextUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYRemoveFromCartEventUseCase;Lcom/vuitton/android/domain/usecase/config/GetNativeCartCommercialModalTitleUseCase;Lcom/vuitton/android/domain/usecase/config/GetNativeCartCommercialModalContentUseCase;)V
    .locals 25
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

    invoke-direct {v0}, Landroidx/lifecycle/ViewModel;-><init>()V

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->b:Lcom/vuitton/android/domain/monitoring/Monitor;

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->c:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->d:Lcom/vuitton/android/core/events/LVEventSender;

    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->e:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    move-object/from16 v2, p8

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->g:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-object/from16 v2, p9

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->h:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-object/from16 v2, p10

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/cart/GetCartFullUseCase;

    move-object/from16 v2, p11

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/cart/ChooseSamplesUseCase;

    move-object/from16 v2, p12

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/cart/AddGiftMessageUseCase;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/cart/RemoveCartItemUseCase;

    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->m:Lcom/vuitton/android/domain/usecase/cart/GetCheckoutUrlUseCase;

    move-object/from16 v2, p15

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->n:Lcom/vuitton/android/domain/usecase/cart/PutPrepareOrderUseCase;

    move-object/from16 v2, p16

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->o:Lcom/vuitton/android/domain/usecase/cart/UpdateShoppingBagUseCase;

    move-object/from16 v2, p17

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->p:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-object/from16 v2, p18

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->q:Lcom/vuitton/android/domain/usecase/cart/ResetCartContainerUseCase;

    move-object/from16 v2, p19

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->r:Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;

    move-object/from16 v2, p20

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->s:Lcom/vuitton/android/domain/usecase/cart/GetCartContributionUseCase;

    move-object/from16 v2, p21

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->t:Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;

    move-object/from16 v2, p22

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->u:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-object/from16 v2, p23

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->v:Lcom/vuitton/android/domain/usecase/cart/UpdateCartItemQuantityUseCase;

    move-object/from16 v2, p24

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->w:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;

    move-object/from16 v2, p25

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->x:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;

    move-object/from16 v2, p27

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->y:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYRemoveFromCartEventUseCase;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->z:Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-object/from16 v2, p1

    iget-object v2, v2, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v2}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->A:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const/4 v2, 0x0

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->B:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v2, v2, v4, v3}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->C:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {v2, v3, v4}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->D:Lkotlinx/coroutines/channels/BufferedChannel;

    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-static {v2, v5, v4, v6}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->E:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {v7}, Lkotlinx/coroutines/flow/FlowKt;->a(Lkotlinx/coroutines/flow/SharedFlowImpl;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->F:Lkotlinx/coroutines/flow/SharedFlow;

    invoke-static {v2, v2, v4, v3}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->G:Lkotlinx/coroutines/flow/SharedFlowImpl;

    const-wide/16 v7, 0x12c

    iput-wide v7, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->J:J

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->K:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v8

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->L:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v9}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v10

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->M:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v9}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v11

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->N:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v9}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v12

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->O:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v9}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v9

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->P:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v13

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->Q:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v14, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartFeatureFlags;

    const/4 v15, 0x7

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 p1, v14

    move/from16 p5, v15

    move-object/from16 p6, v16

    move/from16 p2, v17

    move/from16 p3, v18

    move/from16 p4, v19

    invoke-direct/range {p1 .. p6}, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartFeatureFlags;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v14}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v14

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v15}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v15

    iput-object v15, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->S:Lkotlinx/coroutines/flow/MutableStateFlow;

    move/from16 p1, v5

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->T:Lkotlinx/coroutines/flow/MutableStateFlow;

    move/from16 p2, v6

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->U:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v6, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->V:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->W:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p3, v2

    const/4 v1, 0x0

    invoke-static {v1, v3, v4}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->X:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->Y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface/range {p7 .. p7}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->i()Lkotlinx/coroutines/flow/Flow;

    move-result-object v16

    move/from16 v17, v1

    const/16 v1, 0xe

    new-array v1, v1, [Lkotlinx/coroutines/flow/Flow;

    aput-object v7, v1, v17

    aput-object v8, v1, p1

    const/4 v7, 0x2

    aput-object v12, v1, v7

    const/4 v7, 0x3

    aput-object v10, v1, v7

    aput-object v9, v1, p2

    const/4 v8, 0x5

    aput-object v13, v1, v8

    const/4 v8, 0x6

    aput-object v14, v1, v8

    aput-object v15, v1, v3

    const/16 v3, 0x8

    aput-object v5, v1, v3

    const/16 v3, 0x9

    aput-object p3, v1, v3

    const/16 v3, 0xa

    aput-object v6, v1, v3

    const/16 v3, 0xb

    aput-object v16, v1, v3

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const/16 v2, 0xd

    aput-object v11, v1, v2

    new-instance v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$special$$inlined$combine$1;

    invoke-direct {v2, v1, v0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    sget-object v3, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance v5, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;

    const v6, 0xfff7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 p1, v5

    move/from16 p18, v6

    move-object/from16 p19, v8

    move-object/from16 p2, v9

    move-object/from16 p3, v10

    move-object/from16 p4, v11

    move/from16 p5, v12

    move/from16 p6, v13

    move/from16 p7, v14

    move/from16 p8, v15

    move-object/from16 p9, v16

    move-object/from16 p10, v17

    move-object/from16 p11, v18

    move-object/from16 p12, v19

    move-object/from16 p13, v20

    move/from16 p14, v21

    move-object/from16 p15, v22

    move-object/from16 p16, v23

    move-object/from16 p17, v24

    invoke-direct/range {p1 .. p19}, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;-><init>(Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;Ljava/util/List;Ljava/lang/String;ZZZZLkotlin/Pair;Lcom/vuitton/android/presentation/screen/cart/models/NativeCartFeatureFlags;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;ZLcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/presentation/screen/cart/models/CartContributionUiModel;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2, v1, v3, v5}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->Z:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$1;

    invoke-direct {v2, v4, v0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;)V

    invoke-static {v1, v4, v4, v2, v7}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-object/from16 v1, p26

    iget-object v1, v1, Lcom/vuitton/android/domain/usecase/config/GetNativeCartCommercialTextUseCase;->a:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    invoke-virtual {v1}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->F:Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig;->a:Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig$CommercialNotification;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig$CommercialNotification;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    if-eqz v1, :cond_4

    invoke-static {v1}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v4

    :goto_1
    if-eqz v1, :cond_4

    new-instance v2, Lcom/vuitton/android/presentation/screen/cart/CommercialNotification;

    move-object/from16 v3, p28

    iget-object v3, v3, Lcom/vuitton/android/domain/usecase/config/GetNativeCartCommercialModalTitleUseCase;->a:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    invoke-virtual {v3}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->F:Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig;->a:Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig$CommercialNotification;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig$CommercialNotification;->b:Ljava/lang/String;

    :goto_2
    move-object/from16 v5, p29

    goto :goto_3

    :cond_2
    move-object v3, v4

    goto :goto_2

    :goto_3
    iget-object v5, v5, Lcom/vuitton/android/domain/usecase/config/GetNativeCartCommercialModalContentUseCase;->a:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    invoke-virtual {v5}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->F:Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig;

    if-eqz v5, :cond_3

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig;->a:Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig$CommercialNotification;

    if-eqz v5, :cond_3

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig$CommercialNotification;->c:Ljava/lang/String;

    goto :goto_4

    :cond_3
    move-object v5, v4

    :goto_4
    invoke-direct {v2, v1, v3, v5}, Lcom/vuitton/android/presentation/screen/cart/CommercialNotification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->Cc(Lcom/vuitton/android/presentation/screen/cart/GenericNotification;)V

    :cond_4
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$resetCartContainer$1;

    invoke-direct {v2, v4, v0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$resetCartContainer$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;)V

    invoke-static {v1, v4, v4, v2, v7}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$2;

    invoke-direct {v2, v4, v0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;)V

    invoke-static {v1, v4, v4, v2, v7}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$getCartContribution$1;

    invoke-direct {v2, v4, v0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$getCartContribution$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;)V

    invoke-static {v1, v4, v4, v2, v7}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final Ac(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->u:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$retrieveFeatureFlags$1;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$retrieveFeatureFlags$1;

    iget v2, v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$retrieveFeatureFlags$1;->g:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$retrieveFeatureFlags$1;->g:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$retrieveFeatureFlags$1;

    invoke-direct {v1, p0, p1}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$retrieveFeatureFlags$1;-><init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$retrieveFeatureFlags$1;->e:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$retrieveFeatureFlags$1;->g:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-boolean p0, v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$retrieveFeatureFlags$1;->d:Z

    iget-boolean v0, v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$retrieveFeatureFlags$1;->c:Z

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$retrieveFeatureFlags$1;->b:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-virtual {v0}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->a0:Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;

    iget-boolean v3, v3, Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;->b:Z

    invoke-virtual {v0}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->a0:Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;

    iget-boolean v0, v0, Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;->a:Z

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->p:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->REFRESH_AUTH_CHECKOUT:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v5}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v5

    iput-object p1, v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$retrieveFeatureFlags$1;->b:Ljava/lang/Object;

    iput-boolean v3, v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$retrieveFeatureFlags$1;->c:Z

    iput-boolean v0, v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$retrieveFeatureFlags$1;->d:Z

    iput v4, v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$retrieveFeatureFlags$1;->g:I

    const/4 v4, 0x0

    invoke-virtual {p0, v5, v4, v1}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_3

    return-object v2

    :cond_3
    move-object v1, p1

    move-object p1, p0

    move p0, v0

    move v0, v3

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    new-instance v2, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartFeatureFlags;

    invoke-direct {v2, v0, p0, p1}, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartFeatureFlags;-><init>(ZZZ)V

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final Bc(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p3, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartItemVisibility$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartItemVisibility$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartItemVisibility$1;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartItemVisibility$1;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartItemVisibility$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartItemVisibility$1;-><init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartItemVisibility$1;->e:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartItemVisibility$1;->g:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-boolean p2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartItemVisibility$1;->d:Z

    iget-object p0, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartItemVisibility$1;->c:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartItemVisibility$1;->b:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->K:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    if-eqz p3, :cond_6

    iget-object p3, p3, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;->c:Ljava/util/List;

    if-eqz p3, :cond_6

    check-cast p3, Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->j:Ljava/lang/String;

    iget-object v6, p1, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->j:Ljava/lang/String;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v3, v2

    :cond_4
    move-object p3, v3

    check-cast p3, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    if-eqz p3, :cond_6

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->r:Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    iput-object p3, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartItemVisibility$1;->b:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    iput-object p3, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartItemVisibility$1;->c:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    iput-boolean p2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartItemVisibility$1;->d:Z

    iput v4, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartItemVisibility$1;->g:I

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    move-object p1, p3

    move-object p3, p0

    move-object p0, p1

    :goto_1
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->w:Z

    iput-boolean p2, p1, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->x:Z

    :cond_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final yc(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$cartFullCall$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$cartFullCall$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$cartFullCall$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$cartFullCall$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$cartFullCall$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$cartFullCall$1;-><init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$cartFullCall$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$cartFullCall$1;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$cartFullCall$1;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/cart/GetCartFullUseCase;

    iput v4, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$cartFullCall$1;->e:I

    invoke-virtual {p1, v0}, Lcom/vuitton/android/domain/usecase/cart/GetCartFullUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, p1, Lkotlin/Result$Failure;

    if-nez v2, :cond_5

    move-object v2, p1

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$cartFullCall$1;->b:Ljava/lang/Object;

    iput v3, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$cartFullCall$1;->e:I

    invoke-virtual {p0, v2, v0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->Dc(Lcom/vuitton/foundation/model/domain/model/cart/Cart;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    return-object p1
.end method

.method public static final zc(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$notifyIfCartError$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$notifyIfCartError$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$notifyIfCartError$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$notifyIfCartError$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$notifyIfCartError$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$notifyIfCartError$1;-><init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$notifyIfCartError$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$notifyIfCartError$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    instance-of p2, p1, Lcom/vuitton/foundation/model/domain/error/cart/CartError;

    if-eqz p2, :cond_3

    check-cast p1, Lcom/vuitton/foundation/model/domain/error/cart/CartError;

    goto :goto_1

    :cond_3
    move-object p1, v4

    :goto_1
    if-eqz p1, :cond_9

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->X:Lkotlinx/coroutines/channels/BufferedChannel;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->h:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-static {p0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    new-instance p1, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;-><init>(Ljava/lang/String;)V

    :goto_2
    move-object v6, p1

    goto :goto_4

    :cond_4
    iget-object p0, p1, Lcom/vuitton/foundation/model/domain/error/cart/CartError;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    new-instance p1, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    instance-of p0, p1, Lcom/vuitton/foundation/model/domain/error/cart/OutOfStockError;

    const/4 v2, 0x2

    if-eqz p0, :cond_6

    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const p1, 0x7f140c8b

    invoke-direct {p0, p1, v4, v2, v4}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_3
    move-object p1, p0

    goto :goto_2

    :cond_6
    instance-of p0, p1, Lcom/vuitton/foundation/model/domain/error/cart/MaxQuantityReached;

    if-eqz p0, :cond_7

    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const p1, 0x7f1404f3

    invoke-direct {p0, p1, v4, v2, v4}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    :cond_7
    instance-of p0, p1, Lcom/vuitton/foundation/model/domain/error/cart/MaxSkuQuantityReached;

    if-eqz p0, :cond_8

    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const p1, 0x7f14095e

    invoke-direct {p0, p1, v4, v2, v4}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    :cond_8
    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const p1, 0x7f140a5a

    invoke-direct {p0, p1, v4, v2, v4}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    :goto_4
    const/4 v9, 0x0

    const/16 v10, 0x3c

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object p0

    iput v3, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$notifyIfCartError$1;->d:I

    invoke-interface {p2, p0, v0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_9

    return-object v1

    :cond_9
    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final B(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2, p3}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->B(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V

    return-void
.end method

.method public final Bb()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$getCartFull$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$getCartFull$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V

    return-void
.end method

.method public final Cc(Lcom/vuitton/android/presentation/screen/cart/GenericNotification;)V
    .locals 5

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->S:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/presentation/screen/cart/GenericNotification;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final D2()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->d:Lcom/vuitton/android/core/events/LVEventSender;

    iget-object p0, p0, Lcom/vuitton/android/core/events/LVEventSender;->c:Lkotlinx/coroutines/flow/SharedFlow;

    return-object p0
.end method

.method public final Dc(Lcom/vuitton/foundation/model/domain/model/cart/Cart;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$1;

    iget v3, v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$1;->l:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$1;->l:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$1;

    invoke-direct {v2, v0, v1}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$1;-><init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$1;->j:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$1;->l:I

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->p:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v9, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v6, :cond_1

    iget v4, v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$1;->i:I

    iget v5, v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$1;->h:I

    iget-boolean v7, v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$1;->g:Z

    iget-boolean v11, v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$1;->f:Z

    iget-object v12, v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$1;->e:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    iget-object v13, v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$1;->d:Ljava/util/Iterator;

    iget-object v14, v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$1;->c:Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    iget-object v15, v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$1;->b:Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v10

    :cond_2
    iget-boolean v4, v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$1;->f:Z

    iget-object v5, v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$1;->b:Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$1;->b:Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->BACK_ORDER_DISCLAIMER_ENHANCEMENT:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v1}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v1

    move-object/from16 v4, p1

    iput-object v4, v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$1;->b:Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    iput v9, v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$1;->l:I

    invoke-virtual {v5, v1, v8, v2}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_5

    goto/16 :goto_4

    :cond_5
    :goto_1
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-object v11, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->BACK_ORDER_DISCLAIMER_ENHANCEMENT:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v11}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v11

    iput-object v4, v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$1;->b:Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    iput-boolean v1, v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$1;->f:Z

    iput v7, v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$1;->l:I

    invoke-virtual {v5, v11, v8, v2}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_6

    goto :goto_4

    :cond_6
    move-object/from16 v16, v4

    move v4, v1

    move-object v1, v5

    move-object/from16 v5, v16

    :goto_2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v5, v4, v1}, Lcom/vuitton/android/presentation/screen/cart/models/CartMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/cart/Cart;ZZ)Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    move-result-object v7

    iget-object v11, v7, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;->c:Ljava/util/List;

    check-cast v11, Ljava/lang/Iterable;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v15, v5

    move-object v14, v7

    move v5, v8

    move-object v13, v11

    move v7, v1

    move v11, v4

    move v4, v5

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v8, v12, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    iput-object v15, v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$1;->b:Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    iput-object v14, v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$1;->c:Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    iput-object v13, v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$1;->d:Ljava/util/Iterator;

    iput-object v12, v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$1;->e:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    iput-boolean v11, v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$1;->f:Z

    iput-boolean v7, v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$1;->g:Z

    iput v5, v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$1;->h:I

    iput v4, v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$1;->i:I

    iput v6, v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$1;->l:I

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->r:Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;

    invoke-virtual {v1, v8, v2}, Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_7

    :goto_4
    return-object v3

    :cond_7
    :goto_5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v12, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->w:Z

    const/4 v8, 0x0

    goto :goto_3

    :cond_8
    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->K:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    if-eqz v2, :cond_9

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;->c:Ljava/util/List;

    if-eqz v2, :cond_9

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v9

    if-ne v2, v9, :cond_9

    iget-object v2, v14, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "emptied_cart"

    invoke-static {v2}, Lcom/batch/android/Batch$Profile;->trackEvent(Ljava/lang/String;)V

    :cond_9
    invoke-interface {v1, v14}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v2, v15, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->c:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;

    iget-boolean v8, v5, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->q:Z

    if-eqz v8, :cond_a

    iget-boolean v5, v5, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->r:Z

    if-nez v5, :cond_a

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;

    invoke-static {v5, v11, v7}, Lcom/vuitton/android/presentation/screen/cart/models/CartItemMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/cart/CartItem;ZZ)Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->L:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget v2, v15, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->b:I

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->P:Lkotlinx/coroutines/flow/MutableStateFlow;

    if-lez v2, :cond_21

    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->I:Z

    if-nez v2, :cond_f

    iput-boolean v9, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->I:Z

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    if-eqz v2, :cond_f

    sget-object v5, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$FullScreen;->a:Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$FullScreen;

    invoke-virtual {v0, v5}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->W9(Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel;)V

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;->c:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    iget-boolean v8, v8, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->p:Z

    if-nez v8, :cond_d

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_e
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    new-instance v7, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$OOSItemClick;

    invoke-direct {v7, v5}, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$OOSItemClick;-><init>(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;)V

    invoke-virtual {v0, v7}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->W9(Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel;)V

    goto :goto_9

    :cond_f
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v2, v15, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->c:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    instance-of v3, v2, Ljava/util/Collection;

    sget-object v5, Lcom/vuitton/android/presentation/screen/cart/OutOfStockNotification;->a:Lcom/vuitton/android/presentation/screen/cart/OutOfStockNotification;

    if-eqz v3, :cond_10

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_a

    :cond_10
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;

    iget-boolean v3, v3, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->p:Z

    if-nez v3, :cond_11

    invoke-virtual {v0, v5}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->Cc(Lcom/vuitton/android/presentation/screen/cart/GenericNotification;)V

    goto :goto_b

    :cond_12
    :goto_a
    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->S:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :goto_b
    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->U:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_13

    iget-object v1, v14, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;->g:Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;

    iget-boolean v1, v1, Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v2, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_f

    :cond_13
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    if-eqz v7, :cond_16

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;

    if-eqz v5, :cond_14

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;->g:Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;

    if-eqz v5, :cond_14

    iget-boolean v5, v5, Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;->a:Z

    goto :goto_c

    :cond_14
    const/4 v5, 0x0

    :goto_c
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    if-eqz v9, :cond_15

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    goto :goto_d

    :cond_15
    const/4 v9, 0x0

    :goto_d
    invoke-direct {v8, v5, v9}, Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;-><init>(ZZ)V

    invoke-static {v7, v8}, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;->a(Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;)Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    move-result-object v5

    goto :goto_e

    :cond_16
    move-object v5, v10

    :goto_e
    invoke-interface {v1, v3, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    :goto_f
    iget-object v3, v15, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->i:Lcom/vuitton/foundation/model/domain/model/cart/CartSample;

    if-eqz v3, :cond_17

    iget v1, v3, Lcom/vuitton/foundation/model/domain/model/cart/CartSample;->b:I

    goto :goto_10

    :cond_17
    const/4 v1, 0x0

    :goto_10
    iput v1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->H:I

    :cond_18
    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->V:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/util/List;

    if-eqz v3, :cond_1f

    iget-object v5, v3, Lcom/vuitton/foundation/model/domain/model/cart/CartSample;->a:Ljava/util/List;

    if-eqz v5, :cond_1f

    check-cast v5, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v5, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_11
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_20

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/foundation/model/domain/model/cart/PerfumeSample;

    invoke-static {v9}, Lcom/vuitton/android/presentation/screen/cart/models/CartMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/cart/PerfumeSample;)Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;

    move-result-object v11

    iget-boolean v9, v9, Lcom/vuitton/foundation/model/domain/model/cart/PerfumeSample;->f:Z

    if-eqz v9, :cond_19

    sget-object v9, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;->SELECTED:Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;

    goto :goto_14

    :cond_19
    instance-of v9, v5, Ljava/util/Collection;

    if-eqz v9, :cond_1a

    move-object v9, v5

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1a

    const/4 v12, 0x0

    goto :goto_13

    :cond_1a
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v12, 0x0

    :cond_1b
    :goto_12
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/foundation/model/domain/model/cart/PerfumeSample;

    iget-boolean v13, v13, Lcom/vuitton/foundation/model/domain/model/cart/PerfumeSample;->f:Z

    if-eqz v13, :cond_1b

    add-int/lit8 v12, v12, 0x1

    if-ltz v12, :cond_1c

    goto :goto_12

    :cond_1c
    invoke-static {}, Lkotlin/collections/CollectionsKt;->s0()V

    throw v10

    :cond_1d
    :goto_13
    iget v9, v3, Lcom/vuitton/foundation/model/domain/model/cart/CartSample;->b:I

    if-ne v12, v9, :cond_1e

    sget-object v9, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;->DISABLED:Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;

    goto :goto_14

    :cond_1e
    sget-object v9, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;->NORMAL:Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;

    :goto_14
    const/16 v12, 0x1f

    invoke-static {v11, v9, v12}, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;->a(Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;I)Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_1f
    sget-object v7, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_20
    invoke-interface {v1, v2, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_15

    :cond_21
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :goto_15
    new-instance v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$6;

    invoke-direct {v1, v0, v15, v10}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateCartFull$6;-><init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;Lcom/vuitton/foundation/model/domain/model/cart/Cart;Lkotlin/coroutines/Continuation;)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->z:Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    invoke-static {v0, v10, v10, v1, v6}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final E5(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->E5(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final Ec(Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;Z)V
    .locals 9

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->W:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/16 v6, 0x1f

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;

    iget-object v7, v5, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;->a:Ljava/lang/String;

    iget-object v8, p1, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;->a:Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz p2, :cond_1

    sget-object v7, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;->SELECTED:Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;

    goto :goto_1

    :cond_1
    sget-object v7, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;->NORMAL:Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;

    goto :goto_1

    :cond_2
    iget-object v7, v5, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;->f:Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;

    :goto_1
    invoke-static {v5, v7, v6}, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;->a(Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;I)Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v0, v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    instance-of p2, p1, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    move p2, v1

    goto :goto_3

    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move p2, v1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;->f:Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;

    sget-object v3, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;->SELECTED:Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;

    if-ne v2, v3, :cond_5

    add-int/lit8 p2, p2, 0x1

    if-ltz p2, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->s0()V

    const/4 p0, 0x0

    throw p0

    :cond_7
    :goto_3
    iget p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->H:I

    if-ne p2, p0, :cond_8

    const/4 v1, 0x1

    :cond_8
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p1, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;

    if-eqz v1, :cond_9

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;->f:Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;

    sget-object v5, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;->NORMAL:Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;

    if-ne v3, v5, :cond_9

    sget-object v3, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;->DISABLED:Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;

    goto :goto_5

    :cond_9
    if-nez v1, :cond_a

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;->f:Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;

    sget-object v5, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;->DISABLED:Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;

    if-ne v3, v5, :cond_a

    sget-object v3, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;->NORMAL:Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;

    goto :goto_5

    :cond_a
    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;->f:Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;

    :goto_5
    invoke-static {v2, v3, v6}, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;->a(Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;I)Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    invoke-interface {v0, p0, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    return-void
.end method

.method public final F1()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$requestShoppingBag$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$requestShoppingBag$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final G8()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->F:Lkotlinx/coroutines/flow/SharedFlow;

    return-object p0
.end method

.method public final H8()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$resetCartContainerOnResume$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$resetCartContainerOnResume$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final I(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->I(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V

    return-void
.end method

.method public final J6(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->T:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/cart/models/CartItemIdUiModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartItemIdUiModel;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/vuitton/android/presentation/screen/cart/models/CartItemIdUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_2

    invoke-interface {p0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final M1(Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->M1(Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final M5(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;I)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p1, p0, v2}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateQuantity$1;-><init>(ILcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final O9()Lkotlinx/coroutines/flow/SharedFlowImpl;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->C:Lkotlinx/coroutines/flow/SharedFlowImpl;

    return-object p0
.end method

.method public final P4(ZLcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;)V
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$removeItemFromCart$1;-><init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;ZLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final Q0()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->Q0()V

    return-void
.end method

.method public final S0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->S0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final W9(Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->K:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    invoke-static {p1, v0}, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel;Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->c:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :cond_0
    return-void
.end method

.method public final Za()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$getCartFullWithMonitoring$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$getCartFullWithMonitoring$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->Z:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final a9(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$requestAddToWishlist$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$requestAddToWishlist$1;-><init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final b()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->X:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final c()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setUserChatConsentEnabled$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setUserChatConsentEnabled$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final f8(Lcom/vuitton/android/presentation/contact/ContactUsMode;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->f8(Lcom/vuitton/android/presentation/contact/ContactUsMode;)V

    return-void
.end method

.method public final fa(Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setGiftOption$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$setGiftOption$1;-><init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final g1(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->T:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/cart/models/CartItemIdUiModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/cart/models/CartItemIdUiModel;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/vuitton/android/presentation/screen/cart/models/CartItemIdUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v2, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$onItemExpanded$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$onItemExpanded$1;-><init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v1, v1, v2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final i()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->i()Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final i9()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->G:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->a(Lkotlinx/coroutines/flow/SharedFlowImpl;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object p0

    return-object p0
.end method

.method public final m4(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->m4(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V

    return-void
.end method

.method public final mc()V
    .locals 3

    sget-object v0, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$ProceedToCheckoutClick;->a:Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$ProceedToCheckoutClick;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->W9(Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$prepareOrder$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final o4()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->D:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final r(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->r(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;)V

    return-void
.end method

.method public final ra(Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;Z)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateSampleState$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$updateSampleState$1;-><init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;ZLcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final s()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->s()V

    return-void
.end method

.method public final uc()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$chooseSamples$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$chooseSamples$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final v4(Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->W:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->v8()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->Ec(Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;Z)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->uc()V

    return-void
.end method

.method public final v8()V
    .locals 7

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->W:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->V:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;->a:Ljava/lang/String;

    if-eqz v5, :cond_1

    invoke-static {v5}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;

    const/4 v5, 0x0

    const/16 v6, 0x3f

    invoke-static {v4, v5, v6}, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;->a(Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;I)Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final vb(ZLcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;)V
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$addItemToWishlist$1;-><init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;ZLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final vc(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->vc(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final x(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->x(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V

    return-void
.end method

.method public final y2()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->B:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final z()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->f:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->z()V

    return-void
.end method
