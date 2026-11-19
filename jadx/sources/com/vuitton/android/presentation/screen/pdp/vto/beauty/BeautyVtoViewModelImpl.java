package com.vuitton.android.presentation.screen.pdp.vto.beauty;

import android.app.Application;
import android.graphics.Bitmap;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.perfectcorp.perfectlib.FaceAnalysisData;
import com.perfectcorp.perfectlib.FaceAttributeAnalyzer;
import com.perfectcorp.perfectlib.LookHandler;
import com.perfectcorp.perfectlib.LookInfo;
import com.perfectcorp.perfectlib.LookType;
import com.perfectcorp.perfectlib.PerfectEffect;
import com.perfectcorp.perfectlib.ProductInfo;
import com.perfectcorp.perfectlib.ShadeFinderQualityCheck;
import com.perfectcorp.perfectlib.SkuHandler;
import com.perfectcorp.perfectlib.SkuInfo;
import com.perfectcorp.perfectlib.exceptions.DetectFailedException;
import com.perfectcorp.perfectlib.exceptions.FaceRectOutOfBoundaryException;
import com.perfectcorp.perfectlib.exceptions.MultiFaceNotSupportedException;
import com.vuitton.android.R;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.beauty.BeautyVTOMonitoring;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.usecase.account.accessibility.GetAllAccessibilityValuesUseCase;
import com.vuitton.android.domain.usecase.cart.AddProductListToCartUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ReportDYAddToCartEventUseCase;
import com.vuitton.android.domain.usecase.pdp.backinstock.SubscribeBackInStockUseCase;
import com.vuitton.android.domain.usecase.pdp.vto.GetShadeFinderConsentTimeStampUseCase;
import com.vuitton.android.domain.usecase.pdp.vto.GetShadeFinderRecommendationsUseCase;
import com.vuitton.android.domain.usecase.pdp.vto.GetTryOnProductListUseCase;
import com.vuitton.android.domain.usecase.pdp.vto.GetTutorialUseCase;
import com.vuitton.android.domain.usecase.pdp.vto.HasDoneShadeFinderIntroUseCase;
import com.vuitton.android.domain.usecase.pdp.vto.SetShadeFinderIntroDoneUseCase;
import com.vuitton.android.domain.usecase.products.GetProductAvailabilityUseCase;
import com.vuitton.android.domain.usecase.products.GetSkusProductsListUseCase;
import com.vuitton.android.domain.usecase.products.GetYmalProductListUseCase;
import com.vuitton.android.domain.usecase.wishlist.AddProductListToWishlistUseCase;
import com.vuitton.android.domain.usecase.wishlist.DeleteProductFromWishlistUseCase;
import com.vuitton.android.domain.usecase.wishlist.IsProductInWishlistUseCase;
import com.vuitton.android.presentation.model.common.ProductTinyUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.pdp.models.PdpAppConfigValues;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyBottomSheet;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyFeatureFlags;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyPictureUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyProductTypeUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyVtoMode;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyVtoViewState;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyVtoViewStateKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.LookUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.RecommendationUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ShadeFinderResponseUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ShadeFinderScanState;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ShadeFinderViewState;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TryOnProductUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TryOnProductUiModelKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TutorialState;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.VirtualTryOnUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.tracking.BeautyVtoTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.tracking.ShadeFinderTracker;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.tracking.ShadeFinderTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.tracking.ShadeFinderTrackingUiModelKt;
import com.vuitton.android.presentation.screen.wishlist.WishlistHelper;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.error.wishlist.WishlistError;
import com.vuitton.foundation.model.domain.extensions.CollectionExtKt;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import com.vuitton.foundation.model.domain.model.account.accessibility.AccessibilityPreferenceType;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.analytics.HitType;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.cj;
import defpackage.md;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Job;
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
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.eac.CertificateBody;
import org.squirrelframework.foundation.fsm.MvelScriptManager;
import retrofit2.HttpException;
import retrofit2.Response;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000¶\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002Bé\u0001\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020'\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u0010,\u001a\u00020+\u0012\u0006\u0010.\u001a\u00020-\u0012\u0006\u00100\u001a\u00020/\u0012\u0006\u00102\u001a\u000201\u0012\u0006\u00104\u001a\u000203\u0012\u0006\u00106\u001a\u000205\u0012\u0006\u00108\u001a\u000207\u0012\u0006\u0010:\u001a\u000209¢\u0006\u0004\b;\u0010<¨\u0006="}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;", "Landroidx/lifecycle/AndroidViewModel;", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;", "Landroid/app/Application;", "application", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "userSessionService", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTracker;", "shadeFinderTracker", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "Lcom/vuitton/android/domain/usecase/pdp/vto/GetTutorialUseCase;", "getTutorialUseCase", "Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase;", "getYmalProductListUseCase", "Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;", "isProductInWishlistUseCase", "Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;", "getSkusProductsListUseCase", "Lcom/vuitton/android/domain/usecase/pdp/vto/GetTryOnProductListUseCase;", "getTryOnProductListUseCase", "Lcom/vuitton/android/domain/usecase/pdp/backinstock/SubscribeBackInStockUseCase;", "subscribeBackInStockUseCase", "Lcom/vuitton/android/domain/usecase/cart/AddProductListToCartUseCase;", "addProductListToCartUseCase", "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;", "reportDYAddToCartEventUseCase", "Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase;", "getProductAvailabilityUseCase", "Lcom/vuitton/android/domain/usecase/pdp/vto/SetShadeFinderIntroDoneUseCase;", "setShadeFinderIntroDoneUseCase", "Lcom/vuitton/android/domain/usecase/pdp/vto/HasDoneShadeFinderIntroUseCase;", "hasDoneShadeFinderIntroUseCase", "Lcom/vuitton/android/domain/usecase/wishlist/AddProductListToWishlistUseCase;", "addProductListToWishlistUseCase", "Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;", "getAllAccessibilityValuesUseCase", "Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;", "deleteProductFromWishlistUseCase", "Lcom/vuitton/android/domain/usecase/pdp/vto/GetShadeFinderRecommendationsUseCase;", "getShadeFinderRecommendationsUseCase", "Lcom/vuitton/android/domain/usecase/pdp/vto/GetShadeFinderConsentTimeStampUseCase;", "getShadeFinderConsentTimeStampUseCase", "<init>", "(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTracker;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/pdp/vto/GetTutorialUseCase;Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;Lcom/vuitton/android/domain/usecase/pdp/vto/GetTryOnProductListUseCase;Lcom/vuitton/android/domain/usecase/pdp/backinstock/SubscribeBackInStockUseCase;Lcom/vuitton/android/domain/usecase/cart/AddProductListToCartUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase;Lcom/vuitton/android/domain/usecase/pdp/vto/SetShadeFinderIntroDoneUseCase;Lcom/vuitton/android/domain/usecase/pdp/vto/HasDoneShadeFinderIntroUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductListToWishlistUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/pdp/vto/GetShadeFinderRecommendationsUseCase;Lcom/vuitton/android/domain/usecase/pdp/vto/GetShadeFinderConsentTimeStampUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class BeautyVtoViewModelImpl extends AndroidViewModel implements BeautyVtoViewModel {
    public Job A;
    public final BeautyFeatureFlags B;
    public final InAppDispatch C;
    public SkuHandler D;
    public LookHandler E;
    public MonitorAction F;
    public final TryOnProductUiModel G;
    public final MutableStateFlow H;
    public final MutableStateFlow I;
    public final MutableStateFlow J;
    public final MutableStateFlow K;
    public final MutableStateFlow L;
    public final MutableStateFlow M;
    public final MutableStateFlow N;
    public final MutableStateFlow O;
    public final MutableStateFlow P;
    public final MutableStateFlow Q;
    public final MutableStateFlow R;
    public final MutableStateFlow S;
    public final MutableStateFlow T;
    public final MutableStateFlow U;
    public final MutableStateFlow V;
    public final MutableStateFlow W;
    public final MutableStateFlow X;
    public final MutableStateFlow Y;
    public final MutableStateFlow Z;
    public final MutableStateFlow a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Logger f61840b;
    public final MutableStateFlow b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Monitor f61841c;
    public final MutableStateFlow c0;
    public final AnalyticsTracker d;
    public final MutableStateFlow d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LVEventSender f61842e;
    public final MutableStateFlow e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final UserSessionService f61843f;
    public final MutableStateFlow f0;
    public final ShadeFinderTracker g;
    public final MutableStateFlow g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final NotificationBuilder f61844h;
    public final BufferedChannel h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final GetTutorialUseCase f61845i;
    public final BufferedChannel i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final GetYmalProductListUseCase f61846j;
    public final MutableStateFlow j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final IsProductInWishlistUseCase f61847k;
    public final StateFlow k0;
    public final GetSkusProductsListUseCase l;
    public final MutableStateFlow l0;
    public final GetTryOnProductListUseCase m;
    public final MutableStateFlow m0;
    public final SubscribeBackInStockUseCase n;
    public final MutableStateFlow n0;
    public final AddProductListToCartUseCase o;
    public final StateFlow o0;
    public final ReportDYAddToCartEventUseCase p;
    public final GetProductAvailabilityUseCase q;
    public final SetShadeFinderIntroDoneUseCase r;
    public final HasDoneShadeFinderIntroUseCase s;
    public final AddProductListToWishlistUseCase t;
    public final DeleteProductFromWishlistUseCase u;
    public final GetShadeFinderRecommendationsUseCase v;
    public final GetShadeFinderConsentTimeStampUseCase w;
    public ProductUiModel x;
    public final boolean y;
    public final AppConfig z;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f61848a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f61849b;

        static {
            int[] iArr = new int[BeautyProductTypeUiModel.values().length];
            try {
                iArr[BeautyProductTypeUiModel.LIPSTICK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BeautyProductTypeUiModel.EYESHADOW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BeautyProductTypeUiModel.LIPLINER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[BeautyProductTypeUiModel.NONE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f61848a = iArr;
            int[] iArr2 = new int[BeautyVtoMode.values().length];
            try {
                iArr2[BeautyVtoMode.STACKING.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[BeautyVtoMode.DUAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[BeautyVtoMode.SIMPLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            f61849b = iArr2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    @Inject
    public BeautyVtoViewModelImpl(Application application, SavedStateHandle savedStateHandle, IsFeatureAvailableUseCase isFeatureAvailableUseCase, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, Logger logger, Monitor monitor, AnalyticsTracker analyticsTracker, LVEventSender lVEventSender, UserSessionService userSessionService, ShadeFinderTracker shadeFinderTracker, NotificationBuilder notificationBuilder, GetTutorialUseCase getTutorialUseCase, GetYmalProductListUseCase getYmalProductListUseCase, IsProductInWishlistUseCase isProductInWishlistUseCase, GetSkusProductsListUseCase getSkusProductsListUseCase, GetTryOnProductListUseCase getTryOnProductListUseCase, SubscribeBackInStockUseCase subscribeBackInStockUseCase, AddProductListToCartUseCase addProductListToCartUseCase, ReportDYAddToCartEventUseCase reportDYAddToCartEventUseCase, GetProductAvailabilityUseCase getProductAvailabilityUseCase, SetShadeFinderIntroDoneUseCase setShadeFinderIntroDoneUseCase, HasDoneShadeFinderIntroUseCase hasDoneShadeFinderIntroUseCase, AddProductListToWishlistUseCase addProductListToWishlistUseCase, GetAllAccessibilityValuesUseCase getAllAccessibilityValuesUseCase, DeleteProductFromWishlistUseCase deleteProductFromWishlistUseCase, GetShadeFinderRecommendationsUseCase getShadeFinderRecommendationsUseCase, GetShadeFinderConsentTimeStampUseCase getShadeFinderConsentTimeStampUseCase) {
        VirtualTryOnUiModel virtualTryOnUiModel;
        BeautyProductTypeUiModel beautyProductTypeUiModel;
        super(application);
        application.getClass();
        savedStateHandle.getClass();
        isFeatureAvailableUseCase.getClass();
        requireCachedAppConfigUseCase.getClass();
        requireUserInAppDispatchUseCase.getClass();
        logger.getClass();
        monitor.getClass();
        analyticsTracker.getClass();
        lVEventSender.getClass();
        userSessionService.getClass();
        shadeFinderTracker.getClass();
        notificationBuilder.getClass();
        getTutorialUseCase.getClass();
        getYmalProductListUseCase.getClass();
        isProductInWishlistUseCase.getClass();
        getSkusProductsListUseCase.getClass();
        getTryOnProductListUseCase.getClass();
        subscribeBackInStockUseCase.getClass();
        addProductListToCartUseCase.getClass();
        reportDYAddToCartEventUseCase.getClass();
        getProductAvailabilityUseCase.getClass();
        setShadeFinderIntroDoneUseCase.getClass();
        hasDoneShadeFinderIntroUseCase.getClass();
        addProductListToWishlistUseCase.getClass();
        getAllAccessibilityValuesUseCase.getClass();
        deleteProductFromWishlistUseCase.getClass();
        getShadeFinderRecommendationsUseCase.getClass();
        getShadeFinderConsentTimeStampUseCase.getClass();
        this.f61840b = logger;
        this.f61841c = monitor;
        this.d = analyticsTracker;
        this.f61842e = lVEventSender;
        this.f61843f = userSessionService;
        this.g = shadeFinderTracker;
        this.f61844h = notificationBuilder;
        this.f61845i = getTutorialUseCase;
        this.f61846j = getYmalProductListUseCase;
        this.f61847k = isProductInWishlistUseCase;
        this.l = getSkusProductsListUseCase;
        this.m = getTryOnProductListUseCase;
        this.n = subscribeBackInStockUseCase;
        this.o = addProductListToCartUseCase;
        this.p = reportDYAddToCartEventUseCase;
        this.q = getProductAvailabilityUseCase;
        this.r = setShadeFinderIntroDoneUseCase;
        this.s = hasDoneShadeFinderIntroUseCase;
        this.t = addProductListToWishlistUseCase;
        this.u = deleteProductFromWishlistUseCase;
        this.v = getShadeFinderRecommendationsUseCase;
        this.w = getShadeFinderConsentTimeStampUseCase;
        this.x = (ProductUiModel) savedStateHandle.a("PRODUCT");
        Boolean bool = (Boolean) savedStateHandle.a("isShadeFinder");
        this.y = bool != null ? bool.booleanValue() : false;
        AppConfig appConfigA = requireCachedAppConfigUseCase.a();
        this.z = appConfigA;
        BeautyFeatureFlags beautyFeatureFlags = new BeautyFeatureFlags(appConfigA.a0.f67282a, appConfigA.Y, isFeatureAvailableUseCase.b(new Feature[]{Feature.NATIVE_CART}), isFeatureAvailableUseCase.b(new Feature[]{Feature.BACK_IN_STOCK}), isFeatureAvailableUseCase.b(new Feature[]{Feature.BACK_IN_STOCK_LEGAL_CONSENT}));
        this.B = beautyFeatureFlags;
        InAppDispatch inAppDispatchB = requireUserInAppDispatchUseCase.f49912a.b();
        this.C = inAppDispatchB;
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        TryOnProductUiModel tryOnProductUiModel = new TryOnProductUiModel("", "", BeautyProductTypeUiModel.NONE, null, false, StringResourceUiModelKt.a(new StringResourceUiModel.ResId(R.string.vto_color_none, null, 2, null), application), null, null, false, false, Integer.valueOf(R.drawable.ic_beauty_none), null);
        this.G = tryOnProductUiModel;
        Boolean bool2 = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(bool2);
        this.H = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(bool2);
        this.I = mutableStateFlowA2;
        this.J = StateFlowKt.a(null);
        this.K = StateFlowKt.a(null);
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(null);
        this.L = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(null);
        this.M = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(null);
        this.N = mutableStateFlowA5;
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(Boolean.valueOf(userSessionService.b()));
        this.O = mutableStateFlowA6;
        MutableStateFlow mutableStateFlowA7 = StateFlowKt.a(new PdpAppConfigValues(null, null, null, null, null, null, null, CertificateBody.profileType, null));
        this.P = mutableStateFlowA7;
        MutableStateFlow mutableStateFlowA8 = StateFlowKt.a(bool2);
        this.Q = mutableStateFlowA8;
        MutableStateFlow mutableStateFlowA9 = StateFlowKt.a(null);
        this.R = mutableStateFlowA9;
        MutableStateFlow mutableStateFlowA10 = StateFlowKt.a(null);
        this.S = mutableStateFlowA10;
        MutableStateFlow mutableStateFlowA11 = StateFlowKt.a(tryOnProductUiModel);
        this.T = mutableStateFlowA11;
        MutableStateFlow mutableStateFlowA12 = StateFlowKt.a(BeautyVtoMode.SIMPLE);
        this.U = mutableStateFlowA12;
        MutableStateFlow mutableStateFlowA13 = StateFlowKt.a(null);
        this.V = mutableStateFlowA13;
        this.W = StateFlowKt.a(null);
        MutableStateFlow mutableStateFlowA14 = StateFlowKt.a(TutorialState.Loading.f62199a);
        this.X = mutableStateFlowA14;
        this.Y = StateFlowKt.a(Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM));
        MutableStateFlow mutableStateFlowA15 = StateFlowKt.a(null);
        this.Z = mutableStateFlowA15;
        MutableStateFlow mutableStateFlowA16 = StateFlowKt.a(null);
        this.a0 = mutableStateFlowA16;
        MutableStateFlow mutableStateFlowA17 = StateFlowKt.a(null);
        this.b0 = mutableStateFlowA17;
        MutableStateFlow mutableStateFlowA18 = StateFlowKt.a(null);
        this.c0 = mutableStateFlowA18;
        MutableStateFlow mutableStateFlowA19 = StateFlowKt.a(null);
        this.d0 = mutableStateFlowA19;
        MutableStateFlow mutableStateFlowA20 = StateFlowKt.a(null);
        this.e0 = mutableStateFlowA20;
        MutableStateFlow mutableStateFlowA21 = StateFlowKt.a(bool2);
        this.f0 = mutableStateFlowA21;
        MutableStateFlow mutableStateFlowA22 = StateFlowKt.a(bool2);
        this.g0 = mutableStateFlowA22;
        this.h0 = ChannelKt.a(0, 7, null);
        this.i0 = ChannelKt.a(0, 7, null);
        this.j0 = StateFlowKt.a(null);
        final Flow[] flowArr = {mutableStateFlowA12, mutableStateFlowA3, mutableStateFlowA4, mutableStateFlowA5, mutableStateFlowA9, mutableStateFlowA10, mutableStateFlowA7, mutableStateFlowA20, mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA8, mutableStateFlowA6, mutableStateFlowA15, mutableStateFlowA16, mutableStateFlowA17, mutableStateFlowA18, mutableStateFlowA19, mutableStateFlowA11, mutableStateFlowA13, mutableStateFlowA14, mutableStateFlowA21, mutableStateFlowA22};
        Flow<BeautyVtoViewState> flow = new Flow<BeautyVtoViewState>() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$special$$inlined$combine$1$3", f = "BeautyVtoViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super BeautyVtoViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f61943b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f61944c;
                public /* synthetic */ Object[] d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ BeautyVtoViewModelImpl f61945e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass3(Continuation continuation, BeautyVtoViewModelImpl beautyVtoViewModelImpl) {
                    super(3, continuation);
                    this.f61945e = beautyVtoViewModelImpl;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3, this.f61945e);
                    anonymousClass3.f61944c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                /* JADX WARN: Code duplicated, block: B:16:0x0105  */
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    boolean z;
                    FlowCollector flowCollector = this.f61944c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f61943b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        BeautyVtoMode beautyVtoMode = (BeautyVtoMode) obj2;
                        List list = (List) objArr[1];
                        List list2 = (List) objArr[2];
                        List list3 = (List) objArr[3];
                        TryOnProductUiModel tryOnProductUiModel = (TryOnProductUiModel) objArr[4];
                        TryOnProductUiModel tryOnProductUiModel2 = (TryOnProductUiModel) objArr[5];
                        Object obj3 = objArr[6];
                        obj3.getClass();
                        PdpAppConfigValues pdpAppConfigValues = (PdpAppConfigValues) obj3;
                        BeautyPictureUiModel beautyPictureUiModel = (BeautyPictureUiModel) objArr[7];
                        Object obj4 = objArr[8];
                        obj4.getClass();
                        boolean zBooleanValue = ((Boolean) obj4).booleanValue();
                        Object obj5 = objArr[9];
                        obj5.getClass();
                        boolean zBooleanValue2 = ((Boolean) obj5).booleanValue();
                        Object obj6 = objArr[10];
                        obj6.getClass();
                        boolean zBooleanValue3 = ((Boolean) obj6).booleanValue();
                        Object obj7 = objArr[11];
                        obj7.getClass();
                        boolean zBooleanValue4 = ((Boolean) obj7).booleanValue();
                        SkuInfo skuInfo = (SkuInfo) objArr[12];
                        LookInfo lookInfo = (LookInfo) objArr[13];
                        SkuInfo skuInfo2 = (SkuInfo) objArr[14];
                        SkuInfo skuInfo3 = (SkuInfo) objArr[15];
                        LookInfo lookInfo2 = (LookInfo) objArr[16];
                        TryOnProductUiModel tryOnProductUiModel3 = (TryOnProductUiModel) objArr[17];
                        LookUiModel lookUiModel = (LookUiModel) objArr[18];
                        Object obj8 = objArr[19];
                        obj8.getClass();
                        TutorialState tutorialState = (TutorialState) obj8;
                        Object obj9 = objArr[20];
                        obj9.getClass();
                        boolean zBooleanValue5 = ((Boolean) obj9).booleanValue();
                        Object obj10 = objArr[21];
                        obj10.getClass();
                        boolean zBooleanValue6 = ((Boolean) obj10).booleanValue();
                        BeautyVtoViewModelImpl beautyVtoViewModelImpl = this.f61945e;
                        String str = beautyVtoViewModelImpl.z.J;
                        BeautyFeatureFlags beautyFeatureFlags = beautyVtoViewModelImpl.B;
                        if (beautyVtoViewModelImpl.y) {
                            z = false;
                        } else {
                            TryOnProductUiModel tryOnProductUiModel4 = (TryOnProductUiModel) beautyVtoViewModelImpl.R.getValue();
                            if ((tryOnProductUiModel4 != null ? tryOnProductUiModel4.d : null) != null) {
                                z = true;
                            } else {
                                z = false;
                            }
                        }
                        BeautyVtoViewState beautyVtoViewState = new BeautyVtoViewState(beautyVtoMode, list, list2, list3, pdpAppConfigValues, beautyPictureUiModel, zBooleanValue, zBooleanValue2, tryOnProductUiModel, tryOnProductUiModel2, zBooleanValue3, zBooleanValue4, skuInfo, lookInfo, skuInfo2, skuInfo3, lookInfo2, tryOnProductUiModel3, lookUiModel, str, beautyFeatureFlags, tutorialState, zBooleanValue5, zBooleanValue6, z, false, beautyVtoViewModelImpl.y, 33554432, null);
                        this.f61944c = null;
                        this.d = null;
                        this.f61943b = 1;
                        if (flowCollector.emit(beautyVtoViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$special$$inlined$combine$1.2
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
        SharingStarted sharingStarted = SharingStarted.Companion.f74988c;
        this.k0 = FlowKt.A(flow, closeableCoroutineScopeA, sharingStarted, new BeautyVtoViewState(null, null, null, null, null, null, false, false, null, null, false, false, null, null, null, null, null, null, null, null, beautyFeatureFlags, null, false, false, false, false, false, 133169151, null));
        MutableStateFlow mutableStateFlowA23 = StateFlowKt.a(bool2);
        this.l0 = mutableStateFlowA23;
        MutableStateFlow mutableStateFlowA24 = StateFlowKt.a(null);
        this.m0 = mutableStateFlowA24;
        MutableStateFlow mutableStateFlowA25 = StateFlowKt.a(new ShadeFinderScanState(false, false, false, 7, 0 == true ? 1 : 0));
        this.n0 = mutableStateFlowA25;
        final Flow[] flowArr2 = {mutableStateFlowA23, mutableStateFlowA2, mutableStateFlowA25, mutableStateFlowA24, mutableStateFlowA21};
        this.o0 = FlowKt.A(new Flow<ShadeFinderViewState>() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$special$$inlined$combine$2

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$special$$inlined$combine$2$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$special$$inlined$combine$2$3", f = "BeautyVtoViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super ShadeFinderViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f61949b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f61950c;
                public /* synthetic */ Object[] d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ BeautyVtoViewModelImpl f61951e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass3(Continuation continuation, BeautyVtoViewModelImpl beautyVtoViewModelImpl) {
                    super(3, continuation);
                    this.f61951e = beautyVtoViewModelImpl;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3, this.f61951e);
                    anonymousClass3.f61950c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f61950c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f61949b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                        Object obj3 = objArr[1];
                        obj3.getClass();
                        boolean zBooleanValue2 = ((Boolean) obj3).booleanValue();
                        Object obj4 = objArr[2];
                        obj4.getClass();
                        ShadeFinderScanState shadeFinderScanState = (ShadeFinderScanState) obj4;
                        ShadeFinderResponseUiModel shadeFinderResponseUiModel = (ShadeFinderResponseUiModel) objArr[3];
                        Object obj5 = objArr[4];
                        obj5.getClass();
                        ShadeFinderViewState shadeFinderViewState = new ShadeFinderViewState(zBooleanValue, zBooleanValue2, shadeFinderScanState, shadeFinderResponseUiModel, ((Boolean) obj5).booleanValue(), this.f61951e.B);
                        this.f61950c = null;
                        this.d = null;
                        this.f61949b = 1;
                        if (flowCollector.emit(shadeFinderViewState, this) == coroutineSingletons) {
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
                final Flow[] flowArr3 = flowArr2;
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$special$$inlined$combine$2.2
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return new Object[flowArr3.length];
                    }
                }, new AnonymousClass3(null, this), flowCollector, flowArr3);
                return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
            }
        }, ViewModelKt.a(this), sharingStarted, new ShadeFinderViewState(false, false, null, null, false, null, 63, null));
        this.F = monitor.a(inAppDispatchB, BeautyVTOMonitoring.Action.OpenBeautyVTO.f48838a);
        ProductUiModel productUiModel = this.x;
        if (productUiModel != null && (virtualTryOnUiModel = productUiModel.r) != null && (beautyProductTypeUiModel = virtualTryOnUiModel.f62208b) != null) {
            BuildersKt.c(ViewModelKt.a(this), null, null, new BeautyVtoViewModelImpl$initTryOnProductList$1(this, beautyProductTypeUiModel, null, null), 3);
        }
        if (((Boolean) mutableStateFlowA6.getValue()).booleanValue()) {
            a1();
        }
        mutableStateFlowA7.setValue(new PdpAppConfigValues(appConfigA.J, appConfigA.f67238k, appConfigA.f67233e, appConfigA.w, appConfigA.p, null, null, 96, null));
        BuildersKt.c(ViewModelKt.a(this), null, null, new BeautyVtoViewModelImpl$collectLoginState$1(null, this), 3);
        AccessibilityPreferenceType accessibilityPreferenceType = AccessibilityPreferenceType.SIMPLIFY_NAVIGATION;
        AccessibilityPreferenceType accessibilityPreferenceType2 = AccessibilityPreferenceType.DISABLE_AUTOPLAY;
        Object objA = getAllAccessibilityValuesUseCase.a(accessibilityPreferenceType, accessibilityPreferenceType2);
        Result.Companion companion2 = Result.INSTANCE;
        if (objA instanceof Result.Failure) {
            return;
        }
        Map map = (Map) objA;
        mutableStateFlowA21.setValue(MapsKt.d(map, accessibilityPreferenceType));
        mutableStateFlowA22.setValue(MapsKt.d(map, accessibilityPreferenceType2));
    }

    public static final void Ac(final BeautyVtoViewModelImpl beautyVtoViewModelImpl) {
        Object value;
        final DynatraceMonitorAction dynatraceMonitorActionA = beautyVtoViewModelImpl.f61841c.a(beautyVtoViewModelImpl.C, BeautyVTOMonitoring.Action.FetchSDKModel.f48836a);
        TryOnProductUiModel tryOnProductUiModel = (TryOnProductUiModel) beautyVtoViewModelImpl.R.getValue();
        PerfectEffect perfectEffectS5 = beautyVtoViewModelImpl.s5(tryOnProductUiModel != null ? tryOnProductUiModel.f62185c : null);
        if (perfectEffectS5 != null) {
            SkuHandler skuHandler = beautyVtoViewModelImpl.D;
            if (skuHandler != null) {
                skuHandler.getListByEffect(perfectEffectS5, new SkuHandler.GetListCallback() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$getMakeUpEffectList$3
                    @Override // com.perfectcorp.perfectlib.SkuHandler.GetListCallback
                    public final void onFailure(Throwable th) {
                        Object value2;
                        th.getClass();
                        BeautyVTOMonitoring.Error.FetchSDKModelError fetchSDKModelError = new BeautyVTOMonitoring.Error.FetchSDKModelError(th);
                        MonitorAction monitorAction = dynatraceMonitorActionA;
                        monitorAction.d(fetchSDKModelError);
                        monitorAction.b();
                        BeautyVtoViewModelImpl beautyVtoViewModelImpl2 = this.f61897a;
                        beautyVtoViewModelImpl2.f61840b.c("BeautyVtoViewModelImpl", "[GetSkuSetList] onFailure", th);
                        MutableStateFlow mutableStateFlow = beautyVtoViewModelImpl2.H;
                        do {
                            value2 = mutableStateFlow.getValue();
                            ((Boolean) value2).getClass();
                        } while (!mutableStateFlow.i(value2, Boolean.FALSE));
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r2v0, types: [kotlin.collections.EmptyList] */
                    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.List] */
                    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.ArrayList] */
                    @Override // com.perfectcorp.perfectlib.SkuHandler.GetListCallback
                    public final void onSuccess(List list) {
                        ?? arrayList;
                        list.getClass();
                        BeautyVtoViewModelImpl beautyVtoViewModelImpl2 = this.f61897a;
                        Logger logger = beautyVtoViewModelImpl2.f61840b;
                        logger.getClass();
                        list.size();
                        logger.getClass();
                        List list2 = (List) beautyVtoViewModelImpl2.L.getValue();
                        if (list2 != null) {
                            List list3 = list2;
                            arrayList = new ArrayList(CollectionsKt.t(list3, 10));
                            Iterator it = list3.iterator();
                            while (it.hasNext()) {
                                arrayList.add(((TryOnProductUiModel) it.next()).f62184b);
                            }
                        } else {
                            arrayList = EmptyList.f71768b;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        Iterator it2 = list.iterator();
                        while (it2.hasNext()) {
                            List<SkuInfo> skus = ((ProductInfo) it2.next()).getSkus();
                            skus.getClass();
                            ArrayList arrayList3 = new ArrayList();
                            for (Object obj : skus) {
                                if (arrayList.contains(((SkuInfo) obj).getGuid())) {
                                    arrayList3.add(obj);
                                }
                            }
                            CollectionsKt.j(arrayList2, arrayList3);
                        }
                        beautyVtoViewModelImpl2.J.setValue(arrayList2);
                        beautyVtoViewModelImpl2.Ic();
                        dynatraceMonitorActionA.b();
                    }
                });
                return;
            }
            return;
        }
        MutableStateFlow mutableStateFlow = beautyVtoViewModelImpl.H;
        do {
            value = mutableStateFlow.getValue();
            ((Boolean) value).getClass();
        } while (!mutableStateFlow.i(value, Boolean.FALSE));
        BuildersKt.c(ViewModelKt.a(beautyVtoViewModelImpl), null, null, new BeautyVtoViewModelImpl$getMakeUpEffectList$2(null, beautyVtoViewModelImpl), 3);
    }

    public static final void Bc(BeautyVtoViewModelImpl beautyVtoViewModelImpl, Throwable th) {
        Object value;
        StringResourceUiModel.ResId resId;
        MutableStateFlow mutableStateFlow = beautyVtoViewModelImpl.l0;
        do {
            value = mutableStateFlow.getValue();
            ((Boolean) value).getClass();
        } while (!mutableStateFlow.i(value, Boolean.FALSE));
        if (th instanceof DetectFailedException) {
            resId = new StringResourceUiModel.ResId(R.string.shade_finder_no_face_detected, null, 2, null);
        } else if (th instanceof FaceRectOutOfBoundaryException) {
            resId = new StringResourceUiModel.ResId(R.string.shade_finder_face_out_of_boundary, null, 2, null);
        } else {
            resId = th instanceof MultiFaceNotSupportedException ? new StringResourceUiModel.ResId(R.string.shade_finder_multiface_not_detected, null, 2, null) : new StringResourceUiModel.ResId(R.string.notify_back_in_stock_banner_error_description, null, 2, null);
        }
        BuildersKt.c(ViewModelKt.a(beautyVtoViewModelImpl), null, null, new BeautyVtoViewModelImpl$handleFaceAnalysisError$2(beautyVtoViewModelImpl, resId, null), 3);
    }

    public static final void Cc(BeautyVtoViewModelImpl beautyVtoViewModelImpl, Throwable th, MonitorAction monitorAction) {
        if (th == null) {
            th = new Exception("Unknown error");
        }
        monitorAction.d(new BeautyVTOMonitoring.Error.RecommendedShadeFinderError(th));
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00a9, code lost:
    
        if (r8.a(com.vuitton.android.core.events.AppEvent.WishListUpdatedEvent.f43509a, r2) == r3) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00bd, code lost:
    
        if (r17.Kc(r4, r2) == r3) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object Dc(com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl r17, java.lang.String r18, kotlin.coroutines.jvm.internal.ContinuationImpl r19) {
        /*
            r0 = r17
            r1 = r19
            boolean r2 = r1 instanceof com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$removeFromWishlist$1
            if (r2 == 0) goto L17
            r2 = r1
            com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$removeFromWishlist$1 r2 = (com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$removeFromWishlist$1) r2
            int r3 = r2.f61938f
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L17
            int r3 = r3 - r4
            r2.f61938f = r3
            goto L1c
        L17:
            com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$removeFromWishlist$1 r2 = new com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$removeFromWishlist$1
            r2.<init>(r0, r1)
        L1c:
            java.lang.Object r1 = r2.d
            kotlin.coroutines.intrinsics.CoroutineSingletons r3 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r4 = r2.f61938f
            r5 = 0
            r6 = 4
            r7 = 3
            r8 = 1
            r9 = 2
            r10 = 0
            if (r4 == 0) goto L56
            if (r4 == r8) goto L4e
            if (r4 == r9) goto L44
            if (r4 == r7) goto L3d
            if (r4 != r6) goto L37
            kotlin.ResultKt.b(r1)
            goto Lc0
        L37:
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r0)
            return r10
        L3d:
            java.lang.Object r4 = r2.f61935b
            kotlin.ResultKt.b(r1)
            goto Lac
        L44:
            int r4 = r2.f61936c
            java.lang.Object r8 = r2.f61935b
            kotlin.ResultKt.b(r1)
            r1 = r4
            r4 = r8
            goto L9b
        L4e:
            kotlin.ResultKt.b(r1)
            kotlin.Result r1 = (kotlin.Result) r1
            java.lang.Object r1 = r1.f71708b
            goto L6e
        L56:
            kotlin.ResultKt.b(r1)
            com.vuitton.android.domain.usecase.wishlist.DeleteProductFromWishlistUseCase r1 = r0.u
            com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel$Companion r4 = com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel.f61763c
            r4.getClass()
            com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel.Companion.b(r18)
            r2.f61938f = r8
            r4 = r18
            java.lang.Object r1 = r1.a(r4, r2)
            if (r1 != r3) goto L6e
            goto Lbf
        L6e:
            kotlin.Result$Companion r4 = kotlin.Result.INSTANCE
            boolean r4 = r1 instanceof kotlin.Result.Failure
            if (r4 != 0) goto Lad
            r4 = r1
            kotlin.Unit r4 = (kotlin.Unit) r4
            kotlinx.coroutines.channels.BufferedChannel r4 = r0.h0
            com.vuitton.android.presentation.notification.NotificationBuilder r11 = r0.f61844h
            com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel$ResId r12 = new com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel$ResId
            r8 = 2132020731(0x7f140dfb, float:1.9679833E38)
            r12.<init>(r8, r10, r9, r10)
            r15 = 0
            r16 = 52
            r13 = 1
            r14 = 0
            com.vuitton.android.presentation.notification.NotificationUiModel r8 = com.vuitton.android.presentation.notification.NotificationBuilder.a(r11, r12, r13, r14, r15, r16)
            r2.f61935b = r1
            r2.f61936c = r5
            r2.f61938f = r9
            java.lang.Object r4 = r4.u(r8, r2)
            if (r4 != r3) goto L99
            goto Lbf
        L99:
            r4 = r1
            r1 = r5
        L9b:
            com.vuitton.android.core.events.LVEventSender r8 = r0.f61842e
            r2.f61935b = r4
            r2.f61936c = r1
            r2.f61938f = r7
            com.vuitton.android.core.events.AppEvent$WishListUpdatedEvent r1 = com.vuitton.android.core.events.AppEvent.WishListUpdatedEvent.f43509a
            java.lang.Object r1 = r8.a(r1, r2)
            if (r1 != r3) goto Lac
            goto Lbf
        Lac:
            r1 = r4
        Lad:
            java.lang.Throwable r4 = kotlin.Result.a(r1)
            if (r4 == 0) goto Lc0
            r2.f61935b = r1
            r2.f61936c = r5
            r2.f61938f = r6
            java.lang.Object r1 = r0.Kc(r4, r2)
            if (r1 != r3) goto Lc0
        Lbf:
            return r3
        Lc0:
            r0.a1()
            kotlin.Unit r0 = kotlin.Unit.f71739a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl.Dc(com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl, java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003b  */
    public static final void Ec(BeautyVtoViewModelImpl beautyVtoViewModelImpl, String str, boolean z) {
        String str2;
        List list;
        Object next;
        ProductTinyUiModel productTinyUiModel;
        String str3;
        ShadeFinderResponseUiModel shadeFinderResponseUiModel = (ShadeFinderResponseUiModel) beautyVtoViewModelImpl.m0.getValue();
        if (shadeFinderResponseUiModel == null || (list = shadeFinderResponseUiModel.f62174b) == null) {
            str2 = null;
        } else {
            Iterator it = list.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                } else {
                    next = it.next();
                    str3 = ((RecommendationUiModel) next).f62170a.d;
                    SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                }
            } while (!Intrinsics.c(str3, str));
            RecommendationUiModel recommendationUiModel = (RecommendationUiModel) next;
            if (recommendationUiModel == null || (productTinyUiModel = recommendationUiModel.f62170a) == null) {
                str2 = null;
            } else {
                str2 = productTinyUiModel.f51791b;
            }
        }
        if (str2 == null) {
            str2 = "";
        }
        ShadeFinderTracker shadeFinderTracker = beautyVtoViewModelImpl.g;
        if (z) {
            shadeFinderTracker.getClass();
            str.getClass();
            shadeFinderTracker.f62294a.a(ShadeFinderTrackingUiModelKt.a(new ShadeFinderTrackingUiModel.OnAddToCartFailureEvent(str, str2, null)));
        } else {
            shadeFinderTracker.getClass();
            str.getClass();
            shadeFinderTracker.f62294a.a(ShadeFinderTrackingUiModelKt.a(new ShadeFinderTrackingUiModel.OnAddToCartSuccessEvent(str, str2, null)));
        }
    }

    /* JADX WARN: Code duplicated, block: B:43:0x015a  */
    /* JADX WARN: Code duplicated, block: B:45:0x0162  */
    /* JADX WARN: Code duplicated, block: B:49:0x018e  */
    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x014f, code lost:
    
        if (r8.a(com.vuitton.android.core.events.AppEvent.WishListUpdatedEvent.f43509a, r4) == r5) goto L48;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object yc(com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl r23, java.util.List r24, kotlin.coroutines.jvm.internal.ContinuationImpl r25) {
        /*
            Method dump skipped, instruction units count: 418
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl.yc(com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl, java.util.List, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static final void zc(final BeautyVtoViewModelImpl beautyVtoViewModelImpl) {
        Object value;
        MutableStateFlow mutableStateFlow = beautyVtoViewModelImpl.H;
        do {
            value = mutableStateFlow.getValue();
            ((Boolean) value).getClass();
        } while (!mutableStateFlow.i(value, Boolean.TRUE));
        LookHandler lookHandler = beautyVtoViewModelImpl.E;
        if (lookHandler != null) {
            lookHandler.getList(LookType.MAKEUP, new LookHandler.GetListCallback() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$getLookList$2
                @Override // com.perfectcorp.perfectlib.LookHandler.GetListCallback
                public final void onFailure(Throwable th) {
                    Object value2;
                    th.getClass();
                    BeautyVtoViewModelImpl beautyVtoViewModelImpl2 = this.f61894a;
                    beautyVtoViewModelImpl2.f61840b.c("BeautyVtoViewModelImpl", "[getLookList] onFailure", th);
                    MutableStateFlow mutableStateFlow2 = beautyVtoViewModelImpl2.H;
                    do {
                        value2 = mutableStateFlow2.getValue();
                        ((Boolean) value2).getClass();
                    } while (!mutableStateFlow2.i(value2, Boolean.FALSE));
                }

                @Override // com.perfectcorp.perfectlib.LookHandler.GetListCallback
                public final void onSuccess(List list) {
                    Object value2;
                    list.getClass();
                    BeautyVtoViewModelImpl beautyVtoViewModelImpl2 = this.f61894a;
                    beautyVtoViewModelImpl2.f61840b.getClass();
                    MutableStateFlow mutableStateFlow2 = beautyVtoViewModelImpl2.W;
                    do {
                        value2 = mutableStateFlow2.getValue();
                    } while (!mutableStateFlow2.i(value2, list));
                    beautyVtoViewModelImpl2.Jc();
                }
            });
        }
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final void A1(float f2) {
        MutableStateFlow mutableStateFlow;
        Object value;
        do {
            mutableStateFlow = this.Y;
            value = mutableStateFlow.getValue();
            ((Number) value).floatValue();
        } while (!mutableStateFlow.i(value, Float.valueOf(f2)));
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final void A2(Bitmap bitmap, String str) {
        TryOnProductUiModel tryOnProductUiModel = (TryOnProductUiModel) this.R.getValue();
        if (tryOnProductUiModel != null) {
            Mc(new BeautyVtoTrackingUiModel.OnTakePictureClickedEvent(Gc(), Hc(tryOnProductUiModel), tryOnProductUiModel.f62185c, (BeautyVtoMode) this.U.getValue()));
        }
        BuildersKt.c(ViewModelKt.a(this), null, null, new BeautyVtoViewModelImpl$onPictureTaken$2(this, bitmap, str, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final void E6() {
        MutableStateFlow mutableStateFlow;
        Object value;
        MutableStateFlow mutableStateFlow2;
        Object value2;
        Object value3;
        MutableStateFlow mutableStateFlow3;
        Object value4;
        MutableStateFlow mutableStateFlow4;
        Object value5;
        MutableStateFlow mutableStateFlow5;
        Object value6;
        Object value7;
        TryOnProductUiModel tryOnProductUiModel = (TryOnProductUiModel) this.R.getValue();
        MutableStateFlow mutableStateFlow6 = this.U;
        if (tryOnProductUiModel != null) {
            List listGc = Gc();
            String str = tryOnProductUiModel.f62183a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            str.getClass();
            Mc(new BeautyVtoTrackingUiModel.OnCompareClickedEvent(listGc, str, tryOnProductUiModel.f62185c, (BeautyVtoMode) mutableStateFlow6.getValue(), null));
        }
        do {
            mutableStateFlow = this.c0;
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.i(value, null));
        do {
            mutableStateFlow2 = this.d0;
            value2 = mutableStateFlow2.getValue();
        } while (!mutableStateFlow2.i(value2, null));
        if (mutableStateFlow6.getValue() != BeautyVtoMode.DUAL) {
            do {
                value7 = mutableStateFlow6.getValue();
            } while (!mutableStateFlow6.i(value7, BeautyVtoMode.DUAL));
        } else {
            do {
                value3 = mutableStateFlow6.getValue();
            } while (!mutableStateFlow6.i(value3, BeautyVtoMode.SIMPLE));
            do {
                mutableStateFlow3 = this.T;
                value4 = mutableStateFlow3.getValue();
            } while (!mutableStateFlow3.i(value4, this.G));
            do {
                mutableStateFlow4 = this.b0;
                value5 = mutableStateFlow4.getValue();
            } while (!mutableStateFlow4.i(value5, null));
            do {
                mutableStateFlow5 = this.Y;
                value6 = mutableStateFlow5.getValue();
                ((Number) value6).floatValue();
            } while (!mutableStateFlow5.i(value6, Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM)));
        }
        a1();
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final void E9(final Bitmap bitmap) {
        MutableStateFlow mutableStateFlow;
        Object value;
        do {
            mutableStateFlow = this.l0;
            value = mutableStateFlow.getValue();
            ((Boolean) value).getClass();
        } while (!mutableStateFlow.i(value, Boolean.TRUE));
        final DynatraceMonitorAction dynatraceMonitorActionA = this.f61841c.a(this.C, BeautyVTOMonitoring.Action.RecommendedShadeFinder.f48840a);
        FaceAttributeAnalyzer.create(new FaceAttributeAnalyzer.CreateCallback() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$faceAnalysis$2
            @Override // com.perfectcorp.perfectlib.FaceAttributeAnalyzer.CreateCallback
            public final void onFailure(Throwable th) {
                BeautyVtoViewModelImpl beautyVtoViewModelImpl = this;
                beautyVtoViewModelImpl.f61840b.c("BeautyVtoViewModelImpl", "Create face attribute analyzer failed.", th);
                BeautyVtoViewModelImpl.Bc(beautyVtoViewModelImpl, th);
                BeautyVtoViewModelImpl.Cc(beautyVtoViewModelImpl, th, dynatraceMonitorActionA);
            }

            @Override // com.perfectcorp.perfectlib.FaceAttributeAnalyzer.CreateCallback
            public final void onSuccess(final FaceAttributeAnalyzer faceAttributeAnalyzer) {
                faceAttributeAnalyzer.getClass();
                final BeautyVtoViewModelImpl beautyVtoViewModelImpl = this;
                final MonitorAction monitorAction = dynatraceMonitorActionA;
                final Bitmap bitmap2 = bitmap;
                faceAttributeAnalyzer.setImage(bitmap2, new FaceAttributeAnalyzer.SetImageCallback() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$faceAnalysis$2$onSuccess$1
                    @Override // com.perfectcorp.perfectlib.FaceAttributeAnalyzer.SetImageCallback
                    public final void onFailure(Throwable th) {
                        BeautyVtoViewModelImpl beautyVtoViewModelImpl2 = beautyVtoViewModelImpl;
                        beautyVtoViewModelImpl2.f61840b.c("BeautyVtoViewModelImpl", "Set image failed.", th);
                        BeautyVtoViewModelImpl.Bc(beautyVtoViewModelImpl2, th);
                        BeautyVtoViewModelImpl.Cc(beautyVtoViewModelImpl2, th, monitorAction);
                    }

                    @Override // com.perfectcorp.perfectlib.FaceAttributeAnalyzer.SetImageCallback
                    public final void onSuccess() {
                        FaceAttributeAnalyzer faceAttributeAnalyzer2 = faceAttributeAnalyzer;
                        Set<String> availableFeatures = faceAttributeAnalyzer2.getAvailableFeatures();
                        final Bitmap bitmap3 = bitmap2;
                        final MonitorAction monitorAction2 = monitorAction;
                        final BeautyVtoViewModelImpl beautyVtoViewModelImpl2 = beautyVtoViewModelImpl;
                        faceAttributeAnalyzer2.analyze(availableFeatures, new FaceAttributeAnalyzer.AnalyzeCallback() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$faceAnalysis$2$onSuccess$1$onSuccess$1
                            @Override // com.perfectcorp.perfectlib.FaceAttributeAnalyzer.AnalyzeCallback
                            public final void onFailure(Throwable th) {
                                BeautyVtoViewModelImpl beautyVtoViewModelImpl3 = beautyVtoViewModelImpl2;
                                beautyVtoViewModelImpl3.f61840b.c("BeautyVtoViewModelImpl", "Analyze image failed.", th);
                                BeautyVtoViewModelImpl.Bc(beautyVtoViewModelImpl3, th);
                                BeautyVtoViewModelImpl.Cc(beautyVtoViewModelImpl3, th, monitorAction2);
                            }

                            @Override // com.perfectcorp.perfectlib.FaceAttributeAnalyzer.AnalyzeCallback
                            public final void onSuccess(FaceAnalysisData faceAnalysisData) {
                                BeautyVtoViewModelImpl beautyVtoViewModelImpl3 = beautyVtoViewModelImpl2;
                                beautyVtoViewModelImpl3.f61840b.getClass();
                                if (faceAnalysisData != null) {
                                    BuildersKt.c(ViewModelKt.a(beautyVtoViewModelImpl3), null, null, new BeautyVtoViewModelImpl$handleFaceAnalysisResult$1(beautyVtoViewModelImpl3, faceAnalysisData, bitmap3, monitorAction2, null), 3);
                                } else {
                                    BeautyVtoViewModelImpl.Cc(beautyVtoViewModelImpl3, new Exception("No face analysis data"), monitorAction2);
                                }
                            }
                        });
                    }
                });
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final void Ea() {
        String str;
        BeautyProductTypeUiModel beautyProductTypeUiModel;
        String str2;
        MutableStateFlow mutableStateFlow = this.R;
        TryOnProductUiModel tryOnProductUiModel = (TryOnProductUiModel) mutableStateFlow.getValue();
        if (tryOnProductUiModel != null) {
            str = tryOnProductUiModel.f62183a;
        } else {
            SkuIdUiModel.f61763c.getClass();
            str = SkuIdUiModel.d;
        }
        TryOnProductUiModel tryOnProductUiModel2 = (TryOnProductUiModel) mutableStateFlow.getValue();
        if (tryOnProductUiModel2 == null || (beautyProductTypeUiModel = tryOnProductUiModel2.f62185c) == null) {
            beautyProductTypeUiModel = BeautyProductTypeUiModel.NONE;
        }
        LookUiModel lookUiModel = (LookUiModel) this.V.getValue();
        if (lookUiModel == null || (str2 = lookUiModel.f62165a) == null) {
            str2 = "";
        }
        Mc(new BeautyVtoTrackingUiModel.OnHowToApplyClickedEvent(str, beautyProductTypeUiModel, str2, null));
        BuildersKt.c(ViewModelKt.a(this), null, null, new BeautyVtoViewModelImpl$openTutorial$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final void F0() {
        TryOnProductUiModel tryOnProductUiModel = (TryOnProductUiModel) this.R.getValue();
        if (tryOnProductUiModel != null) {
            BuildersKt.c(ViewModelKt.a(this), null, null, new BeautyVtoViewModelImpl$addOrRemoveFromWishlist$1$1(this, tryOnProductUiModel.f62183a, null), 3);
        }
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final void F3() {
        TryOnProductUiModel tryOnProductUiModel;
        MutableStateFlow mutableStateFlow = this.R;
        TryOnProductUiModel tryOnProductUiModel2 = (TryOnProductUiModel) mutableStateFlow.getValue();
        MutableStateFlow mutableStateFlow2 = this.U;
        if (tryOnProductUiModel2 != null) {
            Mc(new BeautyVtoTrackingUiModel.OnAddToCardClickedEvent(Gc(), Hc(tryOnProductUiModel2), tryOnProductUiModel2.f62185c, (BeautyVtoMode) mutableStateFlow2.getValue()));
        }
        ListBuilder listBuilderV = CollectionsKt.v();
        TryOnProductUiModel tryOnProductUiModel3 = (TryOnProductUiModel) mutableStateFlow.getValue();
        if (tryOnProductUiModel3 != null) {
            String str = tryOnProductUiModel3.f62183a;
            SkuIdUiModel skuIdUiModel = new SkuIdUiModel(str);
            if (StringsKt.w(str)) {
                skuIdUiModel = null;
            }
            String str2 = skuIdUiModel != null ? skuIdUiModel.f61764b : null;
            if (str2 != null) {
                listBuilderV.add(new SkuIdUiModel(str2));
            }
        }
        int i2 = WhenMappings.f61849b[((BeautyVtoMode) mutableStateFlow2.getValue()).ordinal()];
        if (i2 == 1) {
            TryOnProductUiModel tryOnProductUiModel4 = (TryOnProductUiModel) this.S.getValue();
            if (tryOnProductUiModel4 != null) {
                String str3 = tryOnProductUiModel4.f62183a;
                SkuIdUiModel skuIdUiModel2 = new SkuIdUiModel(str3);
                if (StringsKt.w(str3)) {
                    skuIdUiModel2 = null;
                }
                String str4 = skuIdUiModel2 != null ? skuIdUiModel2.f61764b : null;
                if (str4 != null) {
                    listBuilderV.add(new SkuIdUiModel(str4));
                }
            }
        } else if (i2 == 2 && (tryOnProductUiModel = (TryOnProductUiModel) this.T.getValue()) != null) {
            String str5 = tryOnProductUiModel.f62183a;
            SkuIdUiModel skuIdUiModel3 = new SkuIdUiModel(str5);
            if (StringsKt.w(str5)) {
                skuIdUiModel3 = null;
            }
            String str6 = skuIdUiModel3 != null ? skuIdUiModel3.f61764b : null;
            if (str6 != null) {
                listBuilderV.add(new SkuIdUiModel(str6));
            }
        }
        ListBuilder listBuilderR = CollectionsKt.r(listBuilderV);
        if (listBuilderR.getF74615i() > 1) {
            BuildersKt.c(ViewModelKt.a(this), null, null, new BeautyVtoViewModelImpl$checkAvailabilityForSkus$1(this, listBuilderR, null), 3);
        } else {
            if (listBuilderR.isEmpty()) {
                return;
            }
            y6(listBuilderR);
        }
    }

    public final BeautyProductTypeUiModel Fc() {
        VirtualTryOnUiModel virtualTryOnUiModel;
        BeautyProductTypeUiModel beautyProductTypeUiModel;
        List list;
        Object next;
        TryOnProductUiModel tryOnProductUiModel;
        BeautyProductTypeUiModel beautyProductTypeUiModel2;
        if (!this.y) {
            ProductUiModel productUiModel = this.x;
            return (productUiModel == null || (virtualTryOnUiModel = productUiModel.r) == null || (beautyProductTypeUiModel = virtualTryOnUiModel.f62208b) == null) ? BeautyProductTypeUiModel.NONE : beautyProductTypeUiModel;
        }
        ShadeFinderResponseUiModel shadeFinderResponseUiModel = (ShadeFinderResponseUiModel) this.m0.getValue();
        if (shadeFinderResponseUiModel != null && (list = shadeFinderResponseUiModel.f62174b) != null) {
            Iterator it = list.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (((RecommendationUiModel) next).f62172c == null);
            RecommendationUiModel recommendationUiModel = (RecommendationUiModel) next;
            if (recommendationUiModel != null && (tryOnProductUiModel = recommendationUiModel.f62172c) != null && (beautyProductTypeUiModel2 = tryOnProductUiModel.f62185c) != null) {
                return beautyProductTypeUiModel2;
            }
        }
        return BeautyProductTypeUiModel.NONE;
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final void Ga() {
        MutableStateFlow mutableStateFlow;
        Object value;
        List list = (List) this.L.getValue();
        if (list != null) {
            List list2 = list;
            boolean z = list2 instanceof Collection;
            if (!z || !list2.isEmpty()) {
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    List list3 = ((TryOnProductUiModel) it.next()).f62188h;
                    if (list3 == null || list3.isEmpty()) {
                        do {
                            mutableStateFlow = this.H;
                            value = mutableStateFlow.getValue();
                            ((Boolean) value).getClass();
                        } while (!mutableStateFlow.i(value, Boolean.TRUE));
                        final SkuHandler skuHandler = SkuHandler.getInstance();
                        this.D = skuHandler;
                        if (skuHandler == null) {
                            break;
                        }
                        skuHandler.checkNeedToUpdate(new SkuHandler.CheckNeedToUpdateCallback() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$initSkuHandler$2$1
                            @Override // com.perfectcorp.perfectlib.SkuHandler.CheckNeedToUpdateCallback
                            public final void onFailure(Throwable th) {
                                Object value2;
                                th.getClass();
                                BeautyVtoViewModelImpl beautyVtoViewModelImpl = this.f61915a;
                                beautyVtoViewModelImpl.f61840b.c("BeautyVtoViewModelImpl", "[checkNeedToUpdate] onFailure", th);
                                MutableStateFlow mutableStateFlow2 = beautyVtoViewModelImpl.H;
                                do {
                                    value2 = mutableStateFlow2.getValue();
                                    ((Boolean) value2).getClass();
                                } while (!mutableStateFlow2.i(value2, Boolean.FALSE));
                            }

                            @Override // com.perfectcorp.perfectlib.SkuHandler.CheckNeedToUpdateCallback
                            public final void onSuccess(boolean z2) {
                                final BeautyVtoViewModelImpl beautyVtoViewModelImpl = this.f61915a;
                                beautyVtoViewModelImpl.f61840b.getClass();
                                if (!z2) {
                                    BeautyVtoViewModelImpl.Ac(beautyVtoViewModelImpl);
                                } else {
                                    skuHandler.syncServer(new SkuHandler.SyncServerCallback() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$initSkuHandler$2$1$onSuccess$1
                                        @Override // com.perfectcorp.perfectlib.SkuHandler.SyncServerCallback
                                        public final void onFailure(Throwable th) {
                                            Object value2;
                                            th.getClass();
                                            BeautyVtoViewModelImpl beautyVtoViewModelImpl2 = beautyVtoViewModelImpl;
                                            beautyVtoViewModelImpl2.f61840b.c("BeautyVtoViewModelImpl", "[syncServer] onFailure", th);
                                            BuildersKt.c(ViewModelKt.a(beautyVtoViewModelImpl2), null, null, new BeautyVtoViewModelImpl$initSkuHandler$2$1$onSuccess$1$onFailure$1(null, beautyVtoViewModelImpl2), 3);
                                            MutableStateFlow mutableStateFlow2 = beautyVtoViewModelImpl2.H;
                                            do {
                                                value2 = mutableStateFlow2.getValue();
                                                ((Boolean) value2).getClass();
                                            } while (!mutableStateFlow2.i(value2, Boolean.FALSE));
                                        }

                                        @Override // com.perfectcorp.perfectlib.SkuHandler.SyncServerCallback
                                        public final void onSuccess() {
                                            BeautyVtoViewModelImpl beautyVtoViewModelImpl2 = beautyVtoViewModelImpl;
                                            beautyVtoViewModelImpl2.f61840b.getClass();
                                            BeautyVtoViewModelImpl.Ac(beautyVtoViewModelImpl2);
                                        }

                                        @Override // com.perfectcorp.perfectlib.SkuHandler.SyncServerCallback
                                        public final void progress(double d) {
                                            beautyVtoViewModelImpl.f61840b.getClass();
                                        }
                                    });
                                }
                            }
                        });
                        break;
                    }
                }
            }
            if (z && list2.isEmpty()) {
                return;
            }
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                if (CollectionExtKt.a(((TryOnProductUiModel) it2.next()).f62188h)) {
                    Lc();
                    return;
                }
            }
        }
    }

    public final List Gc() {
        List list;
        if (!this.y) {
            ProductUiModel productUiModel = this.x;
            String str = productUiModel != null ? productUiModel.f61735b : null;
            return CollectionsKt.Q(str != null ? new SkuIdUiModel(str) : null);
        }
        ShadeFinderResponseUiModel shadeFinderResponseUiModel = (ShadeFinderResponseUiModel) this.m0.getValue();
        if (shadeFinderResponseUiModel == null || (list = shadeFinderResponseUiModel.f62174b) == null) {
            return EmptyList.f71768b;
        }
        List list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(new SkuIdUiModel(((RecommendationUiModel) it.next()).f62170a.d));
        }
        return arrayList;
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final void H7(TryOnProductUiModel tryOnProductUiModel) {
        MutableStateFlow mutableStateFlow;
        Object value;
        MutableStateFlow mutableStateFlow2;
        Object value2;
        MutableStateFlow mutableStateFlow3;
        Object value3;
        SkuInfo skuInfo;
        Object next;
        String guid;
        TryOnProductUiModel tryOnProductUiModel2;
        if (tryOnProductUiModel != null) {
            Nc(tryOnProductUiModel);
        }
        do {
            mutableStateFlow = this.S;
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.i(value, null));
        do {
            mutableStateFlow2 = this.T;
            value2 = mutableStateFlow2.getValue();
        } while (!mutableStateFlow2.i(value2, tryOnProductUiModel == null ? this.G : tryOnProductUiModel));
        do {
            mutableStateFlow3 = this.b0;
            value3 = mutableStateFlow3.getValue();
            List list = (List) this.J.getValue();
            if (list != null) {
                Iterator it = list.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    } else {
                        next = it.next();
                        guid = ((SkuInfo) next).getGuid();
                        tryOnProductUiModel2 = (TryOnProductUiModel) mutableStateFlow2.getValue();
                    }
                } while (!Intrinsics.c(guid, tryOnProductUiModel2 != null ? tryOnProductUiModel2.f62184b : null));
                skuInfo = (SkuInfo) next;
            } else {
                skuInfo = null;
            }
        } while (!mutableStateFlow3.i(value3, skuInfo));
        a1();
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final void Hb() {
        TryOnProductUiModel tryOnProductUiModel = (TryOnProductUiModel) this.R.getValue();
        if (tryOnProductUiModel != null) {
            Mc(new BeautyVtoTrackingUiModel.OnDiscardPhotoClickedEvent(Gc(), Hc(tryOnProductUiModel), Fc(), (BeautyVtoMode) this.U.getValue()));
        }
    }

    public final List Hc(TryOnProductUiModel tryOnProductUiModel) {
        String str;
        String str2;
        String str3 = tryOnProductUiModel.f62183a;
        int i2 = WhenMappings.f61849b[((BeautyVtoMode) this.U.getValue()).ordinal()];
        if (i2 == 1) {
            TryOnProductUiModel tryOnProductUiModel2 = (TryOnProductUiModel) this.S.getValue();
            if (tryOnProductUiModel2 == null || (str = tryOnProductUiModel2.f62183a) == null) {
                str = null;
            } else {
                SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            }
            SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
            str3.getClass();
            return ArraysKt.v(new SkuIdUiModel[]{new SkuIdUiModel(str3), str != null ? new SkuIdUiModel(str) : null});
        }
        if (i2 != 2) {
            if (i2 != 3) {
                v40.g();
                return null;
            }
            SkuIdUiModel.Companion companion3 = SkuIdUiModel.f61763c;
            str3.getClass();
            return CollectionsKt.O(new SkuIdUiModel(str3));
        }
        TryOnProductUiModel tryOnProductUiModel3 = (TryOnProductUiModel) this.T.getValue();
        if (tryOnProductUiModel3 == null || (str2 = tryOnProductUiModel3.f62183a) == null) {
            str2 = null;
        } else {
            SkuIdUiModel.Companion companion4 = SkuIdUiModel.f61763c;
        }
        SkuIdUiModel.Companion companion5 = SkuIdUiModel.f61763c;
        str3.getClass();
        return ArraysKt.v(new SkuIdUiModel[]{new SkuIdUiModel(str3), str2 != null ? new SkuIdUiModel(str2) : null});
    }

    public final void Ic() {
        MutableStateFlow mutableStateFlow;
        Object value;
        MutableStateFlow mutableStateFlow2;
        TryOnProductUiModel tryOnProductUiModel;
        MutableStateFlow mutableStateFlow3;
        Object value2;
        SkuInfo skuInfo;
        Object next;
        String guid;
        TryOnProductUiModel tryOnProductUiModel2;
        MutableStateFlow mutableStateFlow4;
        Object value3;
        LookInfo lookInfo;
        Object next2;
        String guid2;
        LookUiModel lookUiModel;
        List list;
        do {
            mutableStateFlow = this.V;
            value = mutableStateFlow.getValue();
            mutableStateFlow2 = this.R;
            tryOnProductUiModel = (TryOnProductUiModel) mutableStateFlow2.getValue();
        } while (!mutableStateFlow.i(value, (tryOnProductUiModel == null || (list = tryOnProductUiModel.f62188h) == null) ? null : (LookUiModel) CollectionsKt.firstOrNull(list)));
        TryOnProductUiModel tryOnProductUiModel3 = (TryOnProductUiModel) mutableStateFlow2.getValue();
        if (CollectionExtKt.a(tryOnProductUiModel3 != null ? tryOnProductUiModel3.f62188h : null)) {
            do {
                mutableStateFlow4 = this.a0;
                value3 = mutableStateFlow4.getValue();
                List list2 = (List) this.W.getValue();
                if (list2 != null) {
                    Iterator it = list2.iterator();
                    do {
                        if (!it.hasNext()) {
                            next2 = null;
                            break;
                        } else {
                            next2 = it.next();
                            guid2 = ((LookInfo) next2).getGuid();
                            lookUiModel = (LookUiModel) mutableStateFlow.getValue();
                        }
                    } while (!Intrinsics.c(guid2, lookUiModel != null ? lookUiModel.f62166b : null));
                    lookInfo = (LookInfo) next2;
                } else {
                    lookInfo = null;
                }
            } while (!mutableStateFlow4.i(value3, lookInfo));
            return;
        }
        do {
            mutableStateFlow3 = this.Z;
            value2 = mutableStateFlow3.getValue();
            List list3 = (List) this.J.getValue();
            if (list3 != null) {
                Iterator it2 = list3.iterator();
                do {
                    if (!it2.hasNext()) {
                        next = null;
                        break;
                    } else {
                        next = it2.next();
                        guid = ((SkuInfo) next).getGuid();
                        tryOnProductUiModel2 = (TryOnProductUiModel) mutableStateFlow2.getValue();
                    }
                } while (!Intrinsics.c(guid, tryOnProductUiModel2 != null ? tryOnProductUiModel2.f62184b : null));
                skuInfo = (SkuInfo) next;
            } else {
                skuInfo = null;
            }
        } while (!mutableStateFlow3.i(value2, skuInfo));
    }

    public final void Jc() {
        MutableStateFlow mutableStateFlow;
        Object value;
        SkuInfo skuInfo;
        Object next;
        MutableStateFlow mutableStateFlow2;
        Object value2;
        LookInfo lookInfo;
        Object next2;
        LookUiModel lookUiModel;
        TryOnProductUiModel tryOnProductUiModel = (TryOnProductUiModel) this.S.getValue();
        if (tryOnProductUiModel == null) {
            return;
        }
        List list = tryOnProductUiModel.f62188h;
        if (CollectionExtKt.a(list)) {
            do {
                mutableStateFlow2 = this.d0;
                value2 = mutableStateFlow2.getValue();
                List list2 = (List) this.W.getValue();
                if (list2 != null) {
                    Iterator it = list2.iterator();
                    do {
                        if (!it.hasNext()) {
                            next2 = null;
                            break;
                        }
                        next2 = it.next();
                    } while (!Intrinsics.c(((LookInfo) next2).getGuid(), (list == null || (lookUiModel = (LookUiModel) CollectionsKt.firstOrNull(list)) == null) ? null : lookUiModel.f62166b));
                    lookInfo = (LookInfo) next2;
                } else {
                    lookInfo = null;
                }
            } while (!mutableStateFlow2.i(value2, lookInfo));
            return;
        }
        do {
            mutableStateFlow = this.c0;
            value = mutableStateFlow.getValue();
            List list3 = (List) this.K.getValue();
            if (list3 != null) {
                Iterator it2 = list3.iterator();
                do {
                    if (!it2.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it2.next();
                } while (!Intrinsics.c(((SkuInfo) next).getGuid(), tryOnProductUiModel.f62184b));
                skuInfo = (SkuInfo) next;
            } else {
                skuInfo = null;
            }
        } while (!mutableStateFlow.i(value, skuInfo));
    }

    public final Object Kc(Throwable th, ContinuationImpl continuationImpl) {
        StringResourceUiModel.ResId resId;
        StringResourceUiModel.Text text;
        Response response;
        StringResourceUiModel stringResourceUiModel;
        if (th instanceof WishlistError) {
            String strJ = StringKtExtKt.j(((WishlistError) th).f66229b);
            if (strJ != null) {
                text = new StringResourceUiModel.Text(strJ);
                stringResourceUiModel = text;
            } else {
                resId = new StringResourceUiModel.ResId(R.string.generic_api_error_message, null, 2, null);
                stringResourceUiModel = resId;
            }
        } else {
            Throwable cause = th.getCause();
            HttpException httpException = cause instanceof HttpException ? (HttpException) cause : null;
            String strA = WishlistHelper.a((httpException == null || (response = httpException.d) == null) ? null : response.f79451c);
            if (strA != null) {
                text = new StringResourceUiModel.Text(strA);
                stringResourceUiModel = text;
            } else {
                resId = new StringResourceUiModel.ResId(R.string.error_generic, null, 2, null);
                stringResourceUiModel = resId;
            }
        }
        Object objU = this.h0.u(NotificationBuilder.a(this.f61844h, stringResourceUiModel, th instanceof WishlistError.AlreadyInWishlist, null, null, 60), continuationImpl);
        return objU == CoroutineSingletons.COROUTINE_SUSPENDED ? objU : Unit.f71739a;
    }

    public final void Lc() {
        MutableStateFlow mutableStateFlow;
        Object value;
        do {
            mutableStateFlow = this.H;
            value = mutableStateFlow.getValue();
            ((Boolean) value).getClass();
        } while (!mutableStateFlow.i(value, Boolean.TRUE));
        final LookHandler lookHandler = LookHandler.getInstance();
        this.E = lookHandler;
        if (lookHandler != null) {
            lookHandler.checkNeedToUpdate(LookType.MAKEUP, new LookHandler.CheckNeedToUpdateCallback() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$initLookHandler$2$1
                @Override // com.perfectcorp.perfectlib.LookHandler.CheckNeedToUpdateCallback
                public final void onFailure(Throwable th) {
                    Object value2;
                    th.getClass();
                    BeautyVtoViewModelImpl beautyVtoViewModelImpl = this.f61910a;
                    beautyVtoViewModelImpl.f61840b.c("BeautyVtoViewModelImpl", "[checkNeedToUpdate] onFailure", th);
                    MutableStateFlow mutableStateFlow2 = beautyVtoViewModelImpl.H;
                    do {
                        value2 = mutableStateFlow2.getValue();
                        ((Boolean) value2).getClass();
                    } while (!mutableStateFlow2.i(value2, Boolean.FALSE));
                }

                @Override // com.perfectcorp.perfectlib.LookHandler.CheckNeedToUpdateCallback
                public final void onSuccess(boolean z) {
                    final BeautyVtoViewModelImpl beautyVtoViewModelImpl = this.f61910a;
                    beautyVtoViewModelImpl.f61840b.getClass();
                    if (!z) {
                        BeautyVtoViewModelImpl.zc(beautyVtoViewModelImpl);
                        return;
                    }
                    lookHandler.syncServer(LookType.MAKEUP, new LookHandler.SyncServerCallback() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$initLookHandler$2$1$onSuccess$1
                        @Override // com.perfectcorp.perfectlib.LookHandler.SyncServerCallback
                        public final void onFailure(Throwable th) {
                            th.getClass();
                            BeautyVtoViewModelImpl beautyVtoViewModelImpl2 = beautyVtoViewModelImpl;
                            beautyVtoViewModelImpl2.f61840b.c("BeautyVtoViewModelImpl", "[syncServer] onFailure", th);
                            BuildersKt.c(ViewModelKt.a(beautyVtoViewModelImpl2), null, null, new BeautyVtoViewModelImpl$initLookHandler$2$1$onSuccess$1$onFailure$1(null, beautyVtoViewModelImpl2), 3);
                        }

                        @Override // com.perfectcorp.perfectlib.LookHandler.SyncServerCallback
                        public final void onSuccess() {
                            BeautyVtoViewModelImpl beautyVtoViewModelImpl2 = beautyVtoViewModelImpl;
                            beautyVtoViewModelImpl2.f61840b.getClass();
                            BeautyVtoViewModelImpl.zc(beautyVtoViewModelImpl2);
                        }
                    });
                }
            });
        }
    }

    public final void Mc(BeautyVtoTrackingUiModel beautyVtoTrackingUiModel) {
        Hit.EventHit.DefaultEventHit defaultEventHit;
        Hit.EventHit.DefaultEventHit defaultEventHit2;
        Hit defaultEventHit3;
        Hit.ScreenHit.DefaultScreenHit defaultScreenHit;
        if (beautyVtoTrackingUiModel instanceof BeautyVtoTrackingUiModel.VtoScreen) {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            BeautyVtoTrackingUiModel.VtoScreen vtoScreen = (BeautyVtoTrackingUiModel.VtoScreen) beautyVtoTrackingUiModel;
            List list = vtoScreen.f62292a;
            companion.getClass();
            defaultEventHit3 = new Hit.ScreenHit.DefaultScreenHit(null, "vto", "vto_camera", "vto", CollectionsKt.P(new AdditionalProperty.ProductSku(SkuIdUiModel.Companion.a(list)), new AdditionalProperty.ContentType(TryOnProductUiModelKt.a(vtoScreen.f62293b))), 1, null);
        } else {
            if (beautyVtoTrackingUiModel instanceof BeautyVtoTrackingUiModel.VtoHowToApplyScreen) {
                SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
                BeautyVtoTrackingUiModel.VtoHowToApplyScreen vtoHowToApplyScreen = (BeautyVtoTrackingUiModel.VtoHowToApplyScreen) beautyVtoTrackingUiModel;
                List listO = CollectionsKt.O(new SkuIdUiModel(vtoHowToApplyScreen.f62288a));
                companion2.getClass();
                defaultScreenHit = new Hit.ScreenHit.DefaultScreenHit(null, "vto_how_to_apply", "vto_how_to_apply", "vto", CollectionsKt.P(new AdditionalProperty.VtoSkus(SkuIdUiModel.Companion.a(listO)), new AdditionalProperty.ContentType(TryOnProductUiModelKt.a(vtoHowToApplyScreen.f62289b)), new AdditionalProperty.ContentId(vtoHowToApplyScreen.f62290c)), 1, null);
            } else if (beautyVtoTrackingUiModel instanceof BeautyVtoTrackingUiModel.VtoMultipleProductBottomSheetScreen) {
                SkuIdUiModel.Companion companion3 = SkuIdUiModel.f61763c;
                List list2 = ((BeautyVtoTrackingUiModel.VtoMultipleProductBottomSheetScreen) beautyVtoTrackingUiModel).f62291a;
                companion3.getClass();
                defaultScreenHit = new Hit.ScreenHit.DefaultScreenHit(null, "multiple_product_bottom_sheet_vto", "product_sheet_multiple_product_bottom_sheet", "vto", CollectionsKt.O(new AdditionalProperty.ProductSku(SkuIdUiModel.Companion.a(list2))), 1, null);
            } else {
                boolean z = beautyVtoTrackingUiModel instanceof BeautyVtoTrackingUiModel.OnCompareClickedEvent;
                HitType.Vto vto = HitType.Vto.f66525a;
                if (z) {
                    SkuIdUiModel.Companion companion4 = SkuIdUiModel.f61763c;
                    BeautyVtoTrackingUiModel.OnCompareClickedEvent onCompareClickedEvent = (BeautyVtoTrackingUiModel.OnCompareClickedEvent) beautyVtoTrackingUiModel;
                    List list3 = onCompareClickedEvent.f62237a;
                    companion4.getClass();
                    defaultEventHit = new Hit.EventHit.DefaultEventHit(vto, "vto", "compare_intention", "vto", "click", null, CollectionsKt.P(new AdditionalProperty.ProductSku(SkuIdUiModel.Companion.a(list3)), new AdditionalProperty.VtoSkus(SkuIdUiModel.Companion.a(CollectionsKt.O(new SkuIdUiModel(onCompareClickedEvent.f62238b)))), new AdditionalProperty.ContentId(BeautyVtoViewStateKt.a(onCompareClickedEvent.d)), new AdditionalProperty.ContentType(TryOnProductUiModelKt.a(onCompareClickedEvent.f62239c))), 32, null);
                } else if (beautyVtoTrackingUiModel instanceof BeautyVtoTrackingUiModel.OnStackingClickedEvent) {
                    SkuIdUiModel.Companion companion5 = SkuIdUiModel.f61763c;
                    BeautyVtoTrackingUiModel.OnStackingClickedEvent onStackingClickedEvent = (BeautyVtoTrackingUiModel.OnStackingClickedEvent) beautyVtoTrackingUiModel;
                    List list4 = onStackingClickedEvent.f62277a;
                    companion5.getClass();
                    defaultEventHit = new Hit.EventHit.DefaultEventHit(vto, "vto", "stacking_intention", "vto", "click", null, CollectionsKt.P(new AdditionalProperty.ProductSku(SkuIdUiModel.Companion.a(list4)), new AdditionalProperty.VtoSkus(SkuIdUiModel.Companion.a(CollectionsKt.O(new SkuIdUiModel(onStackingClickedEvent.f62278b)))), new AdditionalProperty.ContentId(BeautyVtoViewStateKt.a(onStackingClickedEvent.d)), new AdditionalProperty.ContentType(TryOnProductUiModelKt.a(onStackingClickedEvent.f62279c))), 32, null);
                } else if (beautyVtoTrackingUiModel instanceof BeautyVtoTrackingUiModel.OnTakePictureClickedEvent) {
                    SkuIdUiModel.Companion companion6 = SkuIdUiModel.f61763c;
                    BeautyVtoTrackingUiModel.OnTakePictureClickedEvent onTakePictureClickedEvent = (BeautyVtoTrackingUiModel.OnTakePictureClickedEvent) beautyVtoTrackingUiModel;
                    List list5 = onTakePictureClickedEvent.f62280a;
                    companion6.getClass();
                    defaultEventHit = new Hit.EventHit.DefaultEventHit(vto, "vto", "take_picture", "vto", "click", null, CollectionsKt.P(new AdditionalProperty.ProductSku(SkuIdUiModel.Companion.a(list5)), new AdditionalProperty.VtoSkus(SkuIdUiModel.Companion.a(onTakePictureClickedEvent.f62281b)), new AdditionalProperty.ContentId(BeautyVtoViewStateKt.a(onTakePictureClickedEvent.d)), new AdditionalProperty.ContentType(TryOnProductUiModelKt.a(onTakePictureClickedEvent.f62282c))), 32, null);
                } else if (beautyVtoTrackingUiModel instanceof BeautyVtoTrackingUiModel.OnDiscardPhotoClickedEvent) {
                    SkuIdUiModel.Companion companion7 = SkuIdUiModel.f61763c;
                    BeautyVtoTrackingUiModel.OnDiscardPhotoClickedEvent onDiscardPhotoClickedEvent = (BeautyVtoTrackingUiModel.OnDiscardPhotoClickedEvent) beautyVtoTrackingUiModel;
                    List list6 = onDiscardPhotoClickedEvent.f62240a;
                    companion7.getClass();
                    defaultEventHit = new Hit.EventHit.DefaultEventHit(vto, "vto", "discard_picture", "vto", "click", null, CollectionsKt.P(new AdditionalProperty.ProductSku(SkuIdUiModel.Companion.a(list6)), new AdditionalProperty.VtoSkus(SkuIdUiModel.Companion.a(onDiscardPhotoClickedEvent.f62241b)), new AdditionalProperty.ContentId(BeautyVtoViewStateKt.a(onDiscardPhotoClickedEvent.d)), new AdditionalProperty.ContentType(TryOnProductUiModelKt.a(onDiscardPhotoClickedEvent.f62242c))), 32, null);
                } else if (beautyVtoTrackingUiModel instanceof BeautyVtoTrackingUiModel.OnSharePhotoClickedEvent) {
                    SkuIdUiModel.Companion companion8 = SkuIdUiModel.f61763c;
                    BeautyVtoTrackingUiModel.OnSharePhotoClickedEvent onSharePhotoClickedEvent = (BeautyVtoTrackingUiModel.OnSharePhotoClickedEvent) beautyVtoTrackingUiModel;
                    List list7 = onSharePhotoClickedEvent.f62268a;
                    companion8.getClass();
                    defaultEventHit = new Hit.EventHit.DefaultEventHit(vto, "vto", "share_picture", "vto", "click", null, CollectionsKt.P(new AdditionalProperty.ProductSku(SkuIdUiModel.Companion.a(list7)), new AdditionalProperty.VtoSkus(SkuIdUiModel.Companion.a(onSharePhotoClickedEvent.f62269b)), new AdditionalProperty.ContentId(BeautyVtoViewStateKt.a(onSharePhotoClickedEvent.d)), new AdditionalProperty.ContentType(TryOnProductUiModelKt.a(onSharePhotoClickedEvent.f62270c))), 32, null);
                } else {
                    boolean z2 = beautyVtoTrackingUiModel instanceof BeautyVtoTrackingUiModel.OnAddToWishlistClickedEvent;
                    HitType.AddToWishlist addToWishlist = HitType.AddToWishlist.f66506a;
                    if (z2) {
                        SkuIdUiModel.Companion companion9 = SkuIdUiModel.f61763c;
                        BeautyVtoTrackingUiModel.OnAddToWishlistClickedEvent onAddToWishlistClickedEvent = (BeautyVtoTrackingUiModel.OnAddToWishlistClickedEvent) beautyVtoTrackingUiModel;
                        List list8 = onAddToWishlistClickedEvent.f62222a;
                        companion9.getClass();
                        defaultEventHit2 = new Hit.EventHit.DefaultEventHit(addToWishlist, "vto", "add_to_wishlist_intention", "vto", "click", null, CollectionsKt.P(new AdditionalProperty.ProductSku(SkuIdUiModel.Companion.a(list8)), new AdditionalProperty.VtoSkus(SkuIdUiModel.Companion.a(onAddToWishlistClickedEvent.f62223b)), new AdditionalProperty.ContentId(BeautyVtoViewStateKt.a(onAddToWishlistClickedEvent.d)), new AdditionalProperty.ContentType(TryOnProductUiModelKt.a(onAddToWishlistClickedEvent.f62224c))), 32, null);
                    } else if (beautyVtoTrackingUiModel instanceof BeautyVtoTrackingUiModel.OnAddToWishlistSucceedEvent) {
                        SkuIdUiModel.Companion companion10 = SkuIdUiModel.f61763c;
                        BeautyVtoTrackingUiModel.OnAddToWishlistSucceedEvent onAddToWishlistSucceedEvent = (BeautyVtoTrackingUiModel.OnAddToWishlistSucceedEvent) beautyVtoTrackingUiModel;
                        List list9 = onAddToWishlistSucceedEvent.f62228a;
                        companion10.getClass();
                        defaultEventHit2 = new Hit.EventHit.DefaultEventHit(addToWishlist, "vto", "add_to_wishlist_success", "vto", MvelScriptManager.VAR_EVENT, null, CollectionsKt.P(new AdditionalProperty.ProductSku(SkuIdUiModel.Companion.a(list9)), new AdditionalProperty.VtoSkus(SkuIdUiModel.Companion.a(onAddToWishlistSucceedEvent.f62229b)), new AdditionalProperty.ContentId(BeautyVtoViewStateKt.a(onAddToWishlistSucceedEvent.d)), new AdditionalProperty.ContentType(TryOnProductUiModelKt.a(onAddToWishlistSucceedEvent.f62230c))), 32, null);
                    } else if (beautyVtoTrackingUiModel instanceof BeautyVtoTrackingUiModel.OnAddToWishlistFailureEvent) {
                        SkuIdUiModel.Companion companion11 = SkuIdUiModel.f61763c;
                        BeautyVtoTrackingUiModel.OnAddToWishlistFailureEvent onAddToWishlistFailureEvent = (BeautyVtoTrackingUiModel.OnAddToWishlistFailureEvent) beautyVtoTrackingUiModel;
                        List list10 = onAddToWishlistFailureEvent.f62225a;
                        companion11.getClass();
                        defaultEventHit2 = new Hit.EventHit.DefaultEventHit(addToWishlist, "vto", "add_to_wishlist_fail", "vto", MvelScriptManager.VAR_EVENT, null, CollectionsKt.P(new AdditionalProperty.ProductSku(SkuIdUiModel.Companion.a(list10)), new AdditionalProperty.VtoSkus(SkuIdUiModel.Companion.a(onAddToWishlistFailureEvent.f62226b)), new AdditionalProperty.ContentId(BeautyVtoViewStateKt.a(onAddToWishlistFailureEvent.d)), new AdditionalProperty.ContentType(TryOnProductUiModelKt.a(onAddToWishlistFailureEvent.f62227c))), 32, null);
                    } else {
                        boolean z3 = beautyVtoTrackingUiModel instanceof BeautyVtoTrackingUiModel.OnAddToCardClickedEvent;
                        HitType.AddToCart addToCart = HitType.AddToCart.f66505a;
                        if (z3) {
                            SkuIdUiModel.Companion companion12 = SkuIdUiModel.f61763c;
                            BeautyVtoTrackingUiModel.OnAddToCardClickedEvent onAddToCardClickedEvent = (BeautyVtoTrackingUiModel.OnAddToCardClickedEvent) beautyVtoTrackingUiModel;
                            List list11 = onAddToCardClickedEvent.f62219a;
                            companion12.getClass();
                            defaultEventHit2 = new Hit.EventHit.DefaultEventHit(addToCart, "vto", "add_to_cart_intention", "vto", "click", null, CollectionsKt.P(new AdditionalProperty.ProductSku(SkuIdUiModel.Companion.a(list11)), new AdditionalProperty.VtoSkus(SkuIdUiModel.Companion.a(onAddToCardClickedEvent.f62220b)), new AdditionalProperty.ContentId(BeautyVtoViewStateKt.a(onAddToCardClickedEvent.d)), new AdditionalProperty.ContentType(TryOnProductUiModelKt.a(onAddToCardClickedEvent.f62221c))), 32, null);
                        } else if (beautyVtoTrackingUiModel instanceof BeautyVtoTrackingUiModel.OnSnackbarRedirectToCartClickedEvent) {
                            SkuIdUiModel.Companion companion13 = SkuIdUiModel.f61763c;
                            BeautyVtoTrackingUiModel.OnSnackbarRedirectToCartClickedEvent onSnackbarRedirectToCartClickedEvent = (BeautyVtoTrackingUiModel.OnSnackbarRedirectToCartClickedEvent) beautyVtoTrackingUiModel;
                            List list12 = onSnackbarRedirectToCartClickedEvent.f62274a;
                            companion13.getClass();
                            defaultEventHit = new Hit.EventHit.DefaultEventHit(vto, "vto", "view_my_cart", "vto", "click", null, CollectionsKt.P(new AdditionalProperty.ProductSku(SkuIdUiModel.Companion.a(list12)), new AdditionalProperty.ContentId(BeautyVtoViewStateKt.a(onSnackbarRedirectToCartClickedEvent.f62276c)), new AdditionalProperty.ContentType(TryOnProductUiModelKt.a(onSnackbarRedirectToCartClickedEvent.f62275b))), 32, null);
                        } else if (beautyVtoTrackingUiModel instanceof BeautyVtoTrackingUiModel.OnSnackbarOpenAlertClickedEvent) {
                            SkuIdUiModel.Companion companion14 = SkuIdUiModel.f61763c;
                            BeautyVtoTrackingUiModel.OnSnackbarOpenAlertClickedEvent onSnackbarOpenAlertClickedEvent = (BeautyVtoTrackingUiModel.OnSnackbarOpenAlertClickedEvent) beautyVtoTrackingUiModel;
                            String str = onSnackbarOpenAlertClickedEvent.f62271a;
                            companion14.getClass();
                            SkuId.Companion companion15 = SkuId.INSTANCE;
                            defaultEventHit3 = new Hit.EventHit.DefaultEventHit(null, "vto", "open_alert_notification", "vto", "click", null, CollectionsKt.P(new AdditionalProperty.Sku(str, null), new AdditionalProperty.VtoSkus(SkuIdUiModel.Companion.a(CollectionsKt.O(new SkuIdUiModel(onSnackbarOpenAlertClickedEvent.f62272b)))), new AdditionalProperty.ContentId(BeautyVtoViewStateKt.a(onSnackbarOpenAlertClickedEvent.f62273c))), 33, null);
                        } else if (beautyVtoTrackingUiModel instanceof BeautyVtoTrackingUiModel.OnCloseVtoScreenClickedEvent) {
                            SkuIdUiModel.Companion companion16 = SkuIdUiModel.f61763c;
                            BeautyVtoTrackingUiModel.OnCloseVtoScreenClickedEvent onCloseVtoScreenClickedEvent = (BeautyVtoTrackingUiModel.OnCloseVtoScreenClickedEvent) beautyVtoTrackingUiModel;
                            List list13 = onCloseVtoScreenClickedEvent.f62231a;
                            companion16.getClass();
                            defaultEventHit = new Hit.EventHit.DefaultEventHit(vto, "vto", "close_pop_in", "vto", "click", null, CollectionsKt.P(new AdditionalProperty.ProductSku(SkuIdUiModel.Companion.a(list13)), new AdditionalProperty.ContentId(BeautyVtoViewStateKt.a(onCloseVtoScreenClickedEvent.f62233c)), new AdditionalProperty.ContentType(TryOnProductUiModelKt.a(onCloseVtoScreenClickedEvent.f62232b))), 32, null);
                        } else if (beautyVtoTrackingUiModel instanceof BeautyVtoTrackingUiModel.SelectSkuMultipleProductBottomSheetEvent) {
                            BeautyVtoTrackingUiModel.SelectSkuMultipleProductBottomSheetEvent selectSkuMultipleProductBottomSheetEvent = (BeautyVtoTrackingUiModel.SelectSkuMultipleProductBottomSheetEvent) beautyVtoTrackingUiModel;
                            String strConcat = (selectSkuMultipleProductBottomSheetEvent.f62285a ? "select" : "unselect").concat("_product_multiple_add_to_cart_bottom_sheet");
                            AdditionalProperty.ContentId contentId = new AdditionalProperty.ContentId(BeautyVtoViewStateKt.a(selectSkuMultipleProductBottomSheetEvent.f62286b));
                            SkuIdUiModel.Companion companion17 = SkuIdUiModel.f61763c;
                            List list14 = selectSkuMultipleProductBottomSheetEvent.f62287c;
                            companion17.getClass();
                            defaultEventHit = new Hit.EventHit.DefaultEventHit(vto, "multiple_product_bottom_sheet_vto", strConcat, "vto", "click", null, CollectionsKt.P(contentId, new AdditionalProperty.ProductSku(SkuIdUiModel.Companion.a(list14))), 32, null);
                        } else if (beautyVtoTrackingUiModel instanceof BeautyVtoTrackingUiModel.CloseMultipleProductBottomSheetEvent) {
                            BeautyVtoTrackingUiModel.CloseMultipleProductBottomSheetEvent closeMultipleProductBottomSheetEvent = (BeautyVtoTrackingUiModel.CloseMultipleProductBottomSheetEvent) beautyVtoTrackingUiModel;
                            AdditionalProperty.ContentId contentId2 = new AdditionalProperty.ContentId(BeautyVtoViewStateKt.a(closeMultipleProductBottomSheetEvent.f62216a));
                            SkuIdUiModel.Companion companion18 = SkuIdUiModel.f61763c;
                            List list15 = closeMultipleProductBottomSheetEvent.f62217b;
                            companion18.getClass();
                            defaultEventHit = new Hit.EventHit.DefaultEventHit(vto, "multiple_product_bottom_sheet_vto", "close_multiple_add_to_cart_bottom_sheet", "vto", "click", null, CollectionsKt.P(contentId2, new AdditionalProperty.ProductSku(SkuIdUiModel.Companion.a(list15))), 32, null);
                        } else if (beautyVtoTrackingUiModel instanceof BeautyVtoTrackingUiModel.AddToCartMultipleProductBottomSheetEvent) {
                            BeautyVtoTrackingUiModel.AddToCartMultipleProductBottomSheetEvent addToCartMultipleProductBottomSheetEvent = (BeautyVtoTrackingUiModel.AddToCartMultipleProductBottomSheetEvent) beautyVtoTrackingUiModel;
                            AdditionalProperty.ContentId contentId3 = new AdditionalProperty.ContentId(BeautyVtoViewStateKt.a(addToCartMultipleProductBottomSheetEvent.f62214a));
                            SkuIdUiModel.Companion companion19 = SkuIdUiModel.f61763c;
                            List list16 = addToCartMultipleProductBottomSheetEvent.f62215b;
                            companion19.getClass();
                            defaultEventHit2 = new Hit.EventHit.DefaultEventHit(addToCart, "multiple_product_bottom_sheet_vto", "multiple_add_to_cart_bottom_sheet", "vto", "click", null, CollectionsKt.P(contentId3, new AdditionalProperty.ProductSku(SkuIdUiModel.Companion.a(list16))), 32, null);
                        } else if (beautyVtoTrackingUiModel instanceof BeautyVtoTrackingUiModel.OpenAlertMultipleProductBottomSheetEvent) {
                            BeautyVtoTrackingUiModel.OpenAlertMultipleProductBottomSheetEvent openAlertMultipleProductBottomSheetEvent = (BeautyVtoTrackingUiModel.OpenAlertMultipleProductBottomSheetEvent) beautyVtoTrackingUiModel;
                            AdditionalProperty.ContentId contentId4 = new AdditionalProperty.ContentId(BeautyVtoViewStateKt.a(openAlertMultipleProductBottomSheetEvent.f62283a));
                            SkuIdUiModel.Companion companion20 = SkuIdUiModel.f61763c;
                            List list17 = openAlertMultipleProductBottomSheetEvent.f62284b;
                            companion20.getClass();
                            defaultEventHit = new Hit.EventHit.DefaultEventHit(vto, "multiple_product_bottom_sheet_vto", "open_alert_multiple_add_to_cart_bottom_sheet", "vto", "click", null, CollectionsKt.P(contentId4, new AdditionalProperty.ProductSku(SkuIdUiModel.Companion.a(list17))), 32, null);
                        } else if (beautyVtoTrackingUiModel instanceof BeautyVtoTrackingUiModel.NotifyMeBottomSheetEvent) {
                            defaultEventHit2 = new Hit.EventHit.DefaultEventHit(null, "LVPass/Consent/Notifications", "notify_me_2", "back_in_stock", "notifications", null, CollectionsKt.O(new AdditionalProperty.ProductSku(cj.q(SkuIdUiModel.f61763c, ((BeautyVtoTrackingUiModel.NotifyMeBottomSheetEvent) beautyVtoTrackingUiModel).f62218a))), 33, null);
                        } else if (beautyVtoTrackingUiModel instanceof BeautyVtoTrackingUiModel.OnLookSelectorClickedEvent) {
                            SkuIdUiModel.Companion companion21 = SkuIdUiModel.f61763c;
                            BeautyVtoTrackingUiModel.OnLookSelectorClickedEvent onLookSelectorClickedEvent = (BeautyVtoTrackingUiModel.OnLookSelectorClickedEvent) beautyVtoTrackingUiModel;
                            List list18 = onLookSelectorClickedEvent.f62263a;
                            companion21.getClass();
                            defaultEventHit = new Hit.EventHit.DefaultEventHit(vto, "vto", "open_eye_shadow_bottom_sheet", "vto", "click", null, CollectionsKt.P(new AdditionalProperty.ProductSku(SkuIdUiModel.Companion.a(list18)), new AdditionalProperty.VtoSkus(SkuIdUiModel.Companion.a(CollectionsKt.O(new SkuIdUiModel(onLookSelectorClickedEvent.f62264b)))), new AdditionalProperty.ContentId(BeautyVtoViewStateKt.a(BeautyVtoMode.SIMPLE)), new AdditionalProperty.ContentType(TryOnProductUiModelKt.a(BeautyProductTypeUiModel.EYESHADOW))), 32, null);
                        } else if (beautyVtoTrackingUiModel instanceof BeautyVtoTrackingUiModel.OnLookClickedEvent) {
                            SkuIdUiModel.Companion companion22 = SkuIdUiModel.f61763c;
                            BeautyVtoTrackingUiModel.OnLookClickedEvent onLookClickedEvent = (BeautyVtoTrackingUiModel.OnLookClickedEvent) beautyVtoTrackingUiModel;
                            List listO2 = CollectionsKt.O(new SkuIdUiModel(onLookClickedEvent.f62261a));
                            companion22.getClass();
                            defaultEventHit = new Hit.EventHit.DefaultEventHit(vto, "vto", "select_eyeshadow_look", "vto", "click", null, CollectionsKt.P(new AdditionalProperty.VtoSkus(SkuIdUiModel.Companion.a(listO2)), new AdditionalProperty.ContentId(BeautyVtoViewStateKt.a(BeautyVtoMode.SIMPLE)), new AdditionalProperty.ContentType(TryOnProductUiModelKt.a(BeautyProductTypeUiModel.EYESHADOW)), new AdditionalProperty.LookId(onLookClickedEvent.f62262b)), 32, null);
                        } else if (beautyVtoTrackingUiModel instanceof BeautyVtoTrackingUiModel.OnHowToApplyClickedEvent) {
                            SkuIdUiModel.Companion companion23 = SkuIdUiModel.f61763c;
                            BeautyVtoTrackingUiModel.OnHowToApplyClickedEvent onHowToApplyClickedEvent = (BeautyVtoTrackingUiModel.OnHowToApplyClickedEvent) beautyVtoTrackingUiModel;
                            List listO3 = CollectionsKt.O(new SkuIdUiModel(onHowToApplyClickedEvent.f62246a));
                            companion23.getClass();
                            defaultEventHit = new Hit.EventHit.DefaultEventHit(vto, "vto", "open_how_to_apply", "vto", "click", null, CollectionsKt.P(new AdditionalProperty.VtoSkus(SkuIdUiModel.Companion.a(listO3)), new AdditionalProperty.ContentId(BeautyVtoViewStateKt.a(BeautyVtoMode.SIMPLE)), new AdditionalProperty.ContentType(TryOnProductUiModelKt.a(onHowToApplyClickedEvent.f62247b)), new AdditionalProperty.LookId(onHowToApplyClickedEvent.f62248c)), 32, null);
                        } else if (beautyVtoTrackingUiModel instanceof BeautyVtoTrackingUiModel.OnHowToApplyClosedEvent) {
                            SkuIdUiModel.Companion companion24 = SkuIdUiModel.f61763c;
                            BeautyVtoTrackingUiModel.OnHowToApplyClosedEvent onHowToApplyClosedEvent = (BeautyVtoTrackingUiModel.OnHowToApplyClosedEvent) beautyVtoTrackingUiModel;
                            List listO4 = CollectionsKt.O(new SkuIdUiModel(onHowToApplyClosedEvent.f62249a));
                            companion24.getClass();
                            defaultEventHit = new Hit.EventHit.DefaultEventHit(vto, "vto_how_to_apply", "close_how_to_apply", "vto", "click", null, CollectionsKt.P(new AdditionalProperty.VtoSkus(SkuIdUiModel.Companion.a(listO4)), new AdditionalProperty.ContentId(BeautyVtoViewStateKt.a(BeautyVtoMode.SIMPLE)), new AdditionalProperty.ContentType(TryOnProductUiModelKt.a(onHowToApplyClosedEvent.f62250b)), new AdditionalProperty.LookId(onHowToApplyClosedEvent.f62251c)), 32, null);
                        } else if (beautyVtoTrackingUiModel instanceof BeautyVtoTrackingUiModel.OnHowToApplyScrolledEvent) {
                            SkuIdUiModel.Companion companion25 = SkuIdUiModel.f61763c;
                            BeautyVtoTrackingUiModel.OnHowToApplyScrolledEvent onHowToApplyScrolledEvent = (BeautyVtoTrackingUiModel.OnHowToApplyScrolledEvent) beautyVtoTrackingUiModel;
                            List listO5 = CollectionsKt.O(new SkuIdUiModel(onHowToApplyScrolledEvent.f62258a));
                            companion25.getClass();
                            defaultEventHit = new Hit.EventHit.DefaultEventHit(vto, "vto_how_to_apply", "scroll_how_to_apply", "vto", "scroll", null, CollectionsKt.P(new AdditionalProperty.VtoSkus(SkuIdUiModel.Companion.a(listO5)), new AdditionalProperty.ContentId(BeautyVtoViewStateKt.a(BeautyVtoMode.SIMPLE)), new AdditionalProperty.ContentType(TryOnProductUiModelKt.a(onHowToApplyScrolledEvent.f62259b)), new AdditionalProperty.LookId(onHowToApplyScrolledEvent.f62260c)), 32, null);
                        } else if (beautyVtoTrackingUiModel instanceof BeautyVtoTrackingUiModel.OnHowToApplyRecommendedSwipedEvent) {
                            SkuIdUiModel.Companion companion26 = SkuIdUiModel.f61763c;
                            BeautyVtoTrackingUiModel.OnHowToApplyRecommendedSwipedEvent onHowToApplyRecommendedSwipedEvent = (BeautyVtoTrackingUiModel.OnHowToApplyRecommendedSwipedEvent) beautyVtoTrackingUiModel;
                            List listO6 = CollectionsKt.O(new SkuIdUiModel(onHowToApplyRecommendedSwipedEvent.f62255a));
                            companion26.getClass();
                            defaultEventHit = new Hit.EventHit.DefaultEventHit(vto, "vto_how_to_apply", "swipe_recommended", "vto", "swipe", null, CollectionsKt.P(new AdditionalProperty.VtoSkus(SkuIdUiModel.Companion.a(listO6)), new AdditionalProperty.ContentId(BeautyVtoViewStateKt.a(BeautyVtoMode.SIMPLE)), new AdditionalProperty.ContentType(TryOnProductUiModelKt.a(onHowToApplyRecommendedSwipedEvent.f62256b)), new AdditionalProperty.LookId(onHowToApplyRecommendedSwipedEvent.f62257c)), 32, null);
                        } else if (beautyVtoTrackingUiModel instanceof BeautyVtoTrackingUiModel.OnHowToApplyRecommendedClickedEvent) {
                            SkuIdUiModel.Companion companion27 = SkuIdUiModel.f61763c;
                            BeautyVtoTrackingUiModel.OnHowToApplyRecommendedClickedEvent onHowToApplyRecommendedClickedEvent = (BeautyVtoTrackingUiModel.OnHowToApplyRecommendedClickedEvent) beautyVtoTrackingUiModel;
                            List list19 = onHowToApplyRecommendedClickedEvent.f62252a;
                            companion27.getClass();
                            defaultEventHit = new Hit.EventHit.DefaultEventHit(vto, "vto_how_to_apply", "select_recommended_product", "vto", "click", null, CollectionsKt.P(new AdditionalProperty.ProductSku(SkuIdUiModel.Companion.a(list19)), new AdditionalProperty.VtoSkus(SkuIdUiModel.Companion.a(CollectionsKt.O(new SkuIdUiModel(onHowToApplyRecommendedClickedEvent.f62253b)))), new AdditionalProperty.ContentId(BeautyVtoViewStateKt.a(BeautyVtoMode.SIMPLE)), new AdditionalProperty.ContentType(TryOnProductUiModelKt.a(onHowToApplyRecommendedClickedEvent.f62254c)), new AdditionalProperty.LookId(onHowToApplyRecommendedClickedEvent.d)), 32, null);
                        } else if (beautyVtoTrackingUiModel instanceof BeautyVtoTrackingUiModel.OnSelectAColorClickedEvent) {
                            SkuIdUiModel.Companion companion28 = SkuIdUiModel.f61763c;
                            BeautyVtoTrackingUiModel.OnSelectAColorClickedEvent onSelectAColorClickedEvent = (BeautyVtoTrackingUiModel.OnSelectAColorClickedEvent) beautyVtoTrackingUiModel;
                            List list20 = onSelectAColorClickedEvent.f62265a;
                            companion28.getClass();
                            defaultEventHit = new Hit.EventHit.DefaultEventHit(vto, "vto", "select_tryOn_color", "vto", "click", null, CollectionsKt.P(new AdditionalProperty.ProductSku(SkuIdUiModel.Companion.a(list20)), new AdditionalProperty.VtoSkus(SkuIdUiModel.Companion.a(CollectionsKt.O(new SkuIdUiModel(onSelectAColorClickedEvent.f62266b)))), new AdditionalProperty.ContentId(BeautyVtoViewStateKt.a(onSelectAColorClickedEvent.d)), new AdditionalProperty.ContentType(TryOnProductUiModelKt.a(onSelectAColorClickedEvent.f62267c))), 32, null);
                        } else if (beautyVtoTrackingUiModel instanceof BeautyVtoTrackingUiModel.OnColorSliderSwipedEvent) {
                            SkuIdUiModel.Companion companion29 = SkuIdUiModel.f61763c;
                            BeautyVtoTrackingUiModel.OnColorSliderSwipedEvent onColorSliderSwipedEvent = (BeautyVtoTrackingUiModel.OnColorSliderSwipedEvent) beautyVtoTrackingUiModel;
                            List list21 = onColorSliderSwipedEvent.f62234a;
                            companion29.getClass();
                            defaultEventHit = new Hit.EventHit.DefaultEventHit(vto, "vto", "swipe_tryOn_colors", "vto", "swipe", null, CollectionsKt.P(new AdditionalProperty.ProductSku(SkuIdUiModel.Companion.a(list21)), new AdditionalProperty.ContentId(BeautyVtoViewStateKt.a(onColorSliderSwipedEvent.f62236c)), new AdditionalProperty.ContentType(TryOnProductUiModelKt.a(onColorSliderSwipedEvent.f62235b))), 32, null);
                        } else {
                            if (!(beautyVtoTrackingUiModel instanceof BeautyVtoTrackingUiModel.OnDualColorSliderOpenedEvent)) {
                                v40.g();
                                return;
                            }
                            SkuIdUiModel.Companion companion30 = SkuIdUiModel.f61763c;
                            BeautyVtoTrackingUiModel.OnDualColorSliderOpenedEvent onDualColorSliderOpenedEvent = (BeautyVtoTrackingUiModel.OnDualColorSliderOpenedEvent) beautyVtoTrackingUiModel;
                            List list22 = onDualColorSliderOpenedEvent.f62243a;
                            companion30.getClass();
                            defaultEventHit = new Hit.EventHit.DefaultEventHit(vto, "vto", "compare_color_selection", "vto", "click", null, CollectionsKt.P(new AdditionalProperty.ProductSku(SkuIdUiModel.Companion.a(list22)), new AdditionalProperty.VtoSkus(SkuIdUiModel.Companion.a(CollectionsKt.O(new SkuIdUiModel(onDualColorSliderOpenedEvent.f62244b)))), new AdditionalProperty.ContentId(BeautyVtoViewStateKt.a(BeautyVtoMode.DUAL)), new AdditionalProperty.ContentType(TryOnProductUiModelKt.a(onDualColorSliderOpenedEvent.f62245c))), 32, null);
                        }
                    }
                    defaultEventHit3 = defaultEventHit2;
                }
                defaultEventHit3 = defaultEventHit;
            }
            defaultEventHit3 = defaultScreenHit;
        }
        this.d.a(defaultEventHit3);
    }

    public final void Nc(TryOnProductUiModel tryOnProductUiModel) {
        Mc(new BeautyVtoTrackingUiModel.OnSelectAColorClickedEvent(Gc(), tryOnProductUiModel.f62183a, tryOnProductUiModel.f62185c, (BeautyVtoMode) this.U.getValue(), null));
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final void Ob(String str) {
        Mc(new BeautyVtoTrackingUiModel.NotifyMeBottomSheetEvent(str, null));
        BuildersKt.c(ViewModelKt.a(this), null, null, new BeautyVtoViewModelImpl$subscribeBackInStock$1(this, str, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final void P2(ShadeFinderQualityCheck shadeFinderQualityCheck) {
        if (((Boolean) this.l0.getValue()).booleanValue()) {
            return;
        }
        Job job = this.A;
        if (job == null || !job.isActive()) {
            this.A = BuildersKt.c(ViewModelKt.a(this), null, null, new BeautyVtoViewModelImpl$handleShadeFinderScanResult$1(this, shadeFinderQualityCheck, null), 3);
        }
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final Flow P9() {
        return FlowKt.y(this.i0);
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final void Sb() {
        Object value;
        MutableStateFlow mutableStateFlow;
        Object value2;
        MutableStateFlow mutableStateFlow2;
        Object value3;
        MutableStateFlow mutableStateFlow3;
        Object value4;
        Object value5;
        BeautyProductTypeUiModel beautyProductTypeUiModel;
        MutableStateFlow mutableStateFlow4 = this.R;
        TryOnProductUiModel tryOnProductUiModel = (TryOnProductUiModel) mutableStateFlow4.getValue();
        MutableStateFlow mutableStateFlow5 = this.U;
        if (tryOnProductUiModel != null) {
            List listGc = Gc();
            String str = tryOnProductUiModel.f62183a;
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            str.getClass();
            Mc(new BeautyVtoTrackingUiModel.OnStackingClickedEvent(listGc, str, tryOnProductUiModel.f62185c, (BeautyVtoMode) mutableStateFlow5.getValue(), null));
        }
        if (mutableStateFlow5.getValue() != BeautyVtoMode.STACKING) {
            do {
                value5 = mutableStateFlow5.getValue();
            } while (!mutableStateFlow5.i(value5, BeautyVtoMode.STACKING));
            TryOnProductUiModel tryOnProductUiModel2 = (TryOnProductUiModel) mutableStateFlow4.getValue();
            if (tryOnProductUiModel2 == null || (beautyProductTypeUiModel = tryOnProductUiModel2.d) == null) {
                return;
            }
            BuildersKt.c(ViewModelKt.a(this), null, null, new BeautyVtoViewModelImpl$initTryOnProductList$1(this, beautyProductTypeUiModel, null, null), 3);
            return;
        }
        do {
            value = mutableStateFlow5.getValue();
        } while (!mutableStateFlow5.i(value, BeautyVtoMode.SIMPLE));
        do {
            mutableStateFlow = this.S;
            value2 = mutableStateFlow.getValue();
        } while (!mutableStateFlow.i(value2, null));
        do {
            mutableStateFlow2 = this.c0;
            value3 = mutableStateFlow2.getValue();
        } while (!mutableStateFlow2.i(value3, null));
        do {
            mutableStateFlow3 = this.d0;
            value4 = mutableStateFlow3.getValue();
        } while (!mutableStateFlow3.i(value4, null));
        a1();
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final void T3() {
        BeautyProductTypeUiModel beautyProductTypeUiModel;
        List listGc = Gc();
        TryOnProductUiModel tryOnProductUiModel = (TryOnProductUiModel) this.R.getValue();
        if (tryOnProductUiModel == null || (beautyProductTypeUiModel = tryOnProductUiModel.f62185c) == null) {
            beautyProductTypeUiModel = BeautyProductTypeUiModel.NONE;
        }
        Mc(new BeautyVtoTrackingUiModel.OnColorSliderSwipedEvent(listGc, beautyProductTypeUiModel, (BeautyVtoMode) this.U.getValue()));
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final void Ta() {
        String str;
        BeautyProductTypeUiModel beautyProductTypeUiModel;
        String str2;
        MutableStateFlow mutableStateFlow = this.R;
        TryOnProductUiModel tryOnProductUiModel = (TryOnProductUiModel) mutableStateFlow.getValue();
        if (tryOnProductUiModel != null) {
            str = tryOnProductUiModel.f62183a;
        } else {
            SkuIdUiModel.f61763c.getClass();
            str = SkuIdUiModel.d;
        }
        TryOnProductUiModel tryOnProductUiModel2 = (TryOnProductUiModel) mutableStateFlow.getValue();
        if (tryOnProductUiModel2 == null || (beautyProductTypeUiModel = tryOnProductUiModel2.f62185c) == null) {
            beautyProductTypeUiModel = BeautyProductTypeUiModel.NONE;
        }
        LookUiModel lookUiModel = (LookUiModel) this.V.getValue();
        if (lookUiModel == null || (str2 = lookUiModel.f62165a) == null) {
            str2 = "";
        }
        Mc(new BeautyVtoTrackingUiModel.OnHowToApplyRecommendedSwipedEvent(str, beautyProductTypeUiModel, str2, null));
    }

    /* JADX WARN: Code duplicated, block: B:19:0x003f  */
    /* JADX WARN: Code duplicated, block: B:35:0x006f  */
    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final void U4(String str) {
        ShadeFinderResponseUiModel shadeFinderResponseUiModel;
        BeautyProductTypeUiModel beautyProductTypeUiModel;
        List list;
        Object next;
        TryOnProductUiModel tryOnProductUiModel;
        List list2;
        Object next2;
        TryOnProductUiModel tryOnProductUiModel2;
        String str2;
        str.getClass();
        MutableStateFlow mutableStateFlow = this.m0;
        ShadeFinderResponseUiModel shadeFinderResponseUiModel2 = (ShadeFinderResponseUiModel) mutableStateFlow.getValue();
        if (shadeFinderResponseUiModel2 == null || (list2 = shadeFinderResponseUiModel2.f62174b) == null) {
            shadeFinderResponseUiModel = (ShadeFinderResponseUiModel) mutableStateFlow.getValue();
            if (shadeFinderResponseUiModel != null || (list = shadeFinderResponseUiModel.f62174b) == null) {
                beautyProductTypeUiModel = null;
            } else {
                Iterator it = list.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (((RecommendationUiModel) next).f62172c == null);
                RecommendationUiModel recommendationUiModel = (RecommendationUiModel) next;
                if (recommendationUiModel == null || (tryOnProductUiModel = recommendationUiModel.f62172c) == null) {
                    beautyProductTypeUiModel = null;
                } else {
                    beautyProductTypeUiModel = tryOnProductUiModel.f62185c;
                }
            }
        } else {
            Iterator it2 = list2.iterator();
            do {
                if (!it2.hasNext()) {
                    next2 = null;
                    break;
                } else {
                    next2 = it2.next();
                    str2 = ((RecommendationUiModel) next2).f62170a.d;
                    SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                }
            } while (!Intrinsics.c(str2, str));
            RecommendationUiModel recommendationUiModel2 = (RecommendationUiModel) next2;
            if (recommendationUiModel2 == null || (tryOnProductUiModel2 = recommendationUiModel2.f62172c) == null || (beautyProductTypeUiModel = tryOnProductUiModel2.f62185c) == null) {
                shadeFinderResponseUiModel = (ShadeFinderResponseUiModel) mutableStateFlow.getValue();
                if (shadeFinderResponseUiModel != null) {
                    beautyProductTypeUiModel = null;
                } else {
                    beautyProductTypeUiModel = null;
                }
            }
        }
        if (beautyProductTypeUiModel != null) {
            BuildersKt.c(ViewModelKt.a(this), null, null, new BeautyVtoViewModelImpl$initTryOnProductList$1(this, beautyProductTypeUiModel, str, null), 3);
        } else {
            BuildersKt.c(ViewModelKt.a(this), null, null, new BeautyVtoViewModelImpl$updateTryOnProductListFromShadeFinder$1(null, this), 3);
        }
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final void U6() {
        String str;
        List listGc = Gc();
        TryOnProductUiModel tryOnProductUiModel = (TryOnProductUiModel) this.R.getValue();
        if (tryOnProductUiModel != null) {
            str = tryOnProductUiModel.f62183a;
        } else {
            SkuIdUiModel.f61763c.getClass();
            str = SkuIdUiModel.d;
        }
        Mc(new BeautyVtoTrackingUiModel.OnLookSelectorClickedEvent(listGc, str, null));
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final void X6(TryOnProductUiModel tryOnProductUiModel) {
        Object value;
        tryOnProductUiModel.getClass();
        MutableStateFlow mutableStateFlow = this.R;
        if (Intrinsics.c(mutableStateFlow.getValue(), tryOnProductUiModel)) {
            return;
        }
        Nc(tryOnProductUiModel);
        do {
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.i(value, tryOnProductUiModel));
        Ic();
        if (tryOnProductUiModel.f62185c != BeautyProductTypeUiModel.NONE) {
            a1();
        }
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final void Z9() {
        MutableStateFlow mutableStateFlow;
        Object value;
        do {
            mutableStateFlow = this.H;
            value = mutableStateFlow.getValue();
            ((Boolean) value).getClass();
        } while (!mutableStateFlow.i(value, Boolean.FALSE));
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getK0() {
        return this.k0;
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final void a1() {
        String str;
        TryOnProductUiModel tryOnProductUiModel = (TryOnProductUiModel) this.R.getValue();
        if (tryOnProductUiModel != null) {
            str = tryOnProductUiModel.f62183a;
        } else {
            ProductUiModel productUiModel = this.x;
            str = productUiModel != null ? productUiModel.f61735b : null;
        }
        if (str != null) {
            BuildersKt.c(ViewModelKt.a(this), null, null, new BeautyVtoViewModelImpl$updateWishlistState$1$1(this, str, null), 3);
        }
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final Flow b() {
        return FlowKt.y(this.h0);
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final StateFlow e() {
        return this.j0;
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final void f4(TryOnProductUiModel tryOnProductUiModel) {
        MutableStateFlow mutableStateFlow;
        Object value;
        tryOnProductUiModel.getClass();
        Nc(tryOnProductUiModel);
        do {
            mutableStateFlow = this.S;
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.i(value, tryOnProductUiModel));
        Jc();
        a1();
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final void f9() {
        String str;
        BeautyProductTypeUiModel beautyProductTypeUiModel;
        String str2;
        MutableStateFlow mutableStateFlow = this.R;
        TryOnProductUiModel tryOnProductUiModel = (TryOnProductUiModel) mutableStateFlow.getValue();
        if (tryOnProductUiModel != null) {
            str = tryOnProductUiModel.f62183a;
        } else {
            SkuIdUiModel.f61763c.getClass();
            str = SkuIdUiModel.d;
        }
        TryOnProductUiModel tryOnProductUiModel2 = (TryOnProductUiModel) mutableStateFlow.getValue();
        if (tryOnProductUiModel2 == null || (beautyProductTypeUiModel = tryOnProductUiModel2.f62185c) == null) {
            beautyProductTypeUiModel = BeautyProductTypeUiModel.NONE;
        }
        LookUiModel lookUiModel = (LookUiModel) this.V.getValue();
        if (lookUiModel == null || (str2 = lookUiModel.f62165a) == null) {
            str2 = "";
        }
        Mc(new BeautyVtoTrackingUiModel.OnHowToApplyScrolledEvent(str, beautyProductTypeUiModel, str2, null));
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final void fb() {
        MonitorAction monitorAction = this.F;
        if (monitorAction != null) {
            monitorAction.b();
            Result.Companion companion = Result.INSTANCE;
        }
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final StateFlow g2() {
        return FlowKt.b(this.Y);
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final void g3() {
        Mc(new BeautyVtoTrackingUiModel.VtoScreen(Gc(), Fc()));
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final void ga() {
        BeautyProductTypeUiModel beautyProductTypeUiModel;
        MutableStateFlow mutableStateFlow = this.R;
        TryOnProductUiModel tryOnProductUiModel = (TryOnProductUiModel) mutableStateFlow.getValue();
        if (tryOnProductUiModel != null) {
            List listGc = Gc();
            List listHc = Hc(tryOnProductUiModel);
            TryOnProductUiModel tryOnProductUiModel2 = (TryOnProductUiModel) mutableStateFlow.getValue();
            if (tryOnProductUiModel2 == null || (beautyProductTypeUiModel = tryOnProductUiModel2.f62185c) == null) {
                beautyProductTypeUiModel = BeautyProductTypeUiModel.NONE;
            }
            Mc(new BeautyVtoTrackingUiModel.OnAddToWishlistClickedEvent(listGc, listHc, beautyProductTypeUiModel, (BeautyVtoMode) this.U.getValue()));
        }
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final void ia() {
        TryOnProductUiModel tryOnProductUiModel = (TryOnProductUiModel) this.R.getValue();
        if (tryOnProductUiModel != null) {
            Mc(new BeautyVtoTrackingUiModel.OnSharePhotoClickedEvent(Gc(), Hc(tryOnProductUiModel), Fc(), (BeautyVtoMode) this.U.getValue()));
        }
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final void ic(String str, boolean z) {
        str.getClass();
        Mc(new BeautyVtoTrackingUiModel.SelectSkuMultipleProductBottomSheetEvent(z, (BeautyVtoMode) this.U.getValue(), CollectionsKt.O(new SkuIdUiModel(str))));
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final void n2(LookUiModel lookUiModel) {
        String str;
        MutableStateFlow mutableStateFlow;
        Object value;
        MutableStateFlow mutableStateFlow2;
        Object value2;
        LookInfo lookInfo;
        Object next;
        String guid;
        LookUiModel lookUiModel2;
        lookUiModel.getClass();
        TryOnProductUiModel tryOnProductUiModel = (TryOnProductUiModel) this.R.getValue();
        if (tryOnProductUiModel != null) {
            str = tryOnProductUiModel.f62183a;
        } else {
            SkuIdUiModel.f61763c.getClass();
            str = SkuIdUiModel.d;
        }
        Mc(new BeautyVtoTrackingUiModel.OnLookClickedEvent(str, lookUiModel.f62165a, null));
        do {
            mutableStateFlow = this.V;
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.i(value, lookUiModel));
        do {
            mutableStateFlow2 = this.a0;
            value2 = mutableStateFlow2.getValue();
            List list = (List) this.W.getValue();
            if (list != null) {
                Iterator it = list.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    } else {
                        next = it.next();
                        guid = ((LookInfo) next).getGuid();
                        lookUiModel2 = (LookUiModel) mutableStateFlow.getValue();
                    }
                } while (!Intrinsics.c(guid, lookUiModel2 != null ? lookUiModel2.f62166b : null));
                lookInfo = (LookInfo) next;
            } else {
                lookInfo = null;
            }
        } while (!mutableStateFlow2.i(value2, lookInfo));
    }

    @Override // androidx.lifecycle.ViewModel
    public final void onCleared() {
        Bitmap bitmap;
        super.onCleared();
        MutableStateFlow mutableStateFlow = this.e0;
        BeautyPictureUiModel beautyPictureUiModel = (BeautyPictureUiModel) mutableStateFlow.getValue();
        if (beautyPictureUiModel != null && (bitmap = beautyPictureUiModel.f62147a) != null) {
            bitmap.recycle();
        }
        mutableStateFlow.setValue(null);
        this.D = null;
        this.E = null;
        this.F = null;
        this.x = null;
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final void r3() {
        Mc(new BeautyVtoTrackingUiModel.OnCloseVtoScreenClickedEvent(Gc(), Fc(), (BeautyVtoMode) this.U.getValue()));
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final void r6() {
        Mc(new BeautyVtoTrackingUiModel.OnSnackbarRedirectToCartClickedEvent(Gc(), Fc(), (BeautyVtoMode) this.U.getValue()));
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final void rc() {
        String str;
        BeautyProductTypeUiModel beautyProductTypeUiModel;
        String str2;
        MutableStateFlow mutableStateFlow = this.R;
        TryOnProductUiModel tryOnProductUiModel = (TryOnProductUiModel) mutableStateFlow.getValue();
        if (tryOnProductUiModel != null) {
            str = tryOnProductUiModel.f62183a;
        } else {
            SkuIdUiModel.f61763c.getClass();
            str = SkuIdUiModel.d;
        }
        TryOnProductUiModel tryOnProductUiModel2 = (TryOnProductUiModel) mutableStateFlow.getValue();
        if (tryOnProductUiModel2 == null || (beautyProductTypeUiModel = tryOnProductUiModel2.f62185c) == null) {
            beautyProductTypeUiModel = BeautyProductTypeUiModel.NONE;
        }
        LookUiModel lookUiModel = (LookUiModel) this.V.getValue();
        if (lookUiModel == null || (str2 = lookUiModel.f62165a) == null) {
            str2 = "";
        }
        Mc(new BeautyVtoTrackingUiModel.VtoHowToApplyScreen(str, beautyProductTypeUiModel, str2, null));
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final PerfectEffect s5(BeautyProductTypeUiModel beautyProductTypeUiModel) {
        ProductUiModel productUiModel;
        VirtualTryOnUiModel virtualTryOnUiModel;
        BeautyProductTypeUiModel beautyProductTypeUiModel2;
        int i2 = beautyProductTypeUiModel == null ? -1 : WhenMappings.f61848a[beautyProductTypeUiModel.ordinal()];
        if (i2 == 1) {
            return PerfectEffect.LIPSTICK;
        }
        if (i2 == 2) {
            return PerfectEffect.EYESHADOW;
        }
        if (i2 == 3) {
            return PerfectEffect.LIP_LINER;
        }
        if (i2 != 4 || (productUiModel = this.x) == null || (virtualTryOnUiModel = productUiModel.r) == null || (beautyProductTypeUiModel2 = virtualTryOnUiModel.f62208b) == null) {
            return null;
        }
        int i3 = TryOnProductUiModelKt.WhenMappings.f62192a[beautyProductTypeUiModel2.ordinal()];
        if (i3 == 1) {
            return PerfectEffect.LIPSTICK;
        }
        if (i3 == 2) {
            return PerfectEffect.EYESHADOW;
        }
        if (i3 != 3) {
            return null;
        }
        return PerfectEffect.LIP_LINER;
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final void ta(BeautyBottomSheet beautyBottomSheet, boolean z) {
        TryOnProductUiModel tryOnProductUiModel;
        String str;
        BeautyProductTypeUiModel beautyProductTypeUiModel;
        String str2;
        MutableStateFlow mutableStateFlow = this.j0;
        BeautyBottomSheet beautyBottomSheet2 = (BeautyBottomSheet) mutableStateFlow.getValue();
        boolean z2 = beautyBottomSheet2 instanceof BeautyBottomSheet.Tutorial;
        MutableStateFlow mutableStateFlow2 = this.U;
        MutableStateFlow mutableStateFlow3 = this.R;
        if (z2) {
            TryOnProductUiModel tryOnProductUiModel2 = (TryOnProductUiModel) mutableStateFlow3.getValue();
            if (tryOnProductUiModel2 != null) {
                str = tryOnProductUiModel2.f62183a;
            } else {
                SkuIdUiModel.f61763c.getClass();
                str = SkuIdUiModel.d;
            }
            TryOnProductUiModel tryOnProductUiModel3 = (TryOnProductUiModel) mutableStateFlow3.getValue();
            if (tryOnProductUiModel3 == null || (beautyProductTypeUiModel = tryOnProductUiModel3.f62185c) == null) {
                beautyProductTypeUiModel = BeautyProductTypeUiModel.NONE;
            }
            LookUiModel lookUiModel = (LookUiModel) this.V.getValue();
            if (lookUiModel == null || (str2 = lookUiModel.f62165a) == null) {
                str2 = "";
            }
            Mc(new BeautyVtoTrackingUiModel.OnHowToApplyClosedEvent(str, beautyProductTypeUiModel, str2, null));
        } else if ((beautyBottomSheet2 instanceof BeautyBottomSheet.AddToCartMultiple) && z && (tryOnProductUiModel = (TryOnProductUiModel) mutableStateFlow3.getValue()) != null) {
            Mc(new BeautyVtoTrackingUiModel.CloseMultipleProductBottomSheetEvent((BeautyVtoMode) mutableStateFlow2.getValue(), Hc(tryOnProductUiModel)));
        }
        if (beautyBottomSheet instanceof BeautyBottomSheet.BackInStock) {
            Mc(new BeautyVtoTrackingUiModel.OpenAlertMultipleProductBottomSheetEvent((BeautyVtoMode) mutableStateFlow2.getValue(), CollectionsKt.O(new SkuIdUiModel(((BeautyBottomSheet.BackInStock) beautyBottomSheet).f62131a.f62125a))));
        }
        mutableStateFlow.setValue(beautyBottomSheet);
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final void u9(String str) {
        String str2;
        BeautyProductTypeUiModel beautyProductTypeUiModel;
        String str3;
        str.getClass();
        List listO = CollectionsKt.O(new SkuIdUiModel(str));
        MutableStateFlow mutableStateFlow = this.R;
        TryOnProductUiModel tryOnProductUiModel = (TryOnProductUiModel) mutableStateFlow.getValue();
        if (tryOnProductUiModel != null) {
            str2 = tryOnProductUiModel.f62183a;
        } else {
            SkuIdUiModel.f61763c.getClass();
            str2 = SkuIdUiModel.d;
        }
        TryOnProductUiModel tryOnProductUiModel2 = (TryOnProductUiModel) mutableStateFlow.getValue();
        if (tryOnProductUiModel2 == null || (beautyProductTypeUiModel = tryOnProductUiModel2.f62185c) == null) {
            beautyProductTypeUiModel = BeautyProductTypeUiModel.NONE;
        }
        BeautyProductTypeUiModel beautyProductTypeUiModel2 = beautyProductTypeUiModel;
        LookUiModel lookUiModel = (LookUiModel) this.V.getValue();
        if (lookUiModel == null || (str3 = lookUiModel.f62165a) == null) {
            str3 = "";
        }
        Mc(new BeautyVtoTrackingUiModel.OnHowToApplyRecommendedClickedEvent(listO, str2, beautyProductTypeUiModel2, str3, null));
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final void v3() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new BeautyVtoViewModelImpl$setHasDoneShadeFinderIntro$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final void y6(List list) {
        TryOnProductUiModel tryOnProductUiModel;
        list.getClass();
        if (list.isEmpty()) {
            return;
        }
        MutableStateFlow mutableStateFlow = this.U;
        if (mutableStateFlow.getValue() != BeautyVtoMode.SIMPLE && (tryOnProductUiModel = (TryOnProductUiModel) this.R.getValue()) != null) {
            Iterator it = Hc(tryOnProductUiModel).iterator();
            while (it.hasNext()) {
                Mc(new BeautyVtoTrackingUiModel.AddToCartMultipleProductBottomSheetEvent((BeautyVtoMode) mutableStateFlow.getValue(), CollectionsKt.O(new SkuIdUiModel(((SkuIdUiModel) it.next()).f61764b))));
            }
        }
        BuildersKt.c(ViewModelKt.a(this), null, null, new BeautyVtoViewModelImpl$addToCart$2(this, list, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    /* JADX INFO: renamed from: yb, reason: from getter */
    public final StateFlow getO0() {
        return this.o0;
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final void z4() {
        String str;
        BeautyProductTypeUiModel beautyProductTypeUiModel;
        List listGc = Gc();
        MutableStateFlow mutableStateFlow = this.R;
        TryOnProductUiModel tryOnProductUiModel = (TryOnProductUiModel) mutableStateFlow.getValue();
        if (tryOnProductUiModel != null) {
            str = tryOnProductUiModel.f62183a;
        } else {
            SkuIdUiModel.f61763c.getClass();
            str = SkuIdUiModel.d;
        }
        TryOnProductUiModel tryOnProductUiModel2 = (TryOnProductUiModel) mutableStateFlow.getValue();
        if (tryOnProductUiModel2 == null || (beautyProductTypeUiModel = tryOnProductUiModel2.f62185c) == null) {
            beautyProductTypeUiModel = BeautyProductTypeUiModel.NONE;
        }
        Mc(new BeautyVtoTrackingUiModel.OnDualColorSliderOpenedEvent(listGc, str, beautyProductTypeUiModel, null));
    }

    @Override // com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel
    public final BeautyVtoRoutes z6() {
        if (this.y) {
            return this.s.f50207a.a() ? BeautyVtoRoutes.ShadeFinderScan.INSTANCE : BeautyVtoRoutes.ShadeFinderIntro.INSTANCE;
        }
        return BeautyVtoRoutes.Vto.INSTANCE;
    }
}
