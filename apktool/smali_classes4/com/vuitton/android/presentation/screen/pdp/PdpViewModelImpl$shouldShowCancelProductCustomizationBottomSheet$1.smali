.class final Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$shouldShowCancelProductCustomizationBottomSheet$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


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
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function4<",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "product",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;",
        "hasUserCustomizedProduct",
        "isAddedToCart"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$shouldShowCancelProductCustomizationBottomSheet$1"
    f = "PdpViewModelImpl.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

.field public synthetic c:Z

.field public synthetic d:Z


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p4, Lkotlin/coroutines/Continuation;

    new-instance p3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$shouldShowCancelProductCustomizationBottomSheet$1;

    const/4 v0, 0x4

    invoke-direct {p3, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    iput-object p1, p3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$shouldShowCancelProductCustomizationBottomSheet$1;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iput-boolean p0, p3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$shouldShowCancelProductCustomizationBottomSheet$1;->c:Z

    iput-boolean p2, p3, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$shouldShowCancelProductCustomizationBottomSheet$1;->d:Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p3, p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$shouldShowCancelProductCustomizationBottomSheet$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$shouldShowCancelProductCustomizationBottomSheet$1;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$shouldShowCancelProductCustomizationBottomSheet$1;->c:Z

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$shouldShowCancelProductCustomizationBottomSheet$1;->d:Z

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->V:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;->e:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->V:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;->d:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;

    if-eqz v0, :cond_1

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;

    :cond_1
    if-eqz p1, :cond_3

    :cond_2
    if-eqz v1, :cond_3

    if-nez p0, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
