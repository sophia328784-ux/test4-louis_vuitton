package com.vuitton.android.presentation.screen.pdp;

import android.app.Application;
import android.content.Context;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.R;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.monitoring.pdp.PDPMonitoring;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.usecase.account.accessibility.GetAccessibilityValueUseCase;
import com.vuitton.android.domain.usecase.aicompanion.HasAITooltipBeenDisplayedUseCase;
import com.vuitton.android.domain.usecase.aicompanion.UpdateAITooltipVisibilityUseCase;
import com.vuitton.android.domain.usecase.cart.AddProductToCartUseCase;
import com.vuitton.android.domain.usecase.config.GetECommerceStatusUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.GetDYPdpChooseVariationUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ReportDYAddToCartEventUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ReportDYAddToWishlistEventUseCase;
import com.vuitton.android.domain.usecase.legal.GetLegalConsentUseCase;
import com.vuitton.android.domain.usecase.pdp.GetProductDetailUseCase;
import com.vuitton.android.domain.usecase.pdp.backinstock.SubscribeBackInStockUseCase;
import com.vuitton.android.domain.usecase.pdp.customization.GetCustomizationUseCase;
import com.vuitton.android.domain.usecase.pdp.customization.RemoveCustomizationUseCase;
import com.vuitton.android.domain.usecase.pdp.customization.SaveCustomizationUseCase;
import com.vuitton.android.domain.usecase.pdp.vto.HasConsentedBeautyUseCase;
import com.vuitton.android.domain.usecase.pdp.vto.SetBeautyConsentUseCase;
import com.vuitton.android.domain.usecase.privacy.GetConsentForCustomisationTrackerUseCase;
import com.vuitton.android.domain.usecase.products.AddLastViewedProductSkuUseCase;
import com.vuitton.android.domain.usecase.products.GetCrossSellProductListUseCase;
import com.vuitton.android.domain.usecase.products.GetProductAvailabilityUseCase;
import com.vuitton.android.domain.usecase.products.GetProductVariationsAvailabilityUseCase;
import com.vuitton.android.domain.usecase.products.GetSizeGuideUseCase;
import com.vuitton.android.domain.usecase.products.GetYmalProductListUseCase;
import com.vuitton.android.domain.usecase.storemode.DisableStoreModeUseCase;
import com.vuitton.android.domain.usecase.storemode.IsStoreModeStillValidUseCase;
import com.vuitton.android.domain.usecase.wishlist.AddProductToWishlistUseCase;
import com.vuitton.android.domain.usecase.wishlist.DeleteProductFromWishlistUseCase;
import com.vuitton.android.domain.usecase.wishlist.IsProductInWishlistUseCase;
import com.vuitton.android.presentation.contact.ContactUsDelegate;
import com.vuitton.android.presentation.contact.ContactUsMode;
import com.vuitton.android.presentation.contact.models.ContactUsOrigin;
import com.vuitton.android.presentation.model.common.mapper.ProductTinyMapperKt;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerTracker;
import com.vuitton.android.presentation.screen.pdp.mappers.ProductCustomizationMapperKt;
import com.vuitton.android.presentation.screen.pdp.models.PdpAppConfigValues;
import com.vuitton.android.presentation.screen.pdp.models.PdpFeatureFlags;
import com.vuitton.android.presentation.screen.pdp.models.PdpViewState;
import com.vuitton.android.presentation.screen.pdp.models.PdpVirtualStudioConfigValues;
import com.vuitton.android.presentation.screen.pdp.models.StoreButtonType;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTracker;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackingUiModelKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationIdTypeUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationType;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.NotSellableReasonUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductAvailabilityUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SellableStatusUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SizeGuideUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuAvailabilityUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyLegalConsentUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ConsentRequirementUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.LegalConsentContextUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.mappers.BeautyLegalConsentMapperKt$WhenMappings;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsBottomSheet;
import com.vuitton.android.presentation.screen.plp.models.CatalogMode;
import com.vuitton.android.presentation.screen.wishlist.WishlistHelper;
import com.vuitton.android.presentation.utils.ArUtils;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.error.wishlist.WishlistError;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import com.vuitton.foundation.model.domain.model.account.accessibility.AccessibilityPreferenceType;
import com.vuitton.foundation.model.domain.model.chat.ChatProductModel;
import com.vuitton.foundation.model.domain.model.chat.ScreenType;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import com.vuitton.foundation.model.domain.model.config.VirtualStudioConfig;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.legal.ConsentRequirement;
import com.vuitton.foundation.model.domain.model.legal.LegalConsent;
import com.vuitton.foundation.model.domain.model.legal.LegalConsentContext;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.product.availability.ECommerceStatus;
import com.vuitton.foundation.model.domain.model.product.universal.CustomizationId;
import com.vuitton.foundation.model.domain.model.producttiny.ProductTiny;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import defpackage.v40;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import kotlinx.collections.immutable.ExtensionsKt;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.collections.immutable.implementations.immutableList.UtilsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;
import org.bouncycastle.asn1.eac.CertificateBody;
import retrofit2.HttpException;
import retrofit2.Response;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u008a\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001YBÙ\u0002\b\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0018\u001a\u00020\u0003\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020'\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u0010,\u001a\u00020+\u0012\u0006\u0010.\u001a\u00020-\u0012\u0006\u00100\u001a\u00020/\u0012\u0006\u00102\u001a\u000201\u0012\u0006\u00104\u001a\u000203\u0012\u0006\u00106\u001a\u000205\u0012\u0006\u00108\u001a\u000207\u0012\u0006\u0010:\u001a\u000209\u0012\u0006\u0010<\u001a\u00020;\u0012\u0006\u0010>\u001a\u00020=\u0012\u0006\u0010@\u001a\u00020?\u0012\u0006\u0010B\u001a\u00020A\u0012\u0006\u0010D\u001a\u00020C\u0012\u0006\u0010F\u001a\u00020E\u0012\u0006\u0010H\u001a\u00020G\u0012\u0006\u0010J\u001a\u00020I\u0012\u0006\u0010L\u001a\u00020K\u0012\u0006\u0010N\u001a\u00020M\u0012\u0006\u0010P\u001a\u00020O\u0012\u0006\u0010R\u001a\u00020Q\u0012\u0006\u0010T\u001a\u00020S\u0012\u0006\u0010V\u001a\u00020U¢\u0006\u0004\bW\u0010X¨\u0006Z"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;", "Landroidx/lifecycle/AndroidViewModel;", "Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;", "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Landroid/app/Application;", "application", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;", "pdpTracker", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;", "appsFlyerTracker", "contactUsDelegate", "Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "userSessionService", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase;", "getSizeGuideUseCase", "Lcom/vuitton/android/domain/usecase/legal/GetLegalConsentUseCase;", "getLegalConsentUseCase", "Lcom/vuitton/android/domain/usecase/pdp/customization/GetCustomizationUseCase;", "getCustomizationUseCase", "Lcom/vuitton/android/domain/usecase/cart/AddProductToCartUseCase;", "addProductToCartUseCase", "Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;", "disableStoreModeUseCase", "Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase;", "getProductDetailUseCase", "Lcom/vuitton/android/domain/usecase/pdp/vto/SetBeautyConsentUseCase;", "setBeautyConsentUseCase", "Lcom/vuitton/android/domain/usecase/pdp/customization/SaveCustomizationUseCase;", "saveCustomizationUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase;", "getYmalProductListUseCase", "Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;", "getECommerceStatusUseCase", "Lcom/vuitton/android/domain/usecase/pdp/vto/HasConsentedBeautyUseCase;", "hasConsentedBeautyUseCase", "Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;", "isProductInWishlistUseCase", "Lcom/vuitton/android/domain/usecase/pdp/customization/RemoveCustomizationUseCase;", "removeCustomizationUseCase", "Lcom/vuitton/android/domain/usecase/pdp/backinstock/SubscribeBackInStockUseCase;", "subscribeBackInStockUseCase", "Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;", "addProductToWishlistUseCase", "Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;", "isStoreModeStillValidUseCase", "Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;", "getAccessibilityValueUseCase", "Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase;", "getProductAvailabilityUseCase", "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;", "reportDYAddToCartEventUseCase", "Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYPdpChooseVariationUseCase;", "getDYPdpChooseVariationUseCase", "Lcom/vuitton/android/domain/usecase/products/GetCrossSellProductListUseCase;", "getCrossSellProductListUseCase", "Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase;", "saveLastViewedProductSkuUseCase", "Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;", "deleteProductFromWishlistUseCase", "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;", "reportDYAddToWishlistEventUseCase", "Lcom/vuitton/android/domain/usecase/products/GetProductVariationsAvailabilityUseCase;", "getProductVariationsAvailabilityUseCase", "Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;", "getConsentForCustomisationTrackerUseCase", "Lcom/vuitton/android/domain/usecase/aicompanion/HasAITooltipBeenDisplayedUseCase;", "hasAITooltipBeenDisplayedUseCase", "Lcom/vuitton/android/domain/usecase/aicompanion/UpdateAITooltipVisibilityUseCase;", "updateAITooltipVisibilityUseCase", "<init>", "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Landroid/app/Application;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase;Lcom/vuitton/android/domain/usecase/legal/GetLegalConsentUseCase;Lcom/vuitton/android/domain/usecase/pdp/customization/GetCustomizationUseCase;Lcom/vuitton/android/domain/usecase/cart/AddProductToCartUseCase;Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase;Lcom/vuitton/android/domain/usecase/pdp/vto/SetBeautyConsentUseCase;Lcom/vuitton/android/domain/usecase/pdp/customization/SaveCustomizationUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase;Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;Lcom/vuitton/android/domain/usecase/pdp/vto/HasConsentedBeautyUseCase;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/domain/usecase/pdp/customization/RemoveCustomizationUseCase;Lcom/vuitton/android/domain/usecase/pdp/backinstock/SubscribeBackInStockUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYPdpChooseVariationUseCase;Lcom/vuitton/android/domain/usecase/products/GetCrossSellProductListUseCase;Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;Lcom/vuitton/android/domain/usecase/products/GetProductVariationsAvailabilityUseCase;Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;Lcom/vuitton/android/domain/usecase/aicompanion/HasAITooltipBeenDisplayedUseCase;Lcom/vuitton/android/domain/usecase/aicompanion/UpdateAITooltipVisibilityUseCase;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PdpViewModelImpl extends AndroidViewModel implements PdpViewModel, ContactUsDelegate {
    public static final /* synthetic */ int z0 = 0;
    public final AddProductToWishlistUseCase A;
    public final IsStoreModeStillValidUseCase B;
    public final GetProductAvailabilityUseCase C;
    public final ReportDYAddToCartEventUseCase D;
    public final GetDYPdpChooseVariationUseCase E;
    public final GetCrossSellProductListUseCase F;
    public final AddLastViewedProductSkuUseCase G;
    public final DeleteProductFromWishlistUseCase H;
    public final ReportDYAddToWishlistEventUseCase I;
    public final GetProductVariationsAvailabilityUseCase J;
    public final GetConsentForCustomisationTrackerUseCase K;
    public final HasAITooltipBeenDisplayedUseCase L;
    public final UpdateAITooltipVisibilityUseCase M;
    public final InAppDispatch N;
    public final AppConfig O;
    public final CatalogMode P;
    public final String Q;
    public final String R;
    public final String S;
    public final CustomizationIdUiModel T;
    public final boolean U;
    public final boolean V;
    public final MutableStateFlow W;
    public final MutableStateFlow X;
    public final MutableStateFlow Y;
    public final MutableStateFlow Z;
    public final MutableStateFlow a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Logger f61136b;
    public final MutableStateFlow b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Monitor f61137c;
    public final MutableStateFlow c0;
    public final Application d;
    public final MutableStateFlow d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AnalyticsTracker f61138e;
    public final MutableStateFlow e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final PdpTracker f61139f;
    public final MutableStateFlow f0;
    public final LVEventSender g;
    public final MutableStateFlow g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppsFlyerTracker f61140h;
    public final MutableStateFlow h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ContactUsDelegate f61141i;
    public final MutableStateFlow i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final UserSessionService f61142j;
    public final MutableStateFlow j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final NotificationBuilder f61143k;
    public final MutableStateFlow k0;
    public final GetSizeGuideUseCase l;
    public final MutableStateFlow l0;
    public final GetLegalConsentUseCase m;
    public final MutableStateFlow m0;
    public final GetCustomizationUseCase n;
    public final MutableStateFlow n0;
    public final AddProductToCartUseCase o;
    public final MutableStateFlow o0;
    public final DisableStoreModeUseCase p;
    public final MutableStateFlow p0;
    public final GetProductDetailUseCase q;
    public final MutableStateFlow q0;
    public final SetBeautyConsentUseCase r;
    public final MutableStateFlow r0;
    public final SaveCustomizationUseCase s;
    public final MutableStateFlow s0;
    public final IsFeatureAvailableUseCase t;
    public final MutableStateFlow t0;
    public final GetYmalProductListUseCase u;
    public final MutableStateFlow u0;
    public final GetECommerceStatusUseCase v;
    public final BufferedChannel v0;
    public final HasConsentedBeautyUseCase w;
    public final BufferedChannel w0;
    public final IsProductInWishlistUseCase x;
    public final BufferedChannel x0;
    public final RemoveCustomizationUseCase y;
    public final StateFlow y0;
    public final SubscribeBackInStockUseCase z;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$1", f = "PdpViewModelImpl.kt", l = {371, 372}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f61144b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ PdpViewModelImpl f61145c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Continuation continuation, PdpViewModelImpl pdpViewModelImpl) {
            super(2, continuation);
            this.f61145c = pdpViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(continuation, this.f61145c);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x002f, code lost:
        
            if (com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl.Cc(r2, r5) == r0) goto L15;
         */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r6) {
            /*
                r5 = this;
                kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r1 = r5.f61144b
                com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl r2 = r5.f61145c
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L1d
                if (r1 == r4) goto L19
                if (r1 != r3) goto L12
                kotlin.ResultKt.b(r6)
                goto L32
            L12:
                java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.md.k(r5)
                r5 = 0
                return r5
            L19:
                kotlin.ResultKt.b(r6)
                goto L29
            L1d:
                kotlin.ResultKt.b(r6)
                r5.f61144b = r4
                java.lang.Object r6 = com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl.Dc(r2, r5)
                if (r6 != r0) goto L29
                goto L31
            L29:
                r5.f61144b = r3
                java.lang.Object r5 = com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl.Cc(r2, r5)
                if (r5 != r0) goto L32
            L31:
                return r0
            L32:
                kotlin.Unit r5 = kotlin.Unit.f71739a
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$2", f = "PdpViewModelImpl.kt", l = {378}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f61146b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ PdpViewModelImpl f61147c;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$2$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "hasBeenDisplayed", ""}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$2$1", f = "PdpViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
        final class AnonymousClass1 extends SuspendLambda implements Function2<Boolean, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public /* synthetic */ boolean f61148b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ PdpViewModelImpl f61149c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(Continuation continuation, PdpViewModelImpl pdpViewModelImpl) {
                super(2, continuation);
                this.f61149c = pdpViewModelImpl;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(continuation, this.f61149c);
                anonymousClass1.f61148b = ((Boolean) obj).booleanValue();
                return anonymousClass1;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Boolean bool = (Boolean) obj;
                bool.booleanValue();
                return ((AnonymousClass1) create(bool, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                boolean z = this.f61148b;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                ResultKt.b(obj);
                this.f61149c.u0.setValue(Boolean.valueOf(z));
                return Unit.f71739a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Continuation continuation, PdpViewModelImpl pdpViewModelImpl) {
            super(2, continuation);
            this.f61147c = pdpViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass2(continuation, this.f61147c);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f61146b;
            if (i2 == 0) {
                ResultKt.b(obj);
                PdpViewModelImpl pdpViewModelImpl = this.f61147c;
                Flow flowJ = pdpViewModelImpl.L.f49157a.j();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(null, pdpViewModelImpl);
                this.f61146b = 1;
                if (FlowKt.g(flowJ, anonymousClass1, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            return Unit.f71739a;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\u0004¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl$Companion;", "", "", "TAG", "Ljava/lang/String;", "VISIT_PDP_EVENT_NAME", "VISIT_PDP_DATA_SKU", "VISIT_PDP_DATA_PRODUCT_NAME", "VISIT_PDP_DATA_PRODUCT_LINK", "VISIT_PDP_DATA_IMAGE_URL", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Code duplicated, block: B:21:0x041d  */
    @Inject
    public PdpViewModelImpl(SavedStateHandle savedStateHandle, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, Logger logger, Monitor monitor, Application application, AnalyticsTracker analyticsTracker, PdpTracker pdpTracker, LVEventSender lVEventSender, AppsFlyerTracker appsFlyerTracker, ContactUsDelegate contactUsDelegate, UserSessionService userSessionService, NotificationBuilder notificationBuilder, GetSizeGuideUseCase getSizeGuideUseCase, GetLegalConsentUseCase getLegalConsentUseCase, GetCustomizationUseCase getCustomizationUseCase, AddProductToCartUseCase addProductToCartUseCase, DisableStoreModeUseCase disableStoreModeUseCase, GetProductDetailUseCase getProductDetailUseCase, SetBeautyConsentUseCase setBeautyConsentUseCase, SaveCustomizationUseCase saveCustomizationUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, GetYmalProductListUseCase getYmalProductListUseCase, GetECommerceStatusUseCase getECommerceStatusUseCase, HasConsentedBeautyUseCase hasConsentedBeautyUseCase, IsProductInWishlistUseCase isProductInWishlistUseCase, RemoveCustomizationUseCase removeCustomizationUseCase, SubscribeBackInStockUseCase subscribeBackInStockUseCase, AddProductToWishlistUseCase addProductToWishlistUseCase, IsStoreModeStillValidUseCase isStoreModeStillValidUseCase, GetAccessibilityValueUseCase getAccessibilityValueUseCase, GetProductAvailabilityUseCase getProductAvailabilityUseCase, ReportDYAddToCartEventUseCase reportDYAddToCartEventUseCase, GetDYPdpChooseVariationUseCase getDYPdpChooseVariationUseCase, GetCrossSellProductListUseCase getCrossSellProductListUseCase, AddLastViewedProductSkuUseCase addLastViewedProductSkuUseCase, DeleteProductFromWishlistUseCase deleteProductFromWishlistUseCase, ReportDYAddToWishlistEventUseCase reportDYAddToWishlistEventUseCase, GetProductVariationsAvailabilityUseCase getProductVariationsAvailabilityUseCase, GetConsentForCustomisationTrackerUseCase getConsentForCustomisationTrackerUseCase, HasAITooltipBeenDisplayedUseCase hasAITooltipBeenDisplayedUseCase, UpdateAITooltipVisibilityUseCase updateAITooltipVisibilityUseCase) {
        PdpVirtualStudioConfigValues pdpVirtualStudioConfigValues;
        super(application);
        savedStateHandle.getClass();
        requireCachedAppConfigUseCase.getClass();
        requireUserInAppDispatchUseCase.getClass();
        logger.getClass();
        monitor.getClass();
        application.getClass();
        analyticsTracker.getClass();
        pdpTracker.getClass();
        lVEventSender.getClass();
        appsFlyerTracker.getClass();
        contactUsDelegate.getClass();
        userSessionService.getClass();
        notificationBuilder.getClass();
        getSizeGuideUseCase.getClass();
        getLegalConsentUseCase.getClass();
        getCustomizationUseCase.getClass();
        addProductToCartUseCase.getClass();
        disableStoreModeUseCase.getClass();
        getProductDetailUseCase.getClass();
        setBeautyConsentUseCase.getClass();
        saveCustomizationUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        getYmalProductListUseCase.getClass();
        getECommerceStatusUseCase.getClass();
        hasConsentedBeautyUseCase.getClass();
        isProductInWishlistUseCase.getClass();
        removeCustomizationUseCase.getClass();
        subscribeBackInStockUseCase.getClass();
        addProductToWishlistUseCase.getClass();
        isStoreModeStillValidUseCase.getClass();
        getAccessibilityValueUseCase.getClass();
        getProductAvailabilityUseCase.getClass();
        reportDYAddToCartEventUseCase.getClass();
        getDYPdpChooseVariationUseCase.getClass();
        getCrossSellProductListUseCase.getClass();
        addLastViewedProductSkuUseCase.getClass();
        deleteProductFromWishlistUseCase.getClass();
        reportDYAddToWishlistEventUseCase.getClass();
        getProductVariationsAvailabilityUseCase.getClass();
        getConsentForCustomisationTrackerUseCase.getClass();
        hasAITooltipBeenDisplayedUseCase.getClass();
        updateAITooltipVisibilityUseCase.getClass();
        this.f61136b = logger;
        this.f61137c = monitor;
        this.d = application;
        this.f61138e = analyticsTracker;
        this.f61139f = pdpTracker;
        this.g = lVEventSender;
        this.f61140h = appsFlyerTracker;
        this.f61141i = contactUsDelegate;
        this.f61142j = userSessionService;
        this.f61143k = notificationBuilder;
        this.l = getSizeGuideUseCase;
        this.m = getLegalConsentUseCase;
        this.n = getCustomizationUseCase;
        this.o = addProductToCartUseCase;
        this.p = disableStoreModeUseCase;
        this.q = getProductDetailUseCase;
        this.r = setBeautyConsentUseCase;
        this.s = saveCustomizationUseCase;
        this.t = isFeatureAvailableUseCase;
        this.u = getYmalProductListUseCase;
        this.v = getECommerceStatusUseCase;
        this.w = hasConsentedBeautyUseCase;
        this.x = isProductInWishlistUseCase;
        this.y = removeCustomizationUseCase;
        this.z = subscribeBackInStockUseCase;
        this.A = addProductToWishlistUseCase;
        this.B = isStoreModeStillValidUseCase;
        this.C = getProductAvailabilityUseCase;
        this.D = reportDYAddToCartEventUseCase;
        this.E = getDYPdpChooseVariationUseCase;
        this.F = getCrossSellProductListUseCase;
        this.G = addLastViewedProductSkuUseCase;
        this.H = deleteProductFromWishlistUseCase;
        this.I = reportDYAddToWishlistEventUseCase;
        this.J = getProductVariationsAvailabilityUseCase;
        this.K = getConsentForCustomisationTrackerUseCase;
        this.L = hasAITooltipBeenDisplayedUseCase;
        this.M = updateAITooltipVisibilityUseCase;
        InAppDispatch inAppDispatchB = requireUserInAppDispatchUseCase.f49912a.b();
        this.N = inAppDispatchB;
        AppConfig appConfigA = requireCachedAppConfigUseCase.a();
        this.O = appConfigA;
        this.P = (CatalogMode) savedStateHandle.a("CATALOG_MODE");
        String str = (String) savedStateHandle.a("STORE_RMS_CODE");
        this.Q = str;
        this.R = (String) savedStateHandle.a("CATEGORY_ID");
        String str2 = (String) savedStateHandle.a("SKU");
        if (str2 != null) {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        } else {
            str2 = null;
        }
        this.S = str2;
        this.T = (CustomizationIdUiModel) savedStateHandle.a("CUSTOMIZATION_ID");
        Boolean bool = (Boolean) savedStateHandle.a("IS_EXCLUSIVE_SALE");
        this.U = bool != null ? bool.booleanValue() : false;
        Boolean bool2 = (Boolean) savedStateHandle.a("IS_FROM_NATIVE_SHARE");
        this.V = bool2 != null ? bool2.booleanValue() : false;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(null);
        this.W = mutableStateFlowA;
        Boolean bool3 = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(bool3);
        this.X = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(bool3);
        this.Y = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(bool3);
        this.Z = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(bool3);
        this.a0 = mutableStateFlowA5;
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(bool3);
        this.b0 = mutableStateFlowA6;
        MutableStateFlow mutableStateFlowA7 = StateFlowKt.a(bool3);
        this.c0 = mutableStateFlowA7;
        MutableStateFlow mutableStateFlowA8 = StateFlowKt.a(bool3);
        this.d0 = mutableStateFlowA8;
        MutableStateFlow mutableStateFlowA9 = StateFlowKt.a(new PdpFeatureFlags(false, false, false, false, false, false, false, false, false, false, false, false, false, false, 16383, null));
        this.e0 = mutableStateFlowA9;
        String str3 = str2;
        MutableStateFlow mutableStateFlowA10 = StateFlowKt.a(new PdpAppConfigValues(null, null, null, null, null, null, null, CertificateBody.profileType, null));
        this.f0 = mutableStateFlowA10;
        MutableStateFlow mutableStateFlowA11 = StateFlowKt.a(bool3);
        this.g0 = mutableStateFlowA11;
        MutableStateFlow mutableStateFlowA12 = StateFlowKt.a(bool3);
        this.h0 = mutableStateFlowA12;
        MutableStateFlow mutableStateFlowA13 = StateFlowKt.a(Boolean.valueOf(userSessionService.b()));
        this.i0 = mutableStateFlowA13;
        MutableStateFlow mutableStateFlowA14 = StateFlowKt.a(bool3);
        this.j0 = mutableStateFlowA14;
        MutableStateFlow mutableStateFlowA15 = StateFlowKt.a(bool3);
        this.k0 = mutableStateFlowA15;
        MutableStateFlow mutableStateFlowA16 = StateFlowKt.a(null);
        this.l0 = mutableStateFlowA16;
        MutableStateFlow mutableStateFlowA17 = StateFlowKt.a(null);
        this.m0 = mutableStateFlowA17;
        MutableStateFlow mutableStateFlowA18 = StateFlowKt.a(null);
        this.n0 = mutableStateFlowA18;
        MutableStateFlow mutableStateFlowA19 = StateFlowKt.a(UtilsKt.b());
        this.o0 = mutableStateFlowA19;
        MutableStateFlow mutableStateFlowA20 = StateFlowKt.a("");
        this.p0 = mutableStateFlowA20;
        MutableStateFlow mutableStateFlowA21 = StateFlowKt.a(UtilsKt.b());
        this.q0 = mutableStateFlowA21;
        MutableStateFlow mutableStateFlowA22 = StateFlowKt.a(null);
        this.r0 = mutableStateFlowA22;
        MutableStateFlow mutableStateFlowA23 = StateFlowKt.a(bool3);
        this.s0 = mutableStateFlowA23;
        MutableStateFlow mutableStateFlowA24 = StateFlowKt.a(bool3);
        this.t0 = mutableStateFlowA24;
        MutableStateFlow mutableStateFlowA25 = StateFlowKt.a(bool3);
        this.u0 = mutableStateFlowA25;
        this.v0 = ChannelKt.a(0, 7, null);
        this.w0 = ChannelKt.a(0, 7, null);
        this.x0 = ChannelKt.a(0, 7, null);
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA4, mutableStateFlowA5, mutableStateFlowA6, mutableStateFlowA8, mutableStateFlowA7, mutableStateFlowA9, mutableStateFlowA10, mutableStateFlowA11, mutableStateFlowA12, mutableStateFlowA13, FlowKt.h(mutableStateFlowA, mutableStateFlowA14, mutableStateFlowA15, new PdpViewModelImpl$shouldShowCancelProductCustomizationBottomSheet$1(4, null)), mutableStateFlowA16, mutableStateFlowA17, mutableStateFlowA18, mutableStateFlowA19, mutableStateFlowA20, mutableStateFlowA21, mutableStateFlowA22, mutableStateFlowA23, mutableStateFlowA24, mutableStateFlowA25};
        Flow<PdpViewState> flow = new Flow<PdpViewState>() { // from class: com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$special$$inlined$combine$1$3", f = "PdpViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super PdpViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f61262b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f61263c;
                public /* synthetic */ Object[] d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ PdpViewModelImpl f61264e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass3(Continuation continuation, PdpViewModelImpl pdpViewModelImpl) {
                    super(3, continuation);
                    this.f61264e = pdpViewModelImpl;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3, this.f61264e);
                    anonymousClass3.f61263c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f61263c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f61262b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        PdpViewModelImpl pdpViewModelImpl = this.f61264e;
                        InAppDispatch inAppDispatch = pdpViewModelImpl.N;
                        ProductUiModel productUiModel = (ProductUiModel) objArr[0];
                        Object obj2 = objArr[1];
                        obj2.getClass();
                        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                        Object obj3 = objArr[2];
                        obj3.getClass();
                        boolean zBooleanValue2 = ((Boolean) obj3).booleanValue();
                        Object obj4 = objArr[3];
                        obj4.getClass();
                        boolean zBooleanValue3 = ((Boolean) obj4).booleanValue();
                        Object obj5 = objArr[4];
                        obj5.getClass();
                        boolean zBooleanValue4 = ((Boolean) obj5).booleanValue();
                        Object obj6 = objArr[5];
                        obj6.getClass();
                        boolean zBooleanValue5 = ((Boolean) obj6).booleanValue();
                        Object obj7 = objArr[6];
                        obj7.getClass();
                        boolean zBooleanValue6 = ((Boolean) obj7).booleanValue();
                        Object obj8 = objArr[7];
                        obj8.getClass();
                        boolean zBooleanValue7 = ((Boolean) obj8).booleanValue();
                        Object obj9 = objArr[8];
                        obj9.getClass();
                        PdpFeatureFlags pdpFeatureFlags = (PdpFeatureFlags) obj9;
                        Object obj10 = objArr[9];
                        obj10.getClass();
                        PdpAppConfigValues pdpAppConfigValues = (PdpAppConfigValues) obj10;
                        Object obj11 = objArr[10];
                        obj11.getClass();
                        boolean zBooleanValue8 = ((Boolean) obj11).booleanValue();
                        Object obj12 = objArr[11];
                        obj12.getClass();
                        boolean zBooleanValue9 = ((Boolean) obj12).booleanValue();
                        Object obj13 = objArr[12];
                        obj13.getClass();
                        boolean zBooleanValue10 = ((Boolean) obj13).booleanValue();
                        Object obj14 = objArr[13];
                        obj14.getClass();
                        boolean zBooleanValue11 = ((Boolean) obj14).booleanValue();
                        StoreButtonType storeButtonType = (StoreButtonType) objArr[14];
                        ProductAvailabilityUiModel productAvailabilityUiModel = (ProductAvailabilityUiModel) objArr[15];
                        SizeGuideUiModel sizeGuideUiModel = (SizeGuideUiModel) objArr[16];
                        Object obj15 = objArr[17];
                        obj15.getClass();
                        ImmutableList immutableList = (ImmutableList) obj15;
                        Object obj16 = objArr[18];
                        obj16.getClass();
                        String str = (String) obj16;
                        Object obj17 = objArr[19];
                        obj17.getClass();
                        ImmutableList immutableList2 = (ImmutableList) obj17;
                        BeautyLegalConsentUiModel beautyLegalConsentUiModel = (BeautyLegalConsentUiModel) objArr[20];
                        Object obj18 = objArr[21];
                        obj18.getClass();
                        boolean zBooleanValue12 = ((Boolean) obj18).booleanValue();
                        Object obj19 = objArr[22];
                        obj19.getClass();
                        boolean zBooleanValue13 = ((Boolean) obj19).booleanValue();
                        Object obj20 = objArr[23];
                        obj20.getClass();
                        boolean zBooleanValue14 = ((Boolean) obj20).booleanValue();
                        CatalogMode catalogMode = pdpViewModelImpl.P;
                        String str2 = pdpViewModelImpl.Q;
                        PdpViewState pdpViewState = new PdpViewState(inAppDispatch, productUiModel, zBooleanValue, zBooleanValue2, zBooleanValue3, zBooleanValue4, zBooleanValue6, zBooleanValue7, pdpFeatureFlags, pdpAppConfigValues, storeButtonType, productAvailabilityUiModel, !(str2 == null || StringsKt.w(str2)), null, sizeGuideUiModel, zBooleanValue8, immutableList, zBooleanValue5, zBooleanValue9, zBooleanValue10, str, catalogMode, immutableList2, zBooleanValue11, beautyLegalConsentUiModel, zBooleanValue12, zBooleanValue13, zBooleanValue14, pdpViewModelImpl.U, 8192, null);
                        this.f61263c = null;
                        this.d = null;
                        this.f61262b = 1;
                        if (flowCollector.emit(pdpViewState, this) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    } else {
                        if (i2 != 1) {
                            md.k("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        ResultKt.b(obj);
                    }
                    return Unit.f71739a;
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public final Object f(FlowCollector flowCollector, Continuation continuation) {
                final Flow[] flowArr2 = flowArr;
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$special$$inlined$combine$1.2
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return new Object[flowArr2.length];
                    }
                }, new AnonymousClass3(null, this), flowCollector, flowArr2);
                return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
            }
        };
        CloseableCoroutineScope closeableCoroutineScopeA = ViewModelKt.a(this);
        SharingStarted.f74985a.getClass();
        this.y0 = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new PdpViewState(inAppDispatchB, null, false, false, false, false, false, false, null, null, null, null, false, null, null, false, null, false, false, false, null, null, null, false, null, false, false, false, false, 536870910, null));
        pdpTracker.f61586b = str3;
        pdpTracker.d = str;
        BuildersKt.c(ViewModelKt.a(this), null, null, new PdpViewModelImpl$initPdpTracker$1(null, this), 3);
        String str4 = appConfigA.J;
        String str5 = appConfigA.f67238k;
        String str6 = appConfigA.f67233e;
        String str7 = appConfigA.w;
        String str8 = appConfigA.p;
        String str9 = appConfigA.g;
        VirtualStudioConfig virtualStudioConfig = appConfigA.T;
        if (virtualStudioConfig != null) {
            List list = virtualStudioConfig.f67286c;
            String str10 = virtualStudioConfig.f67285b;
            if (str10.length() <= 0 || list.isEmpty()) {
                pdpVirtualStudioConfigValues = null;
            } else {
                pdpVirtualStudioConfigValues = new PdpVirtualStudioConfigValues(virtualStudioConfig.f67284a, str10, list);
            }
        } else {
            pdpVirtualStudioConfigValues = null;
        }
        mutableStateFlowA10.setValue(new PdpAppConfigValues(str4, str5, str6, str7, str8, str9, pdpVirtualStudioConfigValues));
        Object objA = getAccessibilityValueUseCase.a(AccessibilityPreferenceType.SIMPLIFY_NAVIGATION);
        Result.Companion companion2 = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            mutableStateFlowA23.setValue((Boolean) objA);
        }
        Object objA2 = getAccessibilityValueUseCase.a(AccessibilityPreferenceType.DISABLE_AUTOPLAY);
        if (!(objA2 instanceof Result.Failure)) {
            mutableStateFlowA24.setValue((Boolean) objA2);
        }
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(null, this), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new PdpViewModelImpl$collectLoginState$1(null, this), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new PdpViewModelImpl$listenToWishlistEvents$1(null, this), 3);
        if (str3 != null) {
            BuildersKt.c(ViewModelKt.a(this), null, null, new PdpViewModelImpl$getDynamicYieldChooseVariation$1$1(this, str3, null), 3);
        }
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass2(null, this), 3);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Enum Ac(PdpViewModelImpl pdpViewModelImpl, ProductUiModel productUiModel, ContinuationImpl continuationImpl) {
        PdpViewModelImpl$getAvailability$1 pdpViewModelImpl$getAvailability$1;
        SkuAvailabilityUiModel skuAvailabilityUiModel;
        if (continuationImpl instanceof PdpViewModelImpl$getAvailability$1) {
            pdpViewModelImpl$getAvailability$1 = (PdpViewModelImpl$getAvailability$1) continuationImpl;
            int i2 = pdpViewModelImpl$getAvailability$1.f61181e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                pdpViewModelImpl$getAvailability$1.f61181e = i2 - Integer.MIN_VALUE;
            } else {
                pdpViewModelImpl$getAvailability$1 = new PdpViewModelImpl$getAvailability$1(pdpViewModelImpl, continuationImpl);
            }
        } else {
            pdpViewModelImpl$getAvailability$1 = new PdpViewModelImpl$getAvailability$1(pdpViewModelImpl, continuationImpl);
        }
        Object objC = pdpViewModelImpl$getAvailability$1.f61180c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = pdpViewModelImpl$getAvailability$1.f61181e;
        if (i3 == 0) {
            ResultKt.b(objC);
            SellableStatusUiModel sellableStatusUiModel = productUiModel.T;
            if (!(sellableStatusUiModel instanceof SellableStatusUiModel.SellableUiModel)) {
                if (!(sellableStatusUiModel instanceof SellableStatusUiModel.NotSellableUiModel)) {
                    v40.g();
                    return null;
                }
                NotSellableReasonUiModel notSellableReasonUiModel = ((SellableStatusUiModel.NotSellableUiModel) sellableStatusUiModel).f61747b;
                if (notSellableReasonUiModel instanceof NotSellableReasonUiModel.MandatoryCustomizationUiModel) {
                    return ProductAvailabilityUiModel.CallForAvailability;
                }
                if (notSellableReasonUiModel instanceof NotSellableReasonUiModel.NotECommerceUiModel) {
                    return ProductAvailabilityUiModel.DisplayNotECommerceInfo;
                }
                if (notSellableReasonUiModel instanceof NotSellableReasonUiModel.WebOnlyUiModel) {
                    return ProductAvailabilityUiModel.GoToWebsiteProductPage;
                }
                if (notSellableReasonUiModel instanceof NotSellableReasonUiModel.UnavailableUiModel) {
                    return ((PdpViewState) pdpViewModelImpl.y0.getValue()).f61572j.f61552e != null ? ProductAvailabilityUiModel.GoToEmailUsWebsite : ProductAvailabilityUiModel.CallForAvailability;
                }
                v40.g();
                return null;
            }
            SkuAvailabilityUiModel skuAvailabilityUiModel2 = productUiModel.R;
            if (skuAvailabilityUiModel2 != null && skuAvailabilityUiModel2.f61761e) {
                return ProductAvailabilityUiModel.AddToCart;
            }
            IsFeatureAvailableUseCase isFeatureAvailableUseCase = pdpViewModelImpl.t;
            Feature[] featureArr = {Feature.BACK_IN_STOCK, Feature.BATCH_SDK};
            pdpViewModelImpl$getAvailability$1.f61179b = productUiModel;
            pdpViewModelImpl$getAvailability$1.f61181e = 1;
            objC = isFeatureAvailableUseCase.c(featureArr, false, pdpViewModelImpl$getAvailability$1);
            if (objC == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            productUiModel = pdpViewModelImpl$getAvailability$1.f61179b;
            ResultKt.b(objC);
        }
        return (!((Boolean) objC).booleanValue() || !productUiModel.I || (skuAvailabilityUiModel = productUiModel.R) == null || skuAvailabilityUiModel.f61761e) ? ProductAvailabilityUiModel.CallForAvailability : ProductAvailabilityUiModel.DisplayBackInStock;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x01de  */
    /* JADX WARN: Code duplicated, block: B:102:0x01e3  */
    /* JADX WARN: Code duplicated, block: B:107:0x021b  */
    /* JADX WARN: Code duplicated, block: B:116:0x0237  */
    /* JADX WARN: Code duplicated, block: B:124:0x0261  */
    /* JADX WARN: Code duplicated, block: B:127:0x0267  */
    /* JADX WARN: Code duplicated, block: B:130:0x0278  */
    /* JADX WARN: Code duplicated, block: B:132:0x027c  */
    /* JADX WARN: Code duplicated, block: B:135:0x0285  */
    /* JADX WARN: Code duplicated, block: B:137:0x028c  */
    /* JADX WARN: Code duplicated, block: B:140:0x0220 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x0120  */
    /* JADX WARN: Code duplicated, block: B:67:0x014d  */
    /* JADX WARN: Code duplicated, block: B:69:0x0150  */
    /* JADX WARN: Code duplicated, block: B:71:0x0154  */
    /* JADX WARN: Code duplicated, block: B:73:0x0158  */
    /* JADX WARN: Code duplicated, block: B:75:0x015c  */
    /* JADX WARN: Code duplicated, block: B:78:0x0163  */
    /* JADX WARN: Code duplicated, block: B:7:0x0027  */
    /* JADX WARN: Code duplicated, block: B:80:0x016a  */
    /* JADX WARN: Code duplicated, block: B:81:0x016c  */
    /* JADX WARN: Code duplicated, block: B:88:0x0196  */
    /* JADX WARN: Code duplicated, block: B:91:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:93:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:94:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:97:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:98:0x01cf  */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0184, code lost:
    
        if (r5 == r11) goto L83;
     */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object Bc(com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl r28, java.lang.String r29, com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel r30, com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationType r31, boolean r32, kotlin.coroutines.jvm.internal.ContinuationImpl r33) {
        /*
            Method dump skipped, instruction units count: 671
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl.Bc(com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl, java.lang.String, com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel, com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationType, boolean, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:27:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:28:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:31:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:33:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:34:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:38:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:42:0x022c  */
    /* JADX WARN: Code duplicated, block: B:46:0x0266  */
    /* JADX WARN: Code duplicated, block: B:50:0x02a8  */
    /* JADX WARN: Code duplicated, block: B:54:0x02e5  */
    /* JADX WARN: Code duplicated, block: B:58:0x0334  */
    /* JADX WARN: Code duplicated, block: B:61:0x038c  */
    /* JADX WARN: Code duplicated, block: B:62:0x038f  */
    /* JADX WARN: Code duplicated, block: B:66:0x03ee  */
    /* JADX WARN: Code duplicated, block: B:69:0x0411  */
    /* JADX WARN: Code duplicated, block: B:70:0x0414  */
    /* JADX WARN: Code duplicated, block: B:72:0x0418  */
    /* JADX WARN: Code duplicated, block: B:73:0x041b  */
    /* JADX WARN: Code duplicated, block: B:77:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:78:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    public static final Object Cc(PdpViewModelImpl pdpViewModelImpl, ContinuationImpl continuationImpl) {
        PdpViewModelImpl$initFeatureFlags$1 pdpViewModelImpl$initFeatureFlags$1;
        MutableStateFlow mutableStateFlow;
        int i2;
        AppConfig appConfig;
        int i3;
        boolean zBooleanValue;
        int i4;
        boolean zA;
        int i5;
        Object objC;
        MutableStateFlow mutableStateFlow2;
        boolean z;
        int i6;
        boolean z2;
        Context baseContext;
        boolean zBooleanValue2;
        boolean z3;
        boolean z4;
        Object objC2;
        int i7;
        boolean z5;
        boolean z6;
        boolean z7;
        int i8;
        int i9;
        boolean z8;
        boolean zBooleanValue3;
        Object objC3;
        boolean z9;
        boolean z10;
        MutableStateFlow mutableStateFlow3;
        int i10;
        int i11;
        boolean z11;
        int i12;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean zBooleanValue4;
        Object objC4;
        int i13;
        int i14;
        boolean z15;
        boolean z16;
        boolean zBooleanValue5;
        Object objC5;
        boolean z17;
        MutableStateFlow mutableStateFlow4;
        int i15;
        boolean z18;
        boolean z19;
        boolean z20;
        boolean z21;
        boolean z22;
        int i16;
        int i17;
        boolean z23;
        boolean z24;
        boolean zBooleanValue6;
        MutableStateFlow mutableStateFlow5;
        Object objC6;
        CoroutineSingletons coroutineSingletons;
        Object obj;
        int i18;
        boolean z25;
        int i19;
        boolean z26;
        boolean z27;
        boolean z28;
        boolean z29;
        boolean z30;
        boolean z31;
        boolean z32;
        boolean z33;
        MutableStateFlow mutableStateFlow6;
        CoroutineSingletons coroutineSingletons2;
        boolean zBooleanValue7;
        MutableStateFlow mutableStateFlow7;
        Object objC7;
        Object obj2;
        int i20;
        boolean z34;
        boolean z35;
        boolean z36;
        boolean z37;
        int i21;
        boolean z38;
        int i22;
        boolean z39;
        CoroutineSingletons coroutineSingletons3;
        boolean z40;
        boolean z41;
        boolean z42;
        boolean z43;
        MutableStateFlow mutableStateFlow8;
        boolean zBooleanValue8;
        boolean z44;
        boolean z45;
        CoroutineSingletons coroutineSingletons4;
        boolean z46;
        boolean z47;
        MutableStateFlow mutableStateFlow9;
        boolean z48;
        boolean z49;
        int i23;
        boolean z50;
        boolean z51;
        boolean z52;
        boolean z53;
        boolean z54;
        boolean z55;
        boolean z56;
        int i24;
        boolean z57;
        boolean z58;
        IsFeatureAvailableUseCase isFeatureAvailableUseCase = pdpViewModelImpl.t;
        Application application = pdpViewModelImpl.d;
        if (continuationImpl instanceof PdpViewModelImpl$initFeatureFlags$1) {
            pdpViewModelImpl$initFeatureFlags$1 = (PdpViewModelImpl$initFeatureFlags$1) continuationImpl;
            int i25 = pdpViewModelImpl$initFeatureFlags$1.t;
            if ((i25 & Integer.MIN_VALUE) != 0) {
                pdpViewModelImpl$initFeatureFlags$1.t = i25 - Integer.MIN_VALUE;
            } else {
                pdpViewModelImpl$initFeatureFlags$1 = new PdpViewModelImpl$initFeatureFlags$1(pdpViewModelImpl, continuationImpl);
            }
        } else {
            pdpViewModelImpl$initFeatureFlags$1 = new PdpViewModelImpl$initFeatureFlags$1(pdpViewModelImpl, continuationImpl);
        }
        Object objC8 = pdpViewModelImpl$initFeatureFlags$1.r;
        CoroutineSingletons coroutineSingletons5 = CoroutineSingletons.COROUTINE_SUSPENDED;
        switch (pdpViewModelImpl$initFeatureFlags$1.t) {
            case 0:
                ResultKt.b(objC8);
                AppConfig appConfig2 = pdpViewModelImpl.O;
                mutableStateFlow = pdpViewModelImpl.e0;
                Feature[] featureArr = {Feature.TWIST};
                pdpViewModelImpl$initFeatureFlags$1.f61209b = appConfig2;
                pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow;
                pdpViewModelImpl$initFeatureFlags$1.d = 0;
                i2 = 1;
                pdpViewModelImpl$initFeatureFlags$1.t = 1;
                Object objC9 = isFeatureAvailableUseCase.c(featureArr, false, pdpViewModelImpl$initFeatureFlags$1);
                if (objC9 != coroutineSingletons5) {
                    appConfig = appConfig2;
                    objC8 = objC9;
                    i3 = 0;
                    zBooleanValue = ((Boolean) objC8).booleanValue();
                    if (pdpViewModelImpl.v.a() == ECommerceStatus.Enabled) {
                        i4 = i2;
                    } else {
                        i4 = 0;
                    }
                    Context baseContext2 = application.getBaseContext();
                    baseContext2.getClass();
                    zA = ArUtils.a(baseContext2);
                    if (appConfig.w != null) {
                        baseContext = application.getBaseContext();
                        baseContext.getClass();
                        if (ArUtils.a(baseContext)) {
                            i5 = i2;
                        } else {
                            i5 = 0;
                        }
                    } else {
                        i5 = 0;
                    }
                    Feature[] featureArr2 = {Feature.DIAMONDS_PDP};
                    pdpViewModelImpl$initFeatureFlags$1.f61209b = appConfig;
                    pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow;
                    pdpViewModelImpl$initFeatureFlags$1.d = i3;
                    pdpViewModelImpl$initFeatureFlags$1.f61211e = i4;
                    pdpViewModelImpl$initFeatureFlags$1.g = zBooleanValue;
                    pdpViewModelImpl$initFeatureFlags$1.f61212f = i5;
                    pdpViewModelImpl$initFeatureFlags$1.f61213h = zA;
                    pdpViewModelImpl$initFeatureFlags$1.t = 2;
                    objC = isFeatureAvailableUseCase.c(featureArr2, false, pdpViewModelImpl$initFeatureFlags$1);
                    if (objC != coroutineSingletons5) {
                        mutableStateFlow2 = mutableStateFlow;
                        z = zA;
                        i6 = i3;
                        z2 = zBooleanValue;
                        objC8 = objC;
                        zBooleanValue2 = ((Boolean) objC8).booleanValue();
                        z3 = appConfig.W;
                        z4 = appConfig.a0.f67282a;
                        Feature[] featureArr3 = {Feature.NATIVE_CART};
                        pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                        pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow2;
                        pdpViewModelImpl$initFeatureFlags$1.d = i6;
                        pdpViewModelImpl$initFeatureFlags$1.f61211e = i4;
                        pdpViewModelImpl$initFeatureFlags$1.g = z2;
                        pdpViewModelImpl$initFeatureFlags$1.f61212f = i5;
                        pdpViewModelImpl$initFeatureFlags$1.f61213h = z;
                        pdpViewModelImpl$initFeatureFlags$1.f61214i = zBooleanValue2;
                        pdpViewModelImpl$initFeatureFlags$1.f61215j = z3;
                        pdpViewModelImpl$initFeatureFlags$1.f61216k = z4;
                        pdpViewModelImpl$initFeatureFlags$1.t = 3;
                        objC2 = isFeatureAvailableUseCase.c(featureArr3, false, pdpViewModelImpl$initFeatureFlags$1);
                        if (objC2 != coroutineSingletons5) {
                            i7 = i4;
                            z5 = z4;
                            z6 = z2;
                            z7 = zBooleanValue2;
                            objC8 = objC2;
                            i8 = i6;
                            i9 = i5;
                            z8 = z3;
                            zBooleanValue3 = ((Boolean) objC8).booleanValue();
                            Feature[] featureArr4 = {Feature.BACK_ORDER_DISCLAIMER};
                            pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                            pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow2;
                            pdpViewModelImpl$initFeatureFlags$1.d = i8;
                            pdpViewModelImpl$initFeatureFlags$1.f61211e = i7;
                            pdpViewModelImpl$initFeatureFlags$1.g = z6;
                            pdpViewModelImpl$initFeatureFlags$1.f61212f = i9;
                            pdpViewModelImpl$initFeatureFlags$1.f61213h = z;
                            pdpViewModelImpl$initFeatureFlags$1.f61214i = z7;
                            pdpViewModelImpl$initFeatureFlags$1.f61215j = z8;
                            pdpViewModelImpl$initFeatureFlags$1.f61216k = z5;
                            pdpViewModelImpl$initFeatureFlags$1.l = zBooleanValue3;
                            pdpViewModelImpl$initFeatureFlags$1.t = 4;
                            objC3 = isFeatureAvailableUseCase.c(featureArr4, false, pdpViewModelImpl$initFeatureFlags$1);
                            if (objC3 != coroutineSingletons5) {
                                boolean z59 = z7;
                                z9 = z5;
                                z10 = zBooleanValue3;
                                objC8 = objC3;
                                mutableStateFlow3 = mutableStateFlow2;
                                i10 = i8;
                                i11 = i7;
                                z11 = z6;
                                i12 = i9;
                                z12 = z59;
                                boolean z60 = z;
                                z13 = z8;
                                z14 = z60;
                                zBooleanValue4 = ((Boolean) objC8).booleanValue();
                                Feature[] featureArr5 = {Feature.BACK_ORDER_DISCLAIMER_ENHANCEMENT};
                                pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                                pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow3;
                                pdpViewModelImpl$initFeatureFlags$1.d = i10;
                                pdpViewModelImpl$initFeatureFlags$1.f61211e = i11;
                                pdpViewModelImpl$initFeatureFlags$1.g = z11;
                                pdpViewModelImpl$initFeatureFlags$1.f61212f = i12;
                                pdpViewModelImpl$initFeatureFlags$1.f61213h = z14;
                                pdpViewModelImpl$initFeatureFlags$1.f61214i = z12;
                                pdpViewModelImpl$initFeatureFlags$1.f61215j = z13;
                                pdpViewModelImpl$initFeatureFlags$1.f61216k = z9;
                                pdpViewModelImpl$initFeatureFlags$1.l = zBooleanValue4;
                                pdpViewModelImpl$initFeatureFlags$1.m = z10;
                                pdpViewModelImpl$initFeatureFlags$1.t = 5;
                                objC4 = isFeatureAvailableUseCase.c(featureArr5, false, pdpViewModelImpl$initFeatureFlags$1);
                                if (objC4 != coroutineSingletons5) {
                                    int i26 = i11;
                                    i13 = i10;
                                    i14 = i26;
                                    z15 = z14;
                                    z16 = zBooleanValue4;
                                    objC8 = objC4;
                                    zBooleanValue5 = ((Boolean) objC8).booleanValue();
                                    Feature[] featureArr6 = {Feature.BACK_IN_STOCK};
                                    pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                                    pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow3;
                                    pdpViewModelImpl$initFeatureFlags$1.d = i13;
                                    pdpViewModelImpl$initFeatureFlags$1.f61211e = i14;
                                    pdpViewModelImpl$initFeatureFlags$1.g = z11;
                                    pdpViewModelImpl$initFeatureFlags$1.f61212f = i12;
                                    pdpViewModelImpl$initFeatureFlags$1.f61213h = z15;
                                    pdpViewModelImpl$initFeatureFlags$1.f61214i = z12;
                                    pdpViewModelImpl$initFeatureFlags$1.f61215j = z13;
                                    pdpViewModelImpl$initFeatureFlags$1.f61216k = z9;
                                    pdpViewModelImpl$initFeatureFlags$1.l = z16;
                                    pdpViewModelImpl$initFeatureFlags$1.m = z10;
                                    pdpViewModelImpl$initFeatureFlags$1.n = zBooleanValue5;
                                    pdpViewModelImpl$initFeatureFlags$1.t = 6;
                                    objC5 = isFeatureAvailableUseCase.c(featureArr6, false, pdpViewModelImpl$initFeatureFlags$1);
                                    coroutineSingletons5 = coroutineSingletons5;
                                    if (objC5 != coroutineSingletons5) {
                                        boolean z61 = z9;
                                        z17 = z10;
                                        mutableStateFlow4 = mutableStateFlow3;
                                        i15 = i13;
                                        z18 = z11;
                                        z19 = z15;
                                        z20 = z13;
                                        z21 = z16;
                                        z22 = zBooleanValue5;
                                        objC8 = objC5;
                                        i16 = i14;
                                        i17 = i12;
                                        z23 = z12;
                                        z24 = z61;
                                        zBooleanValue6 = ((Boolean) objC8).booleanValue();
                                        CoroutineSingletons coroutineSingletons6 = coroutineSingletons5;
                                        Feature[] featureArr7 = {Feature.BACK_IN_STOCK_LEGAL_CONSENT};
                                        pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                                        pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow4;
                                        pdpViewModelImpl$initFeatureFlags$1.d = i15;
                                        pdpViewModelImpl$initFeatureFlags$1.f61211e = i16;
                                        pdpViewModelImpl$initFeatureFlags$1.g = z18;
                                        pdpViewModelImpl$initFeatureFlags$1.f61212f = i17;
                                        pdpViewModelImpl$initFeatureFlags$1.f61213h = z19;
                                        pdpViewModelImpl$initFeatureFlags$1.f61214i = z23;
                                        pdpViewModelImpl$initFeatureFlags$1.f61215j = z20;
                                        pdpViewModelImpl$initFeatureFlags$1.f61216k = z24;
                                        pdpViewModelImpl$initFeatureFlags$1.l = z21;
                                        pdpViewModelImpl$initFeatureFlags$1.m = z17;
                                        pdpViewModelImpl$initFeatureFlags$1.n = z22;
                                        pdpViewModelImpl$initFeatureFlags$1.o = zBooleanValue6;
                                        pdpViewModelImpl$initFeatureFlags$1.t = 7;
                                        isFeatureAvailableUseCase = isFeatureAvailableUseCase;
                                        mutableStateFlow5 = mutableStateFlow4;
                                        objC6 = isFeatureAvailableUseCase.c(featureArr7, false, pdpViewModelImpl$initFeatureFlags$1);
                                        coroutineSingletons = coroutineSingletons6;
                                        if (objC6 == coroutineSingletons) {
                                            return coroutineSingletons;
                                        }
                                        obj = objC6;
                                        i18 = i16;
                                        z25 = z18;
                                        i19 = i17;
                                        z26 = z19;
                                        z27 = z23;
                                        z28 = z20;
                                        z29 = z24;
                                        z30 = z21;
                                        z31 = z17;
                                        z32 = z22;
                                        z33 = zBooleanValue6;
                                        mutableStateFlow6 = mutableStateFlow5;
                                        Boolean bool = (Boolean) obj;
                                        coroutineSingletons2 = coroutineSingletons;
                                        zBooleanValue7 = bool.booleanValue();
                                        IsFeatureAvailableUseCase isFeatureAvailableUseCase2 = isFeatureAvailableUseCase;
                                        Feature[] featureArr8 = {Feature.ADD_TO_CART_CROSS_SELL};
                                        pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                                        pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow6;
                                        pdpViewModelImpl$initFeatureFlags$1.d = i15;
                                        pdpViewModelImpl$initFeatureFlags$1.f61211e = i18;
                                        pdpViewModelImpl$initFeatureFlags$1.g = z25;
                                        pdpViewModelImpl$initFeatureFlags$1.f61212f = i19;
                                        pdpViewModelImpl$initFeatureFlags$1.f61213h = z26;
                                        pdpViewModelImpl$initFeatureFlags$1.f61214i = z27;
                                        pdpViewModelImpl$initFeatureFlags$1.f61215j = z28;
                                        pdpViewModelImpl$initFeatureFlags$1.f61216k = z29;
                                        pdpViewModelImpl$initFeatureFlags$1.l = z30;
                                        pdpViewModelImpl$initFeatureFlags$1.m = z31;
                                        pdpViewModelImpl$initFeatureFlags$1.n = z32;
                                        pdpViewModelImpl$initFeatureFlags$1.o = z33;
                                        pdpViewModelImpl$initFeatureFlags$1.p = zBooleanValue7;
                                        pdpViewModelImpl$initFeatureFlags$1.t = 8;
                                        isFeatureAvailableUseCase = isFeatureAvailableUseCase2;
                                        mutableStateFlow7 = mutableStateFlow6;
                                        objC7 = isFeatureAvailableUseCase.c(featureArr8, false, pdpViewModelImpl$initFeatureFlags$1);
                                        if (objC7 == coroutineSingletons2) {
                                            return coroutineSingletons2;
                                        }
                                        obj2 = objC7;
                                        i20 = i15;
                                        z34 = z27;
                                        z35 = z30;
                                        z36 = z32;
                                        z37 = z33;
                                        i21 = i19;
                                        z38 = z28;
                                        i22 = i18;
                                        z39 = zBooleanValue7;
                                        coroutineSingletons3 = coroutineSingletons2;
                                        z40 = z25;
                                        z41 = z26;
                                        z42 = z29;
                                        z43 = z31;
                                        mutableStateFlow8 = mutableStateFlow7;
                                        Boolean bool2 = (Boolean) obj2;
                                        IsFeatureAvailableUseCase isFeatureAvailableUseCase3 = isFeatureAvailableUseCase;
                                        zBooleanValue8 = bool2.booleanValue();
                                        Feature[] featureArr9 = {Feature.AI_COMPANION_PDP};
                                        pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                                        pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow8;
                                        pdpViewModelImpl$initFeatureFlags$1.d = i20;
                                        pdpViewModelImpl$initFeatureFlags$1.f61211e = i22;
                                        pdpViewModelImpl$initFeatureFlags$1.g = z40;
                                        pdpViewModelImpl$initFeatureFlags$1.f61212f = i21;
                                        pdpViewModelImpl$initFeatureFlags$1.f61213h = z41;
                                        pdpViewModelImpl$initFeatureFlags$1.f61214i = z34;
                                        pdpViewModelImpl$initFeatureFlags$1.f61215j = z38;
                                        pdpViewModelImpl$initFeatureFlags$1.f61216k = z42;
                                        pdpViewModelImpl$initFeatureFlags$1.l = z35;
                                        pdpViewModelImpl$initFeatureFlags$1.m = z43;
                                        pdpViewModelImpl$initFeatureFlags$1.n = z36;
                                        pdpViewModelImpl$initFeatureFlags$1.o = z37;
                                        pdpViewModelImpl$initFeatureFlags$1.p = z39;
                                        pdpViewModelImpl$initFeatureFlags$1.q = zBooleanValue8;
                                        pdpViewModelImpl$initFeatureFlags$1.t = 9;
                                        z44 = false;
                                        z45 = z40;
                                        objC8 = isFeatureAvailableUseCase3.c(featureArr9, false, pdpViewModelImpl$initFeatureFlags$1);
                                        coroutineSingletons4 = coroutineSingletons3;
                                        if (objC8 == coroutineSingletons4) {
                                            return coroutineSingletons4;
                                        }
                                        z46 = z39;
                                        z47 = z37;
                                        mutableStateFlow9 = mutableStateFlow8;
                                        z48 = z36;
                                        z49 = z43;
                                        i23 = i22;
                                        z50 = z35;
                                        z51 = z42;
                                        z52 = z38;
                                        z53 = z34;
                                        z54 = z41;
                                        z55 = z45;
                                        z56 = zBooleanValue8;
                                        i24 = i21;
                                        boolean zBooleanValue9 = ((Boolean) objC8).booleanValue();
                                        if (i23 != 0) {
                                            z57 = true;
                                        } else {
                                            z57 = z44;
                                        }
                                        if (i24 != 0) {
                                            z58 = true;
                                        } else {
                                            z58 = z44;
                                        }
                                        mutableStateFlow9.setValue(new PdpFeatureFlags(z55, z57, z58, z54, z53, z52, z51, z49, z50, z48, z47, z46, z56, zBooleanValue9));
                                        return Unit.f71739a;
                                    }
                                }
                            }
                        }
                    }
                }
                return coroutineSingletons5;
            case 1:
                i3 = pdpViewModelImpl$initFeatureFlags$1.d;
                mutableStateFlow = pdpViewModelImpl$initFeatureFlags$1.f61210c;
                AppConfig appConfig3 = pdpViewModelImpl$initFeatureFlags$1.f61209b;
                ResultKt.b(objC8);
                appConfig = appConfig3;
                i2 = 1;
                zBooleanValue = ((Boolean) objC8).booleanValue();
                if (pdpViewModelImpl.v.a() == ECommerceStatus.Enabled) {
                    i4 = i2;
                } else {
                    i4 = 0;
                }
                Context baseContext3 = application.getBaseContext();
                baseContext3.getClass();
                zA = ArUtils.a(baseContext3);
                if (appConfig.w != null) {
                    baseContext = application.getBaseContext();
                    baseContext.getClass();
                    if (ArUtils.a(baseContext)) {
                        i5 = i2;
                    } else {
                        i5 = 0;
                    }
                } else {
                    i5 = 0;
                }
                Feature[] featureArr10 = {Feature.DIAMONDS_PDP};
                pdpViewModelImpl$initFeatureFlags$1.f61209b = appConfig;
                pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow;
                pdpViewModelImpl$initFeatureFlags$1.d = i3;
                pdpViewModelImpl$initFeatureFlags$1.f61211e = i4;
                pdpViewModelImpl$initFeatureFlags$1.g = zBooleanValue;
                pdpViewModelImpl$initFeatureFlags$1.f61212f = i5;
                pdpViewModelImpl$initFeatureFlags$1.f61213h = zA;
                pdpViewModelImpl$initFeatureFlags$1.t = 2;
                objC = isFeatureAvailableUseCase.c(featureArr10, false, pdpViewModelImpl$initFeatureFlags$1);
                if (objC != coroutineSingletons5) {
                    mutableStateFlow2 = mutableStateFlow;
                    z = zA;
                    i6 = i3;
                    z2 = zBooleanValue;
                    objC8 = objC;
                    zBooleanValue2 = ((Boolean) objC8).booleanValue();
                    z3 = appConfig.W;
                    z4 = appConfig.a0.f67282a;
                    Feature[] featureArr11 = {Feature.NATIVE_CART};
                    pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                    pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow2;
                    pdpViewModelImpl$initFeatureFlags$1.d = i6;
                    pdpViewModelImpl$initFeatureFlags$1.f61211e = i4;
                    pdpViewModelImpl$initFeatureFlags$1.g = z2;
                    pdpViewModelImpl$initFeatureFlags$1.f61212f = i5;
                    pdpViewModelImpl$initFeatureFlags$1.f61213h = z;
                    pdpViewModelImpl$initFeatureFlags$1.f61214i = zBooleanValue2;
                    pdpViewModelImpl$initFeatureFlags$1.f61215j = z3;
                    pdpViewModelImpl$initFeatureFlags$1.f61216k = z4;
                    pdpViewModelImpl$initFeatureFlags$1.t = 3;
                    objC2 = isFeatureAvailableUseCase.c(featureArr11, false, pdpViewModelImpl$initFeatureFlags$1);
                    if (objC2 != coroutineSingletons5) {
                        i7 = i4;
                        z5 = z4;
                        z6 = z2;
                        z7 = zBooleanValue2;
                        objC8 = objC2;
                        i8 = i6;
                        i9 = i5;
                        z8 = z3;
                        zBooleanValue3 = ((Boolean) objC8).booleanValue();
                        Feature[] featureArr12 = {Feature.BACK_ORDER_DISCLAIMER};
                        pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                        pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow2;
                        pdpViewModelImpl$initFeatureFlags$1.d = i8;
                        pdpViewModelImpl$initFeatureFlags$1.f61211e = i7;
                        pdpViewModelImpl$initFeatureFlags$1.g = z6;
                        pdpViewModelImpl$initFeatureFlags$1.f61212f = i9;
                        pdpViewModelImpl$initFeatureFlags$1.f61213h = z;
                        pdpViewModelImpl$initFeatureFlags$1.f61214i = z7;
                        pdpViewModelImpl$initFeatureFlags$1.f61215j = z8;
                        pdpViewModelImpl$initFeatureFlags$1.f61216k = z5;
                        pdpViewModelImpl$initFeatureFlags$1.l = zBooleanValue3;
                        pdpViewModelImpl$initFeatureFlags$1.t = 4;
                        objC3 = isFeatureAvailableUseCase.c(featureArr12, false, pdpViewModelImpl$initFeatureFlags$1);
                        if (objC3 != coroutineSingletons5) {
                            boolean z510 = z7;
                            z9 = z5;
                            z10 = zBooleanValue3;
                            objC8 = objC3;
                            mutableStateFlow3 = mutableStateFlow2;
                            i10 = i8;
                            i11 = i7;
                            z11 = z6;
                            i12 = i9;
                            z12 = z510;
                            boolean z62 = z;
                            z13 = z8;
                            z14 = z62;
                            zBooleanValue4 = ((Boolean) objC8).booleanValue();
                            Feature[] featureArr13 = {Feature.BACK_ORDER_DISCLAIMER_ENHANCEMENT};
                            pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                            pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow3;
                            pdpViewModelImpl$initFeatureFlags$1.d = i10;
                            pdpViewModelImpl$initFeatureFlags$1.f61211e = i11;
                            pdpViewModelImpl$initFeatureFlags$1.g = z11;
                            pdpViewModelImpl$initFeatureFlags$1.f61212f = i12;
                            pdpViewModelImpl$initFeatureFlags$1.f61213h = z14;
                            pdpViewModelImpl$initFeatureFlags$1.f61214i = z12;
                            pdpViewModelImpl$initFeatureFlags$1.f61215j = z13;
                            pdpViewModelImpl$initFeatureFlags$1.f61216k = z9;
                            pdpViewModelImpl$initFeatureFlags$1.l = zBooleanValue4;
                            pdpViewModelImpl$initFeatureFlags$1.m = z10;
                            pdpViewModelImpl$initFeatureFlags$1.t = 5;
                            objC4 = isFeatureAvailableUseCase.c(featureArr13, false, pdpViewModelImpl$initFeatureFlags$1);
                            if (objC4 != coroutineSingletons5) {
                                int i27 = i11;
                                i13 = i10;
                                i14 = i27;
                                z15 = z14;
                                z16 = zBooleanValue4;
                                objC8 = objC4;
                                zBooleanValue5 = ((Boolean) objC8).booleanValue();
                                Feature[] featureArr14 = {Feature.BACK_IN_STOCK};
                                pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                                pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow3;
                                pdpViewModelImpl$initFeatureFlags$1.d = i13;
                                pdpViewModelImpl$initFeatureFlags$1.f61211e = i14;
                                pdpViewModelImpl$initFeatureFlags$1.g = z11;
                                pdpViewModelImpl$initFeatureFlags$1.f61212f = i12;
                                pdpViewModelImpl$initFeatureFlags$1.f61213h = z15;
                                pdpViewModelImpl$initFeatureFlags$1.f61214i = z12;
                                pdpViewModelImpl$initFeatureFlags$1.f61215j = z13;
                                pdpViewModelImpl$initFeatureFlags$1.f61216k = z9;
                                pdpViewModelImpl$initFeatureFlags$1.l = z16;
                                pdpViewModelImpl$initFeatureFlags$1.m = z10;
                                pdpViewModelImpl$initFeatureFlags$1.n = zBooleanValue5;
                                pdpViewModelImpl$initFeatureFlags$1.t = 6;
                                objC5 = isFeatureAvailableUseCase.c(featureArr14, false, pdpViewModelImpl$initFeatureFlags$1);
                                coroutineSingletons5 = coroutineSingletons5;
                                if (objC5 != coroutineSingletons5) {
                                    boolean z63 = z9;
                                    z17 = z10;
                                    mutableStateFlow4 = mutableStateFlow3;
                                    i15 = i13;
                                    z18 = z11;
                                    z19 = z15;
                                    z20 = z13;
                                    z21 = z16;
                                    z22 = zBooleanValue5;
                                    objC8 = objC5;
                                    i16 = i14;
                                    i17 = i12;
                                    z23 = z12;
                                    z24 = z63;
                                    zBooleanValue6 = ((Boolean) objC8).booleanValue();
                                    CoroutineSingletons coroutineSingletons7 = coroutineSingletons5;
                                    Feature[] featureArr15 = {Feature.BACK_IN_STOCK_LEGAL_CONSENT};
                                    pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                                    pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow4;
                                    pdpViewModelImpl$initFeatureFlags$1.d = i15;
                                    pdpViewModelImpl$initFeatureFlags$1.f61211e = i16;
                                    pdpViewModelImpl$initFeatureFlags$1.g = z18;
                                    pdpViewModelImpl$initFeatureFlags$1.f61212f = i17;
                                    pdpViewModelImpl$initFeatureFlags$1.f61213h = z19;
                                    pdpViewModelImpl$initFeatureFlags$1.f61214i = z23;
                                    pdpViewModelImpl$initFeatureFlags$1.f61215j = z20;
                                    pdpViewModelImpl$initFeatureFlags$1.f61216k = z24;
                                    pdpViewModelImpl$initFeatureFlags$1.l = z21;
                                    pdpViewModelImpl$initFeatureFlags$1.m = z17;
                                    pdpViewModelImpl$initFeatureFlags$1.n = z22;
                                    pdpViewModelImpl$initFeatureFlags$1.o = zBooleanValue6;
                                    pdpViewModelImpl$initFeatureFlags$1.t = 7;
                                    isFeatureAvailableUseCase = isFeatureAvailableUseCase;
                                    mutableStateFlow5 = mutableStateFlow4;
                                    objC6 = isFeatureAvailableUseCase.c(featureArr15, false, pdpViewModelImpl$initFeatureFlags$1);
                                    coroutineSingletons = coroutineSingletons7;
                                    if (objC6 == coroutineSingletons) {
                                        return coroutineSingletons;
                                    }
                                    obj = objC6;
                                    i18 = i16;
                                    z25 = z18;
                                    i19 = i17;
                                    z26 = z19;
                                    z27 = z23;
                                    z28 = z20;
                                    z29 = z24;
                                    z30 = z21;
                                    z31 = z17;
                                    z32 = z22;
                                    z33 = zBooleanValue6;
                                    mutableStateFlow6 = mutableStateFlow5;
                                    Boolean bool3 = (Boolean) obj;
                                    coroutineSingletons2 = coroutineSingletons;
                                    zBooleanValue7 = bool3.booleanValue();
                                    IsFeatureAvailableUseCase isFeatureAvailableUseCase4 = isFeatureAvailableUseCase;
                                    Feature[] featureArr16 = {Feature.ADD_TO_CART_CROSS_SELL};
                                    pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                                    pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow6;
                                    pdpViewModelImpl$initFeatureFlags$1.d = i15;
                                    pdpViewModelImpl$initFeatureFlags$1.f61211e = i18;
                                    pdpViewModelImpl$initFeatureFlags$1.g = z25;
                                    pdpViewModelImpl$initFeatureFlags$1.f61212f = i19;
                                    pdpViewModelImpl$initFeatureFlags$1.f61213h = z26;
                                    pdpViewModelImpl$initFeatureFlags$1.f61214i = z27;
                                    pdpViewModelImpl$initFeatureFlags$1.f61215j = z28;
                                    pdpViewModelImpl$initFeatureFlags$1.f61216k = z29;
                                    pdpViewModelImpl$initFeatureFlags$1.l = z30;
                                    pdpViewModelImpl$initFeatureFlags$1.m = z31;
                                    pdpViewModelImpl$initFeatureFlags$1.n = z32;
                                    pdpViewModelImpl$initFeatureFlags$1.o = z33;
                                    pdpViewModelImpl$initFeatureFlags$1.p = zBooleanValue7;
                                    pdpViewModelImpl$initFeatureFlags$1.t = 8;
                                    isFeatureAvailableUseCase = isFeatureAvailableUseCase4;
                                    mutableStateFlow7 = mutableStateFlow6;
                                    objC7 = isFeatureAvailableUseCase.c(featureArr16, false, pdpViewModelImpl$initFeatureFlags$1);
                                    if (objC7 == coroutineSingletons2) {
                                        return coroutineSingletons2;
                                    }
                                    obj2 = objC7;
                                    i20 = i15;
                                    z34 = z27;
                                    z35 = z30;
                                    z36 = z32;
                                    z37 = z33;
                                    i21 = i19;
                                    z38 = z28;
                                    i22 = i18;
                                    z39 = zBooleanValue7;
                                    coroutineSingletons3 = coroutineSingletons2;
                                    z40 = z25;
                                    z41 = z26;
                                    z42 = z29;
                                    z43 = z31;
                                    mutableStateFlow8 = mutableStateFlow7;
                                    Boolean bool4 = (Boolean) obj2;
                                    IsFeatureAvailableUseCase isFeatureAvailableUseCase5 = isFeatureAvailableUseCase;
                                    zBooleanValue8 = bool4.booleanValue();
                                    Feature[] featureArr17 = {Feature.AI_COMPANION_PDP};
                                    pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                                    pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow8;
                                    pdpViewModelImpl$initFeatureFlags$1.d = i20;
                                    pdpViewModelImpl$initFeatureFlags$1.f61211e = i22;
                                    pdpViewModelImpl$initFeatureFlags$1.g = z40;
                                    pdpViewModelImpl$initFeatureFlags$1.f61212f = i21;
                                    pdpViewModelImpl$initFeatureFlags$1.f61213h = z41;
                                    pdpViewModelImpl$initFeatureFlags$1.f61214i = z34;
                                    pdpViewModelImpl$initFeatureFlags$1.f61215j = z38;
                                    pdpViewModelImpl$initFeatureFlags$1.f61216k = z42;
                                    pdpViewModelImpl$initFeatureFlags$1.l = z35;
                                    pdpViewModelImpl$initFeatureFlags$1.m = z43;
                                    pdpViewModelImpl$initFeatureFlags$1.n = z36;
                                    pdpViewModelImpl$initFeatureFlags$1.o = z37;
                                    pdpViewModelImpl$initFeatureFlags$1.p = z39;
                                    pdpViewModelImpl$initFeatureFlags$1.q = zBooleanValue8;
                                    pdpViewModelImpl$initFeatureFlags$1.t = 9;
                                    z44 = false;
                                    z45 = z40;
                                    objC8 = isFeatureAvailableUseCase5.c(featureArr17, false, pdpViewModelImpl$initFeatureFlags$1);
                                    coroutineSingletons4 = coroutineSingletons3;
                                    if (objC8 == coroutineSingletons4) {
                                        return coroutineSingletons4;
                                    }
                                    z46 = z39;
                                    z47 = z37;
                                    mutableStateFlow9 = mutableStateFlow8;
                                    z48 = z36;
                                    z49 = z43;
                                    i23 = i22;
                                    z50 = z35;
                                    z51 = z42;
                                    z52 = z38;
                                    z53 = z34;
                                    z54 = z41;
                                    z55 = z45;
                                    z56 = zBooleanValue8;
                                    i24 = i21;
                                    boolean zBooleanValue10 = ((Boolean) objC8).booleanValue();
                                    if (i23 != 0) {
                                        z57 = true;
                                    } else {
                                        z57 = z44;
                                    }
                                    if (i24 != 0) {
                                        z58 = true;
                                    } else {
                                        z58 = z44;
                                    }
                                    mutableStateFlow9.setValue(new PdpFeatureFlags(z55, z57, z58, z54, z53, z52, z51, z49, z50, z48, z47, z46, z56, zBooleanValue10));
                                    return Unit.f71739a;
                                }
                            }
                        }
                    }
                }
                return coroutineSingletons5;
            case 2:
                boolean z64 = pdpViewModelImpl$initFeatureFlags$1.f61213h;
                i5 = pdpViewModelImpl$initFeatureFlags$1.f61212f;
                z2 = pdpViewModelImpl$initFeatureFlags$1.g;
                int i28 = pdpViewModelImpl$initFeatureFlags$1.f61211e;
                i6 = pdpViewModelImpl$initFeatureFlags$1.d;
                MutableStateFlow mutableStateFlow10 = pdpViewModelImpl$initFeatureFlags$1.f61210c;
                appConfig = pdpViewModelImpl$initFeatureFlags$1.f61209b;
                ResultKt.b(objC8);
                z = z64;
                i4 = i28;
                mutableStateFlow2 = mutableStateFlow10;
                zBooleanValue2 = ((Boolean) objC8).booleanValue();
                z3 = appConfig.W;
                z4 = appConfig.a0.f67282a;
                Feature[] featureArr18 = {Feature.NATIVE_CART};
                pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow2;
                pdpViewModelImpl$initFeatureFlags$1.d = i6;
                pdpViewModelImpl$initFeatureFlags$1.f61211e = i4;
                pdpViewModelImpl$initFeatureFlags$1.g = z2;
                pdpViewModelImpl$initFeatureFlags$1.f61212f = i5;
                pdpViewModelImpl$initFeatureFlags$1.f61213h = z;
                pdpViewModelImpl$initFeatureFlags$1.f61214i = zBooleanValue2;
                pdpViewModelImpl$initFeatureFlags$1.f61215j = z3;
                pdpViewModelImpl$initFeatureFlags$1.f61216k = z4;
                pdpViewModelImpl$initFeatureFlags$1.t = 3;
                objC2 = isFeatureAvailableUseCase.c(featureArr18, false, pdpViewModelImpl$initFeatureFlags$1);
                if (objC2 != coroutineSingletons5) {
                    i7 = i4;
                    z5 = z4;
                    z6 = z2;
                    z7 = zBooleanValue2;
                    objC8 = objC2;
                    i8 = i6;
                    i9 = i5;
                    z8 = z3;
                    zBooleanValue3 = ((Boolean) objC8).booleanValue();
                    Feature[] featureArr19 = {Feature.BACK_ORDER_DISCLAIMER};
                    pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                    pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow2;
                    pdpViewModelImpl$initFeatureFlags$1.d = i8;
                    pdpViewModelImpl$initFeatureFlags$1.f61211e = i7;
                    pdpViewModelImpl$initFeatureFlags$1.g = z6;
                    pdpViewModelImpl$initFeatureFlags$1.f61212f = i9;
                    pdpViewModelImpl$initFeatureFlags$1.f61213h = z;
                    pdpViewModelImpl$initFeatureFlags$1.f61214i = z7;
                    pdpViewModelImpl$initFeatureFlags$1.f61215j = z8;
                    pdpViewModelImpl$initFeatureFlags$1.f61216k = z5;
                    pdpViewModelImpl$initFeatureFlags$1.l = zBooleanValue3;
                    pdpViewModelImpl$initFeatureFlags$1.t = 4;
                    objC3 = isFeatureAvailableUseCase.c(featureArr19, false, pdpViewModelImpl$initFeatureFlags$1);
                    if (objC3 != coroutineSingletons5) {
                        boolean z511 = z7;
                        z9 = z5;
                        z10 = zBooleanValue3;
                        objC8 = objC3;
                        mutableStateFlow3 = mutableStateFlow2;
                        i10 = i8;
                        i11 = i7;
                        z11 = z6;
                        i12 = i9;
                        z12 = z511;
                        boolean z65 = z;
                        z13 = z8;
                        z14 = z65;
                        zBooleanValue4 = ((Boolean) objC8).booleanValue();
                        Feature[] featureArr110 = {Feature.BACK_ORDER_DISCLAIMER_ENHANCEMENT};
                        pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                        pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow3;
                        pdpViewModelImpl$initFeatureFlags$1.d = i10;
                        pdpViewModelImpl$initFeatureFlags$1.f61211e = i11;
                        pdpViewModelImpl$initFeatureFlags$1.g = z11;
                        pdpViewModelImpl$initFeatureFlags$1.f61212f = i12;
                        pdpViewModelImpl$initFeatureFlags$1.f61213h = z14;
                        pdpViewModelImpl$initFeatureFlags$1.f61214i = z12;
                        pdpViewModelImpl$initFeatureFlags$1.f61215j = z13;
                        pdpViewModelImpl$initFeatureFlags$1.f61216k = z9;
                        pdpViewModelImpl$initFeatureFlags$1.l = zBooleanValue4;
                        pdpViewModelImpl$initFeatureFlags$1.m = z10;
                        pdpViewModelImpl$initFeatureFlags$1.t = 5;
                        objC4 = isFeatureAvailableUseCase.c(featureArr110, false, pdpViewModelImpl$initFeatureFlags$1);
                        if (objC4 != coroutineSingletons5) {
                            int i29 = i11;
                            i13 = i10;
                            i14 = i29;
                            z15 = z14;
                            z16 = zBooleanValue4;
                            objC8 = objC4;
                            zBooleanValue5 = ((Boolean) objC8).booleanValue();
                            Feature[] featureArr111 = {Feature.BACK_IN_STOCK};
                            pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                            pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow3;
                            pdpViewModelImpl$initFeatureFlags$1.d = i13;
                            pdpViewModelImpl$initFeatureFlags$1.f61211e = i14;
                            pdpViewModelImpl$initFeatureFlags$1.g = z11;
                            pdpViewModelImpl$initFeatureFlags$1.f61212f = i12;
                            pdpViewModelImpl$initFeatureFlags$1.f61213h = z15;
                            pdpViewModelImpl$initFeatureFlags$1.f61214i = z12;
                            pdpViewModelImpl$initFeatureFlags$1.f61215j = z13;
                            pdpViewModelImpl$initFeatureFlags$1.f61216k = z9;
                            pdpViewModelImpl$initFeatureFlags$1.l = z16;
                            pdpViewModelImpl$initFeatureFlags$1.m = z10;
                            pdpViewModelImpl$initFeatureFlags$1.n = zBooleanValue5;
                            pdpViewModelImpl$initFeatureFlags$1.t = 6;
                            objC5 = isFeatureAvailableUseCase.c(featureArr111, false, pdpViewModelImpl$initFeatureFlags$1);
                            coroutineSingletons5 = coroutineSingletons5;
                            if (objC5 != coroutineSingletons5) {
                                boolean z66 = z9;
                                z17 = z10;
                                mutableStateFlow4 = mutableStateFlow3;
                                i15 = i13;
                                z18 = z11;
                                z19 = z15;
                                z20 = z13;
                                z21 = z16;
                                z22 = zBooleanValue5;
                                objC8 = objC5;
                                i16 = i14;
                                i17 = i12;
                                z23 = z12;
                                z24 = z66;
                                zBooleanValue6 = ((Boolean) objC8).booleanValue();
                                CoroutineSingletons coroutineSingletons8 = coroutineSingletons5;
                                Feature[] featureArr112 = {Feature.BACK_IN_STOCK_LEGAL_CONSENT};
                                pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                                pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow4;
                                pdpViewModelImpl$initFeatureFlags$1.d = i15;
                                pdpViewModelImpl$initFeatureFlags$1.f61211e = i16;
                                pdpViewModelImpl$initFeatureFlags$1.g = z18;
                                pdpViewModelImpl$initFeatureFlags$1.f61212f = i17;
                                pdpViewModelImpl$initFeatureFlags$1.f61213h = z19;
                                pdpViewModelImpl$initFeatureFlags$1.f61214i = z23;
                                pdpViewModelImpl$initFeatureFlags$1.f61215j = z20;
                                pdpViewModelImpl$initFeatureFlags$1.f61216k = z24;
                                pdpViewModelImpl$initFeatureFlags$1.l = z21;
                                pdpViewModelImpl$initFeatureFlags$1.m = z17;
                                pdpViewModelImpl$initFeatureFlags$1.n = z22;
                                pdpViewModelImpl$initFeatureFlags$1.o = zBooleanValue6;
                                pdpViewModelImpl$initFeatureFlags$1.t = 7;
                                isFeatureAvailableUseCase = isFeatureAvailableUseCase;
                                mutableStateFlow5 = mutableStateFlow4;
                                objC6 = isFeatureAvailableUseCase.c(featureArr112, false, pdpViewModelImpl$initFeatureFlags$1);
                                coroutineSingletons = coroutineSingletons8;
                                if (objC6 == coroutineSingletons) {
                                    return coroutineSingletons;
                                }
                                obj = objC6;
                                i18 = i16;
                                z25 = z18;
                                i19 = i17;
                                z26 = z19;
                                z27 = z23;
                                z28 = z20;
                                z29 = z24;
                                z30 = z21;
                                z31 = z17;
                                z32 = z22;
                                z33 = zBooleanValue6;
                                mutableStateFlow6 = mutableStateFlow5;
                                Boolean bool5 = (Boolean) obj;
                                coroutineSingletons2 = coroutineSingletons;
                                zBooleanValue7 = bool5.booleanValue();
                                IsFeatureAvailableUseCase isFeatureAvailableUseCase6 = isFeatureAvailableUseCase;
                                Feature[] featureArr113 = {Feature.ADD_TO_CART_CROSS_SELL};
                                pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                                pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow6;
                                pdpViewModelImpl$initFeatureFlags$1.d = i15;
                                pdpViewModelImpl$initFeatureFlags$1.f61211e = i18;
                                pdpViewModelImpl$initFeatureFlags$1.g = z25;
                                pdpViewModelImpl$initFeatureFlags$1.f61212f = i19;
                                pdpViewModelImpl$initFeatureFlags$1.f61213h = z26;
                                pdpViewModelImpl$initFeatureFlags$1.f61214i = z27;
                                pdpViewModelImpl$initFeatureFlags$1.f61215j = z28;
                                pdpViewModelImpl$initFeatureFlags$1.f61216k = z29;
                                pdpViewModelImpl$initFeatureFlags$1.l = z30;
                                pdpViewModelImpl$initFeatureFlags$1.m = z31;
                                pdpViewModelImpl$initFeatureFlags$1.n = z32;
                                pdpViewModelImpl$initFeatureFlags$1.o = z33;
                                pdpViewModelImpl$initFeatureFlags$1.p = zBooleanValue7;
                                pdpViewModelImpl$initFeatureFlags$1.t = 8;
                                isFeatureAvailableUseCase = isFeatureAvailableUseCase6;
                                mutableStateFlow7 = mutableStateFlow6;
                                objC7 = isFeatureAvailableUseCase.c(featureArr113, false, pdpViewModelImpl$initFeatureFlags$1);
                                if (objC7 == coroutineSingletons2) {
                                    return coroutineSingletons2;
                                }
                                obj2 = objC7;
                                i20 = i15;
                                z34 = z27;
                                z35 = z30;
                                z36 = z32;
                                z37 = z33;
                                i21 = i19;
                                z38 = z28;
                                i22 = i18;
                                z39 = zBooleanValue7;
                                coroutineSingletons3 = coroutineSingletons2;
                                z40 = z25;
                                z41 = z26;
                                z42 = z29;
                                z43 = z31;
                                mutableStateFlow8 = mutableStateFlow7;
                                Boolean bool6 = (Boolean) obj2;
                                IsFeatureAvailableUseCase isFeatureAvailableUseCase7 = isFeatureAvailableUseCase;
                                zBooleanValue8 = bool6.booleanValue();
                                Feature[] featureArr114 = {Feature.AI_COMPANION_PDP};
                                pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                                pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow8;
                                pdpViewModelImpl$initFeatureFlags$1.d = i20;
                                pdpViewModelImpl$initFeatureFlags$1.f61211e = i22;
                                pdpViewModelImpl$initFeatureFlags$1.g = z40;
                                pdpViewModelImpl$initFeatureFlags$1.f61212f = i21;
                                pdpViewModelImpl$initFeatureFlags$1.f61213h = z41;
                                pdpViewModelImpl$initFeatureFlags$1.f61214i = z34;
                                pdpViewModelImpl$initFeatureFlags$1.f61215j = z38;
                                pdpViewModelImpl$initFeatureFlags$1.f61216k = z42;
                                pdpViewModelImpl$initFeatureFlags$1.l = z35;
                                pdpViewModelImpl$initFeatureFlags$1.m = z43;
                                pdpViewModelImpl$initFeatureFlags$1.n = z36;
                                pdpViewModelImpl$initFeatureFlags$1.o = z37;
                                pdpViewModelImpl$initFeatureFlags$1.p = z39;
                                pdpViewModelImpl$initFeatureFlags$1.q = zBooleanValue8;
                                pdpViewModelImpl$initFeatureFlags$1.t = 9;
                                z44 = false;
                                z45 = z40;
                                objC8 = isFeatureAvailableUseCase7.c(featureArr114, false, pdpViewModelImpl$initFeatureFlags$1);
                                coroutineSingletons4 = coroutineSingletons3;
                                if (objC8 == coroutineSingletons4) {
                                    return coroutineSingletons4;
                                }
                                z46 = z39;
                                z47 = z37;
                                mutableStateFlow9 = mutableStateFlow8;
                                z48 = z36;
                                z49 = z43;
                                i23 = i22;
                                z50 = z35;
                                z51 = z42;
                                z52 = z38;
                                z53 = z34;
                                z54 = z41;
                                z55 = z45;
                                z56 = zBooleanValue8;
                                i24 = i21;
                                boolean zBooleanValue11 = ((Boolean) objC8).booleanValue();
                                if (i23 != 0) {
                                    z57 = true;
                                } else {
                                    z57 = z44;
                                }
                                if (i24 != 0) {
                                    z58 = true;
                                } else {
                                    z58 = z44;
                                }
                                mutableStateFlow9.setValue(new PdpFeatureFlags(z55, z57, z58, z54, z53, z52, z51, z49, z50, z48, z47, z46, z56, zBooleanValue11));
                                return Unit.f71739a;
                            }
                        }
                    }
                }
                return coroutineSingletons5;
            case 3:
                z5 = pdpViewModelImpl$initFeatureFlags$1.f61216k;
                z8 = pdpViewModelImpl$initFeatureFlags$1.f61215j;
                z7 = pdpViewModelImpl$initFeatureFlags$1.f61214i;
                z = pdpViewModelImpl$initFeatureFlags$1.f61213h;
                i9 = pdpViewModelImpl$initFeatureFlags$1.f61212f;
                boolean z67 = pdpViewModelImpl$initFeatureFlags$1.g;
                int i30 = pdpViewModelImpl$initFeatureFlags$1.f61211e;
                int i31 = pdpViewModelImpl$initFeatureFlags$1.d;
                mutableStateFlow2 = pdpViewModelImpl$initFeatureFlags$1.f61210c;
                ResultKt.b(objC8);
                i8 = i31;
                i7 = i30;
                z6 = z67;
                zBooleanValue3 = ((Boolean) objC8).booleanValue();
                Feature[] featureArr115 = {Feature.BACK_ORDER_DISCLAIMER};
                pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow2;
                pdpViewModelImpl$initFeatureFlags$1.d = i8;
                pdpViewModelImpl$initFeatureFlags$1.f61211e = i7;
                pdpViewModelImpl$initFeatureFlags$1.g = z6;
                pdpViewModelImpl$initFeatureFlags$1.f61212f = i9;
                pdpViewModelImpl$initFeatureFlags$1.f61213h = z;
                pdpViewModelImpl$initFeatureFlags$1.f61214i = z7;
                pdpViewModelImpl$initFeatureFlags$1.f61215j = z8;
                pdpViewModelImpl$initFeatureFlags$1.f61216k = z5;
                pdpViewModelImpl$initFeatureFlags$1.l = zBooleanValue3;
                pdpViewModelImpl$initFeatureFlags$1.t = 4;
                objC3 = isFeatureAvailableUseCase.c(featureArr115, false, pdpViewModelImpl$initFeatureFlags$1);
                if (objC3 != coroutineSingletons5) {
                    boolean z512 = z7;
                    z9 = z5;
                    z10 = zBooleanValue3;
                    objC8 = objC3;
                    mutableStateFlow3 = mutableStateFlow2;
                    i10 = i8;
                    i11 = i7;
                    z11 = z6;
                    i12 = i9;
                    z12 = z512;
                    boolean z68 = z;
                    z13 = z8;
                    z14 = z68;
                    zBooleanValue4 = ((Boolean) objC8).booleanValue();
                    Feature[] featureArr116 = {Feature.BACK_ORDER_DISCLAIMER_ENHANCEMENT};
                    pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                    pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow3;
                    pdpViewModelImpl$initFeatureFlags$1.d = i10;
                    pdpViewModelImpl$initFeatureFlags$1.f61211e = i11;
                    pdpViewModelImpl$initFeatureFlags$1.g = z11;
                    pdpViewModelImpl$initFeatureFlags$1.f61212f = i12;
                    pdpViewModelImpl$initFeatureFlags$1.f61213h = z14;
                    pdpViewModelImpl$initFeatureFlags$1.f61214i = z12;
                    pdpViewModelImpl$initFeatureFlags$1.f61215j = z13;
                    pdpViewModelImpl$initFeatureFlags$1.f61216k = z9;
                    pdpViewModelImpl$initFeatureFlags$1.l = zBooleanValue4;
                    pdpViewModelImpl$initFeatureFlags$1.m = z10;
                    pdpViewModelImpl$initFeatureFlags$1.t = 5;
                    objC4 = isFeatureAvailableUseCase.c(featureArr116, false, pdpViewModelImpl$initFeatureFlags$1);
                    if (objC4 != coroutineSingletons5) {
                        int i210 = i11;
                        i13 = i10;
                        i14 = i210;
                        z15 = z14;
                        z16 = zBooleanValue4;
                        objC8 = objC4;
                        zBooleanValue5 = ((Boolean) objC8).booleanValue();
                        Feature[] featureArr117 = {Feature.BACK_IN_STOCK};
                        pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                        pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow3;
                        pdpViewModelImpl$initFeatureFlags$1.d = i13;
                        pdpViewModelImpl$initFeatureFlags$1.f61211e = i14;
                        pdpViewModelImpl$initFeatureFlags$1.g = z11;
                        pdpViewModelImpl$initFeatureFlags$1.f61212f = i12;
                        pdpViewModelImpl$initFeatureFlags$1.f61213h = z15;
                        pdpViewModelImpl$initFeatureFlags$1.f61214i = z12;
                        pdpViewModelImpl$initFeatureFlags$1.f61215j = z13;
                        pdpViewModelImpl$initFeatureFlags$1.f61216k = z9;
                        pdpViewModelImpl$initFeatureFlags$1.l = z16;
                        pdpViewModelImpl$initFeatureFlags$1.m = z10;
                        pdpViewModelImpl$initFeatureFlags$1.n = zBooleanValue5;
                        pdpViewModelImpl$initFeatureFlags$1.t = 6;
                        objC5 = isFeatureAvailableUseCase.c(featureArr117, false, pdpViewModelImpl$initFeatureFlags$1);
                        coroutineSingletons5 = coroutineSingletons5;
                        if (objC5 != coroutineSingletons5) {
                            boolean z69 = z9;
                            z17 = z10;
                            mutableStateFlow4 = mutableStateFlow3;
                            i15 = i13;
                            z18 = z11;
                            z19 = z15;
                            z20 = z13;
                            z21 = z16;
                            z22 = zBooleanValue5;
                            objC8 = objC5;
                            i16 = i14;
                            i17 = i12;
                            z23 = z12;
                            z24 = z69;
                            zBooleanValue6 = ((Boolean) objC8).booleanValue();
                            CoroutineSingletons coroutineSingletons9 = coroutineSingletons5;
                            Feature[] featureArr118 = {Feature.BACK_IN_STOCK_LEGAL_CONSENT};
                            pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                            pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow4;
                            pdpViewModelImpl$initFeatureFlags$1.d = i15;
                            pdpViewModelImpl$initFeatureFlags$1.f61211e = i16;
                            pdpViewModelImpl$initFeatureFlags$1.g = z18;
                            pdpViewModelImpl$initFeatureFlags$1.f61212f = i17;
                            pdpViewModelImpl$initFeatureFlags$1.f61213h = z19;
                            pdpViewModelImpl$initFeatureFlags$1.f61214i = z23;
                            pdpViewModelImpl$initFeatureFlags$1.f61215j = z20;
                            pdpViewModelImpl$initFeatureFlags$1.f61216k = z24;
                            pdpViewModelImpl$initFeatureFlags$1.l = z21;
                            pdpViewModelImpl$initFeatureFlags$1.m = z17;
                            pdpViewModelImpl$initFeatureFlags$1.n = z22;
                            pdpViewModelImpl$initFeatureFlags$1.o = zBooleanValue6;
                            pdpViewModelImpl$initFeatureFlags$1.t = 7;
                            isFeatureAvailableUseCase = isFeatureAvailableUseCase;
                            mutableStateFlow5 = mutableStateFlow4;
                            objC6 = isFeatureAvailableUseCase.c(featureArr118, false, pdpViewModelImpl$initFeatureFlags$1);
                            coroutineSingletons = coroutineSingletons9;
                            if (objC6 == coroutineSingletons) {
                                return coroutineSingletons;
                            }
                            obj = objC6;
                            i18 = i16;
                            z25 = z18;
                            i19 = i17;
                            z26 = z19;
                            z27 = z23;
                            z28 = z20;
                            z29 = z24;
                            z30 = z21;
                            z31 = z17;
                            z32 = z22;
                            z33 = zBooleanValue6;
                            mutableStateFlow6 = mutableStateFlow5;
                            Boolean bool7 = (Boolean) obj;
                            coroutineSingletons2 = coroutineSingletons;
                            zBooleanValue7 = bool7.booleanValue();
                            IsFeatureAvailableUseCase isFeatureAvailableUseCase8 = isFeatureAvailableUseCase;
                            Feature[] featureArr119 = {Feature.ADD_TO_CART_CROSS_SELL};
                            pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                            pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow6;
                            pdpViewModelImpl$initFeatureFlags$1.d = i15;
                            pdpViewModelImpl$initFeatureFlags$1.f61211e = i18;
                            pdpViewModelImpl$initFeatureFlags$1.g = z25;
                            pdpViewModelImpl$initFeatureFlags$1.f61212f = i19;
                            pdpViewModelImpl$initFeatureFlags$1.f61213h = z26;
                            pdpViewModelImpl$initFeatureFlags$1.f61214i = z27;
                            pdpViewModelImpl$initFeatureFlags$1.f61215j = z28;
                            pdpViewModelImpl$initFeatureFlags$1.f61216k = z29;
                            pdpViewModelImpl$initFeatureFlags$1.l = z30;
                            pdpViewModelImpl$initFeatureFlags$1.m = z31;
                            pdpViewModelImpl$initFeatureFlags$1.n = z32;
                            pdpViewModelImpl$initFeatureFlags$1.o = z33;
                            pdpViewModelImpl$initFeatureFlags$1.p = zBooleanValue7;
                            pdpViewModelImpl$initFeatureFlags$1.t = 8;
                            isFeatureAvailableUseCase = isFeatureAvailableUseCase8;
                            mutableStateFlow7 = mutableStateFlow6;
                            objC7 = isFeatureAvailableUseCase.c(featureArr119, false, pdpViewModelImpl$initFeatureFlags$1);
                            if (objC7 == coroutineSingletons2) {
                                return coroutineSingletons2;
                            }
                            obj2 = objC7;
                            i20 = i15;
                            z34 = z27;
                            z35 = z30;
                            z36 = z32;
                            z37 = z33;
                            i21 = i19;
                            z38 = z28;
                            i22 = i18;
                            z39 = zBooleanValue7;
                            coroutineSingletons3 = coroutineSingletons2;
                            z40 = z25;
                            z41 = z26;
                            z42 = z29;
                            z43 = z31;
                            mutableStateFlow8 = mutableStateFlow7;
                            Boolean bool8 = (Boolean) obj2;
                            IsFeatureAvailableUseCase isFeatureAvailableUseCase9 = isFeatureAvailableUseCase;
                            zBooleanValue8 = bool8.booleanValue();
                            Feature[] featureArr1110 = {Feature.AI_COMPANION_PDP};
                            pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                            pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow8;
                            pdpViewModelImpl$initFeatureFlags$1.d = i20;
                            pdpViewModelImpl$initFeatureFlags$1.f61211e = i22;
                            pdpViewModelImpl$initFeatureFlags$1.g = z40;
                            pdpViewModelImpl$initFeatureFlags$1.f61212f = i21;
                            pdpViewModelImpl$initFeatureFlags$1.f61213h = z41;
                            pdpViewModelImpl$initFeatureFlags$1.f61214i = z34;
                            pdpViewModelImpl$initFeatureFlags$1.f61215j = z38;
                            pdpViewModelImpl$initFeatureFlags$1.f61216k = z42;
                            pdpViewModelImpl$initFeatureFlags$1.l = z35;
                            pdpViewModelImpl$initFeatureFlags$1.m = z43;
                            pdpViewModelImpl$initFeatureFlags$1.n = z36;
                            pdpViewModelImpl$initFeatureFlags$1.o = z37;
                            pdpViewModelImpl$initFeatureFlags$1.p = z39;
                            pdpViewModelImpl$initFeatureFlags$1.q = zBooleanValue8;
                            pdpViewModelImpl$initFeatureFlags$1.t = 9;
                            z44 = false;
                            z45 = z40;
                            objC8 = isFeatureAvailableUseCase9.c(featureArr1110, false, pdpViewModelImpl$initFeatureFlags$1);
                            coroutineSingletons4 = coroutineSingletons3;
                            if (objC8 == coroutineSingletons4) {
                                return coroutineSingletons4;
                            }
                            z46 = z39;
                            z47 = z37;
                            mutableStateFlow9 = mutableStateFlow8;
                            z48 = z36;
                            z49 = z43;
                            i23 = i22;
                            z50 = z35;
                            z51 = z42;
                            z52 = z38;
                            z53 = z34;
                            z54 = z41;
                            z55 = z45;
                            z56 = zBooleanValue8;
                            i24 = i21;
                            boolean zBooleanValue12 = ((Boolean) objC8).booleanValue();
                            if (i23 != 0) {
                                z57 = true;
                            } else {
                                z57 = z44;
                            }
                            if (i24 != 0) {
                                z58 = true;
                            } else {
                                z58 = z44;
                            }
                            mutableStateFlow9.setValue(new PdpFeatureFlags(z55, z57, z58, z54, z53, z52, z51, z49, z50, z48, z47, z46, z56, zBooleanValue12));
                            return Unit.f71739a;
                        }
                    }
                }
                return coroutineSingletons5;
            case 4:
                z10 = pdpViewModelImpl$initFeatureFlags$1.l;
                boolean z70 = pdpViewModelImpl$initFeatureFlags$1.f61216k;
                boolean z71 = pdpViewModelImpl$initFeatureFlags$1.f61215j;
                boolean z72 = pdpViewModelImpl$initFeatureFlags$1.f61214i;
                boolean z73 = pdpViewModelImpl$initFeatureFlags$1.f61213h;
                int i32 = pdpViewModelImpl$initFeatureFlags$1.f61212f;
                boolean z74 = pdpViewModelImpl$initFeatureFlags$1.g;
                int i33 = pdpViewModelImpl$initFeatureFlags$1.f61211e;
                i10 = pdpViewModelImpl$initFeatureFlags$1.d;
                MutableStateFlow mutableStateFlow11 = pdpViewModelImpl$initFeatureFlags$1.f61210c;
                ResultKt.b(objC8);
                z9 = z70;
                z14 = z73;
                z12 = z72;
                z13 = z71;
                mutableStateFlow3 = mutableStateFlow11;
                i11 = i33;
                z11 = z74;
                i12 = i32;
                zBooleanValue4 = ((Boolean) objC8).booleanValue();
                Feature[] featureArr1111 = {Feature.BACK_ORDER_DISCLAIMER_ENHANCEMENT};
                pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow3;
                pdpViewModelImpl$initFeatureFlags$1.d = i10;
                pdpViewModelImpl$initFeatureFlags$1.f61211e = i11;
                pdpViewModelImpl$initFeatureFlags$1.g = z11;
                pdpViewModelImpl$initFeatureFlags$1.f61212f = i12;
                pdpViewModelImpl$initFeatureFlags$1.f61213h = z14;
                pdpViewModelImpl$initFeatureFlags$1.f61214i = z12;
                pdpViewModelImpl$initFeatureFlags$1.f61215j = z13;
                pdpViewModelImpl$initFeatureFlags$1.f61216k = z9;
                pdpViewModelImpl$initFeatureFlags$1.l = zBooleanValue4;
                pdpViewModelImpl$initFeatureFlags$1.m = z10;
                pdpViewModelImpl$initFeatureFlags$1.t = 5;
                objC4 = isFeatureAvailableUseCase.c(featureArr1111, false, pdpViewModelImpl$initFeatureFlags$1);
                if (objC4 != coroutineSingletons5) {
                    int i211 = i11;
                    i13 = i10;
                    i14 = i211;
                    z15 = z14;
                    z16 = zBooleanValue4;
                    objC8 = objC4;
                    zBooleanValue5 = ((Boolean) objC8).booleanValue();
                    Feature[] featureArr1112 = {Feature.BACK_IN_STOCK};
                    pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                    pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow3;
                    pdpViewModelImpl$initFeatureFlags$1.d = i13;
                    pdpViewModelImpl$initFeatureFlags$1.f61211e = i14;
                    pdpViewModelImpl$initFeatureFlags$1.g = z11;
                    pdpViewModelImpl$initFeatureFlags$1.f61212f = i12;
                    pdpViewModelImpl$initFeatureFlags$1.f61213h = z15;
                    pdpViewModelImpl$initFeatureFlags$1.f61214i = z12;
                    pdpViewModelImpl$initFeatureFlags$1.f61215j = z13;
                    pdpViewModelImpl$initFeatureFlags$1.f61216k = z9;
                    pdpViewModelImpl$initFeatureFlags$1.l = z16;
                    pdpViewModelImpl$initFeatureFlags$1.m = z10;
                    pdpViewModelImpl$initFeatureFlags$1.n = zBooleanValue5;
                    pdpViewModelImpl$initFeatureFlags$1.t = 6;
                    objC5 = isFeatureAvailableUseCase.c(featureArr1112, false, pdpViewModelImpl$initFeatureFlags$1);
                    coroutineSingletons5 = coroutineSingletons5;
                    if (objC5 != coroutineSingletons5) {
                        boolean z610 = z9;
                        z17 = z10;
                        mutableStateFlow4 = mutableStateFlow3;
                        i15 = i13;
                        z18 = z11;
                        z19 = z15;
                        z20 = z13;
                        z21 = z16;
                        z22 = zBooleanValue5;
                        objC8 = objC5;
                        i16 = i14;
                        i17 = i12;
                        z23 = z12;
                        z24 = z610;
                        zBooleanValue6 = ((Boolean) objC8).booleanValue();
                        CoroutineSingletons coroutineSingletons10 = coroutineSingletons5;
                        Feature[] featureArr1113 = {Feature.BACK_IN_STOCK_LEGAL_CONSENT};
                        pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                        pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow4;
                        pdpViewModelImpl$initFeatureFlags$1.d = i15;
                        pdpViewModelImpl$initFeatureFlags$1.f61211e = i16;
                        pdpViewModelImpl$initFeatureFlags$1.g = z18;
                        pdpViewModelImpl$initFeatureFlags$1.f61212f = i17;
                        pdpViewModelImpl$initFeatureFlags$1.f61213h = z19;
                        pdpViewModelImpl$initFeatureFlags$1.f61214i = z23;
                        pdpViewModelImpl$initFeatureFlags$1.f61215j = z20;
                        pdpViewModelImpl$initFeatureFlags$1.f61216k = z24;
                        pdpViewModelImpl$initFeatureFlags$1.l = z21;
                        pdpViewModelImpl$initFeatureFlags$1.m = z17;
                        pdpViewModelImpl$initFeatureFlags$1.n = z22;
                        pdpViewModelImpl$initFeatureFlags$1.o = zBooleanValue6;
                        pdpViewModelImpl$initFeatureFlags$1.t = 7;
                        isFeatureAvailableUseCase = isFeatureAvailableUseCase;
                        mutableStateFlow5 = mutableStateFlow4;
                        objC6 = isFeatureAvailableUseCase.c(featureArr1113, false, pdpViewModelImpl$initFeatureFlags$1);
                        coroutineSingletons = coroutineSingletons10;
                        if (objC6 == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                        obj = objC6;
                        i18 = i16;
                        z25 = z18;
                        i19 = i17;
                        z26 = z19;
                        z27 = z23;
                        z28 = z20;
                        z29 = z24;
                        z30 = z21;
                        z31 = z17;
                        z32 = z22;
                        z33 = zBooleanValue6;
                        mutableStateFlow6 = mutableStateFlow5;
                        Boolean bool9 = (Boolean) obj;
                        coroutineSingletons2 = coroutineSingletons;
                        zBooleanValue7 = bool9.booleanValue();
                        IsFeatureAvailableUseCase isFeatureAvailableUseCase10 = isFeatureAvailableUseCase;
                        Feature[] featureArr1114 = {Feature.ADD_TO_CART_CROSS_SELL};
                        pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                        pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow6;
                        pdpViewModelImpl$initFeatureFlags$1.d = i15;
                        pdpViewModelImpl$initFeatureFlags$1.f61211e = i18;
                        pdpViewModelImpl$initFeatureFlags$1.g = z25;
                        pdpViewModelImpl$initFeatureFlags$1.f61212f = i19;
                        pdpViewModelImpl$initFeatureFlags$1.f61213h = z26;
                        pdpViewModelImpl$initFeatureFlags$1.f61214i = z27;
                        pdpViewModelImpl$initFeatureFlags$1.f61215j = z28;
                        pdpViewModelImpl$initFeatureFlags$1.f61216k = z29;
                        pdpViewModelImpl$initFeatureFlags$1.l = z30;
                        pdpViewModelImpl$initFeatureFlags$1.m = z31;
                        pdpViewModelImpl$initFeatureFlags$1.n = z32;
                        pdpViewModelImpl$initFeatureFlags$1.o = z33;
                        pdpViewModelImpl$initFeatureFlags$1.p = zBooleanValue7;
                        pdpViewModelImpl$initFeatureFlags$1.t = 8;
                        isFeatureAvailableUseCase = isFeatureAvailableUseCase10;
                        mutableStateFlow7 = mutableStateFlow6;
                        objC7 = isFeatureAvailableUseCase.c(featureArr1114, false, pdpViewModelImpl$initFeatureFlags$1);
                        if (objC7 == coroutineSingletons2) {
                            return coroutineSingletons2;
                        }
                        obj2 = objC7;
                        i20 = i15;
                        z34 = z27;
                        z35 = z30;
                        z36 = z32;
                        z37 = z33;
                        i21 = i19;
                        z38 = z28;
                        i22 = i18;
                        z39 = zBooleanValue7;
                        coroutineSingletons3 = coroutineSingletons2;
                        z40 = z25;
                        z41 = z26;
                        z42 = z29;
                        z43 = z31;
                        mutableStateFlow8 = mutableStateFlow7;
                        Boolean bool10 = (Boolean) obj2;
                        IsFeatureAvailableUseCase isFeatureAvailableUseCase11 = isFeatureAvailableUseCase;
                        zBooleanValue8 = bool10.booleanValue();
                        Feature[] featureArr1115 = {Feature.AI_COMPANION_PDP};
                        pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                        pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow8;
                        pdpViewModelImpl$initFeatureFlags$1.d = i20;
                        pdpViewModelImpl$initFeatureFlags$1.f61211e = i22;
                        pdpViewModelImpl$initFeatureFlags$1.g = z40;
                        pdpViewModelImpl$initFeatureFlags$1.f61212f = i21;
                        pdpViewModelImpl$initFeatureFlags$1.f61213h = z41;
                        pdpViewModelImpl$initFeatureFlags$1.f61214i = z34;
                        pdpViewModelImpl$initFeatureFlags$1.f61215j = z38;
                        pdpViewModelImpl$initFeatureFlags$1.f61216k = z42;
                        pdpViewModelImpl$initFeatureFlags$1.l = z35;
                        pdpViewModelImpl$initFeatureFlags$1.m = z43;
                        pdpViewModelImpl$initFeatureFlags$1.n = z36;
                        pdpViewModelImpl$initFeatureFlags$1.o = z37;
                        pdpViewModelImpl$initFeatureFlags$1.p = z39;
                        pdpViewModelImpl$initFeatureFlags$1.q = zBooleanValue8;
                        pdpViewModelImpl$initFeatureFlags$1.t = 9;
                        z44 = false;
                        z45 = z40;
                        objC8 = isFeatureAvailableUseCase11.c(featureArr1115, false, pdpViewModelImpl$initFeatureFlags$1);
                        coroutineSingletons4 = coroutineSingletons3;
                        if (objC8 == coroutineSingletons4) {
                            return coroutineSingletons4;
                        }
                        z46 = z39;
                        z47 = z37;
                        mutableStateFlow9 = mutableStateFlow8;
                        z48 = z36;
                        z49 = z43;
                        i23 = i22;
                        z50 = z35;
                        z51 = z42;
                        z52 = z38;
                        z53 = z34;
                        z54 = z41;
                        z55 = z45;
                        z56 = zBooleanValue8;
                        i24 = i21;
                        boolean zBooleanValue13 = ((Boolean) objC8).booleanValue();
                        if (i23 != 0) {
                            z57 = true;
                        } else {
                            z57 = z44;
                        }
                        if (i24 != 0) {
                            z58 = true;
                        } else {
                            z58 = z44;
                        }
                        mutableStateFlow9.setValue(new PdpFeatureFlags(z55, z57, z58, z54, z53, z52, z51, z49, z50, z48, z47, z46, z56, zBooleanValue13));
                        return Unit.f71739a;
                    }
                }
                return coroutineSingletons5;
            case 5:
                z10 = pdpViewModelImpl$initFeatureFlags$1.m;
                z16 = pdpViewModelImpl$initFeatureFlags$1.l;
                z9 = pdpViewModelImpl$initFeatureFlags$1.f61216k;
                z13 = pdpViewModelImpl$initFeatureFlags$1.f61215j;
                z12 = pdpViewModelImpl$initFeatureFlags$1.f61214i;
                z15 = pdpViewModelImpl$initFeatureFlags$1.f61213h;
                i12 = pdpViewModelImpl$initFeatureFlags$1.f61212f;
                z11 = pdpViewModelImpl$initFeatureFlags$1.g;
                i14 = pdpViewModelImpl$initFeatureFlags$1.f61211e;
                i13 = pdpViewModelImpl$initFeatureFlags$1.d;
                mutableStateFlow3 = pdpViewModelImpl$initFeatureFlags$1.f61210c;
                ResultKt.b(objC8);
                zBooleanValue5 = ((Boolean) objC8).booleanValue();
                Feature[] featureArr1116 = {Feature.BACK_IN_STOCK};
                pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow3;
                pdpViewModelImpl$initFeatureFlags$1.d = i13;
                pdpViewModelImpl$initFeatureFlags$1.f61211e = i14;
                pdpViewModelImpl$initFeatureFlags$1.g = z11;
                pdpViewModelImpl$initFeatureFlags$1.f61212f = i12;
                pdpViewModelImpl$initFeatureFlags$1.f61213h = z15;
                pdpViewModelImpl$initFeatureFlags$1.f61214i = z12;
                pdpViewModelImpl$initFeatureFlags$1.f61215j = z13;
                pdpViewModelImpl$initFeatureFlags$1.f61216k = z9;
                pdpViewModelImpl$initFeatureFlags$1.l = z16;
                pdpViewModelImpl$initFeatureFlags$1.m = z10;
                pdpViewModelImpl$initFeatureFlags$1.n = zBooleanValue5;
                pdpViewModelImpl$initFeatureFlags$1.t = 6;
                objC5 = isFeatureAvailableUseCase.c(featureArr1116, false, pdpViewModelImpl$initFeatureFlags$1);
                coroutineSingletons5 = coroutineSingletons5;
                if (objC5 != coroutineSingletons5) {
                    boolean z611 = z9;
                    z17 = z10;
                    mutableStateFlow4 = mutableStateFlow3;
                    i15 = i13;
                    z18 = z11;
                    z19 = z15;
                    z20 = z13;
                    z21 = z16;
                    z22 = zBooleanValue5;
                    objC8 = objC5;
                    i16 = i14;
                    i17 = i12;
                    z23 = z12;
                    z24 = z611;
                    zBooleanValue6 = ((Boolean) objC8).booleanValue();
                    CoroutineSingletons coroutineSingletons11 = coroutineSingletons5;
                    Feature[] featureArr1117 = {Feature.BACK_IN_STOCK_LEGAL_CONSENT};
                    pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                    pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow4;
                    pdpViewModelImpl$initFeatureFlags$1.d = i15;
                    pdpViewModelImpl$initFeatureFlags$1.f61211e = i16;
                    pdpViewModelImpl$initFeatureFlags$1.g = z18;
                    pdpViewModelImpl$initFeatureFlags$1.f61212f = i17;
                    pdpViewModelImpl$initFeatureFlags$1.f61213h = z19;
                    pdpViewModelImpl$initFeatureFlags$1.f61214i = z23;
                    pdpViewModelImpl$initFeatureFlags$1.f61215j = z20;
                    pdpViewModelImpl$initFeatureFlags$1.f61216k = z24;
                    pdpViewModelImpl$initFeatureFlags$1.l = z21;
                    pdpViewModelImpl$initFeatureFlags$1.m = z17;
                    pdpViewModelImpl$initFeatureFlags$1.n = z22;
                    pdpViewModelImpl$initFeatureFlags$1.o = zBooleanValue6;
                    pdpViewModelImpl$initFeatureFlags$1.t = 7;
                    isFeatureAvailableUseCase = isFeatureAvailableUseCase;
                    mutableStateFlow5 = mutableStateFlow4;
                    objC6 = isFeatureAvailableUseCase.c(featureArr1117, false, pdpViewModelImpl$initFeatureFlags$1);
                    coroutineSingletons = coroutineSingletons11;
                    if (objC6 == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    obj = objC6;
                    i18 = i16;
                    z25 = z18;
                    i19 = i17;
                    z26 = z19;
                    z27 = z23;
                    z28 = z20;
                    z29 = z24;
                    z30 = z21;
                    z31 = z17;
                    z32 = z22;
                    z33 = zBooleanValue6;
                    mutableStateFlow6 = mutableStateFlow5;
                    Boolean bool11 = (Boolean) obj;
                    coroutineSingletons2 = coroutineSingletons;
                    zBooleanValue7 = bool11.booleanValue();
                    IsFeatureAvailableUseCase isFeatureAvailableUseCase12 = isFeatureAvailableUseCase;
                    Feature[] featureArr1118 = {Feature.ADD_TO_CART_CROSS_SELL};
                    pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                    pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow6;
                    pdpViewModelImpl$initFeatureFlags$1.d = i15;
                    pdpViewModelImpl$initFeatureFlags$1.f61211e = i18;
                    pdpViewModelImpl$initFeatureFlags$1.g = z25;
                    pdpViewModelImpl$initFeatureFlags$1.f61212f = i19;
                    pdpViewModelImpl$initFeatureFlags$1.f61213h = z26;
                    pdpViewModelImpl$initFeatureFlags$1.f61214i = z27;
                    pdpViewModelImpl$initFeatureFlags$1.f61215j = z28;
                    pdpViewModelImpl$initFeatureFlags$1.f61216k = z29;
                    pdpViewModelImpl$initFeatureFlags$1.l = z30;
                    pdpViewModelImpl$initFeatureFlags$1.m = z31;
                    pdpViewModelImpl$initFeatureFlags$1.n = z32;
                    pdpViewModelImpl$initFeatureFlags$1.o = z33;
                    pdpViewModelImpl$initFeatureFlags$1.p = zBooleanValue7;
                    pdpViewModelImpl$initFeatureFlags$1.t = 8;
                    isFeatureAvailableUseCase = isFeatureAvailableUseCase12;
                    mutableStateFlow7 = mutableStateFlow6;
                    objC7 = isFeatureAvailableUseCase.c(featureArr1118, false, pdpViewModelImpl$initFeatureFlags$1);
                    if (objC7 == coroutineSingletons2) {
                        return coroutineSingletons2;
                    }
                    obj2 = objC7;
                    i20 = i15;
                    z34 = z27;
                    z35 = z30;
                    z36 = z32;
                    z37 = z33;
                    i21 = i19;
                    z38 = z28;
                    i22 = i18;
                    z39 = zBooleanValue7;
                    coroutineSingletons3 = coroutineSingletons2;
                    z40 = z25;
                    z41 = z26;
                    z42 = z29;
                    z43 = z31;
                    mutableStateFlow8 = mutableStateFlow7;
                    Boolean bool12 = (Boolean) obj2;
                    IsFeatureAvailableUseCase isFeatureAvailableUseCase13 = isFeatureAvailableUseCase;
                    zBooleanValue8 = bool12.booleanValue();
                    Feature[] featureArr1119 = {Feature.AI_COMPANION_PDP};
                    pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                    pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow8;
                    pdpViewModelImpl$initFeatureFlags$1.d = i20;
                    pdpViewModelImpl$initFeatureFlags$1.f61211e = i22;
                    pdpViewModelImpl$initFeatureFlags$1.g = z40;
                    pdpViewModelImpl$initFeatureFlags$1.f61212f = i21;
                    pdpViewModelImpl$initFeatureFlags$1.f61213h = z41;
                    pdpViewModelImpl$initFeatureFlags$1.f61214i = z34;
                    pdpViewModelImpl$initFeatureFlags$1.f61215j = z38;
                    pdpViewModelImpl$initFeatureFlags$1.f61216k = z42;
                    pdpViewModelImpl$initFeatureFlags$1.l = z35;
                    pdpViewModelImpl$initFeatureFlags$1.m = z43;
                    pdpViewModelImpl$initFeatureFlags$1.n = z36;
                    pdpViewModelImpl$initFeatureFlags$1.o = z37;
                    pdpViewModelImpl$initFeatureFlags$1.p = z39;
                    pdpViewModelImpl$initFeatureFlags$1.q = zBooleanValue8;
                    pdpViewModelImpl$initFeatureFlags$1.t = 9;
                    z44 = false;
                    z45 = z40;
                    objC8 = isFeatureAvailableUseCase13.c(featureArr1119, false, pdpViewModelImpl$initFeatureFlags$1);
                    coroutineSingletons4 = coroutineSingletons3;
                    if (objC8 == coroutineSingletons4) {
                        return coroutineSingletons4;
                    }
                    z46 = z39;
                    z47 = z37;
                    mutableStateFlow9 = mutableStateFlow8;
                    z48 = z36;
                    z49 = z43;
                    i23 = i22;
                    z50 = z35;
                    z51 = z42;
                    z52 = z38;
                    z53 = z34;
                    z54 = z41;
                    z55 = z45;
                    z56 = zBooleanValue8;
                    i24 = i21;
                    boolean zBooleanValue14 = ((Boolean) objC8).booleanValue();
                    if (i23 != 0) {
                        z57 = true;
                    } else {
                        z57 = z44;
                    }
                    if (i24 != 0) {
                        z58 = true;
                    } else {
                        z58 = z44;
                    }
                    mutableStateFlow9.setValue(new PdpFeatureFlags(z55, z57, z58, z54, z53, z52, z51, z49, z50, z48, z47, z46, z56, zBooleanValue14));
                    return Unit.f71739a;
                }
                return coroutineSingletons5;
            case 6:
                boolean z75 = pdpViewModelImpl$initFeatureFlags$1.n;
                boolean z76 = pdpViewModelImpl$initFeatureFlags$1.m;
                boolean z77 = pdpViewModelImpl$initFeatureFlags$1.l;
                boolean z78 = pdpViewModelImpl$initFeatureFlags$1.f61216k;
                boolean z79 = pdpViewModelImpl$initFeatureFlags$1.f61215j;
                boolean z80 = pdpViewModelImpl$initFeatureFlags$1.f61214i;
                boolean z81 = pdpViewModelImpl$initFeatureFlags$1.f61213h;
                int i34 = pdpViewModelImpl$initFeatureFlags$1.f61212f;
                boolean z82 = pdpViewModelImpl$initFeatureFlags$1.g;
                int i35 = pdpViewModelImpl$initFeatureFlags$1.f61211e;
                i15 = pdpViewModelImpl$initFeatureFlags$1.d;
                MutableStateFlow mutableStateFlow12 = pdpViewModelImpl$initFeatureFlags$1.f61210c;
                ResultKt.b(objC8);
                z22 = z75;
                mutableStateFlow4 = mutableStateFlow12;
                i16 = i35;
                z18 = z82;
                i17 = i34;
                z19 = z81;
                z23 = z80;
                z20 = z79;
                z24 = z78;
                z21 = z77;
                z17 = z76;
                zBooleanValue6 = ((Boolean) objC8).booleanValue();
                CoroutineSingletons coroutineSingletons12 = coroutineSingletons5;
                Feature[] featureArr11110 = {Feature.BACK_IN_STOCK_LEGAL_CONSENT};
                pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow4;
                pdpViewModelImpl$initFeatureFlags$1.d = i15;
                pdpViewModelImpl$initFeatureFlags$1.f61211e = i16;
                pdpViewModelImpl$initFeatureFlags$1.g = z18;
                pdpViewModelImpl$initFeatureFlags$1.f61212f = i17;
                pdpViewModelImpl$initFeatureFlags$1.f61213h = z19;
                pdpViewModelImpl$initFeatureFlags$1.f61214i = z23;
                pdpViewModelImpl$initFeatureFlags$1.f61215j = z20;
                pdpViewModelImpl$initFeatureFlags$1.f61216k = z24;
                pdpViewModelImpl$initFeatureFlags$1.l = z21;
                pdpViewModelImpl$initFeatureFlags$1.m = z17;
                pdpViewModelImpl$initFeatureFlags$1.n = z22;
                pdpViewModelImpl$initFeatureFlags$1.o = zBooleanValue6;
                pdpViewModelImpl$initFeatureFlags$1.t = 7;
                isFeatureAvailableUseCase = isFeatureAvailableUseCase;
                mutableStateFlow5 = mutableStateFlow4;
                objC6 = isFeatureAvailableUseCase.c(featureArr11110, false, pdpViewModelImpl$initFeatureFlags$1);
                coroutineSingletons = coroutineSingletons12;
                if (objC6 == coroutineSingletons) {
                    return coroutineSingletons;
                }
                obj = objC6;
                i18 = i16;
                z25 = z18;
                i19 = i17;
                z26 = z19;
                z27 = z23;
                z28 = z20;
                z29 = z24;
                z30 = z21;
                z31 = z17;
                z32 = z22;
                z33 = zBooleanValue6;
                mutableStateFlow6 = mutableStateFlow5;
                Boolean bool13 = (Boolean) obj;
                coroutineSingletons2 = coroutineSingletons;
                zBooleanValue7 = bool13.booleanValue();
                IsFeatureAvailableUseCase isFeatureAvailableUseCase14 = isFeatureAvailableUseCase;
                Feature[] featureArr11111 = {Feature.ADD_TO_CART_CROSS_SELL};
                pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow6;
                pdpViewModelImpl$initFeatureFlags$1.d = i15;
                pdpViewModelImpl$initFeatureFlags$1.f61211e = i18;
                pdpViewModelImpl$initFeatureFlags$1.g = z25;
                pdpViewModelImpl$initFeatureFlags$1.f61212f = i19;
                pdpViewModelImpl$initFeatureFlags$1.f61213h = z26;
                pdpViewModelImpl$initFeatureFlags$1.f61214i = z27;
                pdpViewModelImpl$initFeatureFlags$1.f61215j = z28;
                pdpViewModelImpl$initFeatureFlags$1.f61216k = z29;
                pdpViewModelImpl$initFeatureFlags$1.l = z30;
                pdpViewModelImpl$initFeatureFlags$1.m = z31;
                pdpViewModelImpl$initFeatureFlags$1.n = z32;
                pdpViewModelImpl$initFeatureFlags$1.o = z33;
                pdpViewModelImpl$initFeatureFlags$1.p = zBooleanValue7;
                pdpViewModelImpl$initFeatureFlags$1.t = 8;
                isFeatureAvailableUseCase = isFeatureAvailableUseCase14;
                mutableStateFlow7 = mutableStateFlow6;
                objC7 = isFeatureAvailableUseCase.c(featureArr11111, false, pdpViewModelImpl$initFeatureFlags$1);
                if (objC7 == coroutineSingletons2) {
                    return coroutineSingletons2;
                }
                obj2 = objC7;
                i20 = i15;
                z34 = z27;
                z35 = z30;
                z36 = z32;
                z37 = z33;
                i21 = i19;
                z38 = z28;
                i22 = i18;
                z39 = zBooleanValue7;
                coroutineSingletons3 = coroutineSingletons2;
                z40 = z25;
                z41 = z26;
                z42 = z29;
                z43 = z31;
                mutableStateFlow8 = mutableStateFlow7;
                Boolean bool14 = (Boolean) obj2;
                IsFeatureAvailableUseCase isFeatureAvailableUseCase15 = isFeatureAvailableUseCase;
                zBooleanValue8 = bool14.booleanValue();
                Feature[] featureArr11112 = {Feature.AI_COMPANION_PDP};
                pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow8;
                pdpViewModelImpl$initFeatureFlags$1.d = i20;
                pdpViewModelImpl$initFeatureFlags$1.f61211e = i22;
                pdpViewModelImpl$initFeatureFlags$1.g = z40;
                pdpViewModelImpl$initFeatureFlags$1.f61212f = i21;
                pdpViewModelImpl$initFeatureFlags$1.f61213h = z41;
                pdpViewModelImpl$initFeatureFlags$1.f61214i = z34;
                pdpViewModelImpl$initFeatureFlags$1.f61215j = z38;
                pdpViewModelImpl$initFeatureFlags$1.f61216k = z42;
                pdpViewModelImpl$initFeatureFlags$1.l = z35;
                pdpViewModelImpl$initFeatureFlags$1.m = z43;
                pdpViewModelImpl$initFeatureFlags$1.n = z36;
                pdpViewModelImpl$initFeatureFlags$1.o = z37;
                pdpViewModelImpl$initFeatureFlags$1.p = z39;
                pdpViewModelImpl$initFeatureFlags$1.q = zBooleanValue8;
                pdpViewModelImpl$initFeatureFlags$1.t = 9;
                z44 = false;
                z45 = z40;
                objC8 = isFeatureAvailableUseCase15.c(featureArr11112, false, pdpViewModelImpl$initFeatureFlags$1);
                coroutineSingletons4 = coroutineSingletons3;
                if (objC8 == coroutineSingletons4) {
                    return coroutineSingletons4;
                }
                z46 = z39;
                z47 = z37;
                mutableStateFlow9 = mutableStateFlow8;
                z48 = z36;
                z49 = z43;
                i23 = i22;
                z50 = z35;
                z51 = z42;
                z52 = z38;
                z53 = z34;
                z54 = z41;
                z55 = z45;
                z56 = zBooleanValue8;
                i24 = i21;
                boolean zBooleanValue15 = ((Boolean) objC8).booleanValue();
                if (i23 != 0) {
                    z57 = true;
                } else {
                    z57 = z44;
                }
                if (i24 != 0) {
                    z58 = true;
                } else {
                    z58 = z44;
                }
                mutableStateFlow9.setValue(new PdpFeatureFlags(z55, z57, z58, z54, z53, z52, z51, z49, z50, z48, z47, z46, z56, zBooleanValue15));
                return Unit.f71739a;
            case 7:
                boolean z83 = pdpViewModelImpl$initFeatureFlags$1.o;
                boolean z84 = pdpViewModelImpl$initFeatureFlags$1.n;
                boolean z85 = pdpViewModelImpl$initFeatureFlags$1.m;
                boolean z86 = pdpViewModelImpl$initFeatureFlags$1.l;
                boolean z87 = pdpViewModelImpl$initFeatureFlags$1.f61216k;
                boolean z88 = pdpViewModelImpl$initFeatureFlags$1.f61215j;
                boolean z89 = pdpViewModelImpl$initFeatureFlags$1.f61214i;
                boolean z90 = pdpViewModelImpl$initFeatureFlags$1.f61213h;
                int i36 = pdpViewModelImpl$initFeatureFlags$1.f61212f;
                boolean z91 = pdpViewModelImpl$initFeatureFlags$1.g;
                int i37 = pdpViewModelImpl$initFeatureFlags$1.f61211e;
                int i38 = pdpViewModelImpl$initFeatureFlags$1.d;
                MutableStateFlow mutableStateFlow13 = pdpViewModelImpl$initFeatureFlags$1.f61210c;
                ResultKt.b(objC8);
                obj = objC8;
                mutableStateFlow6 = mutableStateFlow13;
                coroutineSingletons = coroutineSingletons5;
                i18 = i37;
                i15 = i38;
                z25 = z91;
                i19 = i36;
                z26 = z90;
                z27 = z89;
                z28 = z88;
                z29 = z87;
                z30 = z86;
                z31 = z85;
                z32 = z84;
                z33 = z83;
                Boolean bool15 = (Boolean) obj;
                coroutineSingletons2 = coroutineSingletons;
                zBooleanValue7 = bool15.booleanValue();
                IsFeatureAvailableUseCase isFeatureAvailableUseCase16 = isFeatureAvailableUseCase;
                Feature[] featureArr11113 = {Feature.ADD_TO_CART_CROSS_SELL};
                pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow6;
                pdpViewModelImpl$initFeatureFlags$1.d = i15;
                pdpViewModelImpl$initFeatureFlags$1.f61211e = i18;
                pdpViewModelImpl$initFeatureFlags$1.g = z25;
                pdpViewModelImpl$initFeatureFlags$1.f61212f = i19;
                pdpViewModelImpl$initFeatureFlags$1.f61213h = z26;
                pdpViewModelImpl$initFeatureFlags$1.f61214i = z27;
                pdpViewModelImpl$initFeatureFlags$1.f61215j = z28;
                pdpViewModelImpl$initFeatureFlags$1.f61216k = z29;
                pdpViewModelImpl$initFeatureFlags$1.l = z30;
                pdpViewModelImpl$initFeatureFlags$1.m = z31;
                pdpViewModelImpl$initFeatureFlags$1.n = z32;
                pdpViewModelImpl$initFeatureFlags$1.o = z33;
                pdpViewModelImpl$initFeatureFlags$1.p = zBooleanValue7;
                pdpViewModelImpl$initFeatureFlags$1.t = 8;
                isFeatureAvailableUseCase = isFeatureAvailableUseCase16;
                mutableStateFlow7 = mutableStateFlow6;
                objC7 = isFeatureAvailableUseCase.c(featureArr11113, false, pdpViewModelImpl$initFeatureFlags$1);
                if (objC7 == coroutineSingletons2) {
                    return coroutineSingletons2;
                }
                obj2 = objC7;
                i20 = i15;
                z34 = z27;
                z35 = z30;
                z36 = z32;
                z37 = z33;
                i21 = i19;
                z38 = z28;
                i22 = i18;
                z39 = zBooleanValue7;
                coroutineSingletons3 = coroutineSingletons2;
                z40 = z25;
                z41 = z26;
                z42 = z29;
                z43 = z31;
                mutableStateFlow8 = mutableStateFlow7;
                Boolean bool16 = (Boolean) obj2;
                IsFeatureAvailableUseCase isFeatureAvailableUseCase17 = isFeatureAvailableUseCase;
                zBooleanValue8 = bool16.booleanValue();
                Feature[] featureArr11114 = {Feature.AI_COMPANION_PDP};
                pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow8;
                pdpViewModelImpl$initFeatureFlags$1.d = i20;
                pdpViewModelImpl$initFeatureFlags$1.f61211e = i22;
                pdpViewModelImpl$initFeatureFlags$1.g = z40;
                pdpViewModelImpl$initFeatureFlags$1.f61212f = i21;
                pdpViewModelImpl$initFeatureFlags$1.f61213h = z41;
                pdpViewModelImpl$initFeatureFlags$1.f61214i = z34;
                pdpViewModelImpl$initFeatureFlags$1.f61215j = z38;
                pdpViewModelImpl$initFeatureFlags$1.f61216k = z42;
                pdpViewModelImpl$initFeatureFlags$1.l = z35;
                pdpViewModelImpl$initFeatureFlags$1.m = z43;
                pdpViewModelImpl$initFeatureFlags$1.n = z36;
                pdpViewModelImpl$initFeatureFlags$1.o = z37;
                pdpViewModelImpl$initFeatureFlags$1.p = z39;
                pdpViewModelImpl$initFeatureFlags$1.q = zBooleanValue8;
                pdpViewModelImpl$initFeatureFlags$1.t = 9;
                z44 = false;
                z45 = z40;
                objC8 = isFeatureAvailableUseCase17.c(featureArr11114, false, pdpViewModelImpl$initFeatureFlags$1);
                coroutineSingletons4 = coroutineSingletons3;
                if (objC8 == coroutineSingletons4) {
                    return coroutineSingletons4;
                }
                z46 = z39;
                z47 = z37;
                mutableStateFlow9 = mutableStateFlow8;
                z48 = z36;
                z49 = z43;
                i23 = i22;
                z50 = z35;
                z51 = z42;
                z52 = z38;
                z53 = z34;
                z54 = z41;
                z55 = z45;
                z56 = zBooleanValue8;
                i24 = i21;
                boolean zBooleanValue16 = ((Boolean) objC8).booleanValue();
                if (i23 != 0) {
                    z57 = true;
                } else {
                    z57 = z44;
                }
                if (i24 != 0) {
                    z58 = true;
                } else {
                    z58 = z44;
                }
                mutableStateFlow9.setValue(new PdpFeatureFlags(z55, z57, z58, z54, z53, z52, z51, z49, z50, z48, z47, z46, z56, zBooleanValue16));
                return Unit.f71739a;
            case 8:
                boolean z92 = pdpViewModelImpl$initFeatureFlags$1.p;
                boolean z93 = pdpViewModelImpl$initFeatureFlags$1.o;
                boolean z94 = pdpViewModelImpl$initFeatureFlags$1.n;
                boolean z95 = pdpViewModelImpl$initFeatureFlags$1.m;
                boolean z96 = pdpViewModelImpl$initFeatureFlags$1.l;
                boolean z97 = pdpViewModelImpl$initFeatureFlags$1.f61216k;
                boolean z98 = pdpViewModelImpl$initFeatureFlags$1.f61215j;
                boolean z99 = pdpViewModelImpl$initFeatureFlags$1.f61214i;
                boolean z100 = pdpViewModelImpl$initFeatureFlags$1.f61213h;
                int i39 = pdpViewModelImpl$initFeatureFlags$1.f61212f;
                boolean z101 = pdpViewModelImpl$initFeatureFlags$1.g;
                int i40 = pdpViewModelImpl$initFeatureFlags$1.f61211e;
                int i41 = pdpViewModelImpl$initFeatureFlags$1.d;
                MutableStateFlow mutableStateFlow14 = pdpViewModelImpl$initFeatureFlags$1.f61210c;
                ResultKt.b(objC8);
                z39 = z92;
                obj2 = objC8;
                z40 = z101;
                z43 = z95;
                mutableStateFlow8 = mutableStateFlow14;
                i20 = i41;
                coroutineSingletons3 = coroutineSingletons5;
                z37 = z93;
                i21 = i39;
                z41 = z100;
                z34 = z99;
                z38 = z98;
                z42 = z97;
                z35 = z96;
                i22 = i40;
                z36 = z94;
                Boolean bool17 = (Boolean) obj2;
                IsFeatureAvailableUseCase isFeatureAvailableUseCase18 = isFeatureAvailableUseCase;
                zBooleanValue8 = bool17.booleanValue();
                Feature[] featureArr11115 = {Feature.AI_COMPANION_PDP};
                pdpViewModelImpl$initFeatureFlags$1.f61209b = null;
                pdpViewModelImpl$initFeatureFlags$1.f61210c = mutableStateFlow8;
                pdpViewModelImpl$initFeatureFlags$1.d = i20;
                pdpViewModelImpl$initFeatureFlags$1.f61211e = i22;
                pdpViewModelImpl$initFeatureFlags$1.g = z40;
                pdpViewModelImpl$initFeatureFlags$1.f61212f = i21;
                pdpViewModelImpl$initFeatureFlags$1.f61213h = z41;
                pdpViewModelImpl$initFeatureFlags$1.f61214i = z34;
                pdpViewModelImpl$initFeatureFlags$1.f61215j = z38;
                pdpViewModelImpl$initFeatureFlags$1.f61216k = z42;
                pdpViewModelImpl$initFeatureFlags$1.l = z35;
                pdpViewModelImpl$initFeatureFlags$1.m = z43;
                pdpViewModelImpl$initFeatureFlags$1.n = z36;
                pdpViewModelImpl$initFeatureFlags$1.o = z37;
                pdpViewModelImpl$initFeatureFlags$1.p = z39;
                pdpViewModelImpl$initFeatureFlags$1.q = zBooleanValue8;
                pdpViewModelImpl$initFeatureFlags$1.t = 9;
                z44 = false;
                z45 = z40;
                objC8 = isFeatureAvailableUseCase18.c(featureArr11115, false, pdpViewModelImpl$initFeatureFlags$1);
                coroutineSingletons4 = coroutineSingletons3;
                if (objC8 == coroutineSingletons4) {
                    return coroutineSingletons4;
                }
                z46 = z39;
                z47 = z37;
                mutableStateFlow9 = mutableStateFlow8;
                z48 = z36;
                z49 = z43;
                i23 = i22;
                z50 = z35;
                z51 = z42;
                z52 = z38;
                z53 = z34;
                z54 = z41;
                z55 = z45;
                z56 = zBooleanValue8;
                i24 = i21;
                boolean zBooleanValue17 = ((Boolean) objC8).booleanValue();
                if (i23 != 0) {
                    z57 = true;
                } else {
                    z57 = z44;
                }
                if (i24 != 0) {
                    z58 = true;
                } else {
                    z58 = z44;
                }
                mutableStateFlow9.setValue(new PdpFeatureFlags(z55, z57, z58, z54, z53, z52, z51, z49, z50, z48, z47, z46, z56, zBooleanValue17));
                return Unit.f71739a;
            case 9:
                boolean z102 = pdpViewModelImpl$initFeatureFlags$1.q;
                boolean z103 = pdpViewModelImpl$initFeatureFlags$1.p;
                boolean z104 = pdpViewModelImpl$initFeatureFlags$1.o;
                boolean z105 = pdpViewModelImpl$initFeatureFlags$1.n;
                boolean z106 = pdpViewModelImpl$initFeatureFlags$1.m;
                boolean z107 = pdpViewModelImpl$initFeatureFlags$1.l;
                boolean z108 = pdpViewModelImpl$initFeatureFlags$1.f61216k;
                boolean z109 = pdpViewModelImpl$initFeatureFlags$1.f61215j;
                boolean z110 = pdpViewModelImpl$initFeatureFlags$1.f61214i;
                boolean z111 = pdpViewModelImpl$initFeatureFlags$1.f61213h;
                i24 = pdpViewModelImpl$initFeatureFlags$1.f61212f;
                boolean z112 = pdpViewModelImpl$initFeatureFlags$1.g;
                i23 = pdpViewModelImpl$initFeatureFlags$1.f61211e;
                mutableStateFlow9 = pdpViewModelImpl$initFeatureFlags$1.f61210c;
                ResultKt.b(objC8);
                z56 = z102;
                z46 = z103;
                z47 = z104;
                z48 = z105;
                z49 = z106;
                z50 = z107;
                z51 = z108;
                z52 = z109;
                z53 = z110;
                z54 = z111;
                z55 = z112;
                z44 = false;
                boolean zBooleanValue18 = ((Boolean) objC8).booleanValue();
                if (i23 != 0) {
                    z57 = true;
                } else {
                    z57 = z44;
                }
                if (i24 != 0) {
                    z58 = true;
                } else {
                    z58 = z44;
                }
                mutableStateFlow9.setValue(new PdpFeatureFlags(z55, z57, z58, z54, z53, z52, z51, z49, z50, z48, z47, z46, z56, zBooleanValue18));
                return Unit.f71739a;
            default:
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    public static final Object Dc(PdpViewModelImpl pdpViewModelImpl, ContinuationImpl continuationImpl) {
        PdpViewModelImpl$initProductDetails$1 pdpViewModelImpl$initProductDetails$1;
        CustomizationIdTypeUiModel customizationIdTypeUiModel;
        String str = pdpViewModelImpl.S;
        if (continuationImpl instanceof PdpViewModelImpl$initProductDetails$1) {
            pdpViewModelImpl$initProductDetails$1 = (PdpViewModelImpl$initProductDetails$1) continuationImpl;
            int i2 = pdpViewModelImpl$initProductDetails$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                pdpViewModelImpl$initProductDetails$1.d = i2 - Integer.MIN_VALUE;
            } else {
                pdpViewModelImpl$initProductDetails$1 = new PdpViewModelImpl$initProductDetails$1(pdpViewModelImpl, continuationImpl);
            }
        } else {
            pdpViewModelImpl$initProductDetails$1 = new PdpViewModelImpl$initProductDetails$1(pdpViewModelImpl, continuationImpl);
        }
        Object objD = pdpViewModelImpl$initProductDetails$1.f61220b;
        Object obj = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = pdpViewModelImpl$initProductDetails$1.d;
        CustomizationIdUiModel customizationIdUiModel = null;
        if (i3 == 0) {
            ResultKt.b(objD);
            if (str != null) {
                GetCustomizationUseCase getCustomizationUseCase = pdpViewModelImpl.n;
                SkuIdUiModel.f61763c.getClass();
                SkuId.Companion companion = SkuId.INSTANCE;
                pdpViewModelImpl$initProductDetails$1.d = 1;
                objD = getCustomizationUseCase.f50189a.d(str);
                if (objD == obj) {
                    return obj;
                }
            }
            return Unit.f71739a;
        }
        if (i3 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(objD);
        CustomizationId customizationId = (CustomizationId) objD;
        if (customizationId != null) {
            String str2 = customizationId.f67963a;
            int i4 = ProductCustomizationMapperKt.WhenMappings.f61541b[customizationId.f67964b.ordinal()];
            if (i4 == 1) {
                customizationIdTypeUiModel = CustomizationIdTypeUiModel.THREEKIT;
            } else {
                if (i4 != 2) {
                    v40.g();
                    return null;
                }
                customizationIdTypeUiModel = CustomizationIdTypeUiModel.BASE64;
            }
            customizationIdUiModel = new CustomizationIdUiModel(str2, customizationIdTypeUiModel);
        }
        CustomizationIdUiModel customizationIdUiModel2 = pdpViewModelImpl.T;
        if (customizationIdUiModel2 != null) {
            customizationIdUiModel = customizationIdUiModel2;
        }
        PdpViewModel.Db(pdpViewModelImpl, str, customizationIdUiModel, 4);
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00df  */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00d4, code lost:
    
        if (r9.a(com.vuitton.android.core.events.AppEvent.WishListUpdatedEvent.f43509a, r3) == r4) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00f3, code lost:
    
        if (r19.Fc(r5, r3) == r4) goto L38;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object Ec(com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl r19, java.lang.String r20, kotlin.coroutines.jvm.internal.ContinuationImpl r21) {
        /*
            Method dump skipped, instruction units count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl.Ec(com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl, java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:15:0x004b A[PHI: r1 r6 r10
      0x004b: PHI (r1v9 int) = (r1v7 int), (r1v11 int) binds: [B:29:0x00f2, B:14:0x0042] A[DONT_GENERATE, DONT_INLINE]
      0x004b: PHI (r6v10 java.lang.Object) = (r6v8 java.lang.Object), (r6v12 java.lang.Object) binds: [B:29:0x00f2, B:14:0x0042] A[DONT_GENERATE, DONT_INLINE]
      0x004b: PHI (r10v9 com.vuitton.android.domain.monitoring.MonitorAction) = 
      (r10v7 com.vuitton.android.domain.monitoring.MonitorAction)
      (r10v11 com.vuitton.android.domain.monitoring.MonitorAction)
     binds: [B:29:0x00f2, B:14:0x0042] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:24:0x009b  */
    /* JADX WARN: Code duplicated, block: B:27:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:35:0x0111  */
    /* JADX WARN: Code duplicated, block: B:38:0x0118  */
    /* JADX WARN: Code duplicated, block: B:40:0x0124  */
    /* JADX WARN: Code duplicated, block: B:43:0x0149  */
    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0108, code lost:
    
        if (r10.a(com.vuitton.android.core.events.AppEvent.WishListUpdatedEvent.f43509a, r4) == r5) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0146, code lost:
    
        if (r3.u(r2, r4) == r5) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0158, code lost:
    
        if (r18.Fc(r2, r4) == r5) goto L45;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object yc(com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl r18, java.lang.String r19, kotlin.coroutines.jvm.internal.ContinuationImpl r20) {
        /*
            Method dump skipped, instruction units count: 374
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl.yc(com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl, java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object zc(PdpViewModelImpl pdpViewModelImpl, String str, ContinuationImpl continuationImpl) {
        PdpViewModelImpl$fetchCrossSellProducts$1 pdpViewModelImpl$fetchCrossSellProducts$1;
        Object objA;
        if (continuationImpl instanceof PdpViewModelImpl$fetchCrossSellProducts$1) {
            pdpViewModelImpl$fetchCrossSellProducts$1 = (PdpViewModelImpl$fetchCrossSellProducts$1) continuationImpl;
            int i2 = pdpViewModelImpl$fetchCrossSellProducts$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                pdpViewModelImpl$fetchCrossSellProducts$1.d = i2 - Integer.MIN_VALUE;
            } else {
                pdpViewModelImpl$fetchCrossSellProducts$1 = new PdpViewModelImpl$fetchCrossSellProducts$1(pdpViewModelImpl, continuationImpl);
            }
        } else {
            pdpViewModelImpl$fetchCrossSellProducts$1 = new PdpViewModelImpl$fetchCrossSellProducts$1(pdpViewModelImpl, continuationImpl);
        }
        Object obj = pdpViewModelImpl$fetchCrossSellProducts$1.f61177b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = pdpViewModelImpl$fetchCrossSellProducts$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            GetCrossSellProductListUseCase getCrossSellProductListUseCase = pdpViewModelImpl.F;
            SkuIdUiModel.f61763c.getClass();
            SkuIdUiModel.Companion.b(str);
            pdpViewModelImpl$fetchCrossSellProducts$1.d = 1;
            objA = getCrossSellProductListUseCase.a(str, pdpViewModelImpl$fetchCrossSellProducts$1);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Throwable thA = Result.a(objA);
        if (thA != null) {
            Logger logger = pdpViewModelImpl.f61136b;
            thA.getMessage();
            logger.getClass();
            return UtilsKt.b();
        }
        List list = (List) objA;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(ProductTinyMapperKt.a((ProductTiny) it.next()));
        }
        return ExtensionsKt.a(arrayList);
    }

    @Override // com.vuitton.android.presentation.screen.pdp.PdpViewModel
    public final void A8(String str, CustomizationIdUiModel customizationIdUiModel) {
        str.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new PdpViewModelImpl$getProductDetailsForCustomization$1(this, str, customizationIdUiModel, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void B(ChatProductModel chatProductModel, int i2, int i3) {
        chatProductModel.getClass();
        this.f61141i.B(chatProductModel, i2, i3);
    }

    @Override // com.vuitton.android.presentation.screen.pdp.PdpViewModel
    public final void B4() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new PdpViewModelImpl$retryGetProductDetail$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void C(ScreenType screenType) {
        screenType.getClass();
        this.f61141i.C(screenType);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object E5(Continuation continuation) {
        return this.f61141i.E5(continuation);
    }

    @Override // com.vuitton.android.presentation.screen.pdp.PdpViewModel
    public final boolean F() {
        Boolean boolC = this.B.f50405a.c();
        Result.Companion companion = Result.INSTANCE;
        boolean zBooleanValue = boolC.booleanValue();
        if (!zBooleanValue) {
            this.p.a();
        }
        return zBooleanValue;
    }

    @Override // com.vuitton.android.presentation.screen.pdp.PdpViewModel
    public final void F0() {
        ProductUiModel productUiModel = (ProductUiModel) this.W.getValue();
        if (productUiModel != null) {
            BuildersKt.c(ViewModelKt.a(this), null, null, new PdpViewModelImpl$addOrRemoveFromWishlist$1$1(this, productUiModel.f61735b, null), 3);
        }
    }

    public final Object Fc(Throwable th, ContinuationImpl continuationImpl) {
        StringResourceUiModel text;
        Response response;
        if (th instanceof WishlistError) {
            String strJ = StringKtExtKt.j(((WishlistError) th).f66229b);
            text = strJ != null ? new StringResourceUiModel.Text(strJ) : new StringResourceUiModel.ResId(R.string.generic_api_error_message, null, 2, null);
        } else {
            Throwable cause = th.getCause();
            HttpException httpException = cause instanceof HttpException ? (HttpException) cause : null;
            String strA = WishlistHelper.a((httpException == null || (response = httpException.d) == null) ? null : response.f79451c);
            text = strA != null ? new StringResourceUiModel.Text(strA) : new StringResourceUiModel.ResId(R.string.error_generic, null, 2, null);
        }
        Object objU = this.v0.u(NotificationBuilder.a(this.f61143k, text, false, null, null, 60), continuationImpl);
        return objU == CoroutineSingletons.COROUTINE_SUSPENDED ? objU : Unit.f71739a;
    }

    @Override // com.vuitton.android.presentation.screen.pdp.PdpViewModel
    public final void G() {
        this.p.a();
    }

    @Override // com.vuitton.android.presentation.screen.pdp.PdpViewModel
    public final void G9(ProductUiModel productUiModel, String str, String str2, String str3) {
        str2.getClass();
        str3.getClass();
        DynatraceMonitorAction dynatraceMonitorActionA = this.f61137c.a(this.N, PDPMonitoring.Action.SubscribeBackInStock.f48975a);
        dynatraceMonitorActionA.c(productUiModel.f61735b, "sku");
        BuildersKt.c(ViewModelKt.a(this), null, null, new PdpViewModelImpl$registerToProductBIS$1(this, productUiModel, dynatraceMonitorActionA, null), 3);
    }

    public final void Gc(PdpTrackingUiModel pdpTrackingUiModel) {
        this.f61138e.a(PdpTrackingUiModelKt.a(pdpTrackingUiModel, this.S, (ProductUiModel) this.W.getValue(), this.Q));
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void I(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.f61141i.I(chatProductModel, i2);
    }

    @Override // com.vuitton.android.presentation.screen.pdp.PdpViewModel
    public final void L2() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new PdpViewModelImpl$displaySettingsBottomSheet$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object M1(ContactUsOrigin contactUsOrigin, Continuation continuation) {
        return this.f61141i.M1(contactUsOrigin, continuation);
    }

    @Override // com.vuitton.android.presentation.screen.pdp.PdpViewModel
    public final boolean N7() {
        LegalConsentContext legalConsentContext = LegalConsentContext.SHADE_FINDER;
        HasConsentedBeautyUseCase hasConsentedBeautyUseCase = this.w;
        hasConsentedBeautyUseCase.getClass();
        legalConsentContext.getClass();
        return hasConsentedBeautyUseCase.f50206a.a(legalConsentContext);
    }

    @Override // com.vuitton.android.presentation.screen.pdp.PdpViewModel
    public final void P8(String str, boolean z, CustomizationType customizationType) {
        str.getClass();
        customizationType.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new PdpViewModelImpl$handleCustomizationCardClicked$1(customizationType, z, this, str, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void Q0() {
        this.f61141i.Q0();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final Object S0(Continuation continuation) {
        return this.f61141i.S0(continuation);
    }

    @Override // com.vuitton.android.presentation.screen.pdp.PdpViewModel
    public final boolean T2() {
        LegalConsentContext legalConsentContext = LegalConsentContext.TRY_ON;
        HasConsentedBeautyUseCase hasConsentedBeautyUseCase = this.w;
        hasConsentedBeautyUseCase.getClass();
        legalConsentContext.getClass();
        return hasConsentedBeautyUseCase.f50206a.a(legalConsentContext);
    }

    @Override // com.vuitton.android.presentation.screen.pdp.PdpViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getY0() {
        return this.y0;
    }

    @Override // com.vuitton.android.presentation.screen.pdp.PdpViewModel
    public final void a1() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new PdpViewModelImpl$updateWishlistState$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.screen.pdp.PdpViewModel
    public final void a3(PermissionsBottomSheet permissionsBottomSheet) {
        permissionsBottomSheet.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new PdpViewModelImpl$onPermissionRefused$1(permissionsBottomSheet, this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.pdp.PdpViewModel
    public final Flow b() {
        return FlowKt.y(this.v0);
    }

    @Override // com.vuitton.android.presentation.screen.pdp.PdpViewModel
    public final void c() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new PdpViewModelImpl$setUserChatConsentEnabled$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.screen.pdp.PdpViewModel
    public final void d5(LegalConsentContextUiModel legalConsentContextUiModel) {
        legalConsentContextUiModel.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new PdpViewModelImpl$displayConsentBottomSheet$1(this, legalConsentContextUiModel, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.pdp.PdpViewModel
    public final void f0() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new PdpViewModelImpl$updateTooltipVisibility$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void f8(ContactUsMode contactUsMode) {
        contactUsMode.getClass();
        this.f61141i.f8(contactUsMode);
    }

    @Override // com.vuitton.android.presentation.screen.pdp.PdpViewModel
    public final Flow g0() {
        return FlowKt.y(this.w0);
    }

    @Override // com.vuitton.android.presentation.screen.pdp.PdpViewModel
    public final Flow h() {
        return FlowKt.y(this.x0);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Flow i() {
        return this.f61141i.i();
    }

    @Override // com.vuitton.android.presentation.screen.pdp.PdpViewModel
    public final void jb() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new PdpViewModelImpl$addToCart$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.screen.pdp.PdpViewModel
    public final void jc(String str, CustomizationType customizationType) {
        str.getClass();
        customizationType.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new PdpViewModelImpl$navigateToCustomization$1(this, str, customizationType, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.pdp.PdpViewModel
    public final void l6(String str, CustomizationIdUiModel customizationIdUiModel, boolean z) {
        str.getClass();
        DynatraceMonitorAction dynatraceMonitorActionA = this.f61137c.a(this.N, PDPMonitoring.Action.LoadProductDetailsScreen.f48973a);
        dynatraceMonitorActionA.c(str, "sku");
        if (customizationIdUiModel != null) {
            dynatraceMonitorActionA.c(customizationIdUiModel.f61671b, "recipieId");
            Result.Companion companion = Result.INSTANCE;
        }
        String str2 = this.Q;
        if (str2 != null) {
            dynatraceMonitorActionA.c("true", "isStoreMode");
            dynatraceMonitorActionA.c(str2, "rmsCode");
        }
        BuildersKt.c(ViewModelKt.a(this), null, null, new PdpViewModelImpl$getProductDetails$1(this, str, customizationIdUiModel, z, dynatraceMonitorActionA, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void m4(StringResourceUiModel stringResourceUiModel) {
        this.f61141i.m4(stringResourceUiModel);
    }

    @Override // com.vuitton.android.presentation.screen.pdp.PdpViewModel
    public final void ob(BeautyLegalConsentUiModel beautyLegalConsentUiModel) {
        LegalConsentContext legalConsentContext;
        MutableStateFlow mutableStateFlow;
        Object value;
        beautyLegalConsentUiModel.getClass();
        BeautyLegalConsentUiModel beautyLegalConsentUiModelA = BeautyLegalConsentUiModel.a(beautyLegalConsentUiModel, Instant.now().toString(), null, 11);
        String str = beautyLegalConsentUiModelA.f62140a;
        List<ConsentRequirementUiModel> list = beautyLegalConsentUiModelA.f62141b;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        for (ConsentRequirementUiModel consentRequirementUiModel : list) {
            consentRequirementUiModel.getClass();
            arrayList.add(new ConsentRequirement(consentRequirementUiModel.f62161a, consentRequirementUiModel.f62162b, consentRequirementUiModel.f62163c, consentRequirementUiModel.d, ((Boolean) consentRequirementUiModel.f62164e.getF10755b()).booleanValue()));
        }
        String str2 = beautyLegalConsentUiModelA.f62142c;
        LegalConsentContextUiModel legalConsentContextUiModel = beautyLegalConsentUiModelA.d;
        if (legalConsentContextUiModel != null) {
            int i2 = BeautyLegalConsentMapperKt$WhenMappings.f62210b[legalConsentContextUiModel.ordinal()];
            if (i2 == 1) {
                legalConsentContext = LegalConsentContext.TRY_ON;
            } else {
                if (i2 != 2) {
                    v40.g();
                    return;
                }
                legalConsentContext = LegalConsentContext.SHADE_FINDER;
            }
        } else {
            legalConsentContext = null;
        }
        LegalConsent legalConsent = new LegalConsent(str, arrayList, str2, legalConsentContext);
        SetBeautyConsentUseCase setBeautyConsentUseCase = this.r;
        setBeautyConsentUseCase.getClass();
        setBeautyConsentUseCase.f50210a.c(legalConsent);
        do {
            mutableStateFlow = this.r0;
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.i(value, null));
    }

    @Override // com.vuitton.android.presentation.screen.pdp.PdpViewModel
    public final void q9() {
        String str = this.S;
        str.getClass();
        l6(str, null, false);
        BuildersKt.c(ViewModelKt.a(this), null, null, new PdpViewModelImpl$reloadWithoutCustomization$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void r(ChatProductModel chatProductModel) {
        chatProductModel.getClass();
        this.f61141i.r(chatProductModel);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void s() {
        this.f61141i.s();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void v(String str, String str2) {
        this.f61141i.v(str, str2);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object vc(Continuation continuation) {
        return this.f61141i.vc(continuation);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void x(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.f61141i.x(chatProductModel, i2);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void z() {
        this.f61141i.z();
    }
}
