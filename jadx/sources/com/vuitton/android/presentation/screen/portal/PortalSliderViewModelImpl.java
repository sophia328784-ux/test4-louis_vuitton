package com.vuitton.android.presentation.screen.portal;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.feed.FeedMonitoring;
import com.vuitton.android.domain.usecase.account.accessibility.GetAccessibilityValueUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.portal.GetPortalSliderFeedUseCase;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.portal.models.PortalTrackingUiModel;
import com.vuitton.android.presentation.screen.portal.models.PortalUiModel;
import com.vuitton.android.presentation.screen.portal.models.PortalViewState;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.md;
import defpackage.o60;
import defpackage.v40;
import java.util.Locale;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B9\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModel;", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/domain/usecase/portal/GetPortalSliderFeedUseCase;", "getPortalSliderFeedUseCase", "Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;", "getAccessibilityValueUseCase", "<init>", "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/portal/GetPortalSliderFeedUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PortalSliderViewModelImpl extends ViewModel implements PortalSliderViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Monitor f63246a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnalyticsTracker f63247b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GetPortalSliderFeedUseCase f63248c;
    public final GetAccessibilityValueUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableStateFlow f63249e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MutableStateFlow f63250f;
    public final MutableStateFlow g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MutableStateFlow f63251h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MutableStateFlow f63252i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f63253j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MutableStateFlow f63254k;
    public final MutableStateFlow l;
    public final MutableStateFlow m;
    public final MonitorAction n;
    public final StateFlow o;

    @Inject
    public PortalSliderViewModelImpl(SavedStateHandle savedStateHandle, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, Monitor monitor, AnalyticsTracker analyticsTracker, GetPortalSliderFeedUseCase getPortalSliderFeedUseCase, GetAccessibilityValueUseCase getAccessibilityValueUseCase) {
        Object value;
        Object value2;
        savedStateHandle.getClass();
        requireUserInAppDispatchUseCase.getClass();
        monitor.getClass();
        analyticsTracker.getClass();
        getPortalSliderFeedUseCase.getClass();
        getAccessibilityValueUseCase.getClass();
        this.f63246a = monitor;
        this.f63247b = analyticsTracker;
        this.f63248c = getPortalSliderFeedUseCase;
        this.d = getAccessibilityValueUseCase;
        InAppDispatch inAppDispatchB = requireUserInAppDispatchUseCase.f49912a.b();
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(null);
        this.f63249e = mutableStateFlowA;
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(bool);
        this.f63250f = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(bool);
        this.g = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(Boolean.TRUE);
        this.f63251h = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(bool);
        this.f63252i = mutableStateFlowA5;
        String str = (String) savedStateHandle.a("KEY_PORTAL_ID");
        str = str == null ? "" : str;
        this.f63253j = str;
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(bool);
        this.f63254k = mutableStateFlowA6;
        MutableStateFlow mutableStateFlowA7 = StateFlowKt.a(bool);
        this.l = mutableStateFlowA7;
        MutableStateFlow mutableStateFlowA8 = StateFlowKt.a(bool);
        this.m = mutableStateFlowA8;
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA4, mutableStateFlowA5, mutableStateFlowA6, mutableStateFlowA7, mutableStateFlowA8};
        Flow<PortalViewState> flow = new Flow<PortalViewState>() { // from class: com.vuitton.android.presentation.screen.portal.PortalSliderViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.portal.PortalSliderViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.portal.PortalSliderViewModelImpl$special$$inlined$combine$1$3", f = "PortalSliderViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super PortalViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f63260b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f63261c;
                public /* synthetic */ Object[] d;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3);
                    anonymousClass3.f63261c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f63261c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f63260b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        PortalUiModel portalUiModel = (PortalUiModel) objArr[0];
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
                        PortalViewState portalViewState = new PortalViewState(portalUiModel, zBooleanValue, zBooleanValue2, zBooleanValue3, zBooleanValue4, zBooleanValue5, zBooleanValue6, ((Boolean) obj8).booleanValue());
                        this.f63261c = null;
                        this.d = null;
                        this.f63260b = 1;
                        if (flowCollector.emit(portalViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.portal.PortalSliderViewModelImpl$special$$inlined$combine$1.2
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
        this.o = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new PortalViewState(null, false, false, false, false, false, false, false, 255, null));
        DynatraceMonitorAction dynatraceMonitorActionA = monitor.a(inAppDispatchB, FeedMonitoring.Action.OpenPortal.f48904a);
        dynatraceMonitorActionA.c(str, "categoryId");
        this.n = dynatraceMonitorActionA;
        do {
            value = mutableStateFlowA2.getValue();
            ((Boolean) value).getClass();
        } while (!mutableStateFlowA2.i(value, Boolean.TRUE));
        BuildersKt.c(ViewModelKt.a(this), null, null, new PortalSliderViewModelImpl$fetchPortal$3(this, null), 3);
        do {
            value2 = mutableStateFlowA2.getValue();
            ((Boolean) value2).getClass();
        } while (!mutableStateFlowA2.i(value2, Boolean.FALSE));
        BuildersKt.c(ViewModelKt.a(this), null, null, new PortalSliderViewModelImpl$getAccessibilitySettings$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.portal.PortalSliderViewModel
    public final void G2() {
        this.f63252i.setValue(Boolean.TRUE);
        MutableStateFlow mutableStateFlow = this.f63251h;
        mutableStateFlow.setValue(Boolean.valueOf(!((Boolean) mutableStateFlow.getValue()).booleanValue()));
    }

    @Override // com.vuitton.android.presentation.screen.portal.PortalSliderViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getO() {
        return this.o;
    }

    @Override // com.vuitton.android.presentation.screen.portal.PortalSliderViewModel
    public final void bc(PortalTrackingUiModel portalTrackingUiModel) {
        Hit.EventHit.DefaultEventHit defaultEventHit;
        Hit defaultScreenHit;
        String str = this.f63253j;
        str.getClass();
        if (portalTrackingUiModel instanceof PortalTrackingUiModel.Screen) {
            defaultScreenHit = new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/portal_slider", "LVPass/portal_slider", "event_article", o60.t(str), 1, null);
        } else {
            if (portalTrackingUiModel instanceof PortalTrackingUiModel.OnPortalSwipeEvent) {
                String lowerCase = ((PortalTrackingUiModel.OnPortalSwipeEvent) portalTrackingUiModel).f63322a.name().toLowerCase(Locale.ROOT);
                lowerCase.getClass();
                defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/portal_slider", lowerCase, str, "navigation", null, null, 97, null);
            } else if (portalTrackingUiModel instanceof PortalTrackingUiModel.OnHitCtaPortalEvent) {
                defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/portal_slider", "redirect_cta", str, "navigation", null, null, 97, null);
            } else if (portalTrackingUiModel instanceof PortalTrackingUiModel.OnHitClosePortalEvent) {
                defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/portal_slider", "close", str, "navigation", null, null, 97, null);
            } else if (portalTrackingUiModel instanceof PortalTrackingUiModel.OnNotifyMeClickEvent) {
                defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/portal_slider", "notify_me", str, "notify_me", null, o60.t(str), 33, null);
            } else if (portalTrackingUiModel instanceof PortalTrackingUiModel.OnNotifyMeSuccessEvent) {
                defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/portal_slider", "confirm", str, "notify_me", null, null, 97, null);
            } else {
                if (!(portalTrackingUiModel instanceof PortalTrackingUiModel.OnNotifyMeAlreadyNotifiedEvent)) {
                    v40.g();
                    return;
                }
                defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/portal_slider", "already_activate", str, "notify_me", null, o60.t(str), 33, null);
            }
            defaultScreenHit = defaultEventHit;
        }
        this.f63247b.a(defaultScreenHit);
    }
}
