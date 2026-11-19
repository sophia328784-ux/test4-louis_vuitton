package com.vuitton.android.presentation.screen.storemode;

import androidx.compose.runtime.MutableState;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import androidx.navigation.SavedStateHandleKt;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ReportDYAddToWishlistEventUseCase;
import com.vuitton.android.domain.usecase.plp.GetCategoryPlpUseCase;
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
import com.vuitton.android.presentation.screen.filter.model.FilterParams;
import com.vuitton.android.presentation.screen.filter.quickaccess.FilterCommand;
import com.vuitton.android.presentation.screen.plp.models.PLPAddToWishlistTrackingMode;
import com.vuitton.android.presentation.screen.plp.models.PLPRemoveFromWishlistTrackingMode;
import com.vuitton.android.presentation.screen.plp.models.PLPTrackingUiModel;
import com.vuitton.android.presentation.screen.plp.models.PLPTrackingUiModelKt;
import com.vuitton.android.presentation.screen.plp.models.PLPWishlistUpdateUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.viewstates.PLPViewState;
import com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.PLPWishlistDelegate;
import com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.core.PLPCoreDelegate;
import com.vuitton.android.presentation.screen.storemode.delegates.StoreModeProductListDelegate;
import com.vuitton.android.presentation.screen.storemode.filters.model.StoreModePLPFiltersViewState;
import com.vuitton.android.presentation.screen.storemode.models.PLPStoreModeViewState;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeContentUiModel;
import com.vuitton.android.presentation.tracking.GA4TrackingUiModel;
import com.vuitton.android.presentation.tracking.GA4TrackingUiModelKt;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import defpackage.v40;
import java.util.Map;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Reflection;
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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B¡\u0001\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020'¢\u0006\u0004\b)\u0010*¨\u0006+"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModel;", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;", "filterCommand", "Lcom/vuitton/android/domain/usecase/plp/GetCategoryPlpUseCase;", "getCategoryPlpUseCase", "Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;", "getWishlistUseCase", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;", "isProductInWishlist", "Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;", "addProductToWishList", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;", "deleteProductFromWishlist", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;", "reportDYAddToWishlistEventUseCase", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;", "appsFlyerTracker", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "userSessionService", "Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;", "getRmsCode", "Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;", "disableStoreMode", "Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;", "isStoreModeStillValid", "<init>", "(Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lcom/vuitton/android/domain/usecase/plp/GetCategoryPlpUseCase;Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PLPStoreModeViewModelImpl extends ViewModel implements PLPStoreModeViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AnalyticsTracker f64686a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppsFlyerTracker f64687b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SavedStateHandle f64688c;
    public final UserSessionService d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final GetRmsCodeUseCase f64689e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final DisableStoreModeUseCase f64690f;
    public final IsStoreModeStillValidUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final InAppDispatch f64691h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MutableStateFlow f64692i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final SharedFlowImpl f64693j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final SharedFlowImpl f64694k;
    public final boolean l;
    public final boolean m;
    public final boolean n;
    public final StateFlow o;
    public final StoreModeProductListDelegate p;
    public final StoreModeProductListDelegate q;
    public final PLPWishlistDelegate r;
    public final StateFlow s;
    public final StateFlow t;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f64695a;

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
            f64695a = iArr;
        }
    }

    @Inject
    public PLPStoreModeViewModelImpl(Monitor monitor, LVEventSender lVEventSender, FilterCommand filterCommand, GetCategoryPlpUseCase getCategoryPlpUseCase, GetWishlistUseCase getWishlistUseCase, NotificationBuilder notificationBuilder, IsProductInWishlistUseCase isProductInWishlistUseCase, AddProductToWishlistUseCase addProductToWishlistUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, DeleteProductFromWishlistUseCase deleteProductFromWishlistUseCase, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, ReportDYAddToWishlistEventUseCase reportDYAddToWishlistEventUseCase, AnalyticsTracker analyticsTracker, AppsFlyerTracker appsFlyerTracker, SavedStateHandle savedStateHandle, UserSessionService userSessionService, GetRmsCodeUseCase getRmsCodeUseCase, DisableStoreModeUseCase disableStoreModeUseCase, IsStoreModeStillValidUseCase isStoreModeStillValidUseCase) {
        monitor.getClass();
        lVEventSender.getClass();
        filterCommand.getClass();
        getCategoryPlpUseCase.getClass();
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
        savedStateHandle.getClass();
        userSessionService.getClass();
        getRmsCodeUseCase.getClass();
        disableStoreModeUseCase.getClass();
        isStoreModeStillValidUseCase.getClass();
        this.f64686a = analyticsTracker;
        this.f64687b = appsFlyerTracker;
        this.f64688c = savedStateHandle;
        this.d = userSessionService;
        this.f64689e = getRmsCodeUseCase;
        this.f64690f = disableStoreModeUseCase;
        this.g = isStoreModeStillValidUseCase;
        InAppDispatch inAppDispatchB = requireUserInAppDispatchUseCase.f49912a.b();
        this.f64691h = inAppDispatchB;
        StoreModeContentUiModel.INSTANCE.getClass();
        final MutableStateFlow mutableStateFlowA = StateFlowKt.a(StoreModeContentUiModel.initialValue);
        this.f64692i = mutableStateFlowA;
        SharedFlowImpl sharedFlowImplB = SharedFlowKt.b(1, 0, BufferOverflow.DROP_OLDEST, 2);
        this.f64693j = sharedFlowImplB;
        this.f64694k = sharedFlowImplB;
        boolean zB = isFeatureAvailableUseCase.b(new Feature[]{Feature.PLP_V3_GRID_VIEW});
        this.l = zB;
        boolean zB2 = isFeatureAvailableUseCase.b(new Feature[]{Feature.AI_COMPANION});
        this.m = zB2;
        this.n = isFeatureAvailableUseCase.b(new Feature[]{Feature.PLP_REVAMP_V3_PHASE2});
        Flow<PLPStoreModeViewState> flow = new Flow<PLPStoreModeViewState>() { // from class: com.vuitton.android.presentation.screen.storemode.PLPStoreModeViewModelImpl$special$$inlined$map$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.storemode.PLPStoreModeViewModelImpl$special$$inlined$map$1$2, reason: invalid class name */
            @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
            public final class AnonymousClass2<T> implements FlowCollector {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ FlowCollector f64711b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ PLPStoreModeViewModelImpl f64712c;

                /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.storemode.PLPStoreModeViewModelImpl$special$$inlined$map$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                @DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.PLPStoreModeViewModelImpl$special$$inlined$map$1$2", f = "PLPStoreModeViewModelImpl.kt", l = {217}, m = "emit", v = 2)
                public final class AnonymousClass1 extends ContinuationImpl {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public /* synthetic */ Object f64713b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public int f64714c;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.f64713b = obj;
                        this.f64714c |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector, PLPStoreModeViewModelImpl pLPStoreModeViewModelImpl) {
                    this.f64711b = flowCollector;
                    this.f64712c = pLPStoreModeViewModelImpl;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i2 = anonymousClass1.f64714c;
                        if ((i2 & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.f64714c = i2 - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(continuation);
                    }
                    Object obj2 = anonymousClass1.f64713b;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i3 = anonymousClass1.f64714c;
                    if (i3 == 0) {
                        ResultKt.b(obj2);
                        PLPStoreModeViewModelImpl pLPStoreModeViewModelImpl = this.f64712c;
                        PLPStoreModeViewState pLPStoreModeViewState = new PLPStoreModeViewState((StoreModeContentUiModel) obj, pLPStoreModeViewModelImpl.l, pLPStoreModeViewModelImpl.m);
                        anonymousClass1.f64714c = 1;
                        if (this.f64711b.emit(pLPStoreModeViewState, anonymousClass1) == coroutineSingletons) {
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
                Object objF = mutableStateFlowA.f(new AnonymousClass2(flowCollector, this), continuation);
                return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
            }
        };
        CloseableCoroutineScope closeableCoroutineScopeA = ViewModelKt.a(this);
        SharingStarted.f74985a.getClass();
        SharingStarted sharingStarted = SharingStarted.Companion.f74988c;
        this.o = FlowKt.A(flow, closeableCoroutineScopeA, sharingStarted, new PLPStoreModeViewState(null, false, false, 7, null));
        this.p = new StoreModeProductListDelegate(zc(), true, filterCommand, new PLPStoreModeViewModelImpl$storeDelegate$1(monitor, this, getCategoryPlpUseCase, null), ViewModelKt.a(this), isProductInWishlistUseCase, zB, zB2);
        this.q = new StoreModeProductListDelegate(zc(), false, filterCommand, new PLPStoreModeViewModelImpl$onlineDelegate$1(monitor, this, getCategoryPlpUseCase, null), ViewModelKt.a(this), isProductInWishlistUseCase, zB, zB2);
        this.r = new PLPWishlistDelegate(monitor, ViewModelKt.a(this), lVEventSender, inAppDispatchB, appsFlyerTracker, analyticsTracker, userSessionService, getWishlistUseCase, notificationBuilder, addProductToWishlistUseCase, deleteProductFromWishlistUseCase, reportDYAddToWishlistEventUseCase);
        this.s = FlowKt.A(FlowKt.B(mutableStateFlowA, new PLPStoreModeViewModelImpl$special$$inlined$flatMapLatest$1(null, this)), ViewModelKt.a(this), sharingStarted, new PLPViewState(null, null, null, false, false, 0, null, false, null, null, null, 2047, null));
        this.t = FlowKt.A(FlowKt.B(mutableStateFlowA, new PLPStoreModeViewModelImpl$special$$inlined$flatMapLatest$2(null, this)), ViewModelKt.a(this), sharingStarted, new StoreModePLPFiltersViewState(null, null, null, false, false, null, 63, null));
    }

    @Override // com.vuitton.android.presentation.screen.storemode.PLPStoreModeViewModel
    public final void E(PLPWishlistUpdateUiModel pLPWishlistUpdateUiModel) {
        pLPWishlistUpdateUiModel.getClass();
        this.r.e(pLPWishlistUpdateUiModel, PLPAddToWishlistTrackingMode.Legacy.f62875a, PLPRemoveFromWishlistTrackingMode.Legacy.f62877a);
    }

    @Override // com.vuitton.android.presentation.screen.storemode.PLPStoreModeViewModel
    public final void H(PlpProductUiModel plpProductUiModel) {
        plpProductUiModel.getClass();
        MutableState mutableState = ((PlpProductUiModel.SkuDataUiModel) plpProductUiModel.f62934a.getF10755b()).f62948h;
        if (mutableState == null || ((PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel) mutableState.getF10755b()).f62953b) {
            return;
        }
        boolean z = !((PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel) mutableState.getF10755b()).f62952a;
        mutableState.setValue(new PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel(z, true));
        if (this.d.b()) {
            StoreModeProductListDelegate storeModeProductListDelegateYc = yc();
            storeModeProductListDelegateYc.getClass();
            storeModeProductListDelegateYc.f64933c.getClass();
            PLPCoreDelegate.a(plpProductUiModel, true);
        }
        BuildersKt.c(ViewModelKt.a(this), null, null, new PLPStoreModeViewModelImpl$onWishlistToggled$1(this, plpProductUiModel, z, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.storemode.PLPStoreModeViewModel
    public final void N(PlpProductUiModel plpProductUiModel) {
        plpProductUiModel.getClass();
        StoreModeProductListDelegate storeModeProductListDelegateYc = yc();
        storeModeProductListDelegateYc.getClass();
        storeModeProductListDelegateYc.f64933c.getClass();
        PLPCoreDelegate.a(plpProductUiModel, false);
    }

    @Override // com.vuitton.android.presentation.screen.storemode.PLPStoreModeViewModel
    public final void O0(PLPTrackingUiModel pLPTrackingUiModel) {
        this.f64686a.a(PLPTrackingUiModelKt.a(pLPTrackingUiModel, ((PLPViewState) this.s.getValue()).f63006b, d0()));
    }

    @Override // com.vuitton.android.presentation.screen.storemode.PLPStoreModeViewModel
    /* JADX INFO: renamed from: Y, reason: from getter */
    public final StateFlow getO() {
        return this.o;
    }

    @Override // com.vuitton.android.presentation.screen.storemode.PLPStoreModeViewModel
    public final void Z(StoreModeContentUiModel storeModeContentUiModel) {
        storeModeContentUiModel.getClass();
        this.f64692i.setValue(storeModeContentUiModel);
        O0(new PLPTrackingUiModel.StoreModeContentTypeSelectedEvent(storeModeContentUiModel));
    }

    @Override // com.vuitton.android.presentation.screen.storemode.PLPStoreModeViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getS() {
        return this.s;
    }

    @Override // com.vuitton.android.presentation.screen.storemode.PLPStoreModeViewModel
    /* JADX INFO: renamed from: c1, reason: from getter */
    public final StateFlow getT() {
        return this.t;
    }

    @Override // com.vuitton.android.presentation.screen.storemode.PLPStoreModeViewModel
    public final String d0() {
        Object objE = this.f64689e.f50391a.e();
        Result.Companion companion = Result.INSTANCE;
        if (objE instanceof Result.Failure) {
            objE = "";
        }
        return (String) objE;
    }

    @Override // com.vuitton.android.presentation.screen.storemode.PLPStoreModeViewModel
    public final SharedFlowImpl g() {
        return this.r.p;
    }

    @Override // com.vuitton.android.presentation.screen.storemode.PLPStoreModeViewModel
    public final void j(GA4TrackingUiModel gA4TrackingUiModel) {
        this.f64686a.a(GA4TrackingUiModelKt.a(gA4TrackingUiModel));
    }

    @Override // com.vuitton.android.presentation.screen.storemode.PLPStoreModeViewModel
    public final void l(String str, String str2) {
        StoreModeProductListDelegate storeModeProductListDelegateYc = yc();
        storeModeProductListDelegateYc.getClass();
        storeModeProductListDelegateYc.f64932b.setValue(new FilterParams(str, str2, null, null, null, 28, null));
    }

    @Override // com.vuitton.android.presentation.screen.storemode.PLPStoreModeViewModel
    public final void p() {
        this.r.d();
    }

    @Override // com.vuitton.android.presentation.screen.storemode.PLPStoreModeViewModel
    public final boolean q0() {
        Boolean boolC = this.g.f50405a.c();
        Result.Companion companion = Result.INSTANCE;
        boolean zBooleanValue = boolC.booleanValue();
        if (!zBooleanValue) {
            this.f64690f.a();
            this.f64693j.a(Unit.f71739a);
        }
        return zBooleanValue;
    }

    @Override // com.vuitton.android.presentation.screen.storemode.PLPStoreModeViewModel
    /* JADX INFO: renamed from: y0, reason: from getter */
    public final SharedFlowImpl getF64694k() {
        return this.f64694k;
    }

    public final StoreModeProductListDelegate yc() {
        int i2 = WhenMappings.f64695a[((StoreModeContentUiModel) this.f64692i.getValue()).ordinal()];
        if (i2 == 1) {
            return this.p;
        }
        if (i2 == 2) {
            return this.q;
        }
        v40.g();
        return null;
    }

    public final String zc() {
        Map mapC = MapsKt.c();
        return ((StoreModeRoute.Plp) SavedStateHandleKt.a(this.f64688c, Reflection.f71922a.b(StoreModeRoute.Plp.class), mapC)).f64780a;
    }
}
