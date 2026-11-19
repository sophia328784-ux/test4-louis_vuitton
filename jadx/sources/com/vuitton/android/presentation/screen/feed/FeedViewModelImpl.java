package com.vuitton.android.presentation.screen.feed;

import android.app.Application;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.feed.FeedMonitoring;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.usecase.account.CheckEligibilityForPassUseCase;
import com.vuitton.android.domain.usecase.account.GetProfileUseCase;
import com.vuitton.android.domain.usecase.account.accessibility.GetAllAccessibilityValuesUseCase;
import com.vuitton.android.domain.usecase.account.order.GetOngoingOrdersUseCase;
import com.vuitton.android.domain.usecase.account.order.GetOrdersHistoryWithMostExpensiveProductUseCase;
import com.vuitton.android.domain.usecase.aicompanion.HasAITooltipBeenDisplayedUseCase;
import com.vuitton.android.domain.usecase.applink.GetContributionLinkToLaunchUseCase;
import com.vuitton.android.domain.usecase.audioguide.GetAccessDataUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.GetDYRecommendedProductsUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.IsDynamicYieldActivatedUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ReportDYClickUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ReportDYSlotClickUseCase;
import com.vuitton.android.domain.usecase.feed.GetFeedDiscoverUseCase;
import com.vuitton.android.domain.usecase.feed.GetFeedForYouUseCase;
import com.vuitton.android.domain.usecase.hotcontent.GetHotContentUseCase;
import com.vuitton.android.domain.usecase.hotcontent.HasCachedHotContentUseCase;
import com.vuitton.android.domain.usecase.privacy.GetConsentForCustomisationTrackerUseCase;
import com.vuitton.android.domain.usecase.products.GetProductShortListUseCase;
import com.vuitton.android.domain.usecase.products.GetRelatedProductsUseCase;
import com.vuitton.android.domain.usecase.products.ListenToLastViewedProductSkuListUseCase;
import com.vuitton.android.domain.usecase.products.RemoveSkuFromLastViewedProductListUseCase;
import com.vuitton.android.domain.usecase.video.GetLiveVideoUseCase;
import com.vuitton.android.presentation.common.editorial.models.CarouselSItemUiModel;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleCardTypeUiModel;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.common.editorial.models.HeaderUiModel;
import com.vuitton.android.presentation.common.editorial.models.LiveFormatUiModel;
import com.vuitton.android.presentation.common.editorial.models.LiveInfoUiModel;
import com.vuitton.android.presentation.common.editorial.models.RatioUiModel;
import com.vuitton.android.presentation.common.editorial.models.TargetingUiModel;
import com.vuitton.android.presentation.common.editorial.models.TitlesUiModel;
import com.vuitton.android.presentation.common.hotcontent.models.HotContentItemMapperKt;
import com.vuitton.android.presentation.common.hotcontent.models.HotContentItemUiModel;
import com.vuitton.android.presentation.contact.ContactUsDelegate;
import com.vuitton.android.presentation.contact.ContactUsMode;
import com.vuitton.android.presentation.contact.models.ContactUsOrigin;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.model.calendar.CalendarEventUiModel;
import com.vuitton.android.presentation.model.common.A11ySettings;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.FeatureThemeUiModel;
import com.vuitton.android.presentation.model.common.VideoIdUiModel;
import com.vuitton.android.presentation.model.common.mapper.AssetMapperKt;
import com.vuitton.android.presentation.model.common.mapper.FeatureThemeMapperKt;
import com.vuitton.android.presentation.model.common.mapper.ProductTinyMapperKt;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.feed.models.CalendarEventData;
import com.vuitton.android.presentation.screen.feed.models.FeedFeatureFlags;
import com.vuitton.android.presentation.screen.feed.models.FeedTab;
import com.vuitton.android.presentation.screen.feed.models.FeedTabState;
import com.vuitton.android.presentation.screen.feed.models.FeedViewState;
import com.vuitton.android.presentation.screen.feed.models.uimodels.AudioGuideBannerUiModel;
import com.vuitton.android.presentation.screen.feed.models.uimodels.FeedUiModel;
import com.vuitton.android.presentation.screen.livevideo.models.LiveVideoStatusUiModel;
import com.vuitton.android.presentation.screen.orders.models.mappers.OrderMapperKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SlottedSku;
import com.vuitton.android.presentation.utils.DateTimeUtils;
import com.vuitton.android.presentation.utils.LocationUtilsKt;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.account.accessibility.AccessibilityPreferenceType;
import com.vuitton.foundation.model.domain.model.account.orders.OrderList;
import com.vuitton.foundation.model.domain.model.chat.ChatProductModel;
import com.vuitton.foundation.model.domain.model.chat.ScreenType;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import com.vuitton.foundation.model.domain.model.common.Coordinates;
import com.vuitton.foundation.model.domain.model.common.ResultStrategy;
import com.vuitton.foundation.model.domain.model.common.ResultStrategyLazy;
import com.vuitton.foundation.model.domain.model.common.editorial.AlgorithmType;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import com.vuitton.foundation.model.domain.model.config.FeedConfig;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.hotcontent.HotContent;
import com.vuitton.foundation.model.domain.model.hotcontent.HotContentItem;
import com.vuitton.foundation.model.domain.model.producttiny.ProductTiny;
import defpackage.ck;
import defpackage.md;
import defpackage.ss;
import defpackage.v40;
import java.io.Serializable;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.format.FormatStyle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000Ô\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0091\u0002\b\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0012\u001a\u00020\u0003\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020'\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u0010,\u001a\u00020+\u0012\u0006\u0010.\u001a\u00020-\u0012\u0006\u00100\u001a\u00020/\u0012\u0006\u00102\u001a\u000201\u0012\u0006\u00104\u001a\u000203\u0012\u0006\u00106\u001a\u000205\u0012\u0006\u00108\u001a\u000207\u0012\u0006\u0010:\u001a\u000209\u0012\u0006\u0010<\u001a\u00020;\u0012\u0006\u0010>\u001a\u00020=\u0012\u0006\u0010@\u001a\u00020?\u0012\u0006\u0010B\u001a\u00020A\u0012\u0006\u0010D\u001a\u00020C¢\u0006\u0004\bE\u0010F¨\u0006G"}, d2 = {"Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;", "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Landroid/app/Application;", "application", "Lcom/vuitton/android/presentation/screen/feed/CalendarManager;", "calendarManager", "contactUsDelegate", "Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "userSessionService", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;", "getProfileUseCase", "Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;", "getLiveVideoUseCase", "Lcom/vuitton/android/domain/usecase/feed/GetFeedForYouUseCase;", "getFeedForYouUseCase", "Lcom/vuitton/android/domain/usecase/audioguide/GetAccessDataUseCase;", "getAccessDataUseCase", "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYClickUseCase;", "reportDYClickUseCase", "Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase;", "getFeedDiscoverUseCase", "Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;", "getOngoingOrdersUseCase", "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSlotClickUseCase;", "reportDYSlotClickUseCase", "Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;", "getHotContentUseCase", "Lcom/vuitton/android/domain/usecase/hotcontent/HasCachedHotContentUseCase;", "hasCachedHotContentUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/products/GetProductShortListUseCase;", "getProductShortListUseCase", "Lcom/vuitton/android/domain/usecase/account/CheckEligibilityForPassUseCase;", "checkEligibilityForPassUseCase", "Lcom/vuitton/android/domain/usecase/dynamicyield/IsDynamicYieldActivatedUseCase;", "isDynamicYieldActivatedUseCase", "Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase;", "getDYRecommendedProductsUseCase", "Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;", "getAllAccessibilityValuesUseCase", "Lcom/vuitton/android/domain/usecase/aicompanion/HasAITooltipBeenDisplayedUseCase;", "hasAITooltipBeenDisplayedUseCase", "Lcom/vuitton/android/domain/usecase/applink/GetContributionLinkToLaunchUseCase;", "getContributionLinkToLaunchUseCase", "Lcom/vuitton/android/domain/usecase/products/ListenToLastViewedProductSkuListUseCase;", "listenToLastViewedProductSkuListUseCase", "Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;", "getConsentForCustomisationTrackerUseCase", "Lcom/vuitton/android/domain/usecase/products/RemoveSkuFromLastViewedProductListUseCase;", "removeSkuFromLastViewedProductListUseCase", "Lcom/vuitton/android/domain/usecase/account/order/GetOrdersHistoryWithMostExpensiveProductUseCase;", "getOrdersHistoryWithMostExpensiveProductUseCase", "Lcom/vuitton/android/domain/usecase/products/GetRelatedProductsUseCase;", "getRelatedProductsUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Landroid/app/Application;Lcom/vuitton/android/presentation/screen/feed/CalendarManager;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;Lcom/vuitton/android/domain/usecase/feed/GetFeedForYouUseCase;Lcom/vuitton/android/domain/usecase/audioguide/GetAccessDataUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYClickUseCase;Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase;Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSlotClickUseCase;Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;Lcom/vuitton/android/domain/usecase/hotcontent/HasCachedHotContentUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/products/GetProductShortListUseCase;Lcom/vuitton/android/domain/usecase/account/CheckEligibilityForPassUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/IsDynamicYieldActivatedUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;Lcom/vuitton/android/domain/usecase/aicompanion/HasAITooltipBeenDisplayedUseCase;Lcom/vuitton/android/domain/usecase/applink/GetContributionLinkToLaunchUseCase;Lcom/vuitton/android/domain/usecase/products/ListenToLastViewedProductSkuListUseCase;Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;Lcom/vuitton/android/domain/usecase/products/RemoveSkuFromLastViewedProductListUseCase;Lcom/vuitton/android/domain/usecase/account/order/GetOrdersHistoryWithMostExpensiveProductUseCase;Lcom/vuitton/android/domain/usecase/products/GetRelatedProductsUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FeedViewModelImpl extends ViewModel implements FeedViewModel, ContactUsDelegate {
    public final ListenToLastViewedProductSkuListUseCase A;
    public final GetConsentForCustomisationTrackerUseCase B;
    public final RemoveSkuFromLastViewedProductListUseCase C;
    public final GetOrdersHistoryWithMostExpensiveProductUseCase D;
    public final GetRelatedProductsUseCase E;
    public final AppConfig F;
    public final InAppDispatch G;
    public Coordinates H;
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
    public final BufferedChannel U;
    public final Flow V;
    public final MutableStateFlow W;
    public final MutableStateFlow X;
    public final MutableStateFlow Y;
    public final MutableStateFlow Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LVEventSender f57614a;
    public final MutableStateFlow a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Logger f57615b;
    public Job b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Monitor f57616c;
    public final MutableStateFlow c0;
    public final Application d;
    public final LinkedHashMap d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CalendarManager f57617e;
    public final BufferedChannel e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ContactUsDelegate f57618f;
    public final Flow f0;
    public final UserSessionService g;
    public final StateFlow g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final NotificationBuilder f57619h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final GetProfileUseCase f57620i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final GetLiveVideoUseCase f57621j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final GetFeedForYouUseCase f57622k;
    public final GetAccessDataUseCase l;
    public final ReportDYClickUseCase m;
    public final GetFeedDiscoverUseCase n;
    public final GetOngoingOrdersUseCase o;
    public final ReportDYSlotClickUseCase p;
    public final GetHotContentUseCase q;
    public final HasCachedHotContentUseCase r;
    public final IsFeatureAvailableUseCase s;
    public final GetProductShortListUseCase t;
    public final CheckEligibilityForPassUseCase u;
    public final IsDynamicYieldActivatedUseCase v;
    public final GetDYRecommendedProductsUseCase w;
    public final GetAllAccessibilityValuesUseCase x;
    public final HasAITooltipBeenDisplayedUseCase y;
    public final GetContributionLinkToLaunchUseCase z;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$1", f = "FeedViewModelImpl.kt", l = {265}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f57623b;

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return FeedViewModelImpl.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            ContactUsDelegate contactUsDelegate = FeedViewModelImpl.this.f57618f;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f57623b;
            if (i2 == 0) {
                ResultKt.b(obj);
                contactUsDelegate.f8(ContactUsMode.DEFAULT);
                this.f57623b = 1;
                if (contactUsDelegate.M1(null, this) == coroutineSingletons) {
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

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$2", f = "FeedViewModelImpl.kt", l = {272}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f57625b;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$2$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "hasBeenDisplayed", ""}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$2$1", f = "FeedViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
        final class AnonymousClass1 extends SuspendLambda implements Function2<Boolean, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public /* synthetic */ boolean f57627b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ FeedViewModelImpl f57628c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(FeedViewModelImpl feedViewModelImpl, Continuation continuation) {
                super(2, continuation);
                this.f57628c = feedViewModelImpl;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f57628c, continuation);
                anonymousClass1.f57627b = ((Boolean) obj).booleanValue();
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
                boolean z = this.f57627b;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                ResultKt.b(obj);
                this.f57628c.Z.setValue(Boolean.valueOf(z));
                return Unit.f71739a;
            }
        }

        public AnonymousClass2(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return FeedViewModelImpl.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f57625b;
            if (i2 == 0) {
                ResultKt.b(obj);
                FeedViewModelImpl feedViewModelImpl = FeedViewModelImpl.this;
                Flow flowJ = feedViewModelImpl.y.f49157a.j();
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(feedViewModelImpl, null);
                this.f57625b = 1;
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

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$3, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$3", f = "FeedViewModelImpl.kt", l = {1164}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f57629b;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$3$1, reason: invalid class name */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "state", "Lcom/vuitton/android/presentation/screen/feed/MostPurchasedWithState;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$3$1", f = "FeedViewModelImpl.kt", l = {281}, m = "invokeSuspend", v = 2)
        final class AnonymousClass1 extends SuspendLambda implements Function2<MostPurchasedWithState, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f57631b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public /* synthetic */ Object f57632c;
            public final /* synthetic */ FeedViewModelImpl d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(FeedViewModelImpl feedViewModelImpl, Continuation continuation) {
                super(2, continuation);
                this.d = feedViewModelImpl;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, continuation);
                anonymousClass1.f57632c = obj;
                return anonymousClass1;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((AnonymousClass1) create((MostPurchasedWithState) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                MostPurchasedWithState mostPurchasedWithState = (MostPurchasedWithState) this.f57632c;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f57631b;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    FeedViewModelImpl feedViewModelImpl = this.d;
                    Iterator it = feedViewModelImpl.Ic().iterator();
                    while (it.hasNext()) {
                        feedViewModelImpl.Ec((String) it.next(), mostPurchasedWithState);
                    }
                    if (mostPurchasedWithState instanceof MostPurchasedWithState.Loading) {
                        MostPurchasedWithState.Loading loading = (MostPurchasedWithState.Loading) mostPurchasedWithState;
                        String str = loading.f57747a;
                        AssetImageUiModel assetImageUiModel = loading.f57748b;
                        this.f57632c = null;
                        this.f57631b = 1;
                        if (FeedViewModelImpl.zc(feedViewModelImpl, str, assetImageUiModel, this) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
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

        public AnonymousClass3(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return FeedViewModelImpl.this.new AnonymousClass3(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f57629b;
            if (i2 == 0) {
                ResultKt.b(obj);
                FeedViewModelImpl feedViewModelImpl = FeedViewModelImpl.this;
                MutableStateFlow mutableStateFlow = feedViewModelImpl.a0;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(feedViewModelImpl, null);
                mutableStateFlow.getClass();
                this.f57629b = 1;
                if (FlowKt.g(mutableStateFlow, anonymousClass1, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            md.k("SharedFlow never completes, this call should never return.");
            return null;
        }
    }

    @Inject
    public FeedViewModelImpl(RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, LVEventSender lVEventSender, Logger logger, Monitor monitor, Application application, CalendarManager calendarManager, ContactUsDelegate contactUsDelegate, UserSessionService userSessionService, NotificationBuilder notificationBuilder, GetProfileUseCase getProfileUseCase, GetLiveVideoUseCase getLiveVideoUseCase, GetFeedForYouUseCase getFeedForYouUseCase, GetAccessDataUseCase getAccessDataUseCase, ReportDYClickUseCase reportDYClickUseCase, GetFeedDiscoverUseCase getFeedDiscoverUseCase, GetOngoingOrdersUseCase getOngoingOrdersUseCase, ReportDYSlotClickUseCase reportDYSlotClickUseCase, GetHotContentUseCase getHotContentUseCase, HasCachedHotContentUseCase hasCachedHotContentUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, GetProductShortListUseCase getProductShortListUseCase, CheckEligibilityForPassUseCase checkEligibilityForPassUseCase, IsDynamicYieldActivatedUseCase isDynamicYieldActivatedUseCase, GetDYRecommendedProductsUseCase getDYRecommendedProductsUseCase, GetAllAccessibilityValuesUseCase getAllAccessibilityValuesUseCase, HasAITooltipBeenDisplayedUseCase hasAITooltipBeenDisplayedUseCase, GetContributionLinkToLaunchUseCase getContributionLinkToLaunchUseCase, ListenToLastViewedProductSkuListUseCase listenToLastViewedProductSkuListUseCase, GetConsentForCustomisationTrackerUseCase getConsentForCustomisationTrackerUseCase, RemoveSkuFromLastViewedProductListUseCase removeSkuFromLastViewedProductListUseCase, GetOrdersHistoryWithMostExpensiveProductUseCase getOrdersHistoryWithMostExpensiveProductUseCase, GetRelatedProductsUseCase getRelatedProductsUseCase) {
        Object value;
        String strC;
        String strValueOf;
        requireCachedAppConfigUseCase.getClass();
        requireUserInAppDispatchUseCase.getClass();
        lVEventSender.getClass();
        logger.getClass();
        monitor.getClass();
        application.getClass();
        calendarManager.getClass();
        contactUsDelegate.getClass();
        userSessionService.getClass();
        notificationBuilder.getClass();
        getProfileUseCase.getClass();
        getLiveVideoUseCase.getClass();
        getFeedForYouUseCase.getClass();
        getAccessDataUseCase.getClass();
        reportDYClickUseCase.getClass();
        getFeedDiscoverUseCase.getClass();
        getOngoingOrdersUseCase.getClass();
        reportDYSlotClickUseCase.getClass();
        getHotContentUseCase.getClass();
        hasCachedHotContentUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        getProductShortListUseCase.getClass();
        checkEligibilityForPassUseCase.getClass();
        isDynamicYieldActivatedUseCase.getClass();
        getDYRecommendedProductsUseCase.getClass();
        getAllAccessibilityValuesUseCase.getClass();
        hasAITooltipBeenDisplayedUseCase.getClass();
        getContributionLinkToLaunchUseCase.getClass();
        listenToLastViewedProductSkuListUseCase.getClass();
        getConsentForCustomisationTrackerUseCase.getClass();
        removeSkuFromLastViewedProductListUseCase.getClass();
        getOrdersHistoryWithMostExpensiveProductUseCase.getClass();
        getRelatedProductsUseCase.getClass();
        this.f57614a = lVEventSender;
        this.f57615b = logger;
        this.f57616c = monitor;
        this.d = application;
        this.f57617e = calendarManager;
        this.f57618f = contactUsDelegate;
        this.g = userSessionService;
        this.f57619h = notificationBuilder;
        this.f57620i = getProfileUseCase;
        this.f57621j = getLiveVideoUseCase;
        this.f57622k = getFeedForYouUseCase;
        this.l = getAccessDataUseCase;
        this.m = reportDYClickUseCase;
        this.n = getFeedDiscoverUseCase;
        this.o = getOngoingOrdersUseCase;
        this.p = reportDYSlotClickUseCase;
        this.q = getHotContentUseCase;
        this.r = hasCachedHotContentUseCase;
        this.s = isFeatureAvailableUseCase;
        this.t = getProductShortListUseCase;
        this.u = checkEligibilityForPassUseCase;
        this.v = isDynamicYieldActivatedUseCase;
        this.w = getDYRecommendedProductsUseCase;
        this.x = getAllAccessibilityValuesUseCase;
        this.y = hasAITooltipBeenDisplayedUseCase;
        this.z = getContributionLinkToLaunchUseCase;
        this.A = listenToLastViewedProductSkuListUseCase;
        this.B = getConsentForCustomisationTrackerUseCase;
        this.C = removeSkuFromLastViewedProductListUseCase;
        this.D = getOrdersHistoryWithMostExpensiveProductUseCase;
        this.E = getRelatedProductsUseCase;
        AppConfig appConfigA = requireCachedAppConfigUseCase.a();
        this.F = appConfigA;
        this.G = requireUserInAppDispatchUseCase.f49912a.b();
        FeedConfig feedConfig = appConfigA.H;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(FeatureThemeMapperKt.b(feedConfig.f67260a));
        this.I = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(null);
        this.J = mutableStateFlowA2;
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(bool);
        this.K = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(null);
        this.L = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(new String());
        this.M = mutableStateFlowA5;
        FeedTabState.Loading loading = FeedTabState.Loading.f57921a;
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(loading);
        this.N = mutableStateFlowA6;
        final MutableStateFlow mutableStateFlowA7 = StateFlowKt.a(loading);
        this.O = mutableStateFlowA7;
        Flow<FeedTabState> flow = new Flow<FeedTabState>() { // from class: com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$special$$inlined$map$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$special$$inlined$map$1$2, reason: invalid class name */
            @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
            public final class AnonymousClass2<T> implements FlowCollector {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ FlowCollector f57733b;

                /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$special$$inlined$map$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                @DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$special$$inlined$map$1$2", f = "FeedViewModelImpl.kt", l = {217}, m = "emit", v = 2)
                public final class AnonymousClass1 extends ContinuationImpl {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public /* synthetic */ Object f57734b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public int f57735c;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.f57734b = obj;
                        this.f57735c |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.f57733b = flowCollector;
                }

                /* JADX WARN: Code duplicated, block: B:51:0x00c6  */
                /* JADX WARN: Code duplicated, block: B:53:0x00d1  */
                /* JADX WARN: Code duplicated, block: B:54:0x00d6  */
                /* JADX WARN: Code duplicated, block: B:56:0x00da  */
                /* JADX WARN: Code duplicated, block: B:57:0x00df  */
                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                /* JADX WARN: Code duplicated, block: B:86:0x00e5 A[SYNTHETIC] */
                /* JADX WARN: Code duplicated, block: B:88:0x00c0 A[SYNTHETIC] */
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r10v5, types: [java.lang.Object, java.util.List] */
                /* JADX WARN: Type inference failed for: r10v6, types: [java.util.List] */
                /* JADX WARN: Type inference failed for: r10v8, types: [java.util.ArrayList] */
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    EditorialModuleUiModel editorialModuleUiModel;
                    AlgorithmType algorithmType;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i2 = anonymousClass1.f57735c;
                        if ((i2 & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.f57735c = i2 - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(continuation);
                    }
                    Object obj2 = anonymousClass1.f57734b;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i3 = anonymousClass1.f57735c;
                    if (i3 == 0) {
                        ResultKt.b(obj2);
                        Object success = (FeedTabState) obj;
                        success.getClass();
                        if (success instanceof FeedTabState.Success) {
                            ?? arrayList = ((FeedTabState.Success) success).f57922a.f57983a;
                            arrayList.getClass();
                            Iterable iterable = (Iterable) arrayList;
                            ArrayList arrayList2 = new ArrayList();
                            for (T t : iterable) {
                                EditorialModuleUiModel editorialModuleUiModel2 = (EditorialModuleUiModel) t;
                                if ((editorialModuleUiModel2 instanceof EditorialModuleUiModel.CarouselSmallUiModel ? ((EditorialModuleUiModel.CarouselSmallUiModel) editorialModuleUiModel2).f50830c : editorialModuleUiModel2 instanceof EditorialModuleUiModel.GridSmallUiModel ? ((EditorialModuleUiModel.GridSmallUiModel) editorialModuleUiModel2).f50837c : null) == AlgorithmType.DYNAMIC_YIELD) {
                                    arrayList2.add(t);
                                }
                            }
                            if (!arrayList2.isEmpty()) {
                                Iterator it = arrayList2.iterator();
                                while (true) {
                                    if (it.hasNext()) {
                                        EditorialModuleUiModel editorialModuleUiModel3 = (EditorialModuleUiModel) it.next();
                                        if (editorialModuleUiModel3 instanceof EditorialModuleUiModel.CarouselSmallUiModel) {
                                            EditorialModuleUiModel.CarouselSmallUiModel carouselSmallUiModel = (EditorialModuleUiModel.CarouselSmallUiModel) editorialModuleUiModel3;
                                            if (carouselSmallUiModel.g || carouselSmallUiModel.f50831e.size() >= 3) {
                                                arrayList = new ArrayList();
                                                for (T t2 : iterable) {
                                                    editorialModuleUiModel = (EditorialModuleUiModel) t2;
                                                    if (editorialModuleUiModel instanceof EditorialModuleUiModel.CarouselSmallUiModel) {
                                                        algorithmType = ((EditorialModuleUiModel.CarouselSmallUiModel) editorialModuleUiModel).f50830c;
                                                    } else if (editorialModuleUiModel instanceof EditorialModuleUiModel.GridSmallUiModel) {
                                                        algorithmType = ((EditorialModuleUiModel.GridSmallUiModel) editorialModuleUiModel).f50837c;
                                                    } else {
                                                        algorithmType = null;
                                                    }
                                                    if (algorithmType == AlgorithmType.MOST_PURCHASED_WITH) {
                                                        arrayList.add(t2);
                                                    }
                                                }
                                            }
                                        } else if (editorialModuleUiModel3 instanceof EditorialModuleUiModel.GridSmallUiModel) {
                                            EditorialModuleUiModel.GridSmallUiModel gridSmallUiModel = (EditorialModuleUiModel.GridSmallUiModel) editorialModuleUiModel3;
                                            if (gridSmallUiModel.g || gridSmallUiModel.f50838e.size() >= 6) {
                                                arrayList = new ArrayList();
                                                while (r11.hasNext()) {
                                                    editorialModuleUiModel = (EditorialModuleUiModel) t2;
                                                    if (editorialModuleUiModel instanceof EditorialModuleUiModel.CarouselSmallUiModel) {
                                                        algorithmType = ((EditorialModuleUiModel.CarouselSmallUiModel) editorialModuleUiModel).f50830c;
                                                    } else if (editorialModuleUiModel instanceof EditorialModuleUiModel.GridSmallUiModel) {
                                                        algorithmType = ((EditorialModuleUiModel.GridSmallUiModel) editorialModuleUiModel).f50837c;
                                                    } else {
                                                        algorithmType = null;
                                                    }
                                                    if (algorithmType == AlgorithmType.MOST_PURCHASED_WITH) {
                                                        arrayList.add(t2);
                                                    }
                                                }
                                            }
                                        } else {
                                            continue;
                                        }
                                    }
                                }
                            }
                            success = new FeedTabState.Success(new FeedUiModel(arrayList));
                        }
                        anonymousClass1.f57735c = 1;
                        if (this.f57733b.emit(success, anonymousClass1) == coroutineSingletons) {
                            return coroutineSingletons;
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
                Object objF = mutableStateFlowA7.f(new AnonymousClass2(flowCollector), continuation);
                return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
            }
        };
        MutableStateFlow mutableStateFlowA8 = StateFlowKt.a(null);
        this.P = mutableStateFlowA8;
        MutableStateFlow mutableStateFlowA9 = StateFlowKt.a(bool);
        this.Q = mutableStateFlowA9;
        MutableStateFlow mutableStateFlowA10 = StateFlowKt.a(new FeedFeatureFlags(false, false, false, false, false, false, false, false, false, 511, null));
        this.R = mutableStateFlowA10;
        MutableStateFlow mutableStateFlowA11 = StateFlowKt.a(new A11ySettings(false, false, false, 7, null));
        this.S = mutableStateFlowA11;
        MutableStateFlow mutableStateFlowA12 = StateFlowKt.a(bool);
        this.T = mutableStateFlowA12;
        BufferedChannel bufferedChannelA = ChannelKt.a(0, 7, null);
        this.U = bufferedChannelA;
        this.V = FlowKt.y(bufferedChannelA);
        MutableStateFlow mutableStateFlowA13 = StateFlowKt.a(new CalendarEventUiModel(null, null, null, null, null, null, null, null, null, null, null, null, 4095, null));
        this.W = mutableStateFlowA13;
        MutableStateFlow mutableStateFlowA14 = StateFlowKt.a(null);
        this.X = mutableStateFlowA14;
        MutableStateFlow mutableStateFlowA15 = StateFlowKt.a(null);
        this.Y = mutableStateFlowA15;
        MutableStateFlow mutableStateFlowA16 = StateFlowKt.a(bool);
        this.Z = mutableStateFlowA16;
        final MutableStateFlow mutableStateFlowA17 = StateFlowKt.a(MostPurchasedWithState.Unresolved.f57750a);
        this.a0 = mutableStateFlowA17;
        Flow<String> flow2 = new Flow<String>() { // from class: com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$special$$inlined$map$2

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$special$$inlined$map$2$2, reason: invalid class name */
            @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
            public final class AnonymousClass2<T> implements FlowCollector {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ FlowCollector f57737b;

                /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$special$$inlined$map$2$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                @DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$special$$inlined$map$2$2", f = "FeedViewModelImpl.kt", l = {217}, m = "emit", v = 2)
                public final class AnonymousClass1 extends ContinuationImpl {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public /* synthetic */ Object f57738b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public int f57739c;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.f57738b = obj;
                        this.f57739c |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.f57737b = flowCollector;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i2 = anonymousClass1.f57739c;
                        if ((i2 & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.f57739c = i2 - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(continuation);
                    }
                    Object obj2 = anonymousClass1.f57738b;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i3 = anonymousClass1.f57739c;
                    String str = null;
                    if (i3 == 0) {
                        ResultKt.b(obj2);
                        MostPurchasedWithState mostPurchasedWithState = (MostPurchasedWithState) obj;
                        if (mostPurchasedWithState instanceof MostPurchasedWithState.Loading) {
                            str = ((MostPurchasedWithState.Loading) mostPurchasedWithState).f57747a;
                        } else if (mostPurchasedWithState instanceof MostPurchasedWithState.Loaded) {
                            str = ((MostPurchasedWithState.Loaded) mostPurchasedWithState).f57744a;
                        } else if (!Intrinsics.c(mostPurchasedWithState, MostPurchasedWithState.Unresolved.f57750a) && !Intrinsics.c(mostPurchasedWithState, MostPurchasedWithState.NoSku.f57749a)) {
                            v40.g();
                            return null;
                        }
                        anonymousClass1.f57739c = 1;
                        if (this.f57737b.emit(str, anonymousClass1) == coroutineSingletons) {
                            return coroutineSingletons;
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
                Object objF = mutableStateFlowA17.f(new AnonymousClass2(flowCollector), continuation);
                return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
            }
        };
        this.c0 = StateFlowKt.a(bool);
        this.d0 = new LinkedHashMap();
        BufferedChannel bufferedChannelA2 = ChannelKt.a(0, 7, null);
        this.e0 = bufferedChannelA2;
        this.f0 = FlowKt.y(bufferedChannelA2);
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA6, flow, mutableStateFlowA8, mutableStateFlowA9, mutableStateFlowA10, mutableStateFlowA11, contactUsDelegate.i(), mutableStateFlowA14, mutableStateFlowA13, mutableStateFlowA12, mutableStateFlowA3, mutableStateFlowA4, mutableStateFlowA5, mutableStateFlowA15, mutableStateFlowA16, flow2};
        Flow<FeedViewState> flow3 = new Flow<FeedViewState>() { // from class: com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$special$$inlined$combine$1$3", f = "FeedViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super FeedViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f57730b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f57731c;
                public /* synthetic */ Object[] d;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3);
                    anonymousClass3.f57731c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f57731c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f57730b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        FeatureThemeUiModel featureThemeUiModel = (FeatureThemeUiModel) obj2;
                        FeedTab feedTab = (FeedTab) objArr[1];
                        Object obj3 = objArr[2];
                        obj3.getClass();
                        FeedTabState feedTabState = (FeedTabState) obj3;
                        Object obj4 = objArr[3];
                        obj4.getClass();
                        FeedTabState feedTabState2 = (FeedTabState) obj4;
                        List list = (List) objArr[4];
                        Object obj5 = objArr[5];
                        obj5.getClass();
                        boolean zBooleanValue = ((Boolean) obj5).booleanValue();
                        Object obj6 = objArr[6];
                        obj6.getClass();
                        FeedFeatureFlags feedFeatureFlags = (FeedFeatureFlags) obj6;
                        Object obj7 = objArr[7];
                        obj7.getClass();
                        A11ySettings a11ySettings = (A11ySettings) obj7;
                        Object obj8 = objArr[8];
                        obj8.getClass();
                        ContactUsUiModel contactUsUiModel = (ContactUsUiModel) obj8;
                        FeedBottomSheet feedBottomSheet = (FeedBottomSheet) objArr[9];
                        Object obj9 = objArr[10];
                        obj9.getClass();
                        CalendarEventUiModel calendarEventUiModel = (CalendarEventUiModel) obj9;
                        Object obj10 = objArr[11];
                        obj10.getClass();
                        boolean zBooleanValue2 = ((Boolean) obj10).booleanValue();
                        Object obj11 = objArr[12];
                        obj11.getClass();
                        boolean zBooleanValue3 = ((Boolean) obj11).booleanValue();
                        String str = (String) objArr[13];
                        Object obj12 = objArr[14];
                        obj12.getClass();
                        String str2 = (String) obj12;
                        AudioGuideBannerUiModel audioGuideBannerUiModel = (AudioGuideBannerUiModel) objArr[15];
                        Object obj13 = objArr[16];
                        obj13.getClass();
                        FeedViewState feedViewState = new FeedViewState(featureThemeUiModel, feedTab, feedTabState, feedTabState2, list, zBooleanValue, feedFeatureFlags, a11ySettings, contactUsUiModel, zBooleanValue2, feedBottomSheet, calendarEventUiModel, zBooleanValue3, str, str2, audioGuideBannerUiModel, ((Boolean) obj13).booleanValue(), (String) objArr[17]);
                        this.f57731c = null;
                        this.d = null;
                        this.f57730b = 1;
                        if (flowCollector.emit(feedViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$special$$inlined$combine$1.2
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
        this.g0 = FlowKt.A(flow3, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new FeedViewState(FeatureThemeMapperKt.b(feedConfig.f67260a), null, null, null, null, false, null, null, null, false, null, new CalendarEventUiModel(null, null, null, null, null, null, null, null, null, null, null, null, 4095, null), false, null, null, null, false, null, 260094, null));
        BuildersKt.c(ViewModelKt.a(this), null, null, new FeedViewModelImpl$initFeedTab$1(this, null), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new FeedViewModelImpl$getFeatureFlags$1(this, null), 3);
        do {
            value = mutableStateFlowA5.getValue();
            LocalDateTime localDateTimeNow = LocalDateTime.now();
            localDateTimeNow.getClass();
            strC = DateTimeUtils.c(this.G, localDateTimeNow, FormatStyle.FULL);
            if (strC.length() > 0) {
                StringBuilder sb = new StringBuilder();
                char cCharAt = strC.charAt(0);
                if (Character.isLowerCase(cCharAt)) {
                    Locale locale = Locale.getDefault();
                    locale.getClass();
                    strValueOf = CharsKt.d(cCharAt, locale);
                } else {
                    strValueOf = String.valueOf(cCharAt);
                }
                sb.append((Object) strValueOf);
                sb.append(strC.substring(1));
                strC = sb.toString();
            }
        } while (!mutableStateFlowA5.i(value, strC));
        BuildersKt.c(ViewModelKt.a(this), null, null, new FeedViewModelImpl$observeLoginState$1(this, null), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(null), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new FeedViewModelImpl$checkIfContributionLinkToOpenExist$1(this, null), 3);
        Z3();
        BuildersKt.c(ViewModelKt.a(this), null, null, new FeedViewModelImpl$listenToAppEvents$1(this, null), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass2(null), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass3(null), 3);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x008a  */
    /* JADX WARN: Code duplicated, block: B:30:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:33:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:37:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:40:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:42:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a2 -> B:31:0x00a4). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object Ac(com.vuitton.android.presentation.screen.feed.FeedViewModelImpl r11, kotlin.coroutines.jvm.internal.ContinuationImpl r12) {
        /*
            Method dump skipped, instruction units count: 204
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.feed.FeedViewModelImpl.Ac(com.vuitton.android.presentation.screen.feed.FeedViewModelImpl, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final CoroutineSingletons Bc(FeedViewModelImpl feedViewModelImpl, String str, ContinuationImpl continuationImpl) {
        FeedViewModelImpl$loadLastViewedProducts$1 feedViewModelImpl$loadLastViewedProducts$1;
        if (continuationImpl instanceof FeedViewModelImpl$loadLastViewedProducts$1) {
            feedViewModelImpl$loadLastViewedProducts$1 = (FeedViewModelImpl$loadLastViewedProducts$1) continuationImpl;
            int i2 = feedViewModelImpl$loadLastViewedProducts$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                feedViewModelImpl$loadLastViewedProducts$1.d = i2 - Integer.MIN_VALUE;
            } else {
                feedViewModelImpl$loadLastViewedProducts$1 = new FeedViewModelImpl$loadLastViewedProducts$1(feedViewModelImpl, continuationImpl);
            }
        } else {
            feedViewModelImpl$loadLastViewedProducts$1 = new FeedViewModelImpl$loadLastViewedProducts$1(feedViewModelImpl, continuationImpl);
        }
        Object obj = feedViewModelImpl$loadLastViewedProducts$1.f57681b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = feedViewModelImpl$loadLastViewedProducts$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            StateFlow stateFlowB = feedViewModelImpl.A.f50341a.b();
            FeedViewModelImpl$loadLastViewedProducts$2 feedViewModelImpl$loadLastViewedProducts$2 = new FeedViewModelImpl$loadLastViewedProducts$2(feedViewModelImpl, str, null);
            stateFlowB.getClass();
            feedViewModelImpl$loadLastViewedProducts$1.d = 1;
            if (FlowKt.g(stateFlowB, feedViewModelImpl$loadLastViewedProducts$2, feedViewModelImpl$loadLastViewedProducts$1) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        md.k("SharedFlow never completes, this call should never return.");
        return null;
    }

    public static final void Cc(FeedViewModelImpl feedViewModelImpl) {
        if (((Boolean) feedViewModelImpl.K.getValue()).booleanValue()) {
            Job job = feedViewModelImpl.b0;
            if (job == null || !job.isActive()) {
                feedViewModelImpl.b0 = BuildersKt.c(ViewModelKt.a(feedViewModelImpl), null, null, new FeedViewModelImpl$loadMostExpensiveSku$1(feedViewModelImpl, null), 3);
            }
        }
    }

    public static final void Dc(FeedViewModelImpl feedViewModelImpl, ProductTiny productTiny) {
        AssetImage assetImage;
        MutableStateFlow mutableStateFlow = feedViewModelImpl.a0;
        AssetImageUiModel assetImageUiModelA = null;
        String str = productTiny != null ? productTiny.d : null;
        if (productTiny != null && (assetImage = productTiny.f68148c) != null) {
            assetImageUiModelA = AssetMapperKt.a(assetImage);
        }
        Object loading = (MostPurchasedWithState) mutableStateFlow.getValue();
        if (str == null || StringsKt.w(str)) {
            loading = MostPurchasedWithState.NoSku.f57749a;
        } else if ((!(loading instanceof MostPurchasedWithState.Loaded) || !Intrinsics.c(((MostPurchasedWithState.Loaded) loading).f57744a, str)) && (!(loading instanceof MostPurchasedWithState.Loading) || !Intrinsics.c(((MostPurchasedWithState.Loading) loading).f57747a, str))) {
            loading = new MostPurchasedWithState.Loading(str, assetImageUiModelA);
        }
        mutableStateFlow.setValue(loading);
    }

    public static EditorialModuleUiModel.CardUiModel Hc(String str, List list) {
        Object obj = null;
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : list) {
            if (obj2 instanceof EditorialModuleUiModel.CardUiModel) {
                arrayList.add(obj2);
            }
        }
        for (Object obj3 : arrayList) {
            if (Intrinsics.c(((EditorialModuleUiModel.CardUiModel) obj3).f50813a, str)) {
                obj = obj3;
                break;
            }
        }
        return (EditorialModuleUiModel.CardUiModel) obj;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0073  */
    /* JADX WARN: Code duplicated, block: B:29:0x0078  */
    /* JADX WARN: Code duplicated, block: B:31:0x0086  */
    /* JADX WARN: Code duplicated, block: B:32:0x0088 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:33:0x008a  */
    /* JADX WARN: Code duplicated, block: B:34:0x008f  */
    /* JADX WARN: Code duplicated, block: B:37:0x0093  */
    /* JADX WARN: Code duplicated, block: B:50:0x00a6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:51:0x00a6 A[SYNTHETIC] */
    public static void Mc(FeedViewModelImpl feedViewModelImpl, String str, List list, String str2, AssetImageUiModel assetImageUiModel, int i2) {
        List list2;
        List list3;
        EditorialModuleUiModel.CarouselSmallUiModel carouselSmallUiModel;
        HeaderUiModel headerUiModel;
        String str3;
        HeaderUiModel headerUiModelA;
        String str4 = (i2 & 4) != 0 ? null : str2;
        if ((i2 & 16) != 0) {
            assetImageUiModel = null;
        }
        MutableStateFlow mutableStateFlow = feedViewModelImpl.O;
        while (true) {
            Object value = mutableStateFlow.getValue();
            Object success = (FeedTabState) value;
            if (success instanceof FeedTabState.Success) {
                List<Object> list4 = ((FeedTabState.Success) success).f57922a.f57983a;
                ArrayList arrayList = new ArrayList(CollectionsKt.t(list4, 10));
                for (Object carouselSmallUiModel2 : list4) {
                    if (carouselSmallUiModel2 instanceof EditorialModuleUiModel.GridSmallUiModel) {
                        EditorialModuleUiModel.GridSmallUiModel gridSmallUiModel = (EditorialModuleUiModel.GridSmallUiModel) carouselSmallUiModel2;
                        HeaderUiModel headerUiModel2 = gridSmallUiModel.f50836b;
                        String str5 = gridSmallUiModel.f50835a;
                        if (Intrinsics.c(str5, str)) {
                            if (assetImageUiModel != null) {
                                HeaderUiModel headerUiModelA2 = headerUiModel2 != null ? HeaderUiModel.a(headerUiModel2, assetImageUiModel) : null;
                                if (headerUiModelA2 != null) {
                                    headerUiModel2 = headerUiModelA2;
                                }
                            }
                            AlgorithmType algorithmType = gridSmallUiModel.f50837c;
                            List list5 = gridSmallUiModel.d;
                            str5.getClass();
                            algorithmType.getClass();
                            list.getClass();
                            list3 = list;
                            carouselSmallUiModel2 = new EditorialModuleUiModel.GridSmallUiModel(str5, headerUiModel2, algorithmType, list5, list3, str4, false);
                        } else {
                            list3 = list;
                            if (carouselSmallUiModel2 instanceof EditorialModuleUiModel.CarouselSmallUiModel) {
                                carouselSmallUiModel = (EditorialModuleUiModel.CarouselSmallUiModel) carouselSmallUiModel2;
                                headerUiModel = carouselSmallUiModel.f50829b;
                                str3 = carouselSmallUiModel.f50828a;
                                if (!Intrinsics.c(str3, str)) {
                                    if (assetImageUiModel != null) {
                                        if (headerUiModel != null) {
                                            headerUiModelA = HeaderUiModel.a(headerUiModel, assetImageUiModel);
                                        } else {
                                            headerUiModelA = null;
                                        }
                                        if (headerUiModelA != null) {
                                            headerUiModel = headerUiModelA;
                                        }
                                    }
                                    AlgorithmType algorithmType2 = carouselSmallUiModel.f50830c;
                                    List list6 = carouselSmallUiModel.d;
                                    str3.getClass();
                                    algorithmType2.getClass();
                                    list3.getClass();
                                    carouselSmallUiModel2 = new EditorialModuleUiModel.CarouselSmallUiModel(str3, headerUiModel, algorithmType2, list6, list3, str4, false);
                                }
                            }
                        }
                    } else {
                        list3 = list;
                        if (carouselSmallUiModel2 instanceof EditorialModuleUiModel.CarouselSmallUiModel) {
                            carouselSmallUiModel = (EditorialModuleUiModel.CarouselSmallUiModel) carouselSmallUiModel2;
                            headerUiModel = carouselSmallUiModel.f50829b;
                            str3 = carouselSmallUiModel.f50828a;
                            if (!Intrinsics.c(str3, str)) {
                                if (assetImageUiModel != null) {
                                    if (headerUiModel != null) {
                                        headerUiModelA = HeaderUiModel.a(headerUiModel, assetImageUiModel);
                                    } else {
                                        headerUiModelA = null;
                                    }
                                    if (headerUiModelA != null) {
                                        headerUiModel = headerUiModelA;
                                    }
                                }
                                AlgorithmType algorithmType3 = carouselSmallUiModel.f50830c;
                                List list7 = carouselSmallUiModel.d;
                                str3.getClass();
                                algorithmType3.getClass();
                                list3.getClass();
                                carouselSmallUiModel2 = new EditorialModuleUiModel.CarouselSmallUiModel(str3, headerUiModel, algorithmType3, list7, list3, str4, false);
                            }
                        }
                    }
                    arrayList.add(carouselSmallUiModel2);
                    list = list3;
                }
                list2 = list;
                success = new FeedTabState.Success(new FeedUiModel(arrayList));
            } else {
                list2 = list;
            }
            if (mutableStateFlow.i(value, success)) {
                return;
            } else {
                list = list2;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0053  */
    public static final FeedUiModel yc(FeedViewModelImpl feedViewModelImpl, FeedUiModel feedUiModel, String str, LiveInfoUiModel liveInfoUiModel) {
        boolean z;
        Instant instant;
        List list = feedUiModel.f57983a;
        list.getClass();
        List<EditorialModuleUiModel> list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
        for (EditorialModuleUiModel cardUiModel : list2) {
            if (cardUiModel instanceof EditorialModuleUiModel.CardUiModel) {
                EditorialModuleUiModel.CardUiModel cardUiModel2 = (EditorialModuleUiModel.CardUiModel) cardUiModel;
                EditorialModuleCardTypeUiModel editorialModuleCardTypeUiModel = cardUiModel2.g;
                if (editorialModuleCardTypeUiModel instanceof EditorialModuleCardTypeUiModel.Live) {
                    EditorialModuleCardTypeUiModel.Live live = (EditorialModuleCardTypeUiModel.Live) editorialModuleCardTypeUiModel;
                    String str2 = live.f50806a.f50862a;
                    VideoIdUiModel.Companion companion = VideoIdUiModel.f51798c;
                    if (Intrinsics.c(str2, str)) {
                        if (liveInfoUiModel.f50863b == LiveVideoStatusUiModel.LIVE_UPCOMING && (instant = liveInfoUiModel.f50864c) != null) {
                            z = instant.isAfter(Instant.now());
                        }
                        LiveFormatUiModel liveFormatUiModel = live.f50807b;
                        liveFormatUiModel.getClass();
                        EditorialModuleCardTypeUiModel.Live live2 = new EditorialModuleCardTypeUiModel.Live(liveInfoUiModel, liveFormatUiModel, z);
                        String str3 = cardUiModel2.f50813a;
                        TitlesUiModel titlesUiModel = cardUiModel2.f50814b;
                        ContributionLinkUiModel contributionLinkUiModel = cardUiModel2.f50815c;
                        AssetUiModel assetUiModel = cardUiModel2.d;
                        RatioUiModel ratioUiModel = cardUiModel2.f50816e;
                        TargetingUiModel targetingUiModel = cardUiModel2.f50817f;
                        str3.getClass();
                        assetUiModel.getClass();
                        ratioUiModel.getClass();
                        cardUiModel = new EditorialModuleUiModel.CardUiModel(str3, titlesUiModel, contributionLinkUiModel, assetUiModel, ratioUiModel, targetingUiModel, live2);
                    }
                }
            }
            arrayList.add(cardUiModel);
        }
        return new FeedUiModel(arrayList);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    public static final Object zc(FeedViewModelImpl feedViewModelImpl, String str, AssetImageUiModel assetImageUiModel, ContinuationImpl continuationImpl) {
        FeedViewModelImpl$fetchRelatedProducts$1 feedViewModelImpl$fetchRelatedProducts$1;
        Object objA;
        MutableStateFlow mutableStateFlow = feedViewModelImpl.a0;
        if (continuationImpl instanceof FeedViewModelImpl$fetchRelatedProducts$1) {
            feedViewModelImpl$fetchRelatedProducts$1 = (FeedViewModelImpl$fetchRelatedProducts$1) continuationImpl;
            int i2 = feedViewModelImpl$fetchRelatedProducts$1.f57659f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                feedViewModelImpl$fetchRelatedProducts$1.f57659f = i2 - Integer.MIN_VALUE;
            } else {
                feedViewModelImpl$fetchRelatedProducts$1 = new FeedViewModelImpl$fetchRelatedProducts$1(feedViewModelImpl, continuationImpl);
            }
        } else {
            feedViewModelImpl$fetchRelatedProducts$1 = new FeedViewModelImpl$fetchRelatedProducts$1(feedViewModelImpl, continuationImpl);
        }
        Object obj = feedViewModelImpl$fetchRelatedProducts$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = feedViewModelImpl$fetchRelatedProducts$1.f57659f;
        if (i3 == 0) {
            ResultKt.b(obj);
            GetRelatedProductsUseCase getRelatedProductsUseCase = feedViewModelImpl.E;
            feedViewModelImpl$fetchRelatedProducts$1.f57656b = str;
            feedViewModelImpl$fetchRelatedProducts$1.f57657c = assetImageUiModel;
            feedViewModelImpl$fetchRelatedProducts$1.f57659f = 1;
            objA = getRelatedProductsUseCase.a(str, feedViewModelImpl$fetchRelatedProducts$1);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            assetImageUiModel = feedViewModelImpl$fetchRelatedProducts$1.f57657c;
            str = feedViewModelImpl$fetchRelatedProducts$1.f57656b;
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            List list = (List) objA;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(ProductTinyMapperKt.a((ProductTiny) it.next()));
            }
            mutableStateFlow.setValue(new MostPurchasedWithState.Loaded(str, assetImageUiModel, arrayList));
        }
        if (Result.a(objA) != null) {
            feedViewModelImpl.f57615b.getClass();
            mutableStateFlow.setValue(MostPurchasedWithState.NoSku.f57749a);
        }
        return Unit.f71739a;
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void B(ChatProductModel chatProductModel, int i2, int i3) {
        chatProductModel.getClass();
        this.f57618f.B(chatProductModel, i2, i3);
    }

    @Override // com.vuitton.android.presentation.screen.feed.FeedViewModel
    public final void B1() {
        Lc(FeedNotification.NotificationAlreadyEnabled.f57613a);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void C(ScreenType screenType) {
        screenType.getClass();
        this.f57618f.C(screenType);
    }

    @Override // com.vuitton.android.presentation.screen.feed.FeedViewModel
    public final void C4() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new FeedViewModelImpl$refreshHotContentAnimationState$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.feed.FeedViewModel
    public final void D9() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new FeedViewModelImpl$fetchFeedForYou$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object E5(Continuation continuation) {
        return this.f57618f.E5(continuation);
    }

    public final void Ec(String str, MostPurchasedWithState mostPurchasedWithState) {
        if (Intrinsics.c(mostPurchasedWithState, MostPurchasedWithState.Unresolved.f57750a) || Intrinsics.c(mostPurchasedWithState, MostPurchasedWithState.NoSku.f57749a)) {
            Mc(this, str, EmptyList.f71768b, null, null, 20);
            return;
        }
        if (mostPurchasedWithState instanceof MostPurchasedWithState.Loading) {
            Mc(this, str, EmptyList.f71768b, null, ((MostPurchasedWithState.Loading) mostPurchasedWithState).f57748b, 4);
        } else if (!(mostPurchasedWithState instanceof MostPurchasedWithState.Loaded)) {
            v40.g();
        } else {
            MostPurchasedWithState.Loaded loaded = (MostPurchasedWithState.Loaded) mostPurchasedWithState;
            Mc(this, str, loaded.f57746c, null, loaded.f57745b, 12);
        }
    }

    @Override // com.vuitton.android.presentation.screen.feed.FeedViewModel
    public final void F4() {
        MutableStateFlow mutableStateFlow;
        Object value;
        A11ySettings a11ySettings;
        do {
            mutableStateFlow = this.S;
            value = mutableStateFlow.getValue();
            AccessibilityPreferenceType accessibilityPreferenceType = AccessibilityPreferenceType.SIMPLIFY_NAVIGATION;
            AccessibilityPreferenceType accessibilityPreferenceType2 = AccessibilityPreferenceType.DISABLE_AUTOPLAY;
            AccessibilityPreferenceType accessibilityPreferenceType3 = AccessibilityPreferenceType.ENHANCED_CONTRAST;
            Object objA = this.x.a(accessibilityPreferenceType, accessibilityPreferenceType2, accessibilityPreferenceType3);
            if (Result.a(objA) == null) {
                Map map = (Map) objA;
                Boolean bool = (Boolean) map.get(accessibilityPreferenceType2);
                boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
                Boolean bool2 = (Boolean) map.get(accessibilityPreferenceType3);
                boolean zBooleanValue2 = bool2 != null ? bool2.booleanValue() : false;
                Boolean bool3 = (Boolean) map.get(accessibilityPreferenceType);
                a11ySettings = new A11ySettings(zBooleanValue, zBooleanValue2, bool3 != null ? bool3.booleanValue() : false);
            } else {
                a11ySettings = new A11ySettings(false, false, false, 7, null);
            }
        } while (!mutableStateFlow.i(value, a11ySettings));
    }

    public final Object Fc(boolean z, SuspendLambda suspendLambda) {
        MutableStateFlow mutableStateFlow;
        Object value;
        MutableStateFlow mutableStateFlow2;
        Object value2;
        if (((Boolean) this.K.getValue()).booleanValue()) {
            if (((FeedFeatureFlags) this.R.getValue()).f57916h) {
                Object objJc = Jc(z, suspendLambda);
                return objJc == CoroutineSingletons.COROUTINE_SUSPENDED ? objJc : Unit.f71739a;
            }
            Object objGc = Gc(suspendLambda);
            return objGc == CoroutineSingletons.COROUTINE_SUSPENDED ? objGc : Unit.f71739a;
        }
        do {
            mutableStateFlow = this.P;
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.i(value, null));
        do {
            mutableStateFlow2 = this.Q;
            value2 = mutableStateFlow2.getValue();
            ((Boolean) value2).getClass();
        } while (!mutableStateFlow2.i(value2, Boolean.FALSE));
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0092  */
    /* JADX WARN: Code duplicated, block: B:30:0x009a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:31:0x009c  */
    /* JADX WARN: Code duplicated, block: B:35:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:37:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:49:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:52:0x0101  */
    /* JADX WARN: Code duplicated, block: B:56:0x0110  */
    /* JADX WARN: Code duplicated, block: B:58:0x0116  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    public final Object Gc(ContinuationImpl continuationImpl) {
        FeedViewModelImpl$fetchOngoingOrdersLegacy$1 feedViewModelImpl$fetchOngoingOrdersLegacy$1;
        MonitorAction monitorAction;
        MonitorAction monitorAction2;
        ResultStrategy resultStrategy;
        Result result;
        Object objB;
        MonitorAction monitorAction3;
        Object obj;
        boolean z;
        Throwable thA;
        List list;
        Object value;
        Object value2;
        String message;
        Throwable thA2;
        List list2;
        Object value3;
        Object value4;
        String message2;
        if (continuationImpl instanceof FeedViewModelImpl$fetchOngoingOrdersLegacy$1) {
            feedViewModelImpl$fetchOngoingOrdersLegacy$1 = (FeedViewModelImpl$fetchOngoingOrdersLegacy$1) continuationImpl;
            int i2 = feedViewModelImpl$fetchOngoingOrdersLegacy$1.f57655f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                feedViewModelImpl$fetchOngoingOrdersLegacy$1.f57655f = i2 - Integer.MIN_VALUE;
            } else {
                feedViewModelImpl$fetchOngoingOrdersLegacy$1 = new FeedViewModelImpl$fetchOngoingOrdersLegacy$1(this, continuationImpl);
            }
        } else {
            feedViewModelImpl$fetchOngoingOrdersLegacy$1 = new FeedViewModelImpl$fetchOngoingOrdersLegacy$1(this, continuationImpl);
        }
        Object obj2 = feedViewModelImpl$fetchOngoingOrdersLegacy$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = feedViewModelImpl$fetchOngoingOrdersLegacy$1.f57655f;
        MutableStateFlow mutableStateFlow = this.Q;
        MutableStateFlow mutableStateFlow2 = this.P;
        Logger logger = this.f57615b;
        InAppDispatch inAppDispatch = this.G;
        if (i3 == 0) {
            ResultKt.b(obj2);
            DynatraceMonitorAction dynatraceMonitorActionA = this.f57616c.a(inAppDispatch, FeedMonitoring.Action.LoadOngoingOrders.f48903a);
            feedViewModelImpl$fetchOngoingOrdersLegacy$1.f57652b = dynatraceMonitorActionA;
            feedViewModelImpl$fetchOngoingOrdersLegacy$1.f57655f = 1;
            ResultStrategyLazy resultStrategyLazyJ = this.o.f49119a.j();
            if (resultStrategyLazyJ != coroutineSingletons) {
                obj2 = resultStrategyLazyJ;
                monitorAction = dynatraceMonitorActionA;
            }
            return coroutineSingletons;
        }
        if (i3 == 1) {
            monitorAction = feedViewModelImpl$fetchOngoingOrdersLegacy$1.f57652b;
            ResultKt.b(obj2);
        } else {
            if (i3 == 2) {
                resultStrategy = feedViewModelImpl$fetchOngoingOrdersLegacy$1.f57653c;
                monitorAction2 = feedViewModelImpl$fetchOngoingOrdersLegacy$1.f57652b;
                ResultKt.b(obj2);
                result = (Result) obj2;
                if (result != null) {
                    obj = result.f71708b;
                    z = obj instanceof Result.Failure;
                    if (!z) {
                        if (!z) {
                            Result.Companion companion = Result.INSTANCE;
                            obj = OrderMapperKt.b((OrderList) obj, inAppDispatch, false).f60390a;
                        }
                        thA = Result.a(obj);
                        if (thA != null) {
                            message = thA.getMessage();
                            if (message == null) {
                                message = "Unable to retrieve orders list from cache";
                            }
                            logger.c("FeedViewModelImpl", message, thA);
                            monitorAction2.d(new FeedMonitoring.Error.LoadOngoingOrdersError(thA));
                            obj = EmptyList.f71768b;
                        }
                        list = (List) obj;
                        do {
                            value = mutableStateFlow2.getValue();
                        } while (!mutableStateFlow2.i(value, HotContentItemMapperKt.a(list)));
                        do {
                            value2 = mutableStateFlow.getValue();
                            ((Boolean) value2).getClass();
                        } while (!mutableStateFlow.i(value2, Boolean.FALSE));
                        monitorAction2.b();
                        return Unit.f71739a;
                    }
                }
                feedViewModelImpl$fetchOngoingOrdersLegacy$1.f57652b = monitorAction2;
                feedViewModelImpl$fetchOngoingOrdersLegacy$1.f57653c = null;
                feedViewModelImpl$fetchOngoingOrdersLegacy$1.f57655f = 3;
                objB = resultStrategy.b(feedViewModelImpl$fetchOngoingOrdersLegacy$1);
                if (objB != coroutineSingletons) {
                    monitorAction3 = monitorAction2;
                }
                return coroutineSingletons;
            }
            if (i3 != 3) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            monitorAction3 = feedViewModelImpl$fetchOngoingOrdersLegacy$1.f57652b;
            ResultKt.b(obj2);
            objB = ((Result) obj2).f71708b;
        }
        Result.Companion companion2 = Result.INSTANCE;
        if (!(objB instanceof Result.Failure)) {
            objB = OrderMapperKt.b((OrderList) objB, inAppDispatch, false).f60390a;
        }
        thA2 = Result.a(objB);
        if (thA2 != null) {
            message2 = thA2.getMessage();
            if (message2 == null) {
                message2 = "Unable to retrieve orders list from remote";
            }
            logger.c("FeedViewModelImpl", message2, thA2);
            monitorAction3.d(new FeedMonitoring.Error.LoadOngoingOrdersError(thA2));
            objB = EmptyList.f71768b;
        }
        list2 = (List) objB;
        do {
            value3 = mutableStateFlow2.getValue();
        } while (!mutableStateFlow2.i(value3, HotContentItemMapperKt.a(list2)));
        do {
            value4 = mutableStateFlow.getValue();
            ((Boolean) value4).getClass();
        } while (!mutableStateFlow.i(value4, Boolean.TRUE));
        monitorAction3.b();
        return Unit.f71739a;
        ResultStrategy resultStrategy2 = (ResultStrategy) obj2;
        feedViewModelImpl$fetchOngoingOrdersLegacy$1.f57652b = monitorAction;
        feedViewModelImpl$fetchOngoingOrdersLegacy$1.f57653c = resultStrategy2;
        feedViewModelImpl$fetchOngoingOrdersLegacy$1.f57655f = 2;
        Serializable serializableG = resultStrategy2.g(feedViewModelImpl$fetchOngoingOrdersLegacy$1);
        if (serializableG != coroutineSingletons) {
            monitorAction2 = monitorAction;
            resultStrategy = resultStrategy2;
            obj2 = serializableG;
            result = (Result) obj2;
            if (result != null) {
                obj = result.f71708b;
                z = obj instanceof Result.Failure;
                if (!z) {
                    if (!z) {
                        Result.Companion companion3 = Result.INSTANCE;
                        obj = OrderMapperKt.b((OrderList) obj, inAppDispatch, false).f60390a;
                    }
                    thA = Result.a(obj);
                    if (thA != null) {
                        message = thA.getMessage();
                        if (message == null) {
                            message = "Unable to retrieve orders list from cache";
                        }
                        logger.c("FeedViewModelImpl", message, thA);
                        monitorAction2.d(new FeedMonitoring.Error.LoadOngoingOrdersError(thA));
                        obj = EmptyList.f71768b;
                    }
                    list = (List) obj;
                    do {
                        value = mutableStateFlow2.getValue();
                    } while (!mutableStateFlow2.i(value, HotContentItemMapperKt.a(list)));
                    do {
                        value2 = mutableStateFlow.getValue();
                        ((Boolean) value2).getClass();
                    } while (!mutableStateFlow.i(value2, Boolean.FALSE));
                    monitorAction2.b();
                    return Unit.f71739a;
                }
            }
            feedViewModelImpl$fetchOngoingOrdersLegacy$1.f57652b = monitorAction2;
            feedViewModelImpl$fetchOngoingOrdersLegacy$1.f57653c = null;
            feedViewModelImpl$fetchOngoingOrdersLegacy$1.f57655f = 3;
            objB = resultStrategy.b(feedViewModelImpl$fetchOngoingOrdersLegacy$1);
            if (objB != coroutineSingletons) {
                monitorAction3 = monitorAction2;
                Result.Companion companion4 = Result.INSTANCE;
                if (!(objB instanceof Result.Failure)) {
                    objB = OrderMapperKt.b((OrderList) objB, inAppDispatch, false).f60390a;
                }
                thA2 = Result.a(objB);
                if (thA2 != null) {
                    message2 = thA2.getMessage();
                    if (message2 == null) {
                        message2 = "Unable to retrieve orders list from remote";
                    }
                    logger.c("FeedViewModelImpl", message2, thA2);
                    monitorAction3.d(new FeedMonitoring.Error.LoadOngoingOrdersError(thA2));
                    objB = EmptyList.f71768b;
                }
                list2 = (List) objB;
                do {
                    value3 = mutableStateFlow2.getValue();
                } while (!mutableStateFlow2.i(value3, HotContentItemMapperKt.a(list2)));
                do {
                    value4 = mutableStateFlow.getValue();
                    ((Boolean) value4).getClass();
                } while (!mutableStateFlow.i(value4, Boolean.TRUE));
                monitorAction3.b();
                return Unit.f71739a;
            }
        }
        return coroutineSingletons;
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void I(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.f57618f.I(chatProductModel, i2);
    }

    @Override // com.vuitton.android.presentation.screen.feed.FeedViewModel
    public final List I1(String str) {
        Object next;
        str.getClass();
        FeedTabState feedTabState = ((FeedViewState) this.g0.getValue()).d;
        FeedTabState.Success success = feedTabState instanceof FeedTabState.Success ? (FeedTabState.Success) feedTabState : null;
        if (success == null) {
            return EmptyList.f71768b;
        }
        Iterator it = success.f57922a.f57983a.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.c(((EditorialModuleUiModel) next).getF50852a(), str));
        EditorialModuleUiModel editorialModuleUiModel = (EditorialModuleUiModel) next;
        if (editorialModuleUiModel instanceof EditorialModuleUiModel.GridSmallUiModel) {
            List<CarouselSItemUiModel> list = ((EditorialModuleUiModel.GridSmallUiModel) editorialModuleUiModel).f50838e;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
            for (CarouselSItemUiModel carouselSItemUiModel : list) {
                String str2 = carouselSItemUiModel.f50796a;
                String str3 = carouselSItemUiModel.g;
                if (str3 == null) {
                    str3 = "";
                }
                arrayList.add(new SlottedSku(str2, str3, null));
            }
            return arrayList;
        }
        if (!(editorialModuleUiModel instanceof EditorialModuleUiModel.CarouselSmallUiModel)) {
            return EmptyList.f71768b;
        }
        List<CarouselSItemUiModel> list2 = ((EditorialModuleUiModel.CarouselSmallUiModel) editorialModuleUiModel).f50831e;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
        for (CarouselSItemUiModel carouselSItemUiModel2 : list2) {
            String str4 = carouselSItemUiModel2.f50796a;
            String str5 = carouselSItemUiModel2.g;
            if (str5 == null) {
                str5 = "";
            }
            arrayList2.add(new SlottedSku(str4, str5, null));
        }
        return arrayList2;
    }

    @Override // com.vuitton.android.presentation.screen.feed.FeedViewModel
    public final void Ia() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new FeedViewModelImpl$fetchFeedDiscover$1(this, null), 3);
    }

    public final List Ic() {
        Object value = this.O.getValue();
        FeedTabState.Success success = value instanceof FeedTabState.Success ? (FeedTabState.Success) value : null;
        if (success == null) {
            return EmptyList.f71768b;
        }
        List list = success.f57922a.f57983a;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            EditorialModuleUiModel editorialModuleUiModel = (EditorialModuleUiModel) obj;
            if (((editorialModuleUiModel instanceof EditorialModuleUiModel.GridSmallUiModel) && ((EditorialModuleUiModel.GridSmallUiModel) editorialModuleUiModel).f50837c == AlgorithmType.MOST_PURCHASED_WITH) || ((editorialModuleUiModel instanceof EditorialModuleUiModel.CarouselSmallUiModel) && ((EditorialModuleUiModel.CarouselSmallUiModel) editorialModuleUiModel).f50830c == AlgorithmType.MOST_PURCHASED_WITH)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((EditorialModuleUiModel) it.next()).getF50852a());
        }
        return arrayList2;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object Jc(boolean z, ContinuationImpl continuationImpl) {
        FeedViewModelImpl$loadHotContent$1 feedViewModelImpl$loadHotContent$1;
        Object objD;
        Object value;
        Object value2;
        Object value3;
        ArrayList arrayList;
        Object value4;
        if (continuationImpl instanceof FeedViewModelImpl$loadHotContent$1) {
            feedViewModelImpl$loadHotContent$1 = (FeedViewModelImpl$loadHotContent$1) continuationImpl;
            int i2 = feedViewModelImpl$loadHotContent$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                feedViewModelImpl$loadHotContent$1.d = i2 - Integer.MIN_VALUE;
            } else {
                feedViewModelImpl$loadHotContent$1 = new FeedViewModelImpl$loadHotContent$1(this, continuationImpl);
            }
        } else {
            feedViewModelImpl$loadHotContent$1 = new FeedViewModelImpl$loadHotContent$1(this, continuationImpl);
        }
        Object obj = feedViewModelImpl$loadHotContent$1.f57679b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = feedViewModelImpl$loadHotContent$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            feedViewModelImpl$loadHotContent$1.d = 1;
            objD = this.q.d(z, feedViewModelImpl$loadHotContent$1);
            if (objD == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objD = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        boolean z2 = objD instanceof Result.Failure;
        MutableStateFlow mutableStateFlow = this.Q;
        MutableStateFlow mutableStateFlow2 = this.P;
        if (!z2) {
            HotContent hotContent = (HotContent) objD;
            do {
                value3 = mutableStateFlow2.getValue();
                List list = hotContent.f67605a;
                arrayList = new ArrayList();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    HotContentItemUiModel hotContentItemUiModelB = HotContentItemMapperKt.b((HotContentItem) it.next(), this.G);
                    if (hotContentItemUiModelB != null) {
                        arrayList.add(hotContentItemUiModelB);
                    }
                }
            } while (!mutableStateFlow2.i(value3, arrayList));
            do {
                value4 = mutableStateFlow.getValue();
                ((Boolean) value4).getClass();
            } while (!mutableStateFlow.i(value4, Boolean.valueOf(!hotContent.f67606b)));
        }
        Throwable thA = Result.a(objD);
        if (thA != null) {
            String message = thA.getMessage();
            if (message == null) {
                message = "Unable to retrieve hot content";
            }
            this.f57615b.c("FeedViewModelImpl", message, thA);
            do {
                value = mutableStateFlow2.getValue();
            } while (!mutableStateFlow2.i(value, null));
            do {
                value2 = mutableStateFlow.getValue();
                ((Boolean) value2).getClass();
            } while (!mutableStateFlow.i(value2, Boolean.FALSE));
        }
        return Unit.f71739a;
    }

    public final void Kc(String str, AlgorithmType algorithmType, List list) {
        LinkedHashMap linkedHashMap = this.d0;
        Job job = (Job) linkedHashMap.remove(str);
        if (job != null) {
            job.cancel(null);
        }
        linkedHashMap.put(str, BuildersKt.c(ViewModelKt.a(this), null, null, new FeedViewModelImpl$loadProductsForSection$1(algorithmType, this, str, list, null), 3));
    }

    public final void Lc(FeedNotification feedNotification) {
        BuildersKt.c(ViewModelKt.a(this), null, null, new FeedViewModelImpl$showNotification$1(feedNotification, this, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object M1(ContactUsOrigin contactUsOrigin, Continuation continuation) {
        return this.f57618f.M1(contactUsOrigin, continuation);
    }

    @Override // com.vuitton.android.presentation.screen.feed.FeedViewModel
    public final void P1() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new FeedViewModelImpl$addEventToCalendar$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void Q0() {
        this.f57618f.Q0();
    }

    @Override // com.vuitton.android.presentation.screen.feed.FeedViewModel
    public final void Q3(String str) {
        str.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new FeedViewModelImpl$reportDYClick$1(this, str, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final Object S0(Continuation continuation) {
        return this.f57618f.S0(continuation);
    }

    @Override // com.vuitton.android.presentation.screen.feed.FeedViewModel
    public final void W1(FeedTab feedTab) {
        feedTab.getClass();
        this.J.setValue(feedTab);
    }

    @Override // com.vuitton.android.presentation.screen.feed.FeedViewModel
    public final void Z3() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new FeedViewModelImpl$checkForAudioGuideAccess$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.feed.FeedViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getG0() {
        return this.g0;
    }

    @Override // com.vuitton.android.presentation.screen.feed.FeedViewModel
    /* JADX INFO: renamed from: b, reason: from getter */
    public final Flow getV() {
        return this.V;
    }

    @Override // com.vuitton.android.presentation.screen.feed.FeedViewModel
    public final void c() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new FeedViewModelImpl$setUserChatConsentEnabled$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void f8(ContactUsMode contactUsMode) {
        contactUsMode.getClass();
        this.f57618f.f8(contactUsMode);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Flow i() {
        return this.f57618f.i();
    }

    @Override // com.vuitton.android.presentation.screen.feed.FeedViewModel
    public final void ib(String str) {
        str.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new FeedViewModelImpl$refreshLiveSection$1(this, str, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.feed.FeedViewModel
    public final void j6() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new FeedViewModelImpl$removeEventFromCalendar$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.feed.FeedViewModel
    public final void la() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new FeedViewModelImpl$updateOngoingOrders$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void m4(StringResourceUiModel stringResourceUiModel) {
        this.f57618f.m4(stringResourceUiModel);
    }

    @Override // com.vuitton.android.presentation.screen.feed.FeedViewModel
    public final void n1(CalendarEventData calendarEventData) {
        calendarEventData.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new FeedViewModelImpl$checkForSavedCalendarEvents$1(this, calendarEventData, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.feed.FeedViewModel
    /* JADX INFO: renamed from: o7, reason: from getter */
    public final Flow getF0() {
        return this.f0;
    }

    @Override // com.vuitton.android.presentation.screen.feed.FeedViewModel
    public final void oa() {
        LocationUtilsKt.a(this.d, new ck(this, 24), new ss(this, 12));
    }

    @Override // com.vuitton.android.presentation.screen.feed.FeedViewModel
    public final void qa(FeedBottomSheet feedBottomSheet) {
        BuildersKt.c(ViewModelKt.a(this), null, null, new FeedViewModelImpl$setBottomSheet$1(this, feedBottomSheet, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void r(ChatProductModel chatProductModel) {
        chatProductModel.getClass();
        this.f57618f.r(chatProductModel);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void s() {
        this.f57618f.s();
    }

    @Override // com.vuitton.android.presentation.screen.feed.FeedViewModel
    public final void t3(String str, String str2) {
        str.getClass();
        str2.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new FeedViewModelImpl$reportDYSlotClick$1(this, str2, str, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.feed.FeedViewModel
    public final void u0(String str) {
        FeedUiModel feedUiModel;
        FeedUiModel feedUiModel2;
        str.getClass();
        Object value = this.N.getValue();
        FeedTabState.Success success = value instanceof FeedTabState.Success ? (FeedTabState.Success) value : null;
        Object value2 = this.O.getValue();
        FeedTabState.Success success2 = value2 instanceof FeedTabState.Success ? (FeedTabState.Success) value2 : null;
        EditorialModuleUiModel.CardUiModel cardUiModelHc = Hc(str, (success == null || (feedUiModel2 = success.f57922a) == null) ? null : feedUiModel2.f57983a);
        EditorialModuleUiModel.CardUiModel cardUiModelHc2 = Hc(str, (success2 == null || (feedUiModel = success2.f57922a) == null) ? null : feedUiModel.f57983a);
        if (cardUiModelHc != null) {
            cardUiModelHc2 = cardUiModelHc;
        } else if (cardUiModelHc2 == null) {
            return;
        }
        EditorialModuleCardTypeUiModel editorialModuleCardTypeUiModel = cardUiModelHc2.g;
        if (!(editorialModuleCardTypeUiModel instanceof EditorialModuleCardTypeUiModel.Event)) {
            if (editorialModuleCardTypeUiModel instanceof EditorialModuleCardTypeUiModel.Live) {
                ib(((EditorialModuleCardTypeUiModel.Live) editorialModuleCardTypeUiModel).f50806a.f50862a);
            }
        } else if (cardUiModelHc != null) {
            BuildersKt.c(ViewModelKt.a(this), null, null, new FeedViewModelImpl$refreshFeedDiscover$1(this, str, null), 3);
        } else {
            BuildersKt.c(ViewModelKt.a(this), null, null, new FeedViewModelImpl$refreshFeedForYou$1(this, str, null), 3);
        }
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void v(String str, String str2) {
        this.f57618f.v(str, str2);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object vc(Continuation continuation) {
        return this.f57618f.vc(continuation);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void x(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.f57618f.x(chatProductModel, i2);
    }

    @Override // com.vuitton.android.presentation.screen.feed.FeedViewModel
    public final boolean y3(String str) {
        str.getClass();
        return Ic().contains(str);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void z() {
        this.f57618f.z();
    }
}
