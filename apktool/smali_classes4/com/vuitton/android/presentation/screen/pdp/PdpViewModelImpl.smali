.class public final Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;
.implements Lcom/vuitton/android/presentation/contact/ContactUsDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001YB\u00d9\u0002\u0008\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0018\u001a\u00020\u0003\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020\'\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u0010,\u001a\u00020+\u0012\u0006\u0010.\u001a\u00020-\u0012\u0006\u00100\u001a\u00020/\u0012\u0006\u00102\u001a\u000201\u0012\u0006\u00104\u001a\u000203\u0012\u0006\u00106\u001a\u000205\u0012\u0006\u00108\u001a\u000207\u0012\u0006\u0010:\u001a\u000209\u0012\u0006\u0010<\u001a\u00020;\u0012\u0006\u0010>\u001a\u00020=\u0012\u0006\u0010@\u001a\u00020?\u0012\u0006\u0010B\u001a\u00020A\u0012\u0006\u0010D\u001a\u00020C\u0012\u0006\u0010F\u001a\u00020E\u0012\u0006\u0010H\u001a\u00020G\u0012\u0006\u0010J\u001a\u00020I\u0012\u0006\u0010L\u001a\u00020K\u0012\u0006\u0010N\u001a\u00020M\u0012\u0006\u0010P\u001a\u00020O\u0012\u0006\u0010R\u001a\u00020Q\u0012\u0006\u0010T\u001a\u00020S\u0012\u0006\u0010V\u001a\u00020U\u00a2\u0006\u0004\u0008W\u0010X\u00a8\u0006Z"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;",
        "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;",
        "Landroidx/lifecycle/SavedStateHandle;",
        "savedStateHandle",
        "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;",
        "requireCachedAppConfigUseCase",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/domain/monitoring/Monitor;",
        "monitor",
        "Landroid/app/Application;",
        "application",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;",
        "pdpTracker",
        "Lcom/vuitton/android/core/events/LVEventSender;",
        "eventSender",
        "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;",
        "appsFlyerTracker",
        "contactUsDelegate",
        "Lcom/vuitton/android/domain/service/authentication/UserSessionService;",
        "userSessionService",
        "Lcom/vuitton/android/presentation/notification/NotificationBuilder;",
        "notificationBuilder",
        "Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase;",
        "getSizeGuideUseCase",
        "Lcom/vuitton/android/domain/usecase/legal/GetLegalConsentUseCase;",
        "getLegalConsentUseCase",
        "Lcom/vuitton/android/domain/usecase/pdp/customization/GetCustomizationUseCase;",
        "getCustomizationUseCase",
        "Lcom/vuitton/android/domain/usecase/cart/AddProductToCartUseCase;",
        "addProductToCartUseCase",
        "Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;",
        "disableStoreModeUseCase",
        "Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase;",
        "getProductDetailUseCase",
        "Lcom/vuitton/android/domain/usecase/pdp/vto/SetBeautyConsentUseCase;",
        "setBeautyConsentUseCase",
        "Lcom/vuitton/android/domain/usecase/pdp/customization/SaveCustomizationUseCase;",
        "saveCustomizationUseCase",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase;",
        "getYmalProductListUseCase",
        "Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;",
        "getECommerceStatusUseCase",
        "Lcom/vuitton/android/domain/usecase/pdp/vto/HasConsentedBeautyUseCase;",
        "hasConsentedBeautyUseCase",
        "Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;",
        "isProductInWishlistUseCase",
        "Lcom/vuitton/android/domain/usecase/pdp/customization/RemoveCustomizationUseCase;",
        "removeCustomizationUseCase",
        "Lcom/vuitton/android/domain/usecase/pdp/backinstock/SubscribeBackInStockUseCase;",
        "subscribeBackInStockUseCase",
        "Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;",
        "addProductToWishlistUseCase",
        "Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;",
        "isStoreModeStillValidUseCase",
        "Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;",
        "getAccessibilityValueUseCase",
        "Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase;",
        "getProductAvailabilityUseCase",
        "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;",
        "reportDYAddToCartEventUseCase",
        "Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYPdpChooseVariationUseCase;",
        "getDYPdpChooseVariationUseCase",
        "Lcom/vuitton/android/domain/usecase/products/GetCrossSellProductListUseCase;",
        "getCrossSellProductListUseCase",
        "Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase;",
        "saveLastViewedProductSkuUseCase",
        "Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;",
        "deleteProductFromWishlistUseCase",
        "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;",
        "reportDYAddToWishlistEventUseCase",
        "Lcom/vuitton/android/domain/usecase/products/GetProductVariationsAvailabilityUseCase;",
        "getProductVariationsAvailabilityUseCase",
        "Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;",
        "getConsentForCustomisationTrackerUseCase",
        "Lcom/vuitton/android/domain/usecase/aicompanion/HasAITooltipBeenDisplayedUseCase;",
        "hasAITooltipBeenDisplayedUseCase",
        "Lcom/vuitton/android/domain/usecase/aicompanion/UpdateAITooltipVisibilityUseCase;",
        "updateAITooltipVisibilityUseCase",
        "<init>",
        "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Landroid/app/Application;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase;Lcom/vuitton/android/domain/usecase/legal/GetLegalConsentUseCase;Lcom/vuitton/android/domain/usecase/pdp/customization/GetCustomizationUseCase;Lcom/vuitton/android/domain/usecase/cart/AddProductToCartUseCase;Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase;Lcom/vuitton/android/domain/usecase/pdp/vto/SetBeautyConsentUseCase;Lcom/vuitton/android/domain/usecase/pdp/customization/SaveCustomizationUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase;Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;Lcom/vuitton/android/domain/usecase/pdp/vto/HasConsentedBeautyUseCase;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/domain/usecase/pdp/customization/RemoveCustomizationUseCase;Lcom/vuitton/android/domain/usecase/pdp/backinstock/SubscribeBackInStockUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYPdpChooseVariationUseCase;Lcom/vuitton/android/domain/usecase/products/GetCrossSellProductListUseCase;Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;Lcom/vuitton/android/domain/usecase/products/GetProductVariationsAvailabilityUseCase;Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;Lcom/vuitton/android/domain/usecase/aicompanion/HasAITooltipBeenDisplayedUseCase;Lcom/vuitton/android/domain/usecase/aicompanion/UpdateAITooltipVisibilityUseCase;)V",
        "Companion",
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


# static fields
.field public static final synthetic z0:I


# instance fields
.field public final A:Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;

.field public final B:Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;

.field public final C:Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase;

.field public final D:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;

.field public final E:Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYPdpChooseVariationUseCase;

.field public final F:Lcom/vuitton/android/domain/usecase/products/GetCrossSellProductListUseCase;

.field public final G:Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase;

.field public final H:Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;

.field public final I:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;

.field public final J:Lcom/vuitton/android/domain/usecase/products/GetProductVariationsAvailabilityUseCase;

.field public final K:Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;

.field public final L:Lcom/vuitton/android/domain/usecase/aicompanion/HasAITooltipBeenDisplayedUseCase;

.field public final M:Lcom/vuitton/android/domain/usecase/aicompanion/UpdateAITooltipVisibilityUseCase;

.field public final N:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final O:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

.field public final P:Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;

.field public final Q:Ljava/lang/String;

.field public final R:Ljava/lang/String;

.field public final S:Ljava/lang/String;

.field public final T:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;

.field public final U:Z

.field public final V:Z

.field public final W:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final X:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final Y:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final Z:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final a0:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final b:Lcom/vuitton/foundation/logger/Logger;

.field public final b0:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final c:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final c0:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final d:Landroid/app/Application;

.field public final d0:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final e:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final e0:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final f:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;

.field public final f0:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final g:Lcom/vuitton/android/core/events/LVEventSender;

.field public final g0:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final h:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

.field public final h0:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final i:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

.field public final i0:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final j:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

.field public final j0:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final k:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

.field public final k0:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final l:Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase;

.field public final l0:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final m:Lcom/vuitton/android/domain/usecase/legal/GetLegalConsentUseCase;

.field public final m0:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final n:Lcom/vuitton/android/domain/usecase/pdp/customization/GetCustomizationUseCase;

.field public final n0:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final o:Lcom/vuitton/android/domain/usecase/cart/AddProductToCartUseCase;

.field public final o0:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final p:Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;

.field public final p0:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final q:Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase;

.field public final q0:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final r:Lcom/vuitton/android/domain/usecase/pdp/vto/SetBeautyConsentUseCase;

.field public final r0:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final s:Lcom/vuitton/android/domain/usecase/pdp/customization/SaveCustomizationUseCase;

.field public final s0:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final t:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final t0:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final u:Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase;

.field public final u0:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final v:Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;

.field public final v0:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final w:Lcom/vuitton/android/domain/usecase/pdp/vto/HasConsentedBeautyUseCase;

.field public final w0:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final x:Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;

.field public final x0:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final y:Lcom/vuitton/android/domain/usecase/pdp/customization/RemoveCustomizationUseCase;

.field public final y0:Lkotlinx/coroutines/flow/StateFlow;

.field public final z:Lcom/vuitton/android/domain/usecase/pdp/backinstock/SubscribeBackInStockUseCase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Landroid/app/Application;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase;Lcom/vuitton/android/domain/usecase/legal/GetLegalConsentUseCase;Lcom/vuitton/android/domain/usecase/pdp/customization/GetCustomizationUseCase;Lcom/vuitton/android/domain/usecase/cart/AddProductToCartUseCase;Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase;Lcom/vuitton/android/domain/usecase/pdp/vto/SetBeautyConsentUseCase;Lcom/vuitton/android/domain/usecase/pdp/customization/SaveCustomizationUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase;Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;Lcom/vuitton/android/domain/usecase/pdp/vto/HasConsentedBeautyUseCase;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/domain/usecase/pdp/customization/RemoveCustomizationUseCase;Lcom/vuitton/android/domain/usecase/pdp/backinstock/SubscribeBackInStockUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYPdpChooseVariationUseCase;Lcom/vuitton/android/domain/usecase/products/GetCrossSellProductListUseCase;Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;Lcom/vuitton/android/domain/usecase/products/GetProductVariationsAvailabilityUseCase;Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;Lcom/vuitton/android/domain/usecase/aicompanion/HasAITooltipBeenDisplayedUseCase;Lcom/vuitton/android/domain/usecase/aicompanion/UpdateAITooltipVisibilityUseCase;)V
    .locals 43
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-object/from16 v3, p8

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    invoke-virtual/range {p34 .. p34}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p35 .. p35}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p36 .. p36}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p37 .. p37}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p38 .. p38}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p39 .. p39}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p40 .. p40}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p41 .. p41}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p42 .. p42}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v2}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    move-object/from16 v5, p4

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->d:Landroid/app/Application;

    move-object/from16 v2, p7

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->e:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->f:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;

    move-object/from16 v2, p9

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->g:Lcom/vuitton/android/core/events/LVEventSender;

    move-object/from16 v2, p10

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->h:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

    move-object/from16 v2, p11

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->i:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    move-object/from16 v2, p12

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->j:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-object/from16 v5, p13

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->k:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-object/from16 v5, p14

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase;

    move-object/from16 v5, p15

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->m:Lcom/vuitton/android/domain/usecase/legal/GetLegalConsentUseCase;

    move-object/from16 v5, p16

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->n:Lcom/vuitton/android/domain/usecase/pdp/customization/GetCustomizationUseCase;

    move-object/from16 v5, p17

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->o:Lcom/vuitton/android/domain/usecase/cart/AddProductToCartUseCase;

    move-object/from16 v5, p18

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->p:Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;

    move-object/from16 v5, p19

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->q:Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase;

    move-object/from16 v5, p20

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->r:Lcom/vuitton/android/domain/usecase/pdp/vto/SetBeautyConsentUseCase;

    move-object/from16 v5, p21

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->s:Lcom/vuitton/android/domain/usecase/pdp/customization/SaveCustomizationUseCase;

    move-object/from16 v5, p22

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->t:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-object/from16 v5, p23

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->u:Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase;

    move-object/from16 v5, p24

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->v:Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;

    move-object/from16 v5, p25

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->w:Lcom/vuitton/android/domain/usecase/pdp/vto/HasConsentedBeautyUseCase;

    move-object/from16 v5, p26

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->x:Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;

    move-object/from16 v5, p27

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->y:Lcom/vuitton/android/domain/usecase/pdp/customization/RemoveCustomizationUseCase;

    move-object/from16 v5, p28

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->z:Lcom/vuitton/android/domain/usecase/pdp/backinstock/SubscribeBackInStockUseCase;

    move-object/from16 v5, p29

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->A:Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;

    move-object/from16 v5, p30

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->B:Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;

    move-object/from16 v5, p32

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->C:Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase;

    move-object/from16 v5, p33

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->D:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;

    move-object/from16 v5, p34

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->E:Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYPdpChooseVariationUseCase;

    move-object/from16 v5, p35

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->F:Lcom/vuitton/android/domain/usecase/products/GetCrossSellProductListUseCase;

    move-object/from16 v5, p36

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->G:Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase;

    move-object/from16 v5, p37

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->H:Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;

    move-object/from16 v5, p38

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->I:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;

    move-object/from16 v5, p39

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->J:Lcom/vuitton/android/domain/usecase/products/GetProductVariationsAvailabilityUseCase;

    move-object/from16 v5, p40

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->K:Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;

    move-object/from16 v5, p41

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->L:Lcom/vuitton/android/domain/usecase/aicompanion/HasAITooltipBeenDisplayedUseCase;

    move-object/from16 v5, p42

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->M:Lcom/vuitton/android/domain/usecase/aicompanion/UpdateAITooltipVisibilityUseCase;

    move-object/from16 v5, p3

    iget-object v5, v5, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {v5}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->N:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-virtual/range {p2 .. p2}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->O:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    const-string v6, "CATALOG_MODE"

    invoke-virtual {v1, v6}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->P:Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;

    const-string v6, "STORE_RMS_CODE"

    invoke-virtual {v1, v6}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->Q:Ljava/lang/String;

    const-string v8, "CATEGORY_ID"

    invoke-virtual {v1, v8}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->R:Ljava/lang/String;

    const-string v8, "SKU"

    invoke-virtual {v1, v8}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    sget-object v10, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    goto :goto_0

    :cond_0
    move-object v8, v9

    :goto_0
    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->S:Ljava/lang/String;

    const-string v10, "CUSTOMIZATION_ID"

    invoke-virtual {v1, v10}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->T:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;

    const-string v10, "IS_EXCLUSIVE_SALE"

    invoke-virtual {v1, v10}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    iput-boolean v10, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->U:Z

    const-string v10, "IS_FROM_NATIVE_SHARE"

    invoke-virtual {v1, v10}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->V:Z

    invoke-static {v9}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->W:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v12

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->X:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v13

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->Y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v14

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->Z:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v15

    iput-object v15, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->a0:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p2, v9

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v9

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->b0:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v11

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->c0:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->d0:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v16, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;

    const/16 v17, 0x3fff

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

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 p13, v16

    move/from16 p28, v17

    move-object/from16 p29, v18

    move/from16 p14, v19

    move/from16 p15, v20

    move/from16 p16, v21

    move/from16 p17, v22

    move/from16 p18, v23

    move/from16 p19, v24

    move/from16 p20, v25

    move/from16 p21, v26

    move/from16 p22, v27

    move/from16 p23, v28

    move/from16 p24, v29

    move/from16 p25, v30

    move/from16 p26, v31

    move/from16 p27, v32

    invoke-direct/range {p13 .. p29}, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;-><init>(ZZZZZZZZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 p1, v2

    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->e0:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v16, Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;

    const/16 v17, 0x7f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 p13, v16

    move/from16 p21, v17

    move-object/from16 p22, v18

    move-object/from16 p14, v19

    move-object/from16 p15, v20

    move-object/from16 p16, v21

    move-object/from16 p17, v22

    move-object/from16 p18, v23

    move-object/from16 p19, v24

    move-object/from16 p20, v25

    invoke-direct/range {p13 .. p22}, Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/PdpVirtualStudioConfigValues;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v17, v8

    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v8

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->f0:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p4, v2

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->g0:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p5, v2

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->h0:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-virtual/range {p12 .. p12}, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->b()Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 p6, v2

    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->i0:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p7, v2

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->j0:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p9, v6

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->k0:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p10, v7

    invoke-static/range {p2 .. p2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->l0:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p11, v7

    invoke-static/range {p2 .. p2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->m0:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p12, v7

    invoke-static/range {p2 .. p2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->n0:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {}, Lkotlinx/collections/immutable/implementations/immutableList/UtilsKt;->b()Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;

    move-result-object v16

    move-object/from16 p13, v7

    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->o0:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v16, ""

    move-object/from16 p14, v7

    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->p0:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {}, Lkotlinx/collections/immutable/implementations/immutableList/UtilsKt;->b()Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;

    move-result-object v16

    move-object/from16 p15, v7

    invoke-static/range {v16 .. v16}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->q0:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p16, v7

    invoke-static/range {p2 .. p2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->r0:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p17, v8

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v8

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->s0:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p18, v8

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v8

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->t0:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v10}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v10

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->u0:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object/from16 p19, v7

    const/4 v7, 0x7

    move-object/from16 p20, v9

    move-object/from16 v9, p2

    move-object/from16 p2, p20

    move-object/from16 p20, v8

    const/4 v8, 0x0

    invoke-static {v8, v7, v9}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->v0:Lkotlinx/coroutines/channels/BufferedChannel;

    const/4 v7, 0x7

    invoke-static {v8, v7, v9}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->w0:Lkotlinx/coroutines/channels/BufferedChannel;

    const/4 v7, 0x7

    invoke-static {v8, v7, v9}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v7

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->x0:Lkotlinx/coroutines/channels/BufferedChannel;

    new-instance v7, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$shouldShowCancelProductCustomizationBottomSheet$1;

    move/from16 p3, v8

    const/4 v8, 0x4

    invoke-direct {v7, v8, v9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-static {v1, v2, v6, v7}, Lkotlinx/coroutines/flow/FlowKt;->h(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object v2

    const/16 v6, 0x18

    new-array v6, v6, [Lkotlinx/coroutines/flow/Flow;

    aput-object v1, v6, p3

    const/4 v1, 0x1

    aput-object v12, v6, v1

    const/4 v1, 0x2

    aput-object v13, v6, v1

    const/4 v1, 0x3

    aput-object v14, v6, v1

    const/4 v1, 0x4

    aput-object v15, v6, v1

    const/4 v1, 0x5

    aput-object p2, v6, v1

    const/4 v1, 0x6

    aput-object p1, v6, v1

    const/4 v1, 0x7

    aput-object v11, v6, v1

    const/16 v1, 0x8

    aput-object p4, v6, v1

    const/16 v1, 0x9

    aput-object p17, v6, v1

    const/16 v1, 0xa

    aput-object p5, v6, v1

    const/16 v1, 0xb

    aput-object p6, v6, v1

    const/16 v1, 0xc

    aput-object p7, v6, v1

    const/16 v1, 0xd

    aput-object v2, v6, v1

    const/16 v1, 0xe

    aput-object p11, v6, v1

    const/16 v1, 0xf

    aput-object p12, v6, v1

    const/16 v1, 0x10

    aput-object p13, v6, v1

    const/16 v1, 0x11

    aput-object p14, v6, v1

    const/16 v1, 0x12

    aput-object p15, v6, v1

    const/16 v1, 0x13

    aput-object p16, v6, v1

    const/16 v1, 0x14

    aput-object p19, v6, v1

    const/16 v1, 0x15

    aput-object p18, v6, v1

    const/16 v1, 0x16

    aput-object p20, v6, v1

    const/16 v1, 0x17

    aput-object v10, v6, v1

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$special$$inlined$combine$1;

    invoke-direct {v1, v6, v0}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v2

    sget-object v6, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    move-object v7, v6

    new-instance v6, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;

    const v36, 0x1ffffffe

    const/16 v37, 0x0

    const/4 v8, 0x0

    move-object v10, v9

    const/4 v9, 0x0

    move-object v11, v10

    const/4 v10, 0x0

    move-object v12, v11

    const/4 v11, 0x0

    move-object v13, v12

    const/4 v12, 0x0

    move-object v14, v13

    const/4 v13, 0x0

    move-object v15, v14

    const/4 v14, 0x0

    move-object/from16 v16, v15

    const/4 v15, 0x0

    move-object/from16 v18, v16

    const/16 v16, 0x0

    move-object/from16 v19, v17

    const/16 v17, 0x0

    move-object/from16 v20, v18

    const/16 v18, 0x0

    move-object/from16 v21, v19

    const/16 v19, 0x0

    move-object/from16 v22, v20

    const/16 v20, 0x0

    move-object/from16 v23, v21

    const/16 v21, 0x0

    move-object/from16 v24, v22

    const/16 v22, 0x0

    move-object/from16 v25, v23

    const/16 v23, 0x0

    move-object/from16 v26, v24

    const/16 v24, 0x0

    move-object/from16 v27, v25

    const/16 v25, 0x0

    move-object/from16 v28, v26

    const/16 v26, 0x0

    move-object/from16 v29, v27

    const/16 v27, 0x0

    move-object/from16 v30, v28

    const/16 v28, 0x0

    move-object/from16 v31, v29

    const/16 v29, 0x0

    move-object/from16 v32, v30

    const/16 v30, 0x0

    move-object/from16 v33, v31

    const/16 v31, 0x0

    move-object/from16 v34, v32

    const/16 v32, 0x0

    move-object/from16 v35, v33

    const/16 v33, 0x0

    move-object/from16 v38, v34

    const/16 v34, 0x0

    move-object/from16 v39, v35

    const/16 v35, 0x0

    move-object/from16 v40, p17

    move-object/from16 v41, p18

    move-object/from16 v42, p20

    move-object/from16 p3, v5

    move-object v4, v7

    move-object/from16 v5, v39

    move-object/from16 v7, p10

    invoke-direct/range {v6 .. v37}, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;ZZZZZZLcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;Lcom/vuitton/android/presentation/screen/pdp/models/StoreButtonType;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeGuideUiModel;ZLkotlinx/collections/immutable/ImmutableList;ZZZLjava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;Lkotlinx/collections/immutable/ImmutableList;ZLcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1, v2, v4, v6}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->y0:Lkotlinx/coroutines/flow/StateFlow;

    iput-object v5, v3, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->b:Ljava/lang/String;

    move-object/from16 v6, p9

    iput-object v6, v3, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->d:Ljava/lang/String;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initPdpTracker$1;

    const/4 v9, 0x0

    invoke-direct {v2, v9, v0}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initPdpTracker$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;)V

    const/4 v3, 0x3

    invoke-static {v1, v9, v9, v2, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-object/from16 v1, p3

    iget-object v2, v1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->J:Ljava/lang/String;

    iget-object v3, v1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->k:Ljava/lang/String;

    iget-object v4, v1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->e:Ljava/lang/String;

    iget-object v6, v1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->w:Ljava/lang/String;

    iget-object v7, v1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->p:Ljava/lang/String;

    iget-object v8, v1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->g:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->T:Lcom/vuitton/foundation/model/domain/model/config/VirtualStudioConfig;

    if-eqz v1, :cond_3

    iget-object v9, v1, Lcom/vuitton/foundation/model/domain/model/config/VirtualStudioConfig;->c:Ljava/util/List;

    iget-object v10, v1, Lcom/vuitton/foundation/model/domain/model/config/VirtualStudioConfig;->b:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    move-object v11, v9

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    new-instance v11, Lcom/vuitton/android/presentation/screen/pdp/models/PdpVirtualStudioConfigValues;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/config/VirtualStudioConfig;->a:Ljava/lang/String;

    invoke-direct {v11, v1, v10, v9}, Lcom/vuitton/android/presentation/screen/pdp/models/PdpVirtualStudioConfigValues;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    move-object v9, v11

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;

    move-object/from16 p3, v1

    move-object/from16 p4, v2

    move-object/from16 p5, v3

    move-object/from16 p6, v4

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    move-object/from16 p9, v8

    move-object/from16 p10, v9

    invoke-direct/range {p3 .. p10}, Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/PdpVirtualStudioConfigValues;)V

    move-object/from16 v2, p3

    move-object/from16 v1, v40

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;->SIMPLIFY_NAVIGATION:Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;

    move-object/from16 v4, p31

    invoke-virtual {v4, v1}, Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;->a(Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, v1, Lkotlin/Result$Failure;

    if-nez v2, :cond_4

    check-cast v1, Ljava/lang/Boolean;

    move-object/from16 v2, v41

    invoke-interface {v2, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_4
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;->DISABLE_AUTOPLAY:Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;

    invoke-virtual {v4, v1}, Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;->a(Lcom/vuitton/foundation/model/domain/model/account/accessibility/AccessibilityPreferenceType;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lkotlin/Result$Failure;

    if-nez v2, :cond_5

    check-cast v1, Ljava/lang/Boolean;

    move-object/from16 v2, v42

    invoke-interface {v2, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_5
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$1;

    const/4 v9, 0x0

    invoke-direct {v2, v9, v0}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;)V

    const/4 v3, 0x3

    invoke-static {v1, v9, v9, v2, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$collectLoginState$1;

    invoke-direct {v2, v9, v0}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$collectLoginState$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;)V

    invoke-static {v1, v9, v9, v2, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$listenToWishlistEvents$1;

    invoke-direct {v2, v9, v0}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$listenToWishlistEvents$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;)V

    invoke-static {v1, v9, v9, v2, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    if-eqz v5, :cond_6

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getDynamicYieldChooseVariation$1$1;

    invoke-direct {v2, v0, v5, v9}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getDynamicYieldChooseVariation$1$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x3

    invoke-static {v1, v9, v9, v2, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_6
    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$2;

    invoke-direct {v2, v9, v0}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;)V

    const/4 v0, 0x3

    invoke-static {v1, v9, v9, v2, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final Ac(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Enum;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getAvailability$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getAvailability$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getAvailability$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getAvailability$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getAvailability$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getAvailability$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getAvailability$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getAvailability$1;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getAvailability$1;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->T:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel;

    instance-of v2, p2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel$SellableUiModel;

    if-eqz v2, :cond_6

    iget-object p2, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->R:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;

    if-eqz p2, :cond_3

    iget-boolean p2, p2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->e:Z

    if-ne p2, v4, :cond_3

    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;->AddToCart:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;

    return-object p0

    :cond_3
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->t:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object p2, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->BACK_IN_STOCK:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->BATCH_SDK:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {p2, v2}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object p2

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getAvailability$1;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iput v4, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getAvailability$1;->e:I

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v2, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_5

    iget-boolean p0, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->I:Z

    if-eqz p0, :cond_5

    iget-object p0, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->R:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;

    if-eqz p0, :cond_5

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->e:Z

    if-nez p0, :cond_5

    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;->DisplayBackInStock:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;

    return-object p0

    :cond_5
    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;->CallForAvailability:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;

    return-object p0

    :cond_6
    instance-of p1, p2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel$NotSellableUiModel;

    if-eqz p1, :cond_c

    check-cast p2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel$NotSellableUiModel;

    iget-object p1, p2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel$NotSellableUiModel;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel;

    instance-of p2, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel$MandatoryCustomizationUiModel;

    if-eqz p2, :cond_7

    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;->CallForAvailability:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;

    return-object p0

    :cond_7
    instance-of p2, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel$NotECommerceUiModel;

    if-eqz p2, :cond_8

    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;->DisplayNotECommerceInfo:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;

    return-object p0

    :cond_8
    instance-of p2, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel$WebOnlyUiModel;

    if-eqz p2, :cond_9

    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;->GoToWebsiteProductPage:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;

    return-object p0

    :cond_9
    instance-of p1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel$UnavailableUiModel;

    if-eqz p1, :cond_b

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->y0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->j:Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;->e:Ljava/lang/String;

    if-eqz p0, :cond_a

    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;->GoToEmailUsWebsite:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;

    return-object p0

    :cond_a
    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;->CallForAvailability:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;

    return-object p0

    :cond_b
    invoke-static {}, Lv40;->g()V

    return-object v3

    :cond_c
    invoke-static {}, Lv40;->g()V

    return-object v3
.end method

.method public static final Bc(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->t:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->l0:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v7, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->W:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v8, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->N:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v9, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->O:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    instance-of v10, v3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleProductSuccess$1;

    if-eqz v10, :cond_0

    move-object v10, v3

    check-cast v10, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleProductSuccess$1;

    iget v11, v10, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleProductSuccess$1;->h:I

    const/high16 v12, -0x80000000

    and-int v13, v11, v12

    if-eqz v13, :cond_0

    sub-int/2addr v11, v12

    iput v11, v10, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleProductSuccess$1;->h:I

    goto :goto_0

    :cond_0
    new-instance v10, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleProductSuccess$1;

    invoke-direct {v10, v1, v3}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleProductSuccess$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v3, v10, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleProductSuccess$1;->f:Ljava/lang/Object;

    sget-object v11, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v12, v10, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleProductSuccess$1;->h:I

    const-string v13, "sku"

    const/4 v15, 0x1

    const/4 v14, 0x0

    if-eqz v12, :cond_4

    if-eq v12, v15, :cond_3

    const/4 v0, 0x2

    if-eq v12, v0, :cond_2

    const/4 v0, 0x3

    if-ne v12, v0, :cond_1

    iget-object v0, v10, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleProductSuccess$1;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v5, v3

    move v3, v15

    const/4 v2, 0x0

    goto/16 :goto_b

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v14

    :cond_2
    iget-boolean v0, v10, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleProductSuccess$1;->e:Z

    iget-object v2, v10, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleProductSuccess$1;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object v12, v10, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleProductSuccess$1;->b:Ljava/lang/String;

    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v27, v2

    move v2, v0

    move-object/from16 v0, v27

    goto/16 :goto_6

    :cond_3
    iget-boolean v0, v10, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleProductSuccess$1;->e:Z

    iget-object v2, v10, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleProductSuccess$1;->d:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    iget-object v12, v10, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleProductSuccess$1;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object v14, v10, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleProductSuccess$1;->b:Ljava/lang/String;

    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v15, v2

    goto :goto_3

    :cond_4
    invoke-static {v3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-static {v8}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->e(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->K:Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;

    invoke-virtual {v3}, Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;->a()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v15, p3

    move-object v14, v0

    move-object v12, v2

    :goto_1
    move/from16 v0, p4

    goto :goto_3

    :cond_6
    :goto_2
    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->G:Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase;

    sget-object v12, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    iget-object v12, v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->g:Ljava/lang/String;

    iget-object v14, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->R:Ljava/lang/String;

    iput-object v0, v10, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleProductSuccess$1;->b:Ljava/lang/String;

    iput-object v2, v10, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleProductSuccess$1;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    move-object/from16 v15, p3

    iput-object v15, v10, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleProductSuccess$1;->d:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    move/from16 v2, p4

    iput-boolean v2, v10, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleProductSuccess$1;->e:Z

    const/4 v2, 0x1

    iput v2, v10, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleProductSuccess$1;->h:I

    invoke-virtual {v3, v0, v12, v14, v10}, Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v11, :cond_7

    goto/16 :goto_a

    :cond_7
    move-object/from16 v12, p2

    move-object v14, v0

    goto :goto_1

    :goto_3
    invoke-interface {v7, v12}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->j0:Lkotlinx/coroutines/flow/MutableStateFlow;

    if-eqz v0, :cond_8

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;->NO_CUSTOMIZATION:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    if-eq v15, v3, :cond_8

    const/4 v3, 0x1

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;->NO_CUSTOMIZATION:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    if-eq v15, v2, :cond_9

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->k0:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_9
    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->a1()V

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->p0:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, v12, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->s:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditoUiModel;

    if-eqz v3, :cond_a

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditoUiModel;->e:Ljava/lang/String;

    if-eqz v3, :cond_a

    invoke-static {v3}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    :cond_a
    iget-object v3, v12, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->s:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditoUiModel;

    if-eqz v3, :cond_b

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditoUiModel;->e:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v15, v9, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->e:Ljava/lang/String;

    invoke-static {v3, v15}, Lcom/vuitton/android/presentation/extensions/StringAndroidExtKt;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_b
    const/4 v3, 0x0

    :goto_5
    if-nez v3, :cond_c

    const-string v3, ""

    :cond_c
    invoke-interface {v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->YMAL:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v2}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v2

    iput-object v14, v10, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleProductSuccess$1;->b:Ljava/lang/String;

    iput-object v12, v10, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleProductSuccess$1;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    const/4 v3, 0x0

    iput-object v3, v10, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleProductSuccess$1;->d:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    iput-boolean v0, v10, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleProductSuccess$1;->e:Z

    const/4 v3, 0x2

    iput v3, v10, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleProductSuccess$1;->h:I

    const/4 v3, 0x0

    invoke-virtual {v5, v2, v3, v10}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v11, :cond_d

    goto/16 :goto_a

    :cond_d
    move-object v3, v2

    move v2, v0

    move-object v0, v12

    move-object v12, v14

    :goto_6
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->g0:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v14}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    sget-object v14, Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Action$LoadYouMayAlsoLike;->a:Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Action$LoadYouMayAlsoLike;

    invoke-interface {v3, v8, v14}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v8

    new-instance v14, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getYMALProducts$1;

    const/4 v15, 0x0

    invoke-direct {v14, v1, v12, v3, v15}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getYMALProducts$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Ljava/lang/String;Lcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x3

    invoke-static {v8, v15, v15, v14, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_e
    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->Q:Ljava/lang/String;

    if-eqz v3, :cond_10

    invoke-static {v3}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_7

    :cond_f
    const/4 v3, 0x0

    goto :goto_8

    :cond_10
    :goto_7
    const/4 v3, 0x1

    :goto_8
    if-eqz v3, :cond_17

    iget-object v3, v9, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->o:Ljava/lang/String;

    if-eqz v3, :cond_14

    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->L:Z

    if-eqz v2, :cond_13

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->R:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;

    if-eqz v2, :cond_11

    iget-boolean v2, v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;->d:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    :goto_9
    const/4 v2, 0x0

    goto :goto_c

    :cond_11
    const/4 v3, 0x1

    :cond_12
    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/StoreButtonType;->FIND_IN_STORE:Lcom/vuitton/android/presentation/screen/pdp/models/StoreButtonType;

    invoke-interface {v6, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_9

    :cond_13
    const/4 v3, 0x1

    goto :goto_9

    :cond_14
    const/4 v3, 0x1

    sget-object v8, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->FIND_A_STORE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v8}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v8

    const/4 v15, 0x0

    iput-object v15, v10, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleProductSuccess$1;->b:Ljava/lang/String;

    iput-object v0, v10, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleProductSuccess$1;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iput-object v15, v10, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleProductSuccess$1;->d:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    iput-boolean v2, v10, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleProductSuccess$1;->e:Z

    const/4 v2, 0x3

    iput v2, v10, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleProductSuccess$1;->h:I

    const/4 v2, 0x0

    invoke-virtual {v5, v8, v2, v10}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v11, :cond_15

    :goto_a
    return-object v11

    :cond_15
    :goto_b
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_16

    sget-object v5, Lcom/vuitton/android/presentation/screen/pdp/models/StoreButtonType;->FIND_A_STORE:Lcom/vuitton/android/presentation/screen/pdp/models/StoreButtonType;

    invoke-interface {v6, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_16
    :goto_c
    move-object v5, v0

    goto :goto_d

    :cond_17
    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_c

    :goto_d
    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    if-eqz v0, :cond_1b

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->i:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    sget-object v7, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->d1:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel$Companion;

    iget-object v8, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->R:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v16, Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->c:Ljava/lang/String;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->c1:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductImageUiModel;

    if-eqz v10, :cond_18

    iget-object v10, v10, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductImageUiModel;->b:Ljava/lang/String;

    move-object/from16 v18, v10

    goto :goto_e

    :cond_18
    const/16 v18, 0x0

    :goto_e
    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModelKt;->b(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;

    move-result-object v11

    if-eqz v11, :cond_19

    iget-wide v11, v11, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;->c:D

    new-instance v14, Ljava/math/BigDecimal;

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v14, v11}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v14

    goto :goto_f

    :cond_19
    const/16 v20, 0x0

    :goto_f
    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b:Ljava/lang/String;

    sget-object v12, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModelKt;->b(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;->b:Ljava/lang/String;

    move-object/from16 v24, v0

    goto :goto_10

    :cond_1a
    const/16 v24, 0x0

    :goto_10
    const/16 v25, 0x40

    const/16 v26, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v7

    move-object/from16 v21, v8

    move-object/from16 v19, v10

    move-object/from16 v22, v11

    invoke-direct/range {v16 .. v26}, Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->r(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;)V

    :cond_1b
    new-instance v6, Lcom/batch/android/BatchEventAttributes;

    invoke-direct {v6}, Lcom/batch/android/BatchEventAttributes;-><init>()V

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b:Ljava/lang/String;

    invoke-virtual {v6, v13, v0}, Lcom/batch/android/BatchEventAttributes;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/BatchEventAttributes;

    const-string v0, "product_name"

    iget-object v7, v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->c:Ljava/lang/String;

    invoke-virtual {v6, v0, v7}, Lcom/batch/android/BatchEventAttributes;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/BatchEventAttributes;

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->C:Ljava/lang/String;

    iget-object v7, v9, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->e:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/vuitton/android/presentation/extensions/StringAndroidExtKt;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c

    goto :goto_11

    :cond_1c
    const/4 v0, 0x0

    :goto_11
    const-string v7, "ProductViewModel"

    if-eqz v0, :cond_1d

    :try_start_0
    const-string v8, "product_link"

    invoke-static {v0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->l(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Lcom/batch/android/BatchEventAttributes;->put(Ljava/lang/String;Ljava/net/URI;)Lcom/batch/android/BatchEventAttributes;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_12

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x0

    invoke-interface {v4, v7, v0, v15}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1d
    :goto_12
    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->c1:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductImageUiModel;

    if-eqz v0, :cond_1e

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductImageUiModel;->b:Ljava/lang/String;

    if-eqz v0, :cond_1e

    :try_start_1
    const-string v8, "image_url"

    invoke-static {v0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->l(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Lcom/batch/android/BatchEventAttributes;->put(Ljava/lang/String;Ljava/net/URI;)Lcom/batch/android/BatchEventAttributes;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_13

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x0

    invoke-interface {v4, v7, v0, v15}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1e
    :goto_13
    const-string v0, "visited_product_page"

    invoke-static {v0, v6}, Lcom/batch/android/Batch$Profile;->trackEvent(Ljava/lang/String;Lcom/batch/android/BatchEventAttributes;)V

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->y0:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->j:Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;->d:Ljava/lang/String;

    if-eqz v4, :cond_1f

    iget-boolean v4, v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->K:Z

    if-eqz v4, :cond_1f

    move v14, v3

    goto :goto_14

    :cond_1f
    move v14, v2

    :goto_14
    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->q0:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v2

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->m:Z

    if-nez v0, :cond_22

    iget-boolean v0, v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->P:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/ProductServiceType$TrunkSpeaker;->a:Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/ProductServiceType$TrunkSpeaker;

    invoke-virtual {v2, v0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_20
    iget-boolean v0, v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->Q:Z

    if-eqz v0, :cond_21

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/ProductServiceType$ConnectedObject;->a:Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/ProductServiceType$ConnectedObject;

    invoke-virtual {v2, v0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_21
    if-eqz v14, :cond_22

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/ProductServiceType$AR;->a:Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/ProductServiceType$AR;

    invoke-virtual {v2, v0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_22
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/collections/immutable/ExtensionsKt;->a(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/ImmutableList;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public static final Cc(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->t:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->d:Landroid/app/Application;

    instance-of v4, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;

    iget v5, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->t:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->t:I

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;

    invoke-direct {v4, v0, v1}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v1, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->r:Ljava/lang/Object;

    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v6, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->t:I

    const/4 v9, 0x0

    packed-switch v6, :pswitch_data_0

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v9

    :pswitch_0
    iget-boolean v0, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->q:Z

    iget-boolean v2, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->p:Z

    iget-boolean v3, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->o:Z

    iget-boolean v5, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->n:Z

    iget-boolean v6, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->m:Z

    iget-boolean v9, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->l:Z

    iget-boolean v10, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->k:Z

    iget-boolean v11, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->j:Z

    iget-boolean v12, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->i:Z

    iget-boolean v13, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->h:Z

    iget v14, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->f:I

    iget-boolean v15, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->g:Z

    iget v7, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->e:I

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move/from16 v33, v0

    move/from16 v32, v2

    move/from16 v31, v3

    move/from16 v30, v5

    move/from16 v28, v6

    move/from16 v29, v9

    move/from16 v27, v10

    move/from16 v26, v11

    move/from16 v25, v12

    move/from16 v24, v13

    move/from16 v21, v15

    const/4 v2, 0x0

    goto/16 :goto_d

    :pswitch_1
    iget-boolean v0, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->p:Z

    iget-boolean v3, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->o:Z

    iget-boolean v6, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->n:Z

    iget-boolean v7, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->m:Z

    iget-boolean v10, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->l:Z

    iget-boolean v11, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->k:Z

    iget-boolean v12, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->j:Z

    iget-boolean v13, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->i:Z

    iget-boolean v14, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->h:Z

    iget v15, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->f:I

    iget-boolean v9, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->g:Z

    iget v8, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->e:I

    move/from16 p0, v0

    iget v0, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->d:I

    move/from16 v17, v0

    iget-object v0, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v35, v5

    move/from16 v5, p0

    move-object/from16 p0, v1

    move v1, v9

    move v9, v7

    move-object v7, v0

    move/from16 v0, v17

    move-object/from16 v17, v35

    move/from16 v35, v6

    move v6, v3

    move v3, v15

    move v15, v14

    move v14, v13

    move v13, v12

    move v12, v11

    move v11, v10

    move v10, v8

    move/from16 v8, v35

    goto/16 :goto_b

    :pswitch_2
    iget-boolean v0, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->o:Z

    iget-boolean v3, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->n:Z

    iget-boolean v6, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->m:Z

    iget-boolean v7, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->l:Z

    iget-boolean v8, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->k:Z

    iget-boolean v9, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->j:Z

    iget-boolean v10, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->i:Z

    iget-boolean v11, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->h:Z

    iget v12, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->f:I

    iget-boolean v13, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->g:Z

    iget v14, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->e:I

    iget v15, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->d:I

    move/from16 v17, v0

    iget-object v0, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 p0, v1

    move-object v1, v0

    move-object v0, v5

    move v5, v14

    move v14, v15

    move v15, v13

    move v13, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v3

    move/from16 v3, v17

    goto/16 :goto_a

    :pswitch_3
    iget-boolean v0, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->n:Z

    iget-boolean v3, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->m:Z

    iget-boolean v6, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->l:Z

    iget-boolean v7, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->k:Z

    iget-boolean v8, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->j:Z

    iget-boolean v9, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->i:Z

    iget-boolean v10, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->h:Z

    iget v11, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->f:I

    iget-boolean v12, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->g:Z

    iget v13, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->e:I

    iget v14, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->d:I

    iget-object v15, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move/from16 v35, v3

    move v3, v0

    move-object v0, v15

    move v15, v13

    move v13, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move/from16 v6, v35

    goto/16 :goto_9

    :pswitch_4
    iget-boolean v0, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->m:Z

    iget-boolean v3, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->l:Z

    iget-boolean v6, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->k:Z

    iget-boolean v7, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->j:Z

    iget-boolean v8, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->i:Z

    iget-boolean v9, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->h:Z

    iget v10, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->f:I

    iget-boolean v11, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->g:Z

    iget v12, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->e:I

    iget v13, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->d:I

    iget-object v14, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_5
    iget-boolean v0, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->l:Z

    iget-boolean v3, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->k:Z

    iget-boolean v6, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->j:Z

    iget-boolean v7, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->i:Z

    iget-boolean v8, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->h:Z

    iget v9, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->f:I

    iget-boolean v10, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->g:Z

    iget v11, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->e:I

    iget v12, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->d:I

    iget-object v13, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v14, v6

    move v6, v3

    move v3, v8

    move v8, v7

    move v7, v14

    move-object v14, v13

    move v13, v11

    move v11, v10

    move v10, v9

    const/4 v9, 0x1

    goto/16 :goto_7

    :pswitch_6
    iget-boolean v0, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->k:Z

    iget-boolean v3, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->j:Z

    iget-boolean v6, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->i:Z

    iget-boolean v7, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->h:Z

    iget v8, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->f:I

    iget-boolean v9, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->g:Z

    iget v10, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->e:I

    iget v11, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->d:I

    iget-object v12, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v13, v11

    move v11, v10

    move v10, v9

    const/4 v9, 0x1

    goto/16 :goto_6

    :pswitch_7
    iget-boolean v0, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->h:Z

    iget v3, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->f:I

    iget-boolean v6, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->g:Z

    iget v7, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->e:I

    iget v8, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->d:I

    iget-object v9, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v10, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->b:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v12, v7

    move v7, v0

    move v0, v12

    move-object v12, v9

    const/4 v9, 0x1

    goto/16 :goto_5

    :pswitch_8
    iget v6, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->d:I

    iget-object v7, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v8, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->b:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v10, v8

    const/4 v9, 0x1

    goto :goto_2

    :pswitch_9
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->O:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->e0:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v6, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->TWIST:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v6}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v6

    iput-object v1, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->b:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iput-object v7, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v8, 0x0

    iput v8, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->d:I

    const/4 v9, 0x1

    iput v9, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->t:I

    invoke-virtual {v2, v6, v8, v4}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v5, :cond_1

    :goto_1
    move-object v0, v5

    goto/16 :goto_c

    :cond_1
    move-object v10, v1

    move-object v1, v6

    const/4 v6, 0x0

    :goto_2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->v:Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;

    invoke-virtual {v0}, Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;->a()Lcom/vuitton/foundation/model/domain/model/product/availability/ECommerceStatus;

    move-result-object v0

    sget-object v8, Lcom/vuitton/foundation/model/domain/model/product/availability/ECommerceStatus;->Enabled:Lcom/vuitton/foundation/model/domain/model/product/availability/ECommerceStatus;

    if-ne v0, v8, :cond_2

    move v0, v9

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lcom/vuitton/android/presentation/utils/ArUtils;->a(Landroid/content/Context;)Z

    move-result v8

    iget-object v11, v10, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->w:Ljava/lang/String;

    if-eqz v11, :cond_3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/vuitton/android/presentation/utils/ArUtils;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v9

    goto :goto_4

    :cond_3
    const/4 v3, 0x0

    :goto_4
    sget-object v11, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->DIAMONDS_PDP:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v11}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v11

    iput-object v10, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->b:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iput-object v7, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput v6, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->d:I

    iput v0, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->e:I

    iput-boolean v1, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->g:Z

    iput v3, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->f:I

    iput-boolean v8, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->h:Z

    const/4 v12, 0x2

    iput v12, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->t:I

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12, v4}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v5, :cond_4

    goto :goto_1

    :cond_4
    move-object v12, v7

    move v7, v8

    move v8, v6

    move v6, v1

    move-object v1, v11

    :goto_5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-boolean v11, v10, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->W:Z

    iget-object v10, v10, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->a0:Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;

    iget-boolean v10, v10, Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;->a:Z

    sget-object v13, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->NATIVE_CART:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v13}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v13

    const/4 v14, 0x0

    iput-object v14, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->b:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iput-object v12, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput v8, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->d:I

    iput v0, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->e:I

    iput-boolean v6, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->g:Z

    iput v3, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->f:I

    iput-boolean v7, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->h:Z

    iput-boolean v1, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->i:Z

    iput-boolean v11, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->j:Z

    iput-boolean v10, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->k:Z

    const/4 v14, 0x3

    iput v14, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->t:I

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14, v4}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v5, :cond_5

    goto/16 :goto_1

    :cond_5
    move/from16 v35, v11

    move v11, v0

    move v0, v10

    move v10, v6

    move v6, v1

    move-object v1, v13

    move v13, v8

    move v8, v3

    move/from16 v3, v35

    :goto_6
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-object v14, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->BACK_ORDER_DISCLAIMER:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v14}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v14

    const/4 v15, 0x0

    iput-object v15, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->b:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iput-object v12, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput v13, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->d:I

    iput v11, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->e:I

    iput-boolean v10, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->g:Z

    iput v8, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->f:I

    iput-boolean v7, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->h:Z

    iput-boolean v6, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->i:Z

    iput-boolean v3, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->j:Z

    iput-boolean v0, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->k:Z

    iput-boolean v1, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->l:Z

    const/4 v15, 0x4

    iput v15, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->t:I

    const/4 v15, 0x0

    invoke-virtual {v2, v14, v15, v4}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v5, :cond_6

    goto/16 :goto_1

    :cond_6
    move/from16 v35, v6

    move v6, v0

    move v0, v1

    move-object v1, v14

    move-object v14, v12

    move v12, v13

    move v13, v11

    move v11, v10

    move v10, v8

    move/from16 v8, v35

    move/from16 v35, v7

    move v7, v3

    move/from16 v3, v35

    :goto_7
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-object v15, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->BACK_ORDER_DISCLAIMER_ENHANCEMENT:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v15}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v15

    const/4 v9, 0x0

    iput-object v9, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->b:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iput-object v14, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput v12, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->d:I

    iput v13, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->e:I

    iput-boolean v11, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->g:Z

    iput v10, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->f:I

    iput-boolean v3, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->h:Z

    iput-boolean v8, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->i:Z

    iput-boolean v7, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->j:Z

    iput-boolean v6, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->k:Z

    iput-boolean v1, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->l:Z

    iput-boolean v0, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->m:Z

    const/4 v9, 0x5

    iput v9, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->t:I

    const/4 v9, 0x0

    invoke-virtual {v2, v15, v9, v4}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v5, :cond_7

    goto/16 :goto_1

    :cond_7
    move v9, v13

    move v13, v12

    move v12, v9

    move v9, v3

    move v3, v1

    move-object v1, v15

    :goto_8
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-object v15, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->BACK_IN_STOCK:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v15}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v15

    move-object/from16 v17, v5

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->b:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iput-object v14, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput v13, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->d:I

    iput v12, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->e:I

    iput-boolean v11, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->g:Z

    iput v10, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->f:I

    iput-boolean v9, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->h:Z

    iput-boolean v8, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->i:Z

    iput-boolean v7, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->j:Z

    iput-boolean v6, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->k:Z

    iput-boolean v3, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->l:Z

    iput-boolean v0, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->m:Z

    iput-boolean v1, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->n:Z

    const/4 v5, 0x6

    iput v5, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->t:I

    const/4 v5, 0x0

    invoke-virtual {v2, v15, v5, v4}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v5, v17

    if-ne v15, v5, :cond_8

    goto/16 :goto_1

    :cond_8
    move/from16 v35, v6

    move v6, v0

    move-object v0, v14

    move v14, v13

    move v13, v11

    move v11, v9

    move v9, v7

    move v7, v3

    move v3, v1

    move-object v1, v15

    move v15, v12

    move v12, v10

    move v10, v8

    move/from16 v8, v35

    :goto_9
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-object v17, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->BACK_IN_STOCK_LEGAL_CONSENT:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-object/from16 p0, v5

    filled-new-array/range {v17 .. v17}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v5

    move-object/from16 v17, v2

    const/4 v2, 0x0

    iput-object v2, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->b:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iput-object v0, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput v14, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->d:I

    iput v15, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->e:I

    iput-boolean v13, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->g:Z

    iput v12, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->f:I

    iput-boolean v11, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->h:Z

    iput-boolean v10, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->i:Z

    iput-boolean v9, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->j:Z

    iput-boolean v8, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->k:Z

    iput-boolean v7, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->l:Z

    iput-boolean v6, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->m:Z

    iput-boolean v3, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->n:Z

    iput-boolean v1, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->o:Z

    const/4 v2, 0x7

    iput v2, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->t:I

    move-object/from16 v2, v17

    move-object/from16 v17, v0

    const/4 v0, 0x0

    invoke-virtual {v2, v5, v0, v4}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p0

    if-ne v5, v0, :cond_9

    goto/16 :goto_c

    :cond_9
    move-object/from16 p0, v5

    move v5, v15

    move v15, v13

    move v13, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v3

    move v3, v1

    move-object/from16 v1, v17

    :goto_a
    move-object/from16 v17, p0

    check-cast v17, Ljava/lang/Boolean;

    move-object/from16 p0, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v17, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->ADD_TO_CART_CROSS_SELL:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-object/from16 v18, v2

    filled-new-array/range {v17 .. v17}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v2

    move-object/from16 v17, v2

    const/4 v2, 0x0

    iput-object v2, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->b:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iput-object v1, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput v14, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->d:I

    iput v5, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->e:I

    iput-boolean v15, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->g:Z

    iput v13, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->f:I

    iput-boolean v12, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->h:Z

    iput-boolean v11, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->i:Z

    iput-boolean v10, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->j:Z

    iput-boolean v9, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->k:Z

    iput-boolean v8, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->l:Z

    iput-boolean v7, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->m:Z

    iput-boolean v6, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->n:Z

    iput-boolean v3, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->o:Z

    iput-boolean v0, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->p:Z

    const/16 v2, 0x8

    iput v2, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->t:I

    move-object/from16 v2, v17

    move/from16 v17, v0

    move-object v0, v2

    move-object/from16 v2, v18

    move-object/from16 v18, v1

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1, v4}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_a

    move-object v0, v1

    goto/16 :goto_c

    :cond_a
    move-object/from16 p0, v0

    move v0, v14

    move v14, v11

    move v11, v8

    move v8, v6

    move v6, v3

    move v3, v13

    move v13, v10

    move v10, v5

    move/from16 v5, v17

    move-object/from16 v17, v1

    move v1, v15

    move v15, v12

    move v12, v9

    move v9, v7

    move-object/from16 v7, v18

    :goto_b
    move-object/from16 v18, p0

    check-cast v18, Ljava/lang/Boolean;

    move-object/from16 p0, v2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sget-object v18, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->AI_COMPANION_PDP:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move/from16 v19, v2

    filled-new-array/range {v18 .. v18}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v2

    move-object/from16 v18, v2

    const/4 v2, 0x0

    iput-object v2, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->b:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iput-object v7, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput v0, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->d:I

    iput v10, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->e:I

    iput-boolean v1, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->g:Z

    iput v3, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->f:I

    iput-boolean v15, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->h:Z

    iput-boolean v14, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->i:Z

    iput-boolean v13, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->j:Z

    iput-boolean v12, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->k:Z

    iput-boolean v11, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->l:Z

    iput-boolean v9, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->m:Z

    iput-boolean v8, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->n:Z

    iput-boolean v6, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->o:Z

    iput-boolean v5, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->p:Z

    move/from16 v0, v19

    iput-boolean v0, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->q:Z

    const/16 v2, 0x9

    iput v2, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initFeatureFlags$1;->t:I

    const/4 v2, 0x0

    move/from16 v16, v1

    move-object/from16 v1, v18

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v4}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, v17

    if-ne v1, v0, :cond_b

    :goto_c
    return-object v0

    :cond_b
    move/from16 v32, v5

    move/from16 v31, v6

    move-object v4, v7

    move/from16 v30, v8

    move/from16 v28, v9

    move v7, v10

    move/from16 v29, v11

    move/from16 v27, v12

    move/from16 v26, v13

    move/from16 v25, v14

    move/from16 v24, v15

    move/from16 v21, v16

    move/from16 v33, v19

    move v14, v3

    :goto_d
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    new-instance v20, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;

    if-eqz v7, :cond_c

    const/16 v22, 0x1

    goto :goto_e

    :cond_c
    move/from16 v22, v2

    :goto_e
    if-eqz v14, :cond_d

    const/16 v23, 0x1

    goto :goto_f

    :cond_d
    move/from16 v23, v2

    :goto_f
    invoke-direct/range {v20 .. v34}, Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;-><init>(ZZZZZZZZZZZZZZ)V

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final Dc(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->S:Ljava/lang/String;

    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initProductDetails$1;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initProductDetails$1;

    iget v2, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initProductDetails$1;->d:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initProductDetails$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initProductDetails$1;

    invoke-direct {v1, p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initProductDetails$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initProductDetails$1;->b:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initProductDetails$1;->d:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v5, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    if-eqz v0, :cond_8

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->n:Lcom/vuitton/android/domain/usecase/pdp/customization/GetCustomizationUseCase;

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iput v5, v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$initProductDetails$1;->d:I

    iget-object p1, p1, Lcom/vuitton/android/domain/usecase/pdp/customization/GetCustomizationUseCase;->a:Lcom/vuitton/android/domain/repository/ProductRepository;

    invoke-interface {p1, v0}, Lcom/vuitton/android/domain/repository/ProductRepository;->d(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;

    move-result-object p1

    if-ne p1, v2, :cond_3

    return-object v2

    :cond_3
    :goto_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;

    if-eqz p1, :cond_6

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;

    iget-object v2, p1, Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;->b:Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationIdType;

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/mappers/ProductCustomizationMapperKt$WhenMappings;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v3, p1

    if-eq p1, v5, :cond_5

    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    sget-object p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdTypeUiModel;->BASE64:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdTypeUiModel;

    goto :goto_2

    :cond_4
    invoke-static {}, Lv40;->g()V

    return-object v4

    :cond_5
    sget-object p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdTypeUiModel;->THREEKIT:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdTypeUiModel;

    :goto_2
    invoke-direct {v1, v2, p1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdTypeUiModel;)V

    move-object v4, v1

    :cond_6
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->T:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    move-object v4, p1

    :goto_3
    const/4 p1, 0x4

    invoke-static {p0, v0, v4, p1}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;->Db(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;I)V

    :cond_8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final Ec(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$removeFromWishlist$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$removeFromWishlist$1;

    iget v4, v3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$removeFromWishlist$1;->g:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$removeFromWishlist$1;->g:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$removeFromWishlist$1;

    invoke-direct {v3, v0, v2}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$removeFromWishlist$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v2, v3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$removeFromWishlist$1;->e:Ljava/lang/Object;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$removeFromWishlist$1;->g:I

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-eqz v5, :cond_5

    if-eq v5, v9, :cond_4

    if-eq v5, v10, :cond_3

    if-eq v5, v8, :cond_2

    if-ne v5, v7, :cond_1

    iget-object v1, v3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$removeFromWishlist$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v11

    :cond_2
    iget-object v1, v3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$removeFromWishlist$1;->c:Ljava/lang/Object;

    iget-object v5, v3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$removeFromWishlist$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget v1, v3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$removeFromWishlist$1;->d:I

    iget-object v5, v3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$removeFromWishlist$1;->c:Ljava/lang/Object;

    iget-object v9, v3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$removeFromWishlist$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v2, v1

    move-object v1, v5

    move-object v5, v9

    goto/16 :goto_2

    :cond_4
    iget-object v1, v3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$removeFromWishlist$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v2, Lkotlin/Result;

    iget-object v2, v2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->N:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v12, Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Action$RemoveFromWishlist;->a:Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Action$RemoveFromWishlist;

    invoke-interface {v2, v5, v12}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v2

    const-string v5, "sku"

    invoke-virtual {v2, v1, v5}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->H:Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;

    sget-object v12, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iput-object v2, v3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$removeFromWishlist$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v9, v3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$removeFromWishlist$1;->g:I

    invoke-virtual {v5, v1, v3}, Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_6

    goto/16 :goto_4

    :cond_6
    move-object/from16 v18, v2

    move-object v2, v1

    move-object/from16 v1, v18

    :goto_1
    sget-object v5, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v5, v2, Lkotlin/Result$Failure;

    if-nez v5, :cond_9

    move-object v5, v2

    check-cast v5, Lkotlin/Unit;

    sget-object v5, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnProductAddToWishlistSuccessEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnProductAddToWishlistSuccessEvent;

    invoke-virtual {v0, v5}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->Gc(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;)V

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->v0:Lkotlinx/coroutines/channels/BufferedChannel;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->k:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v13, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v9, 0x7f140dfb

    invoke-direct {v13, v9, v11, v10, v11}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v16, 0x0

    const/16 v17, 0x34

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v9

    iput-object v1, v3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$removeFromWishlist$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v2, v3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$removeFromWishlist$1;->c:Ljava/lang/Object;

    iput v6, v3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$removeFromWishlist$1;->d:I

    iput v10, v3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$removeFromWishlist$1;->g:I

    invoke-interface {v5, v9, v3}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_7

    goto :goto_4

    :cond_7
    move-object v5, v1

    move-object v1, v2

    move v2, v6

    :goto_2
    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->g:Lcom/vuitton/android/core/events/LVEventSender;

    iput-object v5, v3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$removeFromWishlist$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v1, v3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$removeFromWishlist$1;->c:Ljava/lang/Object;

    iput v2, v3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$removeFromWishlist$1;->d:I

    iput v8, v3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$removeFromWishlist$1;->g:I

    sget-object v2, Lcom/vuitton/android/core/events/AppEvent$WishListUpdatedEvent;->a:Lcom/vuitton/android/core/events/AppEvent$WishListUpdatedEvent;

    invoke-virtual {v9, v2, v3}, Lcom/vuitton/android/core/events/LVEventSender;->a(Lcom/vuitton/android/core/events/AppEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    move-object v2, v1

    move-object v1, v5

    :cond_9
    invoke-static {v2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_a

    new-instance v8, Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Error$RemoveFromWishlistError;

    invoke-direct {v8, v5}, Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Error$RemoveFromWishlistError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v8}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    iput-object v1, v3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$removeFromWishlist$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v2, v3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$removeFromWishlist$1;->c:Ljava/lang/Object;

    iput v6, v3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$removeFromWishlist$1;->d:I

    iput v7, v3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$removeFromWishlist$1;->g:I

    invoke-virtual {v0, v5, v3}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->Fc(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_a

    :goto_4
    return-object v4

    :cond_a
    :goto_5
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->a1()V

    invoke-interface {v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public static final yc(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->v0:Lkotlinx/coroutines/channels/BufferedChannel;

    instance-of v4, v2, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;

    iget v5, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->h:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->h:I

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;

    invoke-direct {v4, v0, v2}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v2, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->f:Ljava/lang/Object;

    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v6, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->h:I

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    packed-switch v6, :pswitch_data_0

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v9

    :pswitch_0
    iget-object v1, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_1
    iget-object v1, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->d:Ljava/lang/Object;

    iget-object v6, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_2
    iget v1, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->e:I

    iget-object v6, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->d:Ljava/lang/Object;

    iget-object v10, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :cond_1
    move v2, v1

    move-object v1, v6

    move-object v6, v10

    goto/16 :goto_3

    :pswitch_3
    iget v1, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->e:I

    iget-object v6, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->d:Ljava/lang/Object;

    iget-object v10, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_4
    iget-object v1, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object v6, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->b:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v2, Lkotlin/Result;

    iget-object v2, v2, Lkotlin/Result;->b:Ljava/lang/Object;

    move-object v10, v1

    move-object v1, v6

    move-object v6, v2

    goto :goto_1

    :pswitch_5
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->N:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v10, Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Action$AddToWishlist;->a:Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Action$AddToWishlist;

    invoke-interface {v2, v6, v10}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v2

    const-string v6, "sku"

    invoke-virtual {v2, v1, v6}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->A:Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;

    sget-object v10, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iput-object v1, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->b:Ljava/lang/String;

    iput-object v2, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    const/4 v10, 0x1

    iput v10, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->h:I

    invoke-virtual {v6, v1, v4}, Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v5, :cond_2

    goto/16 :goto_6

    :cond_2
    move-object v10, v2

    :goto_1
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, v6, Lkotlin/Result$Failure;

    if-nez v2, :cond_5

    move-object v2, v6

    check-cast v2, Lkotlin/Unit;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->h:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;

    new-instance v11, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$AddToWishlist;

    new-instance v12, Lkotlin/Pair;

    const-string v13, "af_content_id"

    invoke-direct {v12, v13, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v12}, Lkotlin/collections/MapsKt;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$AddToWishlist;-><init>(Ljava/util/Map;)V

    const-string v12, "ProductViewModel"

    invoke-interface {v2, v12, v11}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;)V

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->I:Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;

    iput-object v9, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->b:Ljava/lang/String;

    iput-object v10, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v6, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->d:Ljava/lang/Object;

    iput v7, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->e:I

    iput v8, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->h:I

    invoke-virtual {v2, v1, v4}, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_3

    goto/16 :goto_6

    :cond_3
    move v1, v7

    :goto_2
    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnProductAddToWishlistSuccessEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnProductAddToWishlistSuccessEvent;

    invoke-virtual {v0, v2}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->Gc(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;)V

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->k:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v12, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v2, 0x7f140de9

    invoke-direct {v12, v2, v9, v8, v9}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v15, Lcom/vuitton/android/presentation/screen/pdp/ProductNotificationAction$GoToWishlist;->b:Lcom/vuitton/android/presentation/screen/pdp/ProductNotificationAction$GoToWishlist;

    const/16 v16, 0x14

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v2

    iput-object v9, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->b:Ljava/lang/String;

    iput-object v10, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v6, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->d:Ljava/lang/Object;

    iput v1, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->e:I

    const/4 v11, 0x3

    iput v11, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->h:I

    invoke-interface {v3, v2, v4}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_1

    goto :goto_6

    :goto_3
    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->g:Lcom/vuitton/android/core/events/LVEventSender;

    iput-object v9, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->b:Ljava/lang/String;

    iput-object v6, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v1, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->d:Ljava/lang/Object;

    iput v2, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->e:I

    const/4 v2, 0x4

    iput v2, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->h:I

    sget-object v2, Lcom/vuitton/android/core/events/AppEvent$WishListUpdatedEvent;->a:Lcom/vuitton/android/core/events/AppEvent$WishListUpdatedEvent;

    invoke-virtual {v10, v2, v4}, Lcom/vuitton/android/core/events/LVEventSender;->a(Lcom/vuitton/android/core/events/AppEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_4

    goto :goto_6

    :cond_4
    :goto_4
    move-object/from16 v17, v6

    move-object v6, v1

    move-object/from16 v1, v17

    goto :goto_5

    :cond_5
    move-object v1, v10

    :goto_5
    invoke-static {v6}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_7

    new-instance v10, Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Error$AddToWishlistError;

    invoke-direct {v10, v2}, Lcom/vuitton/android/domain/monitoring/wishlist/WishlistMonitoring$Error$AddToWishlistError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v10}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    instance-of v10, v2, Lcom/vuitton/foundation/model/domain/error/wishlist/WishlistError$AlreadyInWishlist;

    if-eqz v10, :cond_6

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->k:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v12, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v2, 0x7f140dea

    invoke-direct {v12, v2, v9, v8, v9}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v15, 0x0

    const/16 v16, 0x3c

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v2

    iput-object v9, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->b:Ljava/lang/String;

    iput-object v1, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v6, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->d:Ljava/lang/Object;

    iput v7, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->e:I

    const/4 v6, 0x5

    iput v6, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->h:I

    invoke-interface {v3, v2, v4}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_7

    goto :goto_6

    :cond_6
    iput-object v9, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->b:Ljava/lang/String;

    iput-object v1, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v6, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->d:Ljava/lang/Object;

    iput v7, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->e:I

    const/4 v3, 0x6

    iput v3, v4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToWishlist$1;->h:I

    invoke-virtual {v0, v2, v4}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->Fc(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_7

    :goto_6
    return-object v5

    :cond_7
    :goto_7
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->a1()V

    invoke-interface {v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final zc(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$fetchCrossSellProducts$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$fetchCrossSellProducts$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$fetchCrossSellProducts$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$fetchCrossSellProducts$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$fetchCrossSellProducts$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$fetchCrossSellProducts$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$fetchCrossSellProducts$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$fetchCrossSellProducts$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p1, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->F:Lcom/vuitton/android/domain/usecase/products/GetCrossSellProductListUseCase;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    iput v3, v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$fetchCrossSellProducts$1;->d:I

    invoke-virtual {p2, p1, v0}, Lcom/vuitton/android/domain/usecase/products/GetCrossSellProductListUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_5

    check-cast p1, Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;

    invoke-static {p2}, Lcom/vuitton/android/presentation/model/common/mapper/ProductTinyMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;)Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {p0}, Lkotlinx/collections/immutable/ExtensionsKt;->a(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/ImmutableList;

    move-result-object p0

    return-object p0

    :cond_5
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lkotlinx/collections/immutable/implementations/immutableList/UtilsKt;->b()Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A8(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetailsForCustomization$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetailsForCustomization$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final B(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->i:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2, p3}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->B(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;II)V

    return-void
.end method

.method public final B4()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$retryGetProductDetail$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$retryGetProductDetail$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->i:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->C(Lcom/vuitton/foundation/model/domain/model/chat/ScreenType;)V

    return-void
.end method

.method public final E5(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->i:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->E5(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final F()Z
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->B:Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;

    iget-object v0, v0, Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;->a:Lcom/vuitton/android/domain/repository/StoreModeRepository;

    invoke-interface {v0}, Lcom/vuitton/android/domain/repository/StoreModeRepository;->c()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->p:Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;

    invoke-virtual {p0}, Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;->a()V

    :cond_0
    return v0
.end method

.method public final F0()V
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->W:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b:Ljava/lang/String;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addOrRemoveFromWishlist$1$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addOrRemoveFromWishlist$1$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v1, v3, v3, v2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public final Fc(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p1, Lcom/vuitton/foundation/model/domain/error/wishlist/WishlistError;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/vuitton/foundation/model/domain/error/wishlist/WishlistError;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/error/wishlist/WishlistError;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v4, v0

    goto :goto_3

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const p1, 0x7f140a5a

    invoke-direct {v0, p1, v2, v1, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of v0, p1, Lretrofit2/HttpException;

    if-eqz v0, :cond_2

    check-cast p1, Lretrofit2/HttpException;

    goto :goto_1

    :cond_2
    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_3

    iget-object p1, p1, Lretrofit2/HttpException;->d:Lretrofit2/Response;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lretrofit2/Response;->c:Lokhttp3/ResponseBody;

    goto :goto_2

    :cond_3
    move-object p1, v2

    :goto_2
    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistHelper;->a(Lokhttp3/ResponseBody;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const p1, 0x7f140967

    invoke-direct {v0, p1, v2, v1, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :goto_3
    const/4 v7, 0x0

    const/16 v8, 0x3c

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->k:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->v0:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p0, p1, p2}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_5

    return-object p0

    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final G()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->p:Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;

    invoke-virtual {p0}, Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;->a()V

    return-void
.end method

.method public final G9(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->N:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object p3, Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Action$SubscribeBackInStock;->a:Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Action$SubscribeBackInStock;

    iget-object p4, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-interface {p4, p2, p3}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object p2

    const-string p3, "sku"

    iget-object p4, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b:Ljava/lang/String;

    invoke-virtual {p2, p4, p3}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p3

    new-instance p4, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$registerToProductBIS$1;

    const/4 v0, 0x0

    invoke-direct {p4, p0, p1, p2, v0}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$registerToProductBIS$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Lcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p3, v0, v0, p4, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final Gc(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;)V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->W:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->Q:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->S:Ljava/lang/String;

    invoke-static {p1, v2, v0, v1}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->e:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void
.end method

.method public final I(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->i:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->I(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V

    return-void
.end method

.method public final L2()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$displaySettingsBottomSheet$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$displaySettingsBottomSheet$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final M1(Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->i:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->M1(Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final N7()Z
    .locals 1

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/legal/LegalConsentContext;->SHADE_FINDER:Lcom/vuitton/foundation/model/domain/model/legal/LegalConsentContext;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->w:Lcom/vuitton/android/domain/usecase/pdp/vto/HasConsentedBeautyUseCase;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/pdp/vto/HasConsentedBeautyUseCase;->a:Lcom/vuitton/android/domain/repository/BeautyConsentRepository;

    invoke-interface {p0, v0}, Lcom/vuitton/android/domain/repository/BeautyConsentRepository;->a(Lcom/vuitton/foundation/model/domain/model/legal/LegalConsentContext;)Z

    move-result p0

    return p0
.end method

.method public final P8(Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleCustomizationCardClicked$1;

    const/4 v6, 0x0

    move-object v4, p0

    move-object v5, p1

    move v3, p2

    move-object v2, p3

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$handleCustomizationCardClicked$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;ZLcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    const/4 p1, 0x0

    invoke-static {v0, p1, p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final Q0()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->i:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->Q0()V

    return-void
.end method

.method public final S0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->i:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->S0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final T2()Z
    .locals 1

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/legal/LegalConsentContext;->TRY_ON:Lcom/vuitton/foundation/model/domain/model/legal/LegalConsentContext;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->w:Lcom/vuitton/android/domain/usecase/pdp/vto/HasConsentedBeautyUseCase;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/pdp/vto/HasConsentedBeautyUseCase;->a:Lcom/vuitton/android/domain/repository/BeautyConsentRepository;

    invoke-interface {p0, v0}, Lcom/vuitton/android/domain/repository/BeautyConsentRepository;->a(Lcom/vuitton/foundation/model/domain/model/legal/LegalConsentContext;)Z

    move-result p0

    return p0
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->y0:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final a1()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$updateWishlistState$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$updateWishlistState$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final a3(Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$onPermissionRefused$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$onPermissionRefused$1;-><init>(Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final b()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->v0:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final c()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$setUserChatConsentEnabled$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$setUserChatConsentEnabled$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final d5(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LegalConsentContextUiModel;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$displayConsentBottomSheet$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$displayConsentBottomSheet$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LegalConsentContextUiModel;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final f0()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$updateTooltipVisibility$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$updateTooltipVisibility$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final f8(Lcom/vuitton/android/presentation/contact/ContactUsMode;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->i:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->f8(Lcom/vuitton/android/presentation/contact/ContactUsMode;)V

    return-void
.end method

.method public final g0()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->w0:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final h()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->x0:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final i()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->i:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->i()Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final jb()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$addToCart$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final jc(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$navigateToCustomization$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$navigateToCustomization$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final l6(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;Z)V
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->N:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v1, Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Action$LoadProductDetailsScreen;->a:Lcom/vuitton/android/domain/monitoring/pdp/PDPMonitoring$Action$LoadProductDetailsScreen;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-interface {v2, v0, v1}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v8

    const-string v0, "sku"

    invoke-virtual {v8, p1, v0}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    const-string v0, "recipieId"

    iget-object v1, p2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;->b:Ljava/lang/String;

    invoke-virtual {v8, v1, v0}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->Q:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "isStoreMode"

    const-string v2, "true"

    invoke-virtual {v8, v2, v1}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "rmsCode"

    invoke-virtual {v8, v0, v1}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetails$1;

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v3 .. v9}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$getProductDetails$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;ZLcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    const/4 p1, 0x0

    invoke-static {v0, p1, p1, v3, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final m4(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->i:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->m4(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V

    return-void
.end method

.method public final ob(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;)V
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LegalConsentContextUiModel;I)Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;

    move-result-object p1

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;->b:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;

    iget-object v6, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;->a:Ljava/lang/String;

    iget-object v7, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;->b:Ljava/lang/String;

    iget-boolean v8, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;->c:Z

    iget-object v9, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;->d:Lcom/vuitton/foundation/model/domain/model/legal/ConsentFeature;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ConsentRequirementUiModel;->e:Landroidx/compose/runtime/MutableState;

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-direct/range {v5 .. v10}, Lcom/vuitton/foundation/model/domain/model/legal/ConsentRequirement;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/foundation/model/domain/model/legal/ConsentFeature;Z)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;->d:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LegalConsentContextUiModel;

    if-eqz p1, :cond_3

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/mappers/BeautyLegalConsentMapperKt$WhenMappings;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v4, p1

    const/4 v4, 0x1

    if-eq p1, v4, :cond_2

    const/4 v4, 0x2

    if-ne p1, v4, :cond_1

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/legal/LegalConsentContext;->SHADE_FINDER:Lcom/vuitton/foundation/model/domain/model/legal/LegalConsentContext;

    goto :goto_1

    :cond_1
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_2
    sget-object p1, Lcom/vuitton/foundation/model/domain/model/legal/LegalConsentContext;->TRY_ON:Lcom/vuitton/foundation/model/domain/model/legal/LegalConsentContext;

    goto :goto_1

    :cond_3
    move-object p1, v2

    :goto_1
    new-instance v4, Lcom/vuitton/foundation/model/domain/model/legal/LegalConsent;

    invoke-direct {v4, v0, v3, v1, p1}, Lcom/vuitton/foundation/model/domain/model/legal/LegalConsent;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/legal/LegalConsentContext;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->r:Lcom/vuitton/android/domain/usecase/pdp/vto/SetBeautyConsentUseCase;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/vuitton/android/domain/usecase/pdp/vto/SetBeautyConsentUseCase;->a:Lcom/vuitton/android/domain/repository/BeautyConsentRepository;

    invoke-interface {p1, v4}, Lcom/vuitton/android/domain/repository/BeautyConsentRepository;->c(Lcom/vuitton/foundation/model/domain/model/legal/LegalConsent;)V

    :cond_4
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->r0:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;

    invoke-interface {p1, v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void
.end method

.method public final q9()V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->S:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->l6(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;Z)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$reloadWithoutCustomization$1;

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$reloadWithoutCustomization$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final r(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->i:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->r(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;)V

    return-void
.end method

.method public final s()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->i:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->s()V

    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->i:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final vc(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->i:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->vc(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final x(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->i:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->x(Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;I)V

    return-void
.end method

.method public final z()V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;->i:Lcom/vuitton/android/presentation/contact/ContactUsDelegate;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->z()V

    return-void
.end method
