package com.vuitton.android.presentation.screen.osa.list;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.osa.CancelAppointmentUseCase;
import com.vuitton.android.domain.usecase.osa.GetOnlineStoreAppointmentListUseCase;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerTracker;
import com.vuitton.android.presentation.screen.osa.list.models.OsaListViewState;
import com.vuitton.android.presentation.screen.osa.models.OsaItemUiModel;
import com.vuitton.android.presentation.screen.osa.models.StoreInformationItemUiModel;
import com.vuitton.android.presentation.screen.osa.tracking.OsaTrackingUiModel;
import com.vuitton.android.presentation.screen.osa.tracking.OsaTrackingUiModelKt;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.md;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.BuildersKt;
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
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002BY\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModel;", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "userSessionService", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;", "appsFlyerTracker", "Lcom/vuitton/android/domain/usecase/osa/CancelAppointmentUseCase;", "cancelAppointmentUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;", "getOnlineStoreAppointmentListUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/usecase/osa/CancelAppointmentUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class OsaListViewModelImpl extends ViewModel implements OsaListViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Monitor f60845a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LVEventSender f60846b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final UserSessionService f60847c;
    public final NotificationBuilder d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AnalyticsTracker f60848e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppsFlyerTracker f60849f;
    public final CancelAppointmentUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f60850h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final GetOnlineStoreAppointmentListUseCase f60851i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final InAppDispatch f60852j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f60853k;
    public final MutableStateFlow l;
    public final MutableStateFlow m;
    public final MutableStateFlow n;
    public final MutableStateFlow o;
    public final MutableStateFlow p;
    public final MutableStateFlow q;
    public final MutableStateFlow r;
    public final MutableStateFlow s;
    public final BufferedChannel t;
    public final StateFlow u;

    @Inject
    public OsaListViewModelImpl(RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, Monitor monitor, LVEventSender lVEventSender, UserSessionService userSessionService, NotificationBuilder notificationBuilder, AnalyticsTracker analyticsTracker, AppsFlyerTracker appsFlyerTracker, CancelAppointmentUseCase cancelAppointmentUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, GetOnlineStoreAppointmentListUseCase getOnlineStoreAppointmentListUseCase) {
        requireUserInAppDispatchUseCase.getClass();
        monitor.getClass();
        lVEventSender.getClass();
        userSessionService.getClass();
        notificationBuilder.getClass();
        analyticsTracker.getClass();
        appsFlyerTracker.getClass();
        cancelAppointmentUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        getOnlineStoreAppointmentListUseCase.getClass();
        this.f60845a = monitor;
        this.f60846b = lVEventSender;
        this.f60847c = userSessionService;
        this.d = notificationBuilder;
        this.f60848e = analyticsTracker;
        this.f60849f = appsFlyerTracker;
        this.g = cancelAppointmentUseCase;
        this.f60850h = isFeatureAvailableUseCase;
        this.f60851i = getOnlineStoreAppointmentListUseCase;
        InAppDispatch inAppDispatchB = requireUserInAppDispatchUseCase.f49912a.b();
        this.f60852j = inAppDispatchB;
        this.f60853k = true;
        this.l = StateFlowKt.a(null);
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(bool);
        this.m = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(bool);
        this.n = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(bool);
        this.o = mutableStateFlowA3;
        EmptyList emptyList = EmptyList.f71768b;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(emptyList);
        this.p = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(emptyList);
        this.q = mutableStateFlowA5;
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(bool);
        this.r = mutableStateFlowA6;
        MutableStateFlow mutableStateFlowA7 = StateFlowKt.a(bool);
        this.s = mutableStateFlowA7;
        this.t = ChannelKt.a(0, 7, null);
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA4, mutableStateFlowA5, mutableStateFlowA6, mutableStateFlowA7};
        Flow<OsaListViewState> flow = new Flow<OsaListViewState>() { // from class: com.vuitton.android.presentation.screen.osa.list.OsaListViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.osa.list.OsaListViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.list.OsaListViewModelImpl$special$$inlined$combine$1$3", f = "OsaListViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super OsaListViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f60872b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f60873c;
                public /* synthetic */ Object[] d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ OsaListViewModelImpl f60874e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass3(Continuation continuation, OsaListViewModelImpl osaListViewModelImpl) {
                    super(3, continuation);
                    this.f60874e = osaListViewModelImpl;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3, this.f60874e);
                    anonymousClass3.f60873c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f60873c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f60872b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        InAppDispatch inAppDispatch = this.f60874e.f60852j;
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                        Object obj3 = objArr[1];
                        obj3.getClass();
                        boolean zBooleanValue2 = ((Boolean) obj3).booleanValue();
                        Object obj4 = objArr[2];
                        obj4.getClass();
                        boolean zBooleanValue3 = ((Boolean) obj4).booleanValue();
                        Object obj5 = objArr[3];
                        obj5.getClass();
                        List list = (List) obj5;
                        Object obj6 = objArr[4];
                        obj6.getClass();
                        List list2 = (List) obj6;
                        Object obj7 = objArr[5];
                        obj7.getClass();
                        boolean zBooleanValue4 = ((Boolean) obj7).booleanValue();
                        Object obj8 = objArr[6];
                        obj8.getClass();
                        OsaListViewState osaListViewState = new OsaListViewState(inAppDispatch, zBooleanValue, zBooleanValue2, zBooleanValue3, list, list2, zBooleanValue4, ((Boolean) obj8).booleanValue());
                        this.f60873c = null;
                        this.d = null;
                        this.f60872b = 1;
                        if (flowCollector.emit(osaListViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.osa.list.OsaListViewModelImpl$special$$inlined$combine$1.2
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
        this.u = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new OsaListViewState(inAppDispatchB, false, true, false, null, null, false, false, 250, null));
        Lb();
        BuildersKt.c(ViewModelKt.a(this), null, null, new OsaListViewModelImpl$initFeatureFlags$1(null, this), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new OsaListViewModelImpl$collectAppEvents$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.screen.osa.list.OsaListViewModel
    public final void Lb() {
        this.o.setValue(Boolean.FALSE);
        BuildersKt.c(ViewModelKt.a(this), null, null, new OsaListViewModelImpl$getOnlineStoreAppointmentList$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.screen.osa.list.OsaListViewModel
    public final void V4(OsaItemUiModel osaItemUiModel) {
        osaItemUiModel.getClass();
        this.l.setValue(osaItemUiModel);
        String str = osaItemUiModel.f60924a;
        StoreInformationItemUiModel storeInformationItemUiModel = osaItemUiModel.f60929h;
        String str2 = storeInformationItemUiModel != null ? storeInformationItemUiModel.f60938a : null;
        if (str2 == null) {
            str2 = "";
        }
        o(new OsaTrackingUiModel.CancelAppointmentEvent(str, str2));
    }

    @Override // com.vuitton.android.presentation.screen.osa.list.OsaListViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getU() {
        return this.u;
    }

    @Override // com.vuitton.android.presentation.screen.osa.list.OsaListViewModel
    public final Flow b() {
        return FlowKt.y(this.t);
    }

    @Override // com.vuitton.android.presentation.screen.osa.list.OsaListViewModel
    public final void o(OsaTrackingUiModel osaTrackingUiModel) {
        this.f60848e.a(OsaTrackingUiModelKt.a(osaTrackingUiModel, this.f60852j, null, null));
    }

    @Override // com.vuitton.android.presentation.screen.osa.list.OsaListViewModel
    public final void y5() {
        OsaItemUiModel osaItemUiModel = (OsaItemUiModel) this.l.getValue();
        if (osaItemUiModel != null) {
            o(new OsaTrackingUiModel.CancellationConfirmedEvent(osaItemUiModel));
            BuildersKt.c(ViewModelKt.a(this), null, null, new OsaListViewModelImpl$cancelAppointment$1$1(this, osaItemUiModel, null), 3);
        }
    }
}
