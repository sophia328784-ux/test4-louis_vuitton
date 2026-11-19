package com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel;

import androidx.compose.runtime.SnapshotStateKt;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.monitoring.thematicplp.ThematicPlpMonitoring;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.usecase.catalog.GetThematicPlpThemesUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ReportDYAddToWishlistEventUseCase;
import com.vuitton.android.domain.usecase.wishlist.AddProductToWishlistUseCase;
import com.vuitton.android.domain.usecase.wishlist.DeleteProductFromWishlistUseCase;
import com.vuitton.android.domain.usecase.wishlist.GetWishlistUseCase;
import com.vuitton.android.domain.usecase.wishlist.IsProductInWishlistUseCase;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerTracker;
import com.vuitton.android.presentation.screen.catalog.models.PLPEntryUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.CurrentThemeUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.GridModes;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.ThemeItemUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.ThemeUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.tracking.ThematicPlpTrackingUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.tracking.ThematicPlpTrackingUiModelKt$WhenMappings;
import com.vuitton.android.presentation.screen.catalog.thematicplp.tracking.TrackingClickType;
import com.vuitton.android.presentation.screen.catalog.thematicplp.viewstate.ThematicPlpViewState;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.plp.models.PLPAddToWishlistTrackingMode;
import com.vuitton.android.presentation.screen.plp.models.PLPRemoveFromWishlistTrackingMode;
import com.vuitton.android.presentation.screen.plp.models.PLPWishlistUpdateUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortUiModel;
import com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.PLPWishlistDelegate;
import com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.ProductForWishlist;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.analytics.HitType;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.md;
import defpackage.o60;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002Bq\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;", "Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;", "getWishlistUseCase", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;", "addProductToWishList", "Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;", "deleteProductFromWishlist", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;", "reportDYAddToWishlistEventUseCase", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;", "appsFlyerTracker", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "userSessionService", "Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;", "isProductInWishlistUseCase", "Lcom/vuitton/android/domain/usecase/catalog/GetThematicPlpThemesUseCase;", "getThematicPlpThemesUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/domain/usecase/catalog/GetThematicPlpThemesUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ThematicPlpViewModelImpl extends ViewModel implements ThematicPlpViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Monitor f55530a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnalyticsTracker f55531b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppsFlyerTracker f55532c;
    public final LVEventSender d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final UserSessionService f55533e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final IsProductInWishlistUseCase f55534f;
    public final GetThematicPlpThemesUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final InAppDispatch f55535h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final PLPWishlistDelegate f55536i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MutableStateFlow f55537j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MutableStateFlow f55538k;
    public final MutableStateFlow l;
    public final MutableStateFlow m;
    public final MutableStateFlow n;
    public final LinkedHashMap o;
    public final MutableStateFlow p;
    public final MutableStateFlow q;
    public final MutableStateFlow r;
    public final MutableStateFlow s;
    public final MutableStateFlow t;
    public Job u;
    public final StateFlow v;
    public String w;

    @Inject
    public ThematicPlpViewModelImpl(GetWishlistUseCase getWishlistUseCase, NotificationBuilder notificationBuilder, AddProductToWishlistUseCase addProductToWishlistUseCase, DeleteProductFromWishlistUseCase deleteProductFromWishlistUseCase, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, ReportDYAddToWishlistEventUseCase reportDYAddToWishlistEventUseCase, Monitor monitor, AnalyticsTracker analyticsTracker, AppsFlyerTracker appsFlyerTracker, LVEventSender lVEventSender, UserSessionService userSessionService, IsProductInWishlistUseCase isProductInWishlistUseCase, GetThematicPlpThemesUseCase getThematicPlpThemesUseCase) {
        getWishlistUseCase.getClass();
        notificationBuilder.getClass();
        addProductToWishlistUseCase.getClass();
        deleteProductFromWishlistUseCase.getClass();
        requireUserInAppDispatchUseCase.getClass();
        reportDYAddToWishlistEventUseCase.getClass();
        monitor.getClass();
        analyticsTracker.getClass();
        appsFlyerTracker.getClass();
        lVEventSender.getClass();
        userSessionService.getClass();
        isProductInWishlistUseCase.getClass();
        getThematicPlpThemesUseCase.getClass();
        this.f55530a = monitor;
        this.f55531b = analyticsTracker;
        this.f55532c = appsFlyerTracker;
        this.d = lVEventSender;
        this.f55533e = userSessionService;
        this.f55534f = isProductInWishlistUseCase;
        this.g = getThematicPlpThemesUseCase;
        InAppDispatch inAppDispatchB = requireUserInAppDispatchUseCase.f49912a.b();
        this.f55535h = inAppDispatchB;
        this.f55536i = new PLPWishlistDelegate(monitor, ViewModelKt.a(this), lVEventSender, inAppDispatchB, appsFlyerTracker, analyticsTracker, userSessionService, getWishlistUseCase, notificationBuilder, addProductToWishlistUseCase, deleteProductFromWishlistUseCase, reportDYAddToWishlistEventUseCase);
        EmptyList emptyList = EmptyList.f71768b;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(emptyList);
        this.f55537j = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(null);
        this.f55538k = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(GridModes.Full.f55430b);
        this.l = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(null);
        this.m = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(emptyList);
        this.n = mutableStateFlowA5;
        this.o = new LinkedHashMap();
        Boolean bool = Boolean.FALSE;
        this.p = StateFlowKt.a(bool);
        this.q = StateFlowKt.a(bool);
        this.r = StateFlowKt.a(null);
        this.s = StateFlowKt.a(null);
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(bool);
        this.t = mutableStateFlowA6;
        final Flow[] flowArr = {mutableStateFlowA3, mutableStateFlowA2, mutableStateFlowA, mutableStateFlowA4, mutableStateFlowA5, mutableStateFlowA6};
        Flow<ThematicPlpViewState> flow = new Flow<ThematicPlpViewState>() { // from class: com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModelImpl$special$$inlined$combine$1$3", f = "ThematicPlpViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super ThematicPlpViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f55570b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f55571c;
                public /* synthetic */ Object[] d;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3);
                    anonymousClass3.f55571c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f55571c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f55570b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        GridModes gridModes = (GridModes) obj2;
                        String str = (String) objArr[1];
                        Object obj3 = objArr[2];
                        obj3.getClass();
                        List list = (List) obj3;
                        CurrentThemeUiModel currentThemeUiModel = (CurrentThemeUiModel) objArr[3];
                        Object obj4 = objArr[4];
                        obj4.getClass();
                        Object obj5 = objArr[5];
                        obj5.getClass();
                        ThematicPlpViewState thematicPlpViewState = new ThematicPlpViewState(gridModes, false, str, list, currentThemeUiModel, (List) obj4, ((Boolean) obj5).booleanValue(), 2, null);
                        this.f55571c = null;
                        this.d = null;
                        this.f55570b = 1;
                        if (flowCollector.emit(thematicPlpViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModelImpl$special$$inlined$combine$1.2
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
        this.v = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new ThematicPlpViewState(null, false, null, null, null, null, false, CertificateBody.profileType, null));
        BuildersKt.c(ViewModelKt.a(this), null, null, new ThematicPlpViewModelImpl$listenToWishlistEvents$1(this, null), 3);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x005d  */
    /* JADX WARN: Code duplicated, block: B:19:0x0088 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:20:0x0089  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0089 -> B:21:0x008a). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object yc(com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModelImpl r10, java.util.List r11, kotlin.coroutines.jvm.internal.ContinuationImpl r12) {
        /*
            boolean r0 = r12 instanceof com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModelImpl$withWishlistStatus$1
            if (r0 == 0) goto L13
            r0 = r12
            com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModelImpl$withWishlistStatus$1 r0 = (com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModelImpl$withWishlistStatus$1) r0
            int r1 = r0.f55582j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f55582j = r1
            goto L18
        L13:
            com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModelImpl$withWishlistStatus$1 r0 = new com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModelImpl$withWishlistStatus$1
            r0.<init>(r10, r12)
        L18:
            java.lang.Object r12 = r0.f55580h
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f55582j
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L3f
            if (r2 != r3) goto L38
            int r11 = r0.g
            int r2 = r0.f55579f
            java.util.Collection r5 = r0.f55578e
            java.util.Collection r5 = (java.util.Collection) r5
            com.vuitton.android.presentation.screen.catalog.thematicplp.models.ThemeItemUiModel r6 = r0.d
            java.util.Iterator r7 = r0.f55577c
            java.util.Collection r8 = r0.f55576b
            java.util.Collection r8 = (java.util.Collection) r8
            kotlin.ResultKt.b(r12)
            goto L8a
        L38:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r10)
            r10 = 0
            return r10
        L3f:
            kotlin.ResultKt.b(r12)
            java.lang.Iterable r11 = (java.lang.Iterable) r11
            java.util.ArrayList r12 = new java.util.ArrayList
            r2 = 10
            int r2 = kotlin.collections.CollectionsKt.t(r11, r2)
            r12.<init>(r2)
            java.util.Iterator r11 = r11.iterator()
            r7 = r11
            r5 = r12
            r11 = r4
            r2 = r11
        L57:
            boolean r12 = r7.hasNext()
            if (r12 == 0) goto L9a
            java.lang.Object r12 = r7.next()
            r6 = r12
            com.vuitton.android.presentation.screen.catalog.thematicplp.models.ThemeItemUiModel r6 = (com.vuitton.android.presentation.screen.catalog.thematicplp.models.ThemeItemUiModel) r6
            com.vuitton.android.domain.usecase.wishlist.IsProductInWishlistUseCase r12 = r10.f55534f
            com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel$Companion r8 = com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel.f61763c
            com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortUiModel r9 = r6.f55432a
            java.lang.String r9 = r9.f62987e
            r8.getClass()
            com.vuitton.foundation.model.domain.model.product.SkuId$Companion r8 = com.vuitton.foundation.model.domain.model.product.SkuId.INSTANCE
            r8 = r5
            java.util.Collection r8 = (java.util.Collection) r8
            r0.f55576b = r8
            r0.f55577c = r7
            r0.d = r6
            r0.f55578e = r8
            r0.f55579f = r2
            r0.g = r11
            r0.f55582j = r3
            java.lang.Object r12 = r12.a(r9, r0)
            if (r12 != r1) goto L89
            return r1
        L89:
            r8 = r5
        L8a:
            java.lang.Boolean r12 = (java.lang.Boolean) r12
            boolean r12 = r12.booleanValue()
            r9 = 7
            com.vuitton.android.presentation.screen.catalog.thematicplp.models.ThemeItemUiModel r12 = com.vuitton.android.presentation.screen.catalog.thematicplp.models.ThemeItemUiModel.a(r6, r4, r12, r9)
            r5.add(r12)
            r5 = r8
            goto L57
        L9a:
            java.util.List r5 = (java.util.List) r5
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModelImpl.yc(com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModelImpl, java.util.List, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModel
    public final StateFlow B7() {
        return this.r;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x003d  */
    /* JADX WARN: Code duplicated, block: B:21:0x0045  */
    @Override // com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModel
    public final void D6(String str, String str2, List list) {
        PLPEntryUiModel pLPEntryUiModel;
        list.getClass();
        this.f55537j.setValue(list);
        this.w = str2;
        String str3 = null;
        if (str != null) {
            List list2 = list;
            if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                Iterator it = list2.iterator();
                do {
                    if (!it.hasNext()) {
                        str = null;
                        break;
                    }
                } while (!Intrinsics.c(((PLPEntryUiModel) it.next()).f55373b, str));
            } else {
                str = null;
                break;
            }
            if (str == null) {
                pLPEntryUiModel = (PLPEntryUiModel) CollectionsKt.firstOrNull(list);
                if (pLPEntryUiModel != null) {
                    str3 = pLPEntryUiModel.f55373b;
                }
            } else {
                str3 = str;
            }
        } else {
            pLPEntryUiModel = (PLPEntryUiModel) CollectionsKt.firstOrNull(list);
            if (pLPEntryUiModel != null) {
                str3 = pLPEntryUiModel.f55373b;
            }
        }
        zc(str3);
    }

    @Override // com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModel
    public final StateFlow E8() {
        return this.p;
    }

    @Override // com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModel
    public final void F2() {
        Job job = this.u;
        if (job == null || !job.isActive()) {
            Object value = this.f55538k.getValue();
            MutableStateFlow mutableStateFlow = this.m;
            CurrentThemeUiModel currentThemeUiModel = (CurrentThemeUiModel) mutableStateFlow.getValue();
            String str = currentThemeUiModel != null ? currentThemeUiModel.f55426a : null;
            CurrentThemeUiModel currentThemeUiModel2 = (CurrentThemeUiModel) mutableStateFlow.getValue();
            Integer num = currentThemeUiModel2 != null ? currentThemeUiModel2.f55427b : null;
            if (value == null || str == null || num == null) {
                return;
            }
            int iIntValue = num.intValue();
            String str2 = (String) value;
            DynatraceMonitorAction dynatraceMonitorActionA = this.f55530a.a(this.f55535h, ThematicPlpMonitoring.Action.OpenThematicPages.f48996a);
            dynatraceMonitorActionA.c(str2, "categoryId");
            dynatraceMonitorActionA.c(str, "themeId");
            dynatraceMonitorActionA.c(Integer.valueOf(iIntValue), "pageNumber");
            this.u = BuildersKt.c(ViewModelKt.a(this), null, null, new ThematicPlpViewModelImpl$loadMoreItems$1$1(this, str2, str, iIntValue, dynatraceMonitorActionA, null), 3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.util.ArrayList] */
    @Override // com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModel
    public final void J3(boolean z, TrackingClickType trackingClickType) {
        CurrentThemeUiModel currentThemeUiModelA;
        ?? arrayList;
        List list;
        MutableStateFlow mutableStateFlow = this.r;
        ThemeItemUiModel themeItemUiModel = (ThemeItemUiModel) mutableStateFlow.getValue();
        if (themeItemUiModel != null) {
            MutableStateFlow mutableStateFlow2 = this.m;
            CurrentThemeUiModel currentThemeUiModel = (CurrentThemeUiModel) mutableStateFlow2.getValue();
            if (currentThemeUiModel != null) {
                CurrentThemeUiModel currentThemeUiModel2 = (CurrentThemeUiModel) mutableStateFlow2.getValue();
                if (currentThemeUiModel2 == null || (list = currentThemeUiModel2.f55428c) == null) {
                    arrayList = EmptyList.f71768b;
                } else {
                    List<ThemeItemUiModel> list2 = list;
                    arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                    for (ThemeItemUiModel themeItemUiModelA : list2) {
                        ProductShortUiModel productShortUiModel = themeItemUiModelA.f55432a;
                        boolean z2 = themeItemUiModelA.d;
                        if (productShortUiModel.f62987e.equals(themeItemUiModel.f55432a.f62987e)) {
                            if (trackingClickType != null) {
                                ProductShortUiModel productShortUiModel2 = themeItemUiModelA.f55432a;
                                w9(z2 ? new ThematicPlpTrackingUiModel.RemoveFromWishlistClickedEvent(productShortUiModel2.f62987e, trackingClickType, null) : new ThematicPlpTrackingUiModel.AddToWishlistClickedEvent(productShortUiModel2.f62987e, trackingClickType, null));
                            }
                            boolean z3 = !z2;
                            themeItemUiModelA = ThemeItemUiModel.a(themeItemUiModelA, z3, z3, 3);
                        }
                        arrayList.add(themeItemUiModelA);
                    }
                }
                currentThemeUiModelA = CurrentThemeUiModel.a(currentThemeUiModel, arrayList);
            } else {
                currentThemeUiModelA = null;
            }
            mutableStateFlow2.setValue(currentThemeUiModelA);
            if (z) {
                mutableStateFlow.setValue(null);
            }
        }
    }

    @Override // com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModel
    public final void Q(GridModes gridModes) {
        gridModes.getClass();
        this.l.setValue(gridModes);
        BuildersKt.c(ViewModelKt.a(this), null, null, new ThematicPlpViewModelImpl$triggerChangeGridVocalization$1(this, null), 3);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.ArrayList] */
    @Override // com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModel
    public final void X8(List list) {
        CurrentThemeUiModel currentThemeUiModelA;
        ?? arrayList;
        List list2;
        ThemeItemUiModel themeItemUiModelA;
        list.getClass();
        MutableStateFlow mutableStateFlow = this.m;
        CurrentThemeUiModel currentThemeUiModel = (CurrentThemeUiModel) mutableStateFlow.getValue();
        if (currentThemeUiModel != null) {
            CurrentThemeUiModel currentThemeUiModel2 = (CurrentThemeUiModel) mutableStateFlow.getValue();
            if (currentThemeUiModel2 == null || (list2 = currentThemeUiModel2.f55428c) == null) {
                arrayList = EmptyList.f71768b;
            } else {
                List<ThemeItemUiModel> list3 = list2;
                arrayList = new ArrayList(CollectionsKt.t(list3, 10));
                for (ThemeItemUiModel themeItemUiModel : list3) {
                    List list4 = list;
                    if (!(list4 instanceof Collection) || !list4.isEmpty()) {
                        Iterator it = list4.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                if (Intrinsics.c(((SkuIdUiModel) it.next()).f61764b, themeItemUiModel.f55432a.f62987e)) {
                                    themeItemUiModelA = ThemeItemUiModel.a(themeItemUiModel, false, true, 7);
                                    break;
                                }
                            } else {
                                themeItemUiModelA = ThemeItemUiModel.a(themeItemUiModel, false, false, 7);
                                break;
                            }
                        }
                    } else {
                        themeItemUiModelA = ThemeItemUiModel.a(themeItemUiModel, false, false, 7);
                        break;
                        break;
                    }
                    arrayList.add(themeItemUiModelA);
                }
            }
            currentThemeUiModelA = CurrentThemeUiModel.a(currentThemeUiModel, arrayList);
        } else {
            currentThemeUiModelA = null;
        }
        mutableStateFlow.setValue(currentThemeUiModelA);
    }

    @Override // com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getV() {
        return this.v;
    }

    @Override // com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModel
    public final StateFlow a8() {
        return this.s;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.ArrayList] */
    @Override // com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModel
    public final void b3(ThemeItemUiModel themeItemUiModel, boolean z) {
        CurrentThemeUiModel currentThemeUiModelA;
        ?? arrayList;
        List list;
        themeItemUiModel.getClass();
        MutableStateFlow mutableStateFlow = this.m;
        CurrentThemeUiModel currentThemeUiModel = (CurrentThemeUiModel) mutableStateFlow.getValue();
        if (currentThemeUiModel != null) {
            CurrentThemeUiModel currentThemeUiModel2 = (CurrentThemeUiModel) mutableStateFlow.getValue();
            if (currentThemeUiModel2 == null || (list = currentThemeUiModel2.f55428c) == null) {
                arrayList = EmptyList.f71768b;
            } else {
                List<ThemeItemUiModel> list2 = list;
                arrayList = new ArrayList(CollectionsKt.t(list2, 10));
                for (ThemeItemUiModel themeItemUiModelA : list2) {
                    if (themeItemUiModelA.f55432a.f62987e.equals(themeItemUiModel.f55432a.f62987e)) {
                        themeItemUiModelA = ThemeItemUiModel.a(themeItemUiModelA, z, false, 11);
                    }
                    arrayList.add(themeItemUiModelA);
                }
            }
            currentThemeUiModelA = CurrentThemeUiModel.a(currentThemeUiModel, arrayList);
        } else {
            currentThemeUiModelA = null;
        }
        mutableStateFlow.setValue(currentThemeUiModelA);
    }

    @Override // com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModel
    public final void b4() {
        MutableStateFlow mutableStateFlow = this.n;
        Iterator it = ((List) mutableStateFlow.getValue()).iterator();
        int i2 = 0;
        while (true) {
            if (!it.hasNext()) {
                i2 = -1;
                break;
            }
            String str = ((ThemeUiModel) it.next()).f55435a;
            CurrentThemeUiModel currentThemeUiModel = (CurrentThemeUiModel) this.m.getValue();
            if (Intrinsics.c(str, currentThemeUiModel != null ? currentThemeUiModel.f55426a : null)) {
                break;
            } else {
                i2++;
            }
        }
        ThemeUiModel themeUiModel = (ThemeUiModel) CollectionsKt.G(i2 + 1, (List) mutableStateFlow.getValue());
        if (themeUiModel == null && (themeUiModel = (ThemeUiModel) CollectionsKt.firstOrNull((List) mutableStateFlow.getValue())) == null) {
            return;
        }
        v7(themeUiModel, false);
    }

    @Override // com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModel
    public final SharedFlowImpl g() {
        return this.f55536i.p;
    }

    @Override // com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModel
    public final void h4(String str, TrackingClickType trackingClickType) {
        List list;
        Object next;
        str.getClass();
        CurrentThemeUiModel currentThemeUiModel = (CurrentThemeUiModel) this.m.getValue();
        if (currentThemeUiModel == null || (list = currentThemeUiModel.f55428c) == null) {
            return;
        }
        Iterator it = list.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!((ThemeItemUiModel) next).f55432a.f62987e.equals(str));
        ThemeItemUiModel themeItemUiModel = (ThemeItemUiModel) next;
        if (themeItemUiModel == null) {
            return;
        }
        MutableStateFlow mutableStateFlow = this.r;
        if (mutableStateFlow.getValue() == null) {
            mutableStateFlow.setValue(themeItemUiModel);
            if (this.f55533e.b()) {
                ThematicPlpViewModel.n5(this, trackingClickType, 1);
            }
            this.s.setValue(trackingClickType);
            boolean z = themeItemUiModel.d;
            this.f55536i.e(new PLPWishlistUpdateUiModel(new ProductForWishlist(themeItemUiModel.f55432a.f62987e, SnapshotStateKt.g(new PlpProductUiModel.SkuDataUiModel.PLPWishlistStateUiModel(z, true)), null), !z), PLPAddToWishlistTrackingMode.Legacy.f62875a, PLPRemoveFromWishlistTrackingMode.Legacy.f62877a);
        }
    }

    @Override // com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModel
    public final void n7() {
        this.r.setValue(null);
    }

    @Override // com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModel
    public final void nb(String str) {
        str.getClass();
        zc(str);
    }

    @Override // com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModel
    public final void p() {
        this.f55536i.d();
    }

    @Override // com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModel
    public final void v7(ThemeUiModel themeUiModel, boolean z) {
        DynatraceMonitorAction dynatraceMonitorAction;
        themeUiModel.getClass();
        String str = (String) this.f55538k.getValue();
        if (str != null) {
            if (z) {
                DynatraceMonitorAction dynatraceMonitorActionA = this.f55530a.a(this.f55535h, ThematicPlpMonitoring.Action.OpenThematicPages.f48996a);
                CurrentThemeUiModel currentThemeUiModel = (CurrentThemeUiModel) this.m.getValue();
                if (currentThemeUiModel != null) {
                    dynatraceMonitorActionA.c(str, "categoryId");
                    dynatraceMonitorActionA.c(currentThemeUiModel.f55426a, "themeId");
                    Integer num = currentThemeUiModel.f55427b;
                    dynatraceMonitorActionA.c(Integer.valueOf(num != null ? num.intValue() : 0), "pageNumber");
                }
                dynatraceMonitorAction = dynatraceMonitorActionA;
            } else {
                dynatraceMonitorAction = null;
            }
            w9(new ThematicPlpTrackingUiModel.ChangeThemeClickedEvent(themeUiModel.f55435a));
            BuildersKt.c(ViewModelKt.a(this), null, null, new ThematicPlpViewModelImpl$loadNewTheme$1$1(this, themeUiModel, dynatraceMonitorAction, str, null), 3);
        }
    }

    @Override // com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModel
    public final void w9(ThematicPlpTrackingUiModel thematicPlpTrackingUiModel) {
        Hit.EventHit.DefaultEventHit defaultEventHit;
        String str;
        Hit defaultScreenHit;
        String str2;
        if (thematicPlpTrackingUiModel.equals(ThematicPlpTrackingUiModel.ProductListScreen.f55526a)) {
            defaultScreenHit = new Hit.ScreenHit.DefaultScreenHit(null, "thematic_product_list", "gift_recommendation", "thematic_product_list", null, 17, null);
        } else {
            if (thematicPlpTrackingUiModel instanceof ThematicPlpTrackingUiModel.AddToWishlistClickedEvent) {
                ThematicPlpTrackingUiModel.AddToWishlistClickedEvent addToWishlistClickedEvent = (ThematicPlpTrackingUiModel.AddToWishlistClickedEvent) thematicPlpTrackingUiModel;
                int i2 = ThematicPlpTrackingUiModelKt$WhenMappings.f55529a[addToWishlistClickedEvent.f55516b.ordinal()];
                if (i2 == 1) {
                    str2 = "click";
                } else {
                    if (i2 != 2) {
                        v40.g();
                        return;
                    }
                    str2 = "double_click";
                }
                SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                String str3 = addToWishlistClickedEvent.f55515a;
                companion.getClass();
                SkuId.Companion companion2 = SkuId.INSTANCE;
                defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "thematic_product_list", "add_to_wishlist", "thematic_product_list", str2, null, CollectionsKt.O(new AdditionalProperty.Sku(str3, null)), 33, null);
            } else if (thematicPlpTrackingUiModel instanceof ThematicPlpTrackingUiModel.AddToWishlistSuccessEvent) {
                SkuIdUiModel.Companion companion3 = SkuIdUiModel.f61763c;
                String str4 = ((ThematicPlpTrackingUiModel.AddToWishlistSuccessEvent) thematicPlpTrackingUiModel).f55517a;
                companion3.getClass();
                SkuId.Companion companion4 = SkuId.INSTANCE;
                defaultEventHit = new Hit.EventHit.DefaultEventHit(HitType.AddToWishlist.f66506a, "thematic_product_list", "add_to_wishlist_success", "thematic_product_list", "add_to_wishlist", null, CollectionsKt.O(new AdditionalProperty.Sku(str4, null)), 32, null);
            } else if (thematicPlpTrackingUiModel instanceof ThematicPlpTrackingUiModel.RemoveFromWishlistClickedEvent) {
                ThematicPlpTrackingUiModel.RemoveFromWishlistClickedEvent removeFromWishlistClickedEvent = (ThematicPlpTrackingUiModel.RemoveFromWishlistClickedEvent) thematicPlpTrackingUiModel;
                int i3 = ThematicPlpTrackingUiModelKt$WhenMappings.f55529a[removeFromWishlistClickedEvent.f55528b.ordinal()];
                if (i3 == 1) {
                    str = "click";
                } else {
                    if (i3 != 2) {
                        v40.g();
                        return;
                    }
                    str = "double_click";
                }
                SkuIdUiModel.Companion companion5 = SkuIdUiModel.f61763c;
                String str5 = removeFromWishlistClickedEvent.f55527a;
                companion5.getClass();
                SkuId.Companion companion6 = SkuId.INSTANCE;
                defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "thematic_product_list", "remove_from_wishlist", "thematic_product_list", str, null, CollectionsKt.O(new AdditionalProperty.Sku(str5, null)), 33, null);
            } else {
                String str6 = "staggered";
                if (thematicPlpTrackingUiModel instanceof ThematicPlpTrackingUiModel.ChangeLayoutButtonClickedEvent) {
                    GridModes gridModes = ((ThematicPlpTrackingUiModel.ChangeLayoutButtonClickedEvent) thematicPlpTrackingUiModel).f55519a;
                    if (Intrinsics.c(gridModes, GridModes.Reduced.f55431b)) {
                        str6 = "grid";
                    } else if (!Intrinsics.c(gridModes, GridModes.Full.f55430b)) {
                        v40.g();
                        return;
                    }
                    defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "thematic_product_list", "change_layout", "thematic_product_list", "click", null, CollectionsKt.O(new AdditionalProperty.ContentId(str6)), 33, null);
                } else if (thematicPlpTrackingUiModel instanceof ThematicPlpTrackingUiModel.ChangeLayoutPinchInEvent) {
                    defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "thematic_product_list", "change_layout", "thematic_product_list", "zoom_in", null, o60.t("grid"), 33, null);
                } else if (thematicPlpTrackingUiModel instanceof ThematicPlpTrackingUiModel.ChangeLayoutPinchOutEvent) {
                    defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "thematic_product_list", "change_layout", "thematic_product_list", "zoom_out", null, o60.t("staggered"), 33, null);
                } else if (thematicPlpTrackingUiModel instanceof ThematicPlpTrackingUiModel.ChangeThemeButtonClickedEvent) {
                    defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "thematic_product_list", "change_theme", "thematic_product_list", "click", null, null, 97, null);
                } else if (thematicPlpTrackingUiModel instanceof ThematicPlpTrackingUiModel.ChangeThemeScrollEvent) {
                    defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "thematic_product_list", "change_theme", "thematic_product_list", "scroll", null, CollectionsKt.O(new AdditionalProperty.ContentId(((ThematicPlpTrackingUiModel.ChangeThemeScrollEvent) thematicPlpTrackingUiModel).f55524a)), 33, null);
                } else if (thematicPlpTrackingUiModel instanceof ThematicPlpTrackingUiModel.ChangeThemeClickedEvent) {
                    defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "thematic_product_list", "select_theme", "thematic_product_list", "click", null, CollectionsKt.O(new AdditionalProperty.ContentId(((ThematicPlpTrackingUiModel.ChangeThemeClickedEvent) thematicPlpTrackingUiModel).f55523a)), 33, null);
                } else if (thematicPlpTrackingUiModel instanceof ThematicPlpTrackingUiModel.BrandContentClickedEvent) {
                    SkuIdUiModel.Companion companion7 = SkuIdUiModel.f61763c;
                    String str7 = ((ThematicPlpTrackingUiModel.BrandContentClickedEvent) thematicPlpTrackingUiModel).f55518a;
                    companion7.getClass();
                    SkuId.Companion companion8 = SkuId.INSTANCE;
                    defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "thematic_product_list", "open_brand_content", "thematic_product_list", "click", null, CollectionsKt.O(new AdditionalProperty.Sku(str7, null)), 33, null);
                } else {
                    if (!(thematicPlpTrackingUiModel instanceof ThematicPlpTrackingUiModel.ProductClickedEvent)) {
                        v40.g();
                        return;
                    }
                    SkuIdUiModel.Companion companion9 = SkuIdUiModel.f61763c;
                    String str8 = ((ThematicPlpTrackingUiModel.ProductClickedEvent) thematicPlpTrackingUiModel).f55525a;
                    companion9.getClass();
                    SkuId.Companion companion10 = SkuId.INSTANCE;
                    defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "thematic_product_list", "select_product", "thematic_product_list", "click", null, CollectionsKt.O(new AdditionalProperty.Sku(str8, null)), 33, null);
                }
            }
            defaultScreenHit = defaultEventHit;
        }
        this.f55531b.a(defaultScreenHit);
    }

    @Override // com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModel
    public final StateFlow wb() {
        return this.q;
    }

    public final void zc(String str) {
        String str2;
        MutableStateFlow mutableStateFlow = this.f55538k;
        mutableStateFlow.setValue(str);
        this.o.clear();
        if (str != null) {
            str2 = this.w;
            this.w = null;
        } else {
            str2 = null;
        }
        String str3 = (String) mutableStateFlow.getValue();
        if (str3 != null) {
            BuildersKt.c(ViewModelKt.a(this), null, null, new ThematicPlpViewModelImpl$fetchThemes$1$1(this, str2, str3, null), 3);
        }
    }
}
