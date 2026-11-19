package com.vuitton.android.presentation.screen.storemode;

import androidx.compose.runtime.MutableState;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ReportDYAddToWishlistEventUseCase;
import com.vuitton.android.domain.usecase.plp.GetSearchPLPUseCase;
import com.vuitton.android.domain.usecase.storemode.DisableStoreModeUseCase;
import com.vuitton.android.domain.usecase.storemode.GetRmsCodeUseCase;
import com.vuitton.android.domain.usecase.storemode.IsStoreModeStillValidUseCase;
import com.vuitton.android.domain.usecase.wishlist.AddProductToWishlistUseCase;
import com.vuitton.android.domain.usecase.wishlist.DeleteProductFromWishlistUseCase;
import com.vuitton.android.domain.usecase.wishlist.GetWishlistUseCase;
import com.vuitton.android.domain.usecase.wishlist.IsProductInWishlistUseCase;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerTracker;
import com.vuitton.android.presentation.screen.filter.model.SearchParams;
import com.vuitton.android.presentation.screen.filter.quickaccess.FilterCommand;
import com.vuitton.android.presentation.screen.plp.models.PLPAddToWishlistTrackingMode;
import com.vuitton.android.presentation.screen.plp.models.PLPRemoveFromWishlistTrackingMode;
import com.vuitton.android.presentation.screen.plp.models.PLPWishlistUpdateUiModel;
import com.vuitton.android.presentation.screen.plp.models.PSPTrackingUiModel;
import com.vuitton.android.presentation.screen.plp.models.PSPTrackingUiModelKt;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.viewstates.PLPViewState;
import com.vuitton.android.presentation.screen.plp.models.viewstates.PSPViewState;
import com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.PLPWishlistDelegate;
import com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.core.PLPCoreDelegate;
import com.vuitton.android.presentation.screen.storemode.delegates.StoreModeSearchDelegate;
import com.vuitton.android.presentation.screen.storemode.delegates.StoreModeSearchDelegate$special$$inlined$map$3;
import com.vuitton.android.presentation.screen.storemode.filters.model.StoreModePLPFiltersViewState;
import com.vuitton.android.presentation.screen.storemode.models.PLPStoreModeViewState;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeContentUiModel;
import com.vuitton.android.presentation.tracking.GA4TrackingUiModel;
import com.vuitton.android.presentation.tracking.GA4TrackingUiModelKt;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import defpackage.v40;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0099\u0001\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%¢\u0006\u0004\b'\u0010(¨\u0006)"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;", "filterCommand", "Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;", "getSearchPLP", "Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;", "getWishlistUseCase", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;", "isProductInWishlist", "Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;", "addProductToWishList", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;", "deleteProductFromWishlist", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;", "reportDYAddToWishlistEventUseCase", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;", "appsFlyerTracker", "Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "userSessionService", "Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;", "getRmsCode", "Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;", "disableStoreMode", "Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;", "isStoreModeStillValid", "<init>", "(Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PSPStoreModeViewModelImpl extends ViewModel implements PSPStoreModeViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AnalyticsTracker f64722a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppsFlyerTracker f64723b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final UserSessionService f64724c;
    public final GetRmsCodeUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final DisableStoreModeUseCase f64725e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final IsStoreModeStillValidUseCase f64726f;
    public final InAppDispatch g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableStateFlow f64727h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final SharedFlowImpl f64728i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final SharedFlowImpl f64729j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final StateFlow f64730k;
    public final StoreModeSearchDelegate l;
    public final StoreModeSearchDelegate m;
    public final PLPWishlistDelegate n;
    public final StateFlow o;
    public final StateFlow p;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "delegate", "Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModelImpl$1", f = "PSPStoreModeViewModelImpl.kt", l = {229}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<StoreModeSearchDelegate, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f64731b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public /* synthetic */ Object f64732c;
        public final /* synthetic */ PSPStoreModeViewModelImpl d;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModelImpl$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "viewState", "Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModelImpl$1$1", f = "PSPStoreModeViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
        final class C03181 extends SuspendLambda implements Function2<PSPViewState, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public /* synthetic */ Object f64733b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ PSPStoreModeViewModelImpl f64734c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C03181(Continuation continuation, PSPStoreModeViewModelImpl pSPStoreModeViewModelImpl) {
                super(2, continuation);
                this.f64734c = pSPStoreModeViewModelImpl;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                C03181 c03181 = new C03181(continuation, this.f64734c);
                c03181.f64733b = obj;
                return c03181;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C03181) create((PSPViewState) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Integer num;
                PSPViewState pSPViewState = (PSPViewState) this.f64733b;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                ResultKt.b(obj);
                String str = pSPViewState.f63014a;
                if (str != null && (num = pSPViewState.f63015b) != null) {
                    PSPTrackingUiModel.ResultScreen resultScreen = new PSPTrackingUiModel.ResultScreen(str, num.intValue());
                    PSPStoreModeViewModelImpl pSPStoreModeViewModelImpl = this.f64734c;
                    pSPStoreModeViewModelImpl.Wa(resultScreen);
                    pSPStoreModeViewModelImpl.Wa(new PSPTrackingUiModel.SearchDone(pSPViewState.f63014a));
                }
                return Unit.f71739a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Continuation continuation, PSPStoreModeViewModelImpl pSPStoreModeViewModelImpl) {
            super(2, continuation);
            this.d = pSPStoreModeViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(continuation, this.d);
            anonymousClass1.f64732c = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((StoreModeSearchDelegate) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            StoreModeSearchDelegate storeModeSearchDelegate = (StoreModeSearchDelegate) this.f64732c;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f64731b;
            if (i2 == 0) {
                ResultKt.b(obj);
                StoreModeSearchDelegate$special$$inlined$map$3 storeModeSearchDelegate$special$$inlined$map$3 = storeModeSearchDelegate.f64948h;
                C03181 c03181 = new C03181(null, this.d);
                this.f64732c = null;
                this.f64731b = 1;
                if (FlowKt.g(storeModeSearchDelegate$special$$inlined$map$3, c03181, this) == coroutineSingletons) {
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

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f64735a;

        static {
            int[] iArr = new int[StoreModeContentUiModel.values().length];
            try {
                iArr[StoreModeContentUiModel.STORE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[StoreModeContentUiModel.ONLINE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f64735a = iArr;
        }
    }

    @Inject
    public PSPStoreModeViewModelImpl(Monitor monitor, LVEventSender lVEventSender, FilterCommand filterCommand, GetSearchPLPUseCase getSearchPLPUseCase, GetWishlistUseCase getWishlistUseCase, NotificationBuilder notificationBuilder, IsProductInWishlistUseCase isProductInWishlistUseCase, AddProductToWishlistUseCase addProductToWishlistUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, DeleteProductFromWishlistUseCase deleteProductFromWishlistUseCase, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, ReportDYAddToWishlistEventUseCase reportDYAddToWishlistEventUseCase, AnalyticsTracker analyticsTracker, AppsFlyerTracker appsFlyerTracker, UserSessionService userSessionService, GetRmsCodeUseCase getRmsCodeUseCase, DisableStoreModeUseCase disableStoreModeUseCase, IsStoreModeStillValidUseCase isStoreModeStillValidUseCase) {
        monitor.getClass();
        lVEventSender.getClass();
        filterCommand.getClass();
        getSearchPLPUseCase.getClass();
        getWishlistUseCase.getClass();
        notificationBuilder.getClass();
        isProductInWishlistUseCase.getClass();
        addProductToWishlistUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        deleteProductFromWishlistUseCase.getClass();
        requireUserInAppDispatchUseCase.getClass();
        reportDYAddToWishlistEventUseCase.getClass();
        analyticsTracker.getClass();
        appsFlyerTracker.getClass();
        userSessionService.getClass();
        getRmsCodeUseCase.getClass();
        disableStoreModeUseCase.getClass();
        isStoreModeStillValidUseCase.getClass();
        this.f64722a = analyticsTracker;
        this.f64723b = appsFlyerTracker;
        this.f64724c = userSessionService;
        this.d = getRmsCodeUseCase;
        this.f64725e = disableStoreModeUseCase;
        this.f64726f = isStoreModeStillValidUseCase;
        InAppDispatch inAppDispatchB = requireUserInAppDispatchUseCase.f49912a.b();
        this.g = inAppDispatchB;
        StoreModeContentUiModel.INSTANCE.getClass();
        final MutableStateFlow mutableStateFlowA = StateFlowKt.a(StoreModeContentUiModel.initialValue);
        this.f64727h = mutableStateFlowA;
        SharedFlowImpl sharedFlowImplB = SharedFlowKt.b(1, 0, BufferOverflow.DROP_OLDEST, 2);
        this.f64728i = sharedFlowImplB;
        this.f64729j = sharedFlowImplB;
        Flow<PLPStoreModeViewState> flow = new Flow<PLPStoreModeViewState>() { // from class: com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModelImpl$special$$inlined$map$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModelImpl$special$$inlined$map$1$2, reason: invalid class name */
            @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
            public final class AnonymousClass2<T> implements FlowCollector {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ FlowCollector f64759b;

                /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModelImpl$special$$inlined$map$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                @DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModelImpl$special$$inlined$map$1$2", f = "PSPStoreModeViewModelImpl.kt", l = {217}, m = "emit", v = 2)
                public final class AnonymousClass1 extends ContinuationImpl {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public /* synthetic */ Object f64760b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public int f64761c;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.f64760b = obj;
                        this.f64761c |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.f64759b = flowCollector;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i2 = anonymousClass1.f64761c;
                        if ((i2 & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.f64761c = i2 - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(continuation);
                    }
                    Object obj2 = anonymousClass1.f64760b;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i3 = anonymousClass1.f64761c;
                    if (i3 == 0) {
                        ResultKt.b(obj2);
                        PLPStoreModeViewState pLPStoreModeViewState = new PLPStoreModeViewState((StoreModeContentUiModel) obj, false, false, 6, null);
                        anonymousClass1.f64761c = 1;
                        if (this.f64759b.emit(pLPStoreModeViewState, anonymousClass1) == coroutineSingletons) {
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
                Object objF = mutableStateFlowA.f(new AnonymousClass2(flowCollector), continuation);
                return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
            }
        };
        CloseableCoroutineScope closeableCoroutineScopeA = ViewModelKt.a(this);
        SharingStarted.f74985a.getClass();
        SharingStarted sharingStarted = SharingStarted.Companion.f74988c;
        this.f64730k = FlowKt.A(flow, closeableCoroutineScopeA, sharingStarted, new PLPStoreModeViewState(null, false, false, 7, null));
        boolean zB = isFeatureAvailableUseCase.b(new Feature[]{Feature.PLP_V3_GRID_VIEW});
        boolean zB2 = isFeatureAvailableUseCase.b(new Feature[]{Feature.AI_COMPANION});
        this.l = new StoreModeSearchDelegate(true, filterCommand, zB, zB2, new PSPStoreModeViewModelImpl$storeDelegate$1(monitor, this, getSearchPLPUseCase, null), ViewModelKt.a(this), isProductInWishlistUseCase);
        this.m = new StoreModeSearchDelegate(false, filterCommand, zB, zB2, new PSPStoreModeViewModelImpl$onlineDelegate$1(monitor, this, getSearchPLPUseCase, null), ViewModelKt.a(this), isProductInWishlistUseCase);
        this.n = new PLPWishlistDelegate(monitor, ViewModelKt.a(this), lVEventSender, inAppDispatchB, appsFlyerTracker, analyticsTracker, userSessionService, getWishlistUseCase, notificationBuilder, addProductToWishlistUseCase, deleteProductFromWishlistUseCase, reportDYAddToWishlistEventUseCase);
        this.o = FlowKt.A(FlowKt.B(mutableStateFlowA, new PSPStoreModeViewModelImpl$special$$inlined$flatMapLatest$1(null, this)), ViewModelKt.a(this), sharingStarted, new PLPViewState(null, null, null, false, false, 0, null, false, null, null, null, 2047, null));
        this.p = FlowKt.A(FlowKt.B(mutableStateFlowA, new PSPStoreModeViewModelImpl$special$$inlined$flatMapLatest$2(null, this)), ViewModelKt.a(this), sharingStarted, new StoreModePLPFiltersViewState(null, null, null, false, false, null, 63, null));
        yc(new AnonymousClass1(null, this));
    }

    @Override // com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModel
    public final void E(PLPWishlistUpdateUiModel pLPWishlistUpdateUiModel) {
        pLPWishlistUpdateUiModel.getClass();
        this.n.e(pLPWishlistUpdateUiModel, PLPAddToWishlistTrackingMode.Legacy.f62875a, PLPRemoveFromWishlistTrackingMode.Legacy.f62877a);
    }

    @Override // com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModel
    public final void H(PlpProductUiModel plpProductUiModel) {
        plpProductUiModel.getClass();
        MutableState mutableState = ((PlpProductUiModel.SkuDataUiModel) plpProductUiModel.f62934a.getF10755b()).f62948h;
        if (mutableState == null || ((PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel) mutableState.getF10755b()).f62953b) {
            return;
        }
        boolean z = !((PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel) mutableState.getF10755b()).f62952a;
        mutableState.setValue(new PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel(z, true));
        if (this.f64724c.b()) {
            StoreModeSearchDelegate storeModeSearchDelegateZc = zc();
            storeModeSearchDelegateZc.getClass();
            storeModeSearchDelegateZc.d.getClass();
            PLPCoreDelegate.a(plpProductUiModel, true);
        }
        BuildersKt.c(ViewModelKt.a(this), null, null, new PSPStoreModeViewModelImpl$onWishlistToggled$1(this, plpProductUiModel, z, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModel
    public final StateFlow M0() {
        ChannelFlowTransformLatest channelFlowTransformLatestB = FlowKt.B(this.f64727h, new PSPStoreModeViewModelImpl$special$$inlined$flatMapLatest$3(null, this));
        CloseableCoroutineScope closeableCoroutineScopeA = ViewModelKt.a(this);
        SharingStarted.f74985a.getClass();
        return FlowKt.A(channelFlowTransformLatestB, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new PSPViewState(null, null, false, false, false, 31, null));
    }

    @Override // com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModel
    public final void N(PlpProductUiModel plpProductUiModel) {
        plpProductUiModel.getClass();
        StoreModeSearchDelegate storeModeSearchDelegateZc = zc();
        storeModeSearchDelegateZc.getClass();
        storeModeSearchDelegateZc.d.getClass();
        PLPCoreDelegate.a(plpProductUiModel, false);
    }

    @Override // com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModel
    public final void R8(boolean z) {
        zc().f64945c.setValue(Boolean.valueOf(z));
    }

    @Override // com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModel
    public final void Wa(PSPTrackingUiModel pSPTrackingUiModel) {
        this.f64722a.a(PSPTrackingUiModelKt.a(pSPTrackingUiModel, d0()));
    }

    @Override // com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModel
    public final void X0(String str) {
        str.getClass();
        yc(new PSPStoreModeViewModelImpl$search$1(str, null));
        Wa(new PSPTrackingUiModel.RequestSearch(str));
    }

    @Override // com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModel
    /* JADX INFO: renamed from: Y, reason: from getter */
    public final StateFlow getF64730k() {
        return this.f64730k;
    }

    @Override // com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModel
    public final void Z(StoreModeContentUiModel storeModeContentUiModel) {
        storeModeContentUiModel.getClass();
        this.f64727h.setValue(storeModeContentUiModel);
    }

    @Override // com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getO() {
        return this.o;
    }

    @Override // com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModel
    /* JADX INFO: renamed from: c1, reason: from getter */
    public final StateFlow getP() {
        return this.p;
    }

    @Override // com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModel
    public final String d0() {
        Object objE = this.d.f50391a.e();
        Result.Companion companion = Result.INSTANCE;
        if (objE instanceof Result.Failure) {
            objE = "";
        }
        return (String) objE;
    }

    @Override // com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModel
    public final SharedFlowImpl g() {
        return this.n.p;
    }

    @Override // com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModel
    public final void j(GA4TrackingUiModel gA4TrackingUiModel) {
        this.f64722a.a(GA4TrackingUiModelKt.a(gA4TrackingUiModel));
    }

    @Override // com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModel
    public final void l(String str, String str2) {
        StoreModeSearchDelegate storeModeSearchDelegateZc = zc();
        storeModeSearchDelegateZc.getClass();
        MutableStateFlow mutableStateFlow = storeModeSearchDelegateZc.f64944b;
        SearchParams searchParams = (SearchParams) mutableStateFlow.getValue();
        String str3 = searchParams != null ? searchParams.f57988a : null;
        if (str3 == null) {
            str3 = "";
        }
        mutableStateFlow.setValue(new SearchParams(str3, str, str2, null, 8, null));
    }

    @Override // com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModel
    public final void p() {
        this.n.d();
    }

    @Override // com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModel
    public final boolean q0() {
        Boolean boolC = this.f64726f.f50405a.c();
        Result.Companion companion = Result.INSTANCE;
        boolean zBooleanValue = boolC.booleanValue();
        if (!zBooleanValue) {
            this.f64725e.a();
            this.f64728i.a(Unit.f71739a);
        }
        return zBooleanValue;
    }

    @Override // com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModel
    /* JADX INFO: renamed from: y0, reason: from getter */
    public final SharedFlowImpl getF64729j() {
        return this.f64729j;
    }

    public final void yc(Function2 function2) {
        BuildersKt.c(ViewModelKt.a(this), null, null, new PSPStoreModeViewModelImpl$doForEachDelegate$1(function2, this, null), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new PSPStoreModeViewModelImpl$doForEachDelegate$2(function2, this, null), 3);
    }

    public final StoreModeSearchDelegate zc() {
        int i2 = WhenMappings.f64735a[((StoreModeContentUiModel) this.f64727h.getValue()).ordinal()];
        if (i2 == 1) {
            return this.l;
        }
        if (i2 == 2) {
            return this.m;
        }
        v40.g();
        return null;
    }
}
