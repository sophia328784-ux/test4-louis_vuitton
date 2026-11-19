.class public final Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$special$$inlined$combine$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;-><init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Landroid/app/Application;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase;Lcom/vuitton/android/domain/usecase/legal/GetLegalConsentUseCase;Lcom/vuitton/android/domain/usecase/pdp/customization/GetCustomizationUseCase;Lcom/vuitton/android/domain/usecase/cart/AddProductToCartUseCase;Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase;Lcom/vuitton/android/domain/usecase/pdp/vto/SetBeautyConsentUseCase;Lcom/vuitton/android/domain/usecase/pdp/customization/SaveCustomizationUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase;Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;Lcom/vuitton/android/domain/usecase/pdp/vto/HasConsentedBeautyUseCase;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/domain/usecase/pdp/customization/RemoveCustomizationUseCase;Lcom/vuitton/android/domain/usecase/pdp/backinstock/SubscribeBackInStockUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYPdpChooseVariationUseCase;Lcom/vuitton/android/domain/usecase/products/GetCrossSellProductListUseCase;Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;Lcom/vuitton/android/domain/usecase/products/GetProductVariationsAvailabilityUseCase;Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;Lcom/vuitton/android/domain/usecase/aicompanion/HasAITooltipBeenDisplayedUseCase;Lcom/vuitton/android/domain/usecase/aicompanion/UpdateAITooltipVisibilityUseCase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/Flow<",
        "Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1",
        "Lkotlinx/coroutines/flow/Flow;",
        "kotlinx-coroutines-core"
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
.field public final synthetic b:[Lkotlinx/coroutines/flow/Flow;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;


# direct methods
.method public constructor <init>([Lkotlinx/coroutines/flow/Flow;Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$special$$inlined$combine$1;->b:[Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$special$$inlined$combine$1;->c:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final f(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$special$$inlined$combine$1$2;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$special$$inlined$combine$1;->b:[Lkotlinx/coroutines/flow/Flow;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$special$$inlined$combine$1$2;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$special$$inlined$combine$1$3;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$special$$inlined$combine$1;->c:Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    invoke-direct {v2, v3, p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$special$$inlined$combine$1$3;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;)V

    invoke-static {p2, v0, v2, p1, v1}, Lkotlinx/coroutines/flow/internal/CombineKt;->a(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
