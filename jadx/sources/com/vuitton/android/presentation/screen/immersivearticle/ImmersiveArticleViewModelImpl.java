package com.vuitton.android.presentation.screen.immersivearticle;

import android.app.Application;
import android.graphics.Bitmap;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.runtime.snapshots.StateListIterator;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.R;
import com.vuitton.android.core.events.AppEvent;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.immersivearticle.ImmersiveArticleMonitoring;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.usecase.account.accessibility.GetAllAccessibilityValuesUseCase;
import com.vuitton.android.domain.usecase.audioplayer.AddMediaItemUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ReportDYAddToWishlistEventUseCase;
import com.vuitton.android.domain.usecase.immersivearticle.GetImmersiveArticleDetailByKeyUseCase;
import com.vuitton.android.domain.usecase.landingpage.GetLandingPageDetailsByIdUseCase;
import com.vuitton.android.domain.usecase.model3dasset.GetModel3dAssetUseCase;
import com.vuitton.android.domain.usecase.products.GetSkusProductsListUseCase;
import com.vuitton.android.domain.usecase.video.GetLiveVideoUseCase;
import com.vuitton.android.domain.usecase.wishlist.AddProductToWishlistUseCase;
import com.vuitton.android.domain.usecase.wishlist.DeleteProductFromWishlistUseCase;
import com.vuitton.android.domain.usecase.wishlist.IsProductInWishlistUseCase;
import com.vuitton.android.presentation.common.editorial.mapper.EditorialModuleUiModelMapperKt;
import com.vuitton.android.presentation.common.editorial.models.LiveFormatUiModel;
import com.vuitton.android.presentation.common.editorial.models.LiveInfoUiModel;
import com.vuitton.android.presentation.link.builder.PassAppLinkBuilder;
import com.vuitton.android.presentation.model.common.A11ySettings;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.model.common.VideoIdUiModel;
import com.vuitton.android.presentation.model.common.mapper.AssetMapperKt;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.notification.NotificationUiModel;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerTracker;
import com.vuitton.android.presentation.screen.audioplayer.model.AudioPlayerItemUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Error3dType;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleFashionShowContentUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleFashionShowSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSizeCardUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleTitlesUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleTrackingUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleTrackingUiModelKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleType;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleViewState;
import com.vuitton.android.presentation.screen.immersivearticle.models.ProductsArticleSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.SectionThemeUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ScreenshotUiModel;
import com.vuitton.android.presentation.screen.wishlist.WishlistHelper;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.error.wishlist.WishlistError;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import com.vuitton.foundation.model.domain.model.account.accessibility.AccessibilityPreferenceType;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.analytics.HitType;
import com.vuitton.foundation.model.domain.model.audioplayer.AudioPlayerItem;
import com.vuitton.foundation.model.domain.model.common.AssetVideo;
import com.vuitton.foundation.model.domain.model.common.LiveVideoStatus;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.immersivearticle.ImmersiveArticlePage;
import com.vuitton.foundation.model.domain.model.immersivearticle.VideoCtaArticleSection;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import com.vuitton.foundation.model.domain.model.video.VideoId;
import defpackage.cj;
import defpackage.fc;
import defpackage.md;
import defpackage.n00;
import defpackage.tr;
import defpackage.v40;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
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
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;
import org.bouncycastle.asn1.eac.CertificateBody;
import retrofit2.HttpException;
import retrofit2.Response;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002BÁ\u0001\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020'\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u0010,\u001a\u00020+\u0012\u0006\u0010.\u001a\u00020-\u0012\u0006\u00100\u001a\u00020/¢\u0006\u0004\b1\u00102¨\u00063"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModel;", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Landroid/app/Application;", "application", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;", "appsFlyerTracker", "Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "userSessionService", "Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;", "passAppLinkBuilder", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "Lcom/vuitton/android/domain/usecase/audioplayer/AddMediaItemUseCase;", "addMediaItemUseCase", "Lcom/vuitton/android/domain/usecase/model3dasset/GetModel3dAssetUseCase;", "get3dIdAssetUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;", "isProductInWishlistUseCase", "Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;", "getSkusProductsListUseCase", "Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;", "addProductToWishlistUseCase", "Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;", "getAllAccessibilityValuesUseCase", "Lcom/vuitton/android/domain/usecase/landingpage/GetLandingPageDetailsByIdUseCase;", "getLandingPageDetailsByIdUseCase", "Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;", "deleteProductFromWishlistUseCase", "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;", "reportDYAddToWishlistEventUseCase", "Lcom/vuitton/android/domain/usecase/immersivearticle/GetImmersiveArticleDetailByKeyUseCase;", "getImmersiveArticleDetailByKeyUseCase", "Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;", "getLiveVideoUseCase", "<init>", "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Landroid/app/Application;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/audioplayer/AddMediaItemUseCase;Lcom/vuitton/android/domain/usecase/model3dasset/GetModel3dAssetUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;Lcom/vuitton/android/domain/usecase/landingpage/GetLandingPageDetailsByIdUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;Lcom/vuitton/android/domain/usecase/immersivearticle/GetImmersiveArticleDetailByKeyUseCase;Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ImmersiveArticleViewModelImpl extends ViewModel implements ImmersiveArticleViewModel {
    public final MutableStateFlow A;
    public final MutableStateFlow B;
    public final MutableStateFlow C;
    public final MutableStateFlow D;
    public final BufferedChannel E;
    public final MutableStateFlow F;
    public final MutableStateFlow G;
    public final InAppDispatch H;
    public MonitorAction I;
    public final StateFlow J;
    public Bitmap K;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f58272a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Monitor f58273b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Application f58274c;
    public final AnalyticsTracker d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LVEventSender f58275e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppsFlyerTracker f58276f;
    public final UserSessionService g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final PassAppLinkBuilder f58277h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final NotificationBuilder f58278i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AddMediaItemUseCase f58279j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final GetModel3dAssetUseCase f58280k;
    public final IsFeatureAvailableUseCase l;
    public final IsProductInWishlistUseCase m;
    public final GetSkusProductsListUseCase n;
    public final AddProductToWishlistUseCase o;
    public final GetAllAccessibilityValuesUseCase p;
    public final GetLandingPageDetailsByIdUseCase q;
    public final DeleteProductFromWishlistUseCase r;
    public final ReportDYAddToWishlistEventUseCase s;
    public final GetImmersiveArticleDetailByKeyUseCase t;
    public final GetLiveVideoUseCase u;
    public final String v;
    public final MutableStateFlow w;
    public final MutableStateFlow x;
    public final MutableStateFlow y;
    public final MutableStateFlow z;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl$2", f = "ImmersiveArticleViewModelImpl.kt", l = {198}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f58281b;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl$2$2, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/vuitton/android/core/events/AppEvent;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl$2$2", f = "ImmersiveArticleViewModelImpl.kt", l = {199}, m = "invokeSuspend", v = 2)
        final class C02842 extends SuspendLambda implements Function2<AppEvent, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f58283b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ ImmersiveArticleViewModelImpl f58284c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C02842(ImmersiveArticleViewModelImpl immersiveArticleViewModelImpl, Continuation continuation) {
                super(2, continuation);
                this.f58284c = immersiveArticleViewModelImpl;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new C02842(this.f58284c, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C02842) create((AppEvent) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f58283b;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    this.f58283b = 1;
                    if (ImmersiveArticleViewModelImpl.Dc(this.f58284c, this) == coroutineSingletons) {
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

        public AnonymousClass2(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return ImmersiveArticleViewModelImpl.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f58281b;
            if (i2 == 0) {
                ResultKt.b(obj);
                ImmersiveArticleViewModelImpl immersiveArticleViewModelImpl = ImmersiveArticleViewModelImpl.this;
                final SharedFlow sharedFlow = immersiveArticleViewModelImpl.f58275e.f43512c;
                Flow<AppEvent> flow = new Flow<AppEvent>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl$2$invokeSuspend$$inlined$filter$1

                    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl$2$invokeSuspend$$inlined$filter$1$2, reason: invalid class name */
                    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                    public final class AnonymousClass2<T> implements FlowCollector {

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public final /* synthetic */ FlowCollector f58286b;

                        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl$2$invokeSuspend$$inlined$filter$1$2$1, reason: invalid class name */
                        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                        @DebugMetadata(c = "com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl$2$invokeSuspend$$inlined$filter$1$2", f = "ImmersiveArticleViewModelImpl.kt", l = {217}, m = "emit", v = 2)
                        public final class AnonymousClass1 extends ContinuationImpl {

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            public /* synthetic */ Object f58287b;

                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                            public int f58288c;

                            public AnonymousClass1(Continuation continuation) {
                                super(continuation);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Object invokeSuspend(Object obj) {
                                this.f58287b = obj;
                                this.f58288c |= Integer.MIN_VALUE;
                                return AnonymousClass2.this.emit(null, this);
                            }
                        }

                        public AnonymousClass2(FlowCollector flowCollector) {
                            this.f58286b = flowCollector;
                        }

                        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj, Continuation continuation) {
                            AnonymousClass1 anonymousClass1;
                            if (continuation instanceof AnonymousClass1) {
                                anonymousClass1 = (AnonymousClass1) continuation;
                                int i2 = anonymousClass1.f58288c;
                                if ((i2 & Integer.MIN_VALUE) != 0) {
                                    anonymousClass1.f58288c = i2 - Integer.MIN_VALUE;
                                } else {
                                    anonymousClass1 = new AnonymousClass1(continuation);
                                }
                            } else {
                                anonymousClass1 = new AnonymousClass1(continuation);
                            }
                            Object obj2 = anonymousClass1.f58287b;
                            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                            int i3 = anonymousClass1.f58288c;
                            if (i3 == 0) {
                                ResultKt.b(obj2);
                                if (((AppEvent) obj) instanceof AppEvent.WishListUpdatedEvent) {
                                    anonymousClass1.f58288c = 1;
                                    if (this.f58286b.emit(obj, anonymousClass1) == coroutineSingletons) {
                                        return coroutineSingletons;
                                    }
                                }
                            } else {
                                if (i3 != 1) {
                                    md.k("call to 'resume' before 'invoke' with coroutine");
                                    return null;
                                }
                                ResultKt.b(obj2);
                            }
                            return Unit.f71739a;
                        }
                    }

                    @Override // kotlinx.coroutines.flow.Flow
                    public final Object f(FlowCollector flowCollector, Continuation continuation) {
                        Object objF = sharedFlow.f(new AnonymousClass2(flowCollector), continuation);
                        return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
                    }
                };
                C02842 c02842 = new C02842(immersiveArticleViewModelImpl, null);
                this.f58281b = 1;
                if (FlowKt.g(flow, c02842, this) == coroutineSingletons) {
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

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl$3, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl$3", f = "ImmersiveArticleViewModelImpl.kt", l = {205}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f58289b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f58290c;

        public AnonymousClass3(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return ImmersiveArticleViewModelImpl.this.new AnonymousClass3(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            MutableStateFlow mutableStateFlow;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f58290c;
            if (i2 == 0) {
                ResultKt.b(obj);
                ImmersiveArticleViewModelImpl immersiveArticleViewModelImpl = ImmersiveArticleViewModelImpl.this;
                MutableStateFlow mutableStateFlow2 = immersiveArticleViewModelImpl.D;
                IsFeatureAvailableUseCase isFeatureAvailableUseCase = immersiveArticleViewModelImpl.l;
                Feature[] featureArr = {Feature.NATIVE_SHARE_IMMERSIVE};
                this.f58289b = mutableStateFlow2;
                this.f58290c = 1;
                obj = isFeatureAvailableUseCase.c(featureArr, false, this);
                if (obj == coroutineSingletons) {
                    return coroutineSingletons;
                }
                mutableStateFlow = mutableStateFlow2;
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                mutableStateFlow = (MutableStateFlow) this.f58289b;
                ResultKt.b(obj);
            }
            mutableStateFlow.setValue(obj);
            return Unit.f71739a;
        }
    }

    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15, types: [kotlin.coroutines.Continuation, kotlin.coroutines.CoroutineContext, kotlinx.coroutines.CoroutineStart] */
    /* JADX WARN: Type inference failed for: r2v33 */
    @Inject
    public ImmersiveArticleViewModelImpl(SavedStateHandle savedStateHandle, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, Logger logger, Monitor monitor, Application application, AnalyticsTracker analyticsTracker, LVEventSender lVEventSender, AppsFlyerTracker appsFlyerTracker, UserSessionService userSessionService, PassAppLinkBuilder passAppLinkBuilder, NotificationBuilder notificationBuilder, AddMediaItemUseCase addMediaItemUseCase, GetModel3dAssetUseCase getModel3dAssetUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, IsProductInWishlistUseCase isProductInWishlistUseCase, GetSkusProductsListUseCase getSkusProductsListUseCase, AddProductToWishlistUseCase addProductToWishlistUseCase, GetAllAccessibilityValuesUseCase getAllAccessibilityValuesUseCase, GetLandingPageDetailsByIdUseCase getLandingPageDetailsByIdUseCase, DeleteProductFromWishlistUseCase deleteProductFromWishlistUseCase, ReportDYAddToWishlistEventUseCase reportDYAddToWishlistEventUseCase, GetImmersiveArticleDetailByKeyUseCase getImmersiveArticleDetailByKeyUseCase, GetLiveVideoUseCase getLiveVideoUseCase) {
        ?? r2;
        Object value;
        A11ySettings a11ySettings;
        savedStateHandle.getClass();
        requireUserInAppDispatchUseCase.getClass();
        logger.getClass();
        monitor.getClass();
        application.getClass();
        analyticsTracker.getClass();
        lVEventSender.getClass();
        appsFlyerTracker.getClass();
        userSessionService.getClass();
        passAppLinkBuilder.getClass();
        notificationBuilder.getClass();
        addMediaItemUseCase.getClass();
        getModel3dAssetUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        isProductInWishlistUseCase.getClass();
        getSkusProductsListUseCase.getClass();
        addProductToWishlistUseCase.getClass();
        getAllAccessibilityValuesUseCase.getClass();
        getLandingPageDetailsByIdUseCase.getClass();
        deleteProductFromWishlistUseCase.getClass();
        reportDYAddToWishlistEventUseCase.getClass();
        getImmersiveArticleDetailByKeyUseCase.getClass();
        getLiveVideoUseCase.getClass();
        this.f58272a = logger;
        this.f58273b = monitor;
        this.f58274c = application;
        this.d = analyticsTracker;
        this.f58275e = lVEventSender;
        this.f58276f = appsFlyerTracker;
        this.g = userSessionService;
        this.f58277h = passAppLinkBuilder;
        this.f58278i = notificationBuilder;
        this.f58279j = addMediaItemUseCase;
        this.f58280k = getModel3dAssetUseCase;
        this.l = isFeatureAvailableUseCase;
        this.m = isProductInWishlistUseCase;
        this.n = getSkusProductsListUseCase;
        this.o = addProductToWishlistUseCase;
        this.p = getAllAccessibilityValuesUseCase;
        this.q = getLandingPageDetailsByIdUseCase;
        this.r = deleteProductFromWishlistUseCase;
        this.s = reportDYAddToWishlistEventUseCase;
        this.t = getImmersiveArticleDetailByKeyUseCase;
        this.u = getLiveVideoUseCase;
        String str = (String) savedStateHandle.a("ARTICLE_KEY");
        this.v = str;
        String str2 = (String) savedStateHandle.a("ARTICLE_TYPE");
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(bool);
        this.w = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(bool);
        this.x = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(null);
        this.y = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(new ScreenshotUiModel(false, null, 3, null));
        this.z = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(null);
        this.A = mutableStateFlowA5;
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(Boolean.valueOf(userSessionService.b()));
        this.B = mutableStateFlowA6;
        MutableStateFlow mutableStateFlowA7 = StateFlowKt.a(new A11ySettings(false, false, false, 7, null));
        this.C = mutableStateFlowA7;
        MutableStateFlow mutableStateFlowA8 = StateFlowKt.a(bool);
        this.D = mutableStateFlowA8;
        this.E = ChannelKt.a(0, 7, null);
        MutableStateFlow mutableStateFlowA9 = StateFlowKt.a(new Lv3dViewerUiModel(null, null, null, null, false, null, false, CertificateBody.profileType, null));
        this.F = mutableStateFlowA9;
        Boolean bool2 = Boolean.TRUE;
        MutableStateFlow mutableStateFlowA10 = StateFlowKt.a(bool2);
        this.G = mutableStateFlowA10;
        this.H = requireUserInAppDispatchUseCase.f49912a.b();
        final Flow[] flowArr = {mutableStateFlowA3, mutableStateFlowA2, mutableStateFlowA, mutableStateFlowA4, mutableStateFlowA9, mutableStateFlowA10, mutableStateFlowA5, mutableStateFlowA6, mutableStateFlowA8, mutableStateFlowA7};
        Flow<ImmersiveArticleViewState> flow = new Flow<ImmersiveArticleViewState>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl$special$$inlined$combine$1$3", f = "ImmersiveArticleViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super ImmersiveArticleViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f58342b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f58343c;
                public /* synthetic */ Object[] d;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3);
                    anonymousClass3.f58343c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f58343c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f58342b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        ImmersiveArticleUiModel immersiveArticleUiModel = (ImmersiveArticleUiModel) objArr[0];
                        Object obj2 = objArr[1];
                        obj2.getClass();
                        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                        Object obj3 = objArr[2];
                        obj3.getClass();
                        boolean zBooleanValue2 = ((Boolean) obj3).booleanValue();
                        Object obj4 = objArr[3];
                        obj4.getClass();
                        ScreenshotUiModel screenshotUiModel = (ScreenshotUiModel) obj4;
                        Object obj5 = objArr[4];
                        obj5.getClass();
                        Lv3dViewerUiModel lv3dViewerUiModel = (Lv3dViewerUiModel) obj5;
                        Object obj6 = objArr[5];
                        obj6.getClass();
                        boolean zBooleanValue3 = ((Boolean) obj6).booleanValue();
                        AudioPlayerItemUiModel audioPlayerItemUiModel = (AudioPlayerItemUiModel) objArr[6];
                        Object obj7 = objArr[7];
                        obj7.getClass();
                        boolean zBooleanValue4 = ((Boolean) obj7).booleanValue();
                        Object obj8 = objArr[8];
                        obj8.getClass();
                        boolean zBooleanValue5 = ((Boolean) obj8).booleanValue();
                        Object obj9 = objArr[9];
                        obj9.getClass();
                        ImmersiveArticleViewState immersiveArticleViewState = new ImmersiveArticleViewState(zBooleanValue2, zBooleanValue, immersiveArticleUiModel, screenshotUiModel, lv3dViewerUiModel, zBooleanValue3, audioPlayerItemUiModel, zBooleanValue5, zBooleanValue4, (A11ySettings) obj9);
                        this.f58343c = null;
                        this.d = null;
                        this.f58342b = 1;
                        if (flowCollector.emit(immersiveArticleViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl$special$$inlined$combine$1.2
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return new Object[flowArr2.length];
                    }
                }, new AnonymousClass3(null), flowCollector, flowArr2);
                return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
            }
        };
        CloseableCoroutineScope closeableCoroutineScopeA = ViewModelKt.a(this);
        SharingStarted.f74985a.getClass();
        this.J = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new ImmersiveArticleViewState(true, false, null, null, null, false, null, false, false, null, 1022, null));
        if (str == null) {
            r2 = 0;
        } else {
            if (Intrinsics.c(str2, ImmersiveArticleType.IMMERSIVE_ARTICLE.getType())) {
                Fc(str);
            } else if (Intrinsics.c(str2, ImmersiveArticleType.SEO_LANDING_PAGE.getType())) {
                mutableStateFlowA.setValue(bool2);
                r2 = 0;
                BuildersKt.c(ViewModelKt.a(this), null, null, new ImmersiveArticleViewModelImpl$getSeoLandingPageDetails$1(this, str, System.currentTimeMillis(), null), 3);
            }
            r2 = 0;
        }
        BuildersKt.c(ViewModelKt.a(this), r2, r2, new AnonymousClass2(r2), 3);
        BuildersKt.c(ViewModelKt.a(this), r2, r2, new ImmersiveArticleViewModelImpl$collectLoginState$1(this, r2), 3);
        do {
            value = mutableStateFlowA7.getValue();
            GetAllAccessibilityValuesUseCase getAllAccessibilityValuesUseCase2 = this.p;
            AccessibilityPreferenceType accessibilityPreferenceType = AccessibilityPreferenceType.SIMPLIFY_NAVIGATION;
            AccessibilityPreferenceType accessibilityPreferenceType2 = AccessibilityPreferenceType.DISABLE_AUTOPLAY;
            AccessibilityPreferenceType accessibilityPreferenceType3 = AccessibilityPreferenceType.ENHANCED_CONTRAST;
            Object objA = getAllAccessibilityValuesUseCase2.a(accessibilityPreferenceType, accessibilityPreferenceType2, accessibilityPreferenceType3);
            if (Result.a(objA) == null) {
                Map map = (Map) objA;
                Boolean bool3 = (Boolean) map.get(accessibilityPreferenceType2);
                boolean zBooleanValue = bool3 != null ? bool3.booleanValue() : false;
                Boolean bool4 = (Boolean) map.get(accessibilityPreferenceType3);
                boolean zBooleanValue2 = bool4 != null ? bool4.booleanValue() : false;
                Boolean bool5 = (Boolean) map.get(accessibilityPreferenceType);
                a11ySettings = new A11ySettings(zBooleanValue, zBooleanValue2, bool5 != null ? bool5.booleanValue() : false);
            } else {
                a11ySettings = new A11ySettings(false, false, false, 7, null);
            }
        } while (!mutableStateFlowA7.i(value, a11ySettings));
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass3(null), 3);
    }

    public static final boolean Ac(ImmersiveArticleViewModelImpl immersiveArticleViewModelImpl, ImmersiveArticlePage immersiveArticlePage) {
        List list = immersiveArticlePage.f67677c;
        if (list != null && !list.isEmpty() && (list.get(0) instanceof VideoCtaArticleSection)) {
            Object obj = list.get(0);
            obj.getClass();
            if (Intrinsics.c(((VideoCtaArticleSection) obj).f67740b, "video-cta")) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    public static final Object Bc(ImmersiveArticleViewModelImpl immersiveArticleViewModelImpl, ImmersiveArticleFashionShowSectionUiModel immersiveArticleFashionShowSectionUiModel, String str, ContinuationImpl continuationImpl) {
        ImmersiveArticleViewModelImpl$reloadLiveSection$1 immersiveArticleViewModelImpl$reloadLiveSection$1;
        String str2;
        Object objA;
        SnapshotStateList snapshotStateList;
        Instant instant;
        ImmersiveArticleFashionShowSectionUiModel immersiveArticleFashionShowSectionUiModel2 = immersiveArticleFashionShowSectionUiModel;
        if (continuationImpl instanceof ImmersiveArticleViewModelImpl$reloadLiveSection$1) {
            immersiveArticleViewModelImpl$reloadLiveSection$1 = (ImmersiveArticleViewModelImpl$reloadLiveSection$1) continuationImpl;
            int i2 = immersiveArticleViewModelImpl$reloadLiveSection$1.f58329f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                immersiveArticleViewModelImpl$reloadLiveSection$1.f58329f = i2 - Integer.MIN_VALUE;
            } else {
                immersiveArticleViewModelImpl$reloadLiveSection$1 = new ImmersiveArticleViewModelImpl$reloadLiveSection$1(immersiveArticleViewModelImpl, continuationImpl);
            }
        } else {
            immersiveArticleViewModelImpl$reloadLiveSection$1 = new ImmersiveArticleViewModelImpl$reloadLiveSection$1(immersiveArticleViewModelImpl, continuationImpl);
        }
        Object obj = immersiveArticleViewModelImpl$reloadLiveSection$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = immersiveArticleViewModelImpl$reloadLiveSection$1.f58329f;
        if (i3 == 0) {
            ResultKt.b(obj);
            GetLiveVideoUseCase getLiveVideoUseCase = immersiveArticleViewModelImpl.u;
            VideoIdUiModel.Companion companion = VideoIdUiModel.f51798c;
            String str3 = immersiveArticleFashionShowSectionUiModel2.f58677h.f50862a;
            companion.getClass();
            VideoId.Companion companion2 = VideoId.f68280a;
            if (str3 == null) {
                companion2.getClass();
                str3 = VideoId.f68281b;
            }
            immersiveArticleViewModelImpl$reloadLiveSection$1.f58326b = immersiveArticleFashionShowSectionUiModel2;
            str2 = str;
            immersiveArticleViewModelImpl$reloadLiveSection$1.f58327c = str2;
            immersiveArticleViewModelImpl$reloadLiveSection$1.f58329f = 1;
            objA = getLiveVideoUseCase.a(str3, immersiveArticleViewModelImpl$reloadLiveSection$1);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            String str4 = immersiveArticleViewModelImpl$reloadLiveSection$1.f58327c;
            ImmersiveArticleFashionShowSectionUiModel immersiveArticleFashionShowSectionUiModel3 = immersiveArticleViewModelImpl$reloadLiveSection$1.f58326b;
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
            str2 = str4;
            immersiveArticleFashionShowSectionUiModel2 = immersiveArticleFashionShowSectionUiModel3;
        }
        Result.Companion companion3 = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            AssetVideo assetVideo = (AssetVideo) objA;
            ImmersiveArticleUiModel immersiveArticleUiModel = (ImmersiveArticleUiModel) immersiveArticleViewModelImpl.y.getValue();
            if (immersiveArticleUiModel != null && (snapshotStateList = immersiveArticleUiModel.f58793c) != null) {
                ListIterator listIterator = snapshotStateList.listIterator();
                int i4 = 0;
                while (true) {
                    StateListIterator stateListIterator = (StateListIterator) listIterator;
                    if (!stateListIterator.hasNext()) {
                        i4 = -1;
                        break;
                    }
                    ImmersiveArticleSectionUiModel immersiveArticleSectionUiModel = (ImmersiveArticleSectionUiModel) stateListIterator.next();
                    if ((immersiveArticleSectionUiModel instanceof ImmersiveArticleFashionShowSectionUiModel) && Intrinsics.c(((ImmersiveArticleFashionShowSectionUiModel) immersiveArticleSectionUiModel).f58672a, str2)) {
                        break;
                    }
                    i4++;
                }
                if (i4 != -1) {
                    AssetVideoUiModel assetVideoUiModelC = AssetMapperKt.c(assetVideo);
                    LiveInfoUiModel liveInfoUiModelA = EditorialModuleUiModelMapperKt.a(assetVideo);
                    boolean z = assetVideo.f67115f == LiveVideoStatus.LIVE_UPCOMING && (instant = assetVideo.f67114e) != null && instant.isAfter(Instant.now());
                    String str5 = immersiveArticleFashionShowSectionUiModel2.f58672a;
                    String str6 = immersiveArticleFashionShowSectionUiModel2.f58673b;
                    ImmersiveArticleTitlesUiModel immersiveArticleTitlesUiModel = immersiveArticleFashionShowSectionUiModel2.f58674c;
                    ImmersiveArticleTitlesUiModel immersiveArticleTitlesUiModel2 = immersiveArticleFashionShowSectionUiModel2.d;
                    AssetUiModel assetUiModel = immersiveArticleFashionShowSectionUiModel2.f58675e;
                    ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModel = immersiveArticleFashionShowSectionUiModel2.f58676f;
                    LiveFormatUiModel liveFormatUiModel = immersiveArticleFashionShowSectionUiModel2.f58679j;
                    ImmersiveArticleFashionShowContentUiModel immersiveArticleFashionShowContentUiModel = immersiveArticleFashionShowSectionUiModel2.f58680k;
                    SectionThemeUiModel sectionThemeUiModel = immersiveArticleFashionShowSectionUiModel2.l;
                    SectionThemeUiModel sectionThemeUiModel2 = immersiveArticleFashionShowSectionUiModel2.m;
                    str5.getClass();
                    str6.getClass();
                    immersiveArticleTitlesUiModel.getClass();
                    immersiveArticleTitlesUiModel2.getClass();
                    assetUiModel.getClass();
                    immersiveArticleSizeCardUiModel.getClass();
                    liveFormatUiModel.getClass();
                    snapshotStateList.set(i4, new ImmersiveArticleFashionShowSectionUiModel(str5, str6, immersiveArticleTitlesUiModel, immersiveArticleTitlesUiModel2, assetUiModel, immersiveArticleSizeCardUiModel, assetVideoUiModelC, liveInfoUiModelA, z, liveFormatUiModel, immersiveArticleFashionShowContentUiModel, sectionThemeUiModel, sectionThemeUiModel2));
                }
            }
        }
        Throwable thA = Result.a(objA);
        if (thA != null) {
            immersiveArticleViewModelImpl.f58272a.c("ImmersiveArticleViewModelImpl", thA.getMessage(), thA);
        }
        return Unit.f71739a;
    }

    public static final void Cc(ImmersiveArticleViewModelImpl immersiveArticleViewModelImpl, NotificationUiModel notificationUiModel) {
        BuildersKt.c(ViewModelKt.a(immersiveArticleViewModelImpl), null, null, new ImmersiveArticleViewModelImpl$showNotification$1(immersiveArticleViewModelImpl, notificationUiModel, null), 3);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0082  */
    /* JADX WARN: Code duplicated, block: B:41:0x014d  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0092 -> B:25:0x00af). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00f9 -> B:33:0x00fb). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x010d -> B:34:0x010a). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0137 -> B:39:0x013f). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x014d -> B:40:0x014a). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object Dc(com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl r21, kotlin.coroutines.jvm.internal.ContinuationImpl r22) {
        /*
            Method dump skipped, instruction units count: 346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl.Dc(com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static final void Ec(ImmersiveArticleViewModelImpl immersiveArticleViewModelImpl, String str, boolean z, boolean z2) {
        SnapshotStateList snapshotStateList;
        ProductsArticleSectionUiModel productsArticleSectionUiModel;
        List list;
        ImmersiveArticleUiModel immersiveArticleUiModel = (ImmersiveArticleUiModel) immersiveArticleViewModelImpl.y.getValue();
        if (immersiveArticleUiModel == null || (snapshotStateList = immersiveArticleUiModel.f58793c) == null) {
            return;
        }
        ListIterator listIterator = snapshotStateList.listIterator();
        int i2 = 0;
        while (true) {
            StateListIterator stateListIterator = (StateListIterator) listIterator;
            if (!stateListIterator.hasNext()) {
                return;
            }
            Object next = stateListIterator.next();
            int i3 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt.t0();
                throw null;
            }
            ImmersiveArticleSectionUiModel immersiveArticleSectionUiModel = (ImmersiveArticleSectionUiModel) next;
            if ((immersiveArticleSectionUiModel instanceof ProductsArticleSectionUiModel) && (list = (productsArticleSectionUiModel = (ProductsArticleSectionUiModel) immersiveArticleSectionUiModel).f58813b) != null) {
                List<ProductsArticleSectionUiModel.ImmersiveProductUiModel> list2 = list;
                if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                    Iterator it = list2.iterator();
                    while (it.hasNext()) {
                        if (Intrinsics.c(((ProductsArticleSectionUiModel.ImmersiveProductUiModel) it.next()).f58817a, str)) {
                            ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                            for (ProductsArticleSectionUiModel.ImmersiveProductUiModel immersiveProductUiModelA : list2) {
                                if (Intrinsics.c(immersiveProductUiModelA.f58817a, str)) {
                                    ProductsArticleSectionUiModel.ProductInfoUiModel productInfoUiModel = immersiveProductUiModelA.f58819c;
                                    immersiveProductUiModelA = ProductsArticleSectionUiModel.ImmersiveProductUiModel.a(immersiveProductUiModelA, productInfoUiModel != null ? ProductsArticleSectionUiModel.ProductInfoUiModel.a(productInfoUiModel, z, z2, 39) : null);
                                }
                                arrayList.add(immersiveProductUiModelA);
                            }
                            snapshotStateList.set(i2, ProductsArticleSectionUiModel.b(productsArticleSectionUiModel, arrayList));
                            break;
                        }
                    }
                }
            }
            i2 = i3;
        }
    }

    public static final StringResourceUiModel yc(ImmersiveArticleViewModelImpl immersiveArticleViewModelImpl, Throwable th) {
        Response response;
        if (th instanceof WishlistError) {
            String strJ = StringKtExtKt.j(((WishlistError) th).f66229b);
            return strJ != null ? new StringResourceUiModel.Text(strJ) : new StringResourceUiModel.ResId(R.string.generic_api_error_message, null, 2, null);
        }
        Throwable cause = th.getCause();
        HttpException httpException = cause instanceof HttpException ? (HttpException) cause : null;
        String strA = WishlistHelper.a((httpException == null || (response = httpException.d) == null) ? null : response.f79451c);
        return strA != null ? new StringResourceUiModel.Text(strA) : new StringResourceUiModel.ResId(R.string.error_generic, null, 2, null);
    }

    public static final void zc(ImmersiveArticleViewModelImpl immersiveArticleViewModelImpl, String str) {
        DynatraceMonitorAction dynatraceMonitorActionA = immersiveArticleViewModelImpl.f58273b.a(immersiveArticleViewModelImpl.H, ImmersiveArticleMonitoring.Action.LoadImmersive3DModels.f48911a);
        String str2 = immersiveArticleViewModelImpl.v;
        if (str2 == null) {
            str2 = "";
        }
        dynatraceMonitorActionA.c(str2, com.batch.android.s.b.a.f24015b);
        dynatraceMonitorActionA.c(str != null ? str : "", "sku");
        BuildersKt.c(ViewModelKt.a(immersiveArticleViewModelImpl), null, null, new ImmersiveArticleViewModelImpl$get3dAsset$1(str, immersiveArticleViewModelImpl, dynatraceMonitorActionA, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModel
    public final void A3() {
        AudioPlayerItemUiModel audioPlayerItemUiModel = (AudioPlayerItemUiModel) this.A.getValue();
        if (audioPlayerItemUiModel != null) {
            AudioPlayerItem audioPlayerItem = new AudioPlayerItem(audioPlayerItemUiModel.f53256a, audioPlayerItemUiModel.f53257b, audioPlayerItemUiModel.f53258c, audioPlayerItemUiModel.d, audioPlayerItemUiModel.f53259e);
            AddMediaItemUseCase addMediaItemUseCase = this.f58279j;
            addMediaItemUseCase.getClass();
            addMediaItemUseCase.f49321a.a(audioPlayerItem);
        }
    }

    public final void Fc(String str) {
        str.getClass();
        this.w.setValue(Boolean.TRUE);
        long jCurrentTimeMillis = System.currentTimeMillis();
        ImmersiveArticleMonitoring.Action.OpenImmersiveArticle openImmersiveArticle = ImmersiveArticleMonitoring.Action.OpenImmersiveArticle.f48913a;
        Monitor monitor = this.f58273b;
        InAppDispatch inAppDispatch = this.H;
        DynatraceMonitorAction dynatraceMonitorActionA = monitor.a(inAppDispatch, openImmersiveArticle);
        dynatraceMonitorActionA.c(str, com.batch.android.s.b.a.f24015b);
        DynatraceMonitorAction dynatraceMonitorActionA2 = monitor.a(inAppDispatch, ImmersiveArticleMonitoring.Action.OpenImmersiveArticleFull.f48914a);
        this.I = dynatraceMonitorActionA2;
        dynatraceMonitorActionA2.c(str, com.batch.android.s.b.a.f24015b);
        Result.Companion companion = Result.INSTANCE;
        BuildersKt.c(ViewModelKt.a(this), null, null, new ImmersiveArticleViewModelImpl$getArticleDetail$1(this, str, jCurrentTimeMillis, dynatraceMonitorActionA, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModel
    public final void L1() {
        this.w.setValue(Boolean.FALSE);
    }

    @Override // com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModel
    public final void Q2(Error3dType error3dType) {
        error3dType.getClass();
        MutableStateFlow mutableStateFlow = this.F;
        mutableStateFlow.setValue(Lv3dViewerUiModel.a((Lv3dViewerUiModel) mutableStateFlow.getValue(), null, null, error3dType, 95));
    }

    @Override // com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModel
    public final void T1() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new ImmersiveArticleViewModelImpl$hideScreenshotNotification$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModel
    public final void U8(ImmersiveArticleTrackingUiModel immersiveArticleTrackingUiModel) {
        Hit defaultEventHit;
        Hit.EventHit.DefaultEventHit defaultEventHit2;
        String str;
        Hit.EventHit.DefaultEventHit defaultEventHit3;
        String str2;
        immersiveArticleTrackingUiModel.getClass();
        String strG = "seo_landing_page";
        if (immersiveArticleTrackingUiModel instanceof ImmersiveArticleTrackingUiModel.ImmersiveArticleScreen) {
            ImmersiveArticleTrackingUiModel.ImmersiveArticleScreen immersiveArticleScreen = (ImmersiveArticleTrackingUiModel.ImmersiveArticleScreen) immersiveArticleTrackingUiModel;
            String str3 = immersiveArticleScreen.f58728a;
            ImmersiveArticleType immersiveArticleType = immersiveArticleScreen.f58729b;
            int[] iArr = ImmersiveArticleTrackingUiModelKt.WhenMappings.f58789a;
            int i2 = iArr[immersiveArticleType.ordinal()];
            if (i2 == 1) {
                strG = tr.g("LVPass/fashion_show/", str3);
            } else if (i2 != 2) {
                v40.g();
                return;
            }
            String str4 = strG;
            int i3 = iArr[immersiveArticleType.ordinal()];
            String strG2 = "recommendation";
            if (i3 == 1) {
                str2 = "news_article";
            } else {
                if (i3 != 2) {
                    v40.g();
                    return;
                }
                str2 = "recommendation";
            }
            int i4 = iArr[immersiveArticleType.ordinal()];
            if (i4 == 1) {
                strG2 = tr.g("fashion_show/", str3);
            } else if (i4 != 2) {
                v40.g();
                return;
            }
            String str5 = strG2;
            if (str3 == null) {
                str3 = new String();
            }
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, str4, str5, str2, CollectionsKt.O(new AdditionalProperty.ContentId(str3)), 1, null);
        } else {
            if (immersiveArticleTrackingUiModel instanceof ImmersiveArticleTrackingUiModel.ModuleVideoClickEvent) {
                ImmersiveArticleTrackingUiModel.ModuleVideoClickEvent moduleVideoClickEvent = (ImmersiveArticleTrackingUiModel.ModuleVideoClickEvent) immersiveArticleTrackingUiModel;
                String str6 = moduleVideoClickEvent.f58735a;
                ImmersiveArticleType immersiveArticleType2 = moduleVideoClickEvent.f58737c;
                int i5 = ImmersiveArticleTrackingUiModelKt.WhenMappings.f58789a[immersiveArticleType2.ordinal()];
                if (i5 == 1) {
                    strG = tr.g("LVPass/fashion_show/", str6);
                } else if (i5 != 2) {
                    v40.g();
                    return;
                }
                defaultEventHit2 = new Hit.EventHit.DefaultEventHit(null, strG, "video_cta", ImmersiveArticleTrackingUiModelKt.c(immersiveArticleType2, "explore"), ImmersiveArticleTrackingUiModelKt.b(immersiveArticleType2, "click"), null, CollectionsKt.P(ImmersiveArticleTrackingUiModelKt.a(immersiveArticleType2), new AdditionalProperty.ArticleId(str6), new AdditionalProperty.ModuleId(moduleVideoClickEvent.f58736b)), 33, null);
            } else if (immersiveArticleTrackingUiModel instanceof ImmersiveArticleTrackingUiModel.ModuleLookClickEvent) {
                ImmersiveArticleTrackingUiModel.ModuleLookClickEvent moduleLookClickEvent = (ImmersiveArticleTrackingUiModel.ModuleLookClickEvent) immersiveArticleTrackingUiModel;
                String str7 = moduleLookClickEvent.f58732a;
                ImmersiveArticleType immersiveArticleType3 = moduleLookClickEvent.f58734c;
                defaultEventHit2 = new Hit.EventHit.DefaultEventHit(null, ImmersiveArticleTrackingUiModelKt.e(immersiveArticleType3, "LVPass/fashion_show/" + str7), "look_cta", ImmersiveArticleTrackingUiModelKt.c(immersiveArticleType3, "explore"), ImmersiveArticleTrackingUiModelKt.b(immersiveArticleType3, "click"), null, CollectionsKt.P(ImmersiveArticleTrackingUiModelKt.a(immersiveArticleType3), new AdditionalProperty.ArticleId(str7), new AdditionalProperty.ModuleId(moduleLookClickEvent.f58733b)), 33, null);
            } else if (immersiveArticleTrackingUiModel instanceof ImmersiveArticleTrackingUiModel.ModuleDeeplinkClickEvent) {
                ImmersiveArticleTrackingUiModel.ModuleDeeplinkClickEvent moduleDeeplinkClickEvent = (ImmersiveArticleTrackingUiModel.ModuleDeeplinkClickEvent) immersiveArticleTrackingUiModel;
                String str8 = moduleDeeplinkClickEvent.f58730a;
                ImmersiveArticleType immersiveArticleType4 = moduleDeeplinkClickEvent.f58731b;
                defaultEventHit2 = new Hit.EventHit.DefaultEventHit(null, ImmersiveArticleTrackingUiModelKt.e(immersiveArticleType4, "LVPass/fashion_show/" + str8), "deeplink_cta", ImmersiveArticleTrackingUiModelKt.c(immersiveArticleType4, "explore"), ImmersiveArticleTrackingUiModelKt.b(immersiveArticleType4, "click"), null, CollectionsKt.P(ImmersiveArticleTrackingUiModelKt.a(immersiveArticleType4), new AdditionalProperty.ArticleId(str8)), 33, null);
            } else if (immersiveArticleTrackingUiModel instanceof ImmersiveArticleTrackingUiModel.ModuleWallpaperClickEvent) {
                ImmersiveArticleTrackingUiModel.ModuleWallpaperClickEvent moduleWallpaperClickEvent = (ImmersiveArticleTrackingUiModel.ModuleWallpaperClickEvent) immersiveArticleTrackingUiModel;
                String str9 = moduleWallpaperClickEvent.f58738a;
                ImmersiveArticleType immersiveArticleType5 = moduleWallpaperClickEvent.f58739b;
                defaultEventHit2 = new Hit.EventHit.DefaultEventHit(null, ImmersiveArticleTrackingUiModelKt.e(immersiveArticleType5, "LVPass/fashion_show/" + str9), "wallpaper", ImmersiveArticleTrackingUiModelKt.c(immersiveArticleType5, "explore"), ImmersiveArticleTrackingUiModelKt.b(immersiveArticleType5, "download"), null, CollectionsKt.P(ImmersiveArticleTrackingUiModelKt.a(immersiveArticleType5), new AdditionalProperty.ArticleId(str9)), 33, null);
            } else if (immersiveArticleTrackingUiModel instanceof ImmersiveArticleTrackingUiModel.CtaListClickEvent) {
                ImmersiveArticleTrackingUiModel.CtaListClickEvent ctaListClickEvent = (ImmersiveArticleTrackingUiModel.CtaListClickEvent) immersiveArticleTrackingUiModel;
                String str10 = ctaListClickEvent.f58720a;
                ImmersiveArticleType immersiveArticleType6 = ctaListClickEvent.f58722c;
                defaultEventHit2 = new Hit.EventHit.DefaultEventHit(null, ImmersiveArticleTrackingUiModelKt.e(immersiveArticleType6, "LVPass/fashion_show/" + str10), ctaListClickEvent.d, ImmersiveArticleTrackingUiModelKt.c(immersiveArticleType6, "explore"), ImmersiveArticleTrackingUiModelKt.b(immersiveArticleType6, "click"), null, CollectionsKt.P(new AdditionalProperty.ArticleId(str10), new AdditionalProperty.ModuleId(ctaListClickEvent.f58721b), ImmersiveArticleTrackingUiModelKt.a(immersiveArticleType6), new AdditionalProperty.Index(ctaListClickEvent.f58723e)), 33, null);
            } else {
                if (immersiveArticleTrackingUiModel instanceof ImmersiveArticleTrackingUiModel.ProductClickEvent) {
                    ImmersiveArticleTrackingUiModel.ProductClickEvent productClickEvent = (ImmersiveArticleTrackingUiModel.ProductClickEvent) immersiveArticleTrackingUiModel;
                    String str11 = productClickEvent.d;
                    String str12 = productClickEvent.f58768a;
                    ImmersiveArticleType immersiveArticleType7 = productClickEvent.f58770c;
                    String strE = ImmersiveArticleTrackingUiModelKt.e(immersiveArticleType7, "LVPass/fashion_show/".concat(str12));
                    String strB = ImmersiveArticleTrackingUiModelKt.b(immersiveArticleType7, "product_selection");
                    String strC = ImmersiveArticleTrackingUiModelKt.c(immersiveArticleType7, "navigation");
                    AdditionalProperty.ArticleId articleId = new AdditionalProperty.ArticleId(str12);
                    AdditionalProperty.ModuleId moduleId = new AdditionalProperty.ModuleId(productClickEvent.f58769b);
                    AdditionalProperty.ContentType contentTypeA = ImmersiveArticleTrackingUiModelKt.a(immersiveArticleType7);
                    String str13 = productClickEvent.f58771e;
                    defaultEventHit = new Hit.EventHit.DefaultEventHit(null, strE, str11, strC, strB, null, CollectionsKt.P(articleId, moduleId, contentTypeA, new AdditionalProperty.Price(str13 != null ? str13 : ""), new AdditionalProperty.ProductSku(n00.v(str11))), 33, null);
                } else if (immersiveArticleTrackingUiModel instanceof ImmersiveArticleTrackingUiModel.StickyBannerCtaClickEvent) {
                    ImmersiveArticleTrackingUiModel.StickyBannerCtaClickEvent stickyBannerCtaClickEvent = (ImmersiveArticleTrackingUiModel.StickyBannerCtaClickEvent) immersiveArticleTrackingUiModel;
                    String str14 = stickyBannerCtaClickEvent.f58787a;
                    ImmersiveArticleType immersiveArticleType8 = stickyBannerCtaClickEvent.f58788b;
                    defaultEventHit2 = new Hit.EventHit.DefaultEventHit(null, ImmersiveArticleTrackingUiModelKt.e(immersiveArticleType8, "LVPass/fashion_show/" + str14), "click_banner_cta", ImmersiveArticleTrackingUiModelKt.c(immersiveArticleType8, "immersive_article"), "click", null, CollectionsKt.O(new AdditionalProperty.ArticleId(str14)), 33, null);
                } else if (immersiveArticleTrackingUiModel instanceof ImmersiveArticleTrackingUiModel.ProductsTabsTabClickedEvent) {
                    ImmersiveArticleTrackingUiModel.ProductsTabsTabClickedEvent productsTabsTabClickedEvent = (ImmersiveArticleTrackingUiModel.ProductsTabsTabClickedEvent) immersiveArticleTrackingUiModel;
                    ImmersiveArticleType immersiveArticleType9 = productsTabsTabClickedEvent.f58777c;
                    defaultEventHit = new Hit.EventHit.DefaultEventHit(null, ImmersiveArticleTrackingUiModelKt.e(immersiveArticleType9, "immersive_article"), productsTabsTabClickedEvent.d, ImmersiveArticleTrackingUiModelKt.c(immersiveArticleType9, "immersive_article"), "tab_selector", ImmersiveArticleTrackingUiModelKt.d(immersiveArticleType9), CollectionsKt.P(new AdditionalProperty.ArticleId(productsTabsTabClickedEvent.f58775a), new AdditionalProperty.ModuleId(productsTabsTabClickedEvent.f58776b)), 1, null);
                } else {
                    if (immersiveArticleTrackingUiModel instanceof ImmersiveArticleTrackingUiModel.On3DTouchedEvent) {
                        ImmersiveArticleTrackingUiModel.On3DTouchedEvent on3DTouchedEvent = (ImmersiveArticleTrackingUiModel.On3DTouchedEvent) immersiveArticleTrackingUiModel;
                        ImmersiveArticleType immersiveArticleType10 = on3DTouchedEvent.f58749b;
                        defaultEventHit3 = new Hit.EventHit.DefaultEventHit(null, ImmersiveArticleTrackingUiModelKt.e(immersiveArticleType10, "LVPass/fashion_show/".concat(on3DTouchedEvent.f58748a)), "3d_move", ImmersiveArticleTrackingUiModelKt.c(immersiveArticleType10, "3d_model"), "product_sheet", null, CollectionsKt.O(new AdditionalProperty.Sku(on3DTouchedEvent.f58750c, null)), 33, null);
                    } else if (immersiveArticleTrackingUiModel instanceof ImmersiveArticleTrackingUiModel.On3DZoomEvent) {
                        ImmersiveArticleTrackingUiModel.On3DZoomEvent on3DZoomEvent = (ImmersiveArticleTrackingUiModel.On3DZoomEvent) immersiveArticleTrackingUiModel;
                        ImmersiveArticleType immersiveArticleType11 = on3DZoomEvent.f58752b;
                        defaultEventHit3 = new Hit.EventHit.DefaultEventHit(null, ImmersiveArticleTrackingUiModelKt.e(immersiveArticleType11, "LVPass/fashion_show/".concat(on3DZoomEvent.f58751a)), "3d_zoom", ImmersiveArticleTrackingUiModelKt.c(immersiveArticleType11, "3d_model"), "product_sheet", null, CollectionsKt.O(new AdditionalProperty.Sku(on3DZoomEvent.f58753c, null)), 33, null);
                    } else if (immersiveArticleTrackingUiModel instanceof ImmersiveArticleTrackingUiModel.ExpansionListToggleEvent) {
                        ImmersiveArticleTrackingUiModel.ExpansionListToggleEvent expansionListToggleEvent = (ImmersiveArticleTrackingUiModel.ExpansionListToggleEvent) immersiveArticleTrackingUiModel;
                        ImmersiveArticleType immersiveArticleType12 = expansionListToggleEvent.f58725b;
                        defaultEventHit3 = new Hit.EventHit.DefaultEventHit(null, ImmersiveArticleTrackingUiModelKt.e(immersiveArticleType12, "services"), expansionListToggleEvent.f58727e ? "expand_panel_info" : "collapse_panel_info", ImmersiveArticleTrackingUiModelKt.c(immersiveArticleType12, "immersive_article"), "click", null, CollectionsKt.P(new AdditionalProperty.ArticleId(expansionListToggleEvent.f58724a), new AdditionalProperty.ModuleId(expansionListToggleEvent.f58726c), new AdditionalProperty.Index(expansionListToggleEvent.d)), 33, null);
                    } else if (immersiveArticleTrackingUiModel instanceof ImmersiveArticleTrackingUiModel.OnClickSliderEvent) {
                        ImmersiveArticleTrackingUiModel.OnClickSliderEvent onClickSliderEvent = (ImmersiveArticleTrackingUiModel.OnClickSliderEvent) immersiveArticleTrackingUiModel;
                        ImmersiveArticleType immersiveArticleType13 = onClickSliderEvent.f58754a;
                        String strE2 = ImmersiveArticleTrackingUiModelKt.e(immersiveArticleType13, "LVPass/Explore/immersive_article");
                        String strC2 = ImmersiveArticleTrackingUiModelKt.c(immersiveArticleType13, "immersive_article");
                        String strD = ImmersiveArticleTrackingUiModelKt.d(immersiveArticleType13);
                        String str15 = onClickSliderEvent.f58755b;
                        SkuId.Companion companion = SkuId.INSTANCE;
                        str15.getClass();
                        defaultEventHit3 = new Hit.EventHit.DefaultEventHit(null, strE2, "click_on_slider", strC2, "click", strD, CollectionsKt.O(new AdditionalProperty.Sku(str15, null)), 1, null);
                    } else if (immersiveArticleTrackingUiModel instanceof ImmersiveArticleTrackingUiModel.OnSwipeSliderEvent) {
                        ImmersiveArticleTrackingUiModel.OnSwipeSliderEvent onSwipeSliderEvent = (ImmersiveArticleTrackingUiModel.OnSwipeSliderEvent) immersiveArticleTrackingUiModel;
                        ImmersiveArticleType immersiveArticleType14 = onSwipeSliderEvent.f58762a;
                        defaultEventHit = new Hit.EventHit.DefaultEventHit(null, ImmersiveArticleTrackingUiModelKt.e(immersiveArticleType14, "LVPass/Explore/immersive_article"), fc.i("swipe_", onSwipeSliderEvent.f58763b, "/", onSwipeSliderEvent.f58764c), ImmersiveArticleTrackingUiModelKt.c(immersiveArticleType14, "immersive_article"), "swipe", ImmersiveArticleTrackingUiModelKt.d(immersiveArticleType14), null, 65, null);
                    } else if (immersiveArticleTrackingUiModel instanceof ImmersiveArticleTrackingUiModel.ProductAddWishlistClickEvent) {
                        ImmersiveArticleTrackingUiModel.ProductAddWishlistClickEvent productAddWishlistClickEvent = (ImmersiveArticleTrackingUiModel.ProductAddWishlistClickEvent) immersiveArticleTrackingUiModel;
                        String str16 = productAddWishlistClickEvent.f58765a;
                        ImmersiveArticleType immersiveArticleType15 = productAddWishlistClickEvent.f58766b;
                        String strE3 = ImmersiveArticleTrackingUiModelKt.e(immersiveArticleType15, "LVPass/fashion_show/".concat(str16));
                        String str17 = productAddWishlistClickEvent.f58767c;
                        String strC3 = ImmersiveArticleTrackingUiModelKt.c(immersiveArticleType15, "fashion_show_article");
                        AdditionalProperty.ArticleId articleId2 = new AdditionalProperty.ArticleId(str16);
                        AdditionalProperty.ContentType contentTypeA2 = ImmersiveArticleTrackingUiModelKt.a(immersiveArticleType15);
                        String str18 = productAddWishlistClickEvent.d;
                        defaultEventHit2 = new Hit.EventHit.DefaultEventHit(HitType.AddToWishlist.f66506a, strE3, str17, strC3, "add_to_wishlist", null, CollectionsKt.P(articleId2, contentTypeA2, new AdditionalProperty.Price(str18 != null ? str18 : "")), 32, null);
                    } else if (immersiveArticleTrackingUiModel instanceof ImmersiveArticleTrackingUiModel.ProductDeleteWishlistClickEvent) {
                        ImmersiveArticleTrackingUiModel.ProductDeleteWishlistClickEvent productDeleteWishlistClickEvent = (ImmersiveArticleTrackingUiModel.ProductDeleteWishlistClickEvent) immersiveArticleTrackingUiModel;
                        String str19 = productDeleteWishlistClickEvent.f58772a;
                        ImmersiveArticleType immersiveArticleType16 = productDeleteWishlistClickEvent.f58773b;
                        String strE4 = ImmersiveArticleTrackingUiModelKt.e(immersiveArticleType16, "LVPass/fashion_show/".concat(str19));
                        String str20 = productDeleteWishlistClickEvent.f58774c;
                        String strC4 = ImmersiveArticleTrackingUiModelKt.c(immersiveArticleType16, "fashion_show_article");
                        AdditionalProperty.ArticleId articleId3 = new AdditionalProperty.ArticleId(str19);
                        AdditionalProperty.ContentType contentTypeA3 = ImmersiveArticleTrackingUiModelKt.a(immersiveArticleType16);
                        String str21 = productDeleteWishlistClickEvent.d;
                        defaultEventHit2 = new Hit.EventHit.DefaultEventHit(HitType.RemoveFromWishlist.f66518a, strE4, str20, strC4, "delete_from_wishlist", null, CollectionsKt.P(articleId3, contentTypeA3, new AdditionalProperty.Price(str21 != null ? str21 : "")), 32, null);
                    } else if (immersiveArticleTrackingUiModel instanceof ImmersiveArticleTrackingUiModel.NotifyMeClickEvent) {
                        ImmersiveArticleTrackingUiModel.NotifyMeClickEvent notifyMeClickEvent = (ImmersiveArticleTrackingUiModel.NotifyMeClickEvent) immersiveArticleTrackingUiModel;
                        ImmersiveArticleType immersiveArticleType17 = notifyMeClickEvent.f58744b;
                        defaultEventHit2 = new Hit.EventHit.DefaultEventHit(null, ImmersiveArticleTrackingUiModelKt.e(immersiveArticleType17, "LVPass/fashion_show/" + notifyMeClickEvent.f58743a), "push_notification", ImmersiveArticleTrackingUiModelKt.c(immersiveArticleType17, "fashion_show_article"), "notify_me", null, CollectionsKt.O(new AdditionalProperty.ContentId(notifyMeClickEvent.f58745c)), 33, null);
                    } else if (immersiveArticleTrackingUiModel instanceof ImmersiveArticleTrackingUiModel.NotifyMeSuccessEvent) {
                        ImmersiveArticleTrackingUiModel.NotifyMeSuccessEvent notifyMeSuccessEvent = (ImmersiveArticleTrackingUiModel.NotifyMeSuccessEvent) immersiveArticleTrackingUiModel;
                        ImmersiveArticleType immersiveArticleType18 = notifyMeSuccessEvent.f58747b;
                        defaultEventHit2 = new Hit.EventHit.DefaultEventHit(null, ImmersiveArticleTrackingUiModelKt.e(immersiveArticleType18, "LVPass/fashion_show/" + notifyMeSuccessEvent.f58746a), "confirm", ImmersiveArticleTrackingUiModelKt.c(immersiveArticleType18, "fashion_show_article"), "notify_me", null, null, 97, null);
                    } else if (immersiveArticleTrackingUiModel instanceof ImmersiveArticleTrackingUiModel.NotifyMeAlreadyNotifiedEvent) {
                        ImmersiveArticleTrackingUiModel.NotifyMeAlreadyNotifiedEvent notifyMeAlreadyNotifiedEvent = (ImmersiveArticleTrackingUiModel.NotifyMeAlreadyNotifiedEvent) immersiveArticleTrackingUiModel;
                        ImmersiveArticleType immersiveArticleType19 = notifyMeAlreadyNotifiedEvent.f58741b;
                        defaultEventHit2 = new Hit.EventHit.DefaultEventHit(null, ImmersiveArticleTrackingUiModelKt.e(immersiveArticleType19, "LVPass/fashion_show/" + notifyMeAlreadyNotifiedEvent.f58740a), "already_activate", ImmersiveArticleTrackingUiModelKt.c(immersiveArticleType19, "fashion_show_article"), "notify_me", null, CollectionsKt.O(new AdditionalProperty.ContentId(notifyMeAlreadyNotifiedEvent.f58742c)), 33, null);
                    } else if (immersiveArticleTrackingUiModel instanceof ImmersiveArticleTrackingUiModel.ScreenshotTakenEvent) {
                        ImmersiveArticleTrackingUiModel.ScreenshotTakenEvent screenshotTakenEvent = (ImmersiveArticleTrackingUiModel.ScreenshotTakenEvent) immersiveArticleTrackingUiModel;
                        ImmersiveArticleType immersiveArticleType20 = screenshotTakenEvent.f58779b;
                        defaultEventHit2 = new Hit.EventHit.DefaultEventHit(null, ImmersiveArticleTrackingUiModelKt.e(immersiveArticleType20, "LVPass/fashion_show/" + screenshotTakenEvent.f58778a), screenshotTakenEvent.f58778a, ImmersiveArticleTrackingUiModelKt.c(immersiveArticleType20, "fashion_show_article"), "screenshot", null, null, 97, null);
                    } else if (immersiveArticleTrackingUiModel instanceof ImmersiveArticleTrackingUiModel.ShareOnScreenshotEvent) {
                        ImmersiveArticleTrackingUiModel.ShareOnScreenshotEvent shareOnScreenshotEvent = (ImmersiveArticleTrackingUiModel.ShareOnScreenshotEvent) immersiveArticleTrackingUiModel;
                        ImmersiveArticleType immersiveArticleType21 = shareOnScreenshotEvent.f58786b;
                        defaultEventHit2 = new Hit.EventHit.DefaultEventHit(null, ImmersiveArticleTrackingUiModelKt.e(immersiveArticleType21, "LVPass/fashion_show/" + shareOnScreenshotEvent.f58785a), shareOnScreenshotEvent.f58785a, ImmersiveArticleTrackingUiModelKt.c(immersiveArticleType21, "fashion_show_article"), "share_intention_screenshot", null, null, 97, null);
                    } else if (immersiveArticleTrackingUiModel instanceof ImmersiveArticleTrackingUiModel.OnExpandedPlayerOpenEvent) {
                        ImmersiveArticleTrackingUiModel.OnExpandedPlayerOpenEvent onExpandedPlayerOpenEvent = (ImmersiveArticleTrackingUiModel.OnExpandedPlayerOpenEvent) immersiveArticleTrackingUiModel;
                        defaultEventHit2 = new Hit.EventHit.DefaultEventHit(null, ImmersiveArticleTrackingUiModelKt.e(onExpandedPlayerOpenEvent.f58759b, "LVPass/player_audio/" + onExpandedPlayerOpenEvent.f58758a), "open", "immersive_article", "player_audio", null, null, 97, null);
                    } else if (immersiveArticleTrackingUiModel instanceof ImmersiveArticleTrackingUiModel.OnCollapsedPlayerPlayEvent) {
                        ImmersiveArticleTrackingUiModel.OnCollapsedPlayerPlayEvent onCollapsedPlayerPlayEvent = (ImmersiveArticleTrackingUiModel.OnCollapsedPlayerPlayEvent) immersiveArticleTrackingUiModel;
                        defaultEventHit2 = new Hit.EventHit.DefaultEventHit(null, ImmersiveArticleTrackingUiModelKt.e(onCollapsedPlayerPlayEvent.f58757b, "LVPass/player_audio/" + onCollapsedPlayerPlayEvent.f58756a), "play", "immersive_article", "player_audio", null, null, 97, null);
                    } else if (immersiveArticleTrackingUiModel instanceof ImmersiveArticleTrackingUiModel.OnExpandedPlayerPlayEvent) {
                        defaultEventHit2 = new Hit.EventHit.DefaultEventHit(null, "LVPass/player_audio/big_player", "play", "player_audio", "big_player", null, null, 97, null);
                    } else if (immersiveArticleTrackingUiModel instanceof ImmersiveArticleTrackingUiModel.OnPlusOrLessButtonClickEvent) {
                        int i6 = ImmersiveArticleTrackingUiModelKt.WhenMappings.f58790b[((ImmersiveArticleTrackingUiModel.OnPlusOrLessButtonClickEvent) immersiveArticleTrackingUiModel).f58761a.ordinal()];
                        if (i6 == 1) {
                            str = "plus_15s";
                        } else {
                            if (i6 != 2) {
                                v40.g();
                                return;
                            }
                            str = "less_15s";
                        }
                        defaultEventHit2 = new Hit.EventHit.DefaultEventHit(null, "LVPass/player_audio/big_player", str, "player_audio", "big_player", null, null, 97, null);
                    } else if (immersiveArticleTrackingUiModel instanceof ImmersiveArticleTrackingUiModel.ScrollPercentageReachedEvent) {
                        ImmersiveArticleTrackingUiModel.ScrollPercentageReachedEvent scrollPercentageReachedEvent = (ImmersiveArticleTrackingUiModel.ScrollPercentageReachedEvent) immersiveArticleTrackingUiModel;
                        ImmersiveArticleType immersiveArticleType22 = scrollPercentageReachedEvent.f58781b;
                        defaultEventHit2 = new Hit.EventHit.DefaultEventHit(null, ImmersiveArticleTrackingUiModelKt.e(immersiveArticleType22, "LVPass/fashion_show/" + scrollPercentageReachedEvent.f58780a), cj.d(scrollPercentageReachedEvent.f58782c, "%"), ImmersiveArticleTrackingUiModelKt.c(immersiveArticleType22, "explore"), "scroll", null, null, 97, null);
                    } else {
                        if (!(immersiveArticleTrackingUiModel instanceof ImmersiveArticleTrackingUiModel.ShareButtonClickEvent)) {
                            v40.g();
                            return;
                        }
                        ImmersiveArticleTrackingUiModel.ShareButtonClickEvent shareButtonClickEvent = (ImmersiveArticleTrackingUiModel.ShareButtonClickEvent) immersiveArticleTrackingUiModel;
                        ImmersiveArticleType immersiveArticleType23 = shareButtonClickEvent.f58784b;
                        defaultEventHit = new Hit.EventHit.DefaultEventHit(null, ImmersiveArticleTrackingUiModelKt.e(immersiveArticleType23, "LVPass/fashion_show/" + shareButtonClickEvent.f58783a), shareButtonClickEvent.f58783a, ImmersiveArticleTrackingUiModelKt.c(immersiveArticleType23, "fashion_show_article"), "share_intention", null, null, 97, null);
                    }
                    defaultEventHit = defaultEventHit3;
                }
            }
            defaultEventHit = defaultEventHit2;
        }
        this.d.a(defaultEventHit);
    }

    @Override // com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getJ() {
        return this.J;
    }

    @Override // com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModel
    public final Flow b() {
        return FlowKt.y(this.E);
    }

    @Override // com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModel
    public final void u0(String str) {
        str.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new ImmersiveArticleViewModelImpl$onCountdownFinished$1(this, str, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModel
    public final void x5() {
        MutableStateFlow mutableStateFlow = this.F;
        mutableStateFlow.setValue(Lv3dViewerUiModel.a((Lv3dViewerUiModel) mutableStateFlow.getValue(), null, null, null, 111));
    }
}
