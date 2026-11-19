package com.vuitton.android.presentation.screen.repairs;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.R;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.repository.LoginStateRepository;
import com.vuitton.android.domain.usecase.careservices.CancelCareServiceBffUseCase;
import com.vuitton.android.domain.usecase.careservices.GetCareServiceDetailBffUseCase;
import com.vuitton.android.domain.usecase.careservices.GetCareServiceListBffUseCase;
import com.vuitton.android.domain.usecase.careservices.UpdateCareServiceAppointmentBffUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.repairs.GetRepairStatusMapUseCase;
import com.vuitton.android.presentation.contact.ContactUsDelegate;
import com.vuitton.android.presentation.contact.ContactUsMode;
import com.vuitton.android.presentation.contact.models.ContactUsOrigin;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerTracker;
import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModelKt;
import com.vuitton.android.presentation.screen.repairs.models.DistantRepairsConfigUiModel;
import com.vuitton.android.presentation.screen.repairs.models.RepairFeatureFlags;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceDetailUiModelMapperKt;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceShortUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.RepairsBffViewState;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceDetail;
import com.vuitton.foundation.model.domain.model.chat.ChatProductModel;
import com.vuitton.foundation.model.domain.model.chat.ScreenType;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
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
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0091\u0001\b\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#¢\u0006\u0004\b%\u0010&¨\u0006'"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;", "Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "contactUsDelegate", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "Lcom/vuitton/android/domain/repository/LoginStateRepository;", "loginStateRepository", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;", "appsFlyerTracker", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/repairs/GetRepairStatusMapUseCase;", "getRepairStatusMapUseCase", "Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListBffUseCase;", "getCareServiceListUseCase", "Lcom/vuitton/android/domain/usecase/careservices/CancelCareServiceBffUseCase;", "cancelCareServiceBffUseCase", "Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceDetailBffUseCase;", "getCareServiceDetailUseCase", "Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceAppointmentBffUseCase;", "updateCareServiceAppointmentBffUseCase", "<init>", "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/repository/LoginStateRepository;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/repairs/GetRepairStatusMapUseCase;Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListBffUseCase;Lcom/vuitton/android/domain/usecase/careservices/CancelCareServiceBffUseCase;Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceDetailBffUseCase;Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceAppointmentBffUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class RepairBffViewModelImpl extends ViewModel implements ContactUsDelegate, RepairBffViewModel {
    public final MutableStateFlow A;
    public final MutableStateFlow B;
    public final BufferedChannel C;
    public final StateFlow D;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f63443a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Monitor f63444b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LVEventSender f63445c;
    public final ContactUsDelegate d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final NotificationBuilder f63446e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LoginStateRepository f63447f;
    public final AnalyticsTracker g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppsFlyerTracker f63448h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f63449i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final GetRepairStatusMapUseCase f63450j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final GetCareServiceListBffUseCase f63451k;
    public final CancelCareServiceBffUseCase l;
    public final GetCareServiceDetailBffUseCase m;
    public final UpdateCareServiceAppointmentBffUseCase n;
    public final AppConfig o;
    public final InAppDispatch p;
    public final BufferedChannel q;
    public final MutableStateFlow r;
    public final MutableStateFlow s;
    public final MutableStateFlow t;
    public final MutableStateFlow u;
    public final MutableStateFlow v;
    public final MutableStateFlow w;
    public final MutableStateFlow x;
    public final MutableStateFlow y;
    public final MutableStateFlow z;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.repairs.RepairBffViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.RepairBffViewModelImpl$1", f = "RepairBffViewModelImpl.kt", l = {157}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f63452b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ RepairBffViewModelImpl f63453c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Continuation continuation, RepairBffViewModelImpl repairBffViewModelImpl) {
            super(2, continuation);
            this.f63453c = repairBffViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(continuation, this.f63453c);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f63452b;
            if (i2 == 0) {
                ResultKt.b(obj);
                this.f63452b = 1;
                if (RepairBffViewModelImpl.zc(this.f63453c, this) == coroutineSingletons) {
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

    @Inject
    public RepairBffViewModelImpl(SavedStateHandle savedStateHandle, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, Logger logger, Monitor monitor, LVEventSender lVEventSender, ContactUsDelegate contactUsDelegate, NotificationBuilder notificationBuilder, LoginStateRepository loginStateRepository, AnalyticsTracker analyticsTracker, AppsFlyerTracker appsFlyerTracker, IsFeatureAvailableUseCase isFeatureAvailableUseCase, GetRepairStatusMapUseCase getRepairStatusMapUseCase, GetCareServiceListBffUseCase getCareServiceListBffUseCase, CancelCareServiceBffUseCase cancelCareServiceBffUseCase, GetCareServiceDetailBffUseCase getCareServiceDetailBffUseCase, UpdateCareServiceAppointmentBffUseCase updateCareServiceAppointmentBffUseCase) {
        savedStateHandle.getClass();
        requireCachedAppConfigUseCase.getClass();
        requireUserInAppDispatchUseCase.getClass();
        logger.getClass();
        monitor.getClass();
        lVEventSender.getClass();
        contactUsDelegate.getClass();
        notificationBuilder.getClass();
        loginStateRepository.getClass();
        analyticsTracker.getClass();
        appsFlyerTracker.getClass();
        isFeatureAvailableUseCase.getClass();
        getRepairStatusMapUseCase.getClass();
        getCareServiceListBffUseCase.getClass();
        cancelCareServiceBffUseCase.getClass();
        getCareServiceDetailBffUseCase.getClass();
        updateCareServiceAppointmentBffUseCase.getClass();
        this.f63443a = logger;
        this.f63444b = monitor;
        this.f63445c = lVEventSender;
        this.d = contactUsDelegate;
        this.f63446e = notificationBuilder;
        this.f63447f = loginStateRepository;
        this.g = analyticsTracker;
        this.f63448h = appsFlyerTracker;
        this.f63449i = isFeatureAvailableUseCase;
        this.f63450j = getRepairStatusMapUseCase;
        this.f63451k = getCareServiceListBffUseCase;
        this.l = cancelCareServiceBffUseCase;
        this.m = getCareServiceDetailBffUseCase;
        this.n = updateCareServiceAppointmentBffUseCase;
        this.o = requireCachedAppConfigUseCase.a();
        InAppDispatch inAppDispatchB = requireUserInAppDispatchUseCase.f49912a.b();
        this.p = inAppDispatchB;
        CareServiceShortUiModel careServiceShortUiModel = (CareServiceShortUiModel) savedStateHandle.a("CARE_SERVICE");
        CareServiceIdUiModel careServiceIdUiModel = (CareServiceIdUiModel) savedStateHandle.a("CARE_SERVICE_ID");
        String str = careServiceIdUiModel != null ? careServiceIdUiModel.f64060b : null;
        this.q = ChannelKt.a(0, 7, null);
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(bool);
        this.r = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(bool);
        this.s = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(bool);
        this.t = mutableStateFlowA3;
        EmptyList emptyList = EmptyList.f71768b;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(emptyList);
        this.u = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(emptyList);
        this.v = mutableStateFlowA5;
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(emptyList);
        this.w = mutableStateFlowA6;
        MutableStateFlow mutableStateFlowA7 = StateFlowKt.a(new String());
        this.x = mutableStateFlowA7;
        MutableStateFlow mutableStateFlowA8 = StateFlowKt.a(null);
        this.y = mutableStateFlowA8;
        MutableStateFlow mutableStateFlowA9 = StateFlowKt.a(null);
        this.z = mutableStateFlowA9;
        MutableStateFlow mutableStateFlowA10 = StateFlowKt.a(new RepairFeatureFlags(false, false, false, false, false, 31, null));
        this.A = mutableStateFlowA10;
        MutableStateFlow mutableStateFlowA11 = StateFlowKt.a(new DistantRepairsConfigUiModel(null, null, null, null, null, null, null, null, null, 511, null));
        this.B = mutableStateFlowA11;
        this.C = ChannelKt.a(0, 7, null);
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA4, mutableStateFlowA5, mutableStateFlowA6, mutableStateFlowA7, mutableStateFlowA8, mutableStateFlowA9, mutableStateFlowA10, mutableStateFlowA11};
        Flow<RepairsBffViewState> flow = new Flow<RepairsBffViewState>() { // from class: com.vuitton.android.presentation.screen.repairs.RepairBffViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.repairs.RepairBffViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.RepairBffViewModelImpl$special$$inlined$combine$1$3", f = "RepairBffViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super RepairsBffViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f63489b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f63490c;
                public /* synthetic */ Object[] d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ RepairBffViewModelImpl f63491e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass3(Continuation continuation, RepairBffViewModelImpl repairBffViewModelImpl) {
                    super(3, continuation);
                    this.f63491e = repairBffViewModelImpl;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3, this.f63491e);
                    anonymousClass3.f63490c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f63490c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f63489b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        InAppDispatch inAppDispatch = this.f63491e.p;
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
                        List list3 = (List) obj7;
                        Object obj8 = objArr[6];
                        obj8.getClass();
                        String str = (String) obj8;
                        CareServiceDetailUiModel careServiceDetailUiModel = (CareServiceDetailUiModel) objArr[7];
                        String str2 = (String) objArr[8];
                        Object obj9 = objArr[9];
                        obj9.getClass();
                        Object obj10 = objArr[10];
                        obj10.getClass();
                        RepairsBffViewState repairsBffViewState = new RepairsBffViewState(inAppDispatch, zBooleanValue, zBooleanValue2, list, list2, list3, str, careServiceDetailUiModel, zBooleanValue3, str2, (RepairFeatureFlags) obj9, (DistantRepairsConfigUiModel) obj10);
                        this.f63490c = null;
                        this.d = null;
                        this.f63489b = 1;
                        if (flowCollector.emit(repairsBffViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.repairs.RepairBffViewModelImpl$special$$inlined$combine$1.2
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
        String str2 = str;
        this.D = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new RepairsBffViewState(inAppDispatchB, true, false, null, null, null, null, null, false, null, null, null, 4092, null));
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(null, this), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new RepairBffViewModelImpl$initConfig$1(null, this), 3);
        if (careServiceShortUiModel != null) {
            Z0(careServiceShortUiModel.f64063b);
        } else if (str2 != null) {
            Z0(str2);
        } else {
            k0(true);
        }
        BuildersKt.c(ViewModelKt.a(this), null, null, new RepairBffViewModelImpl$getRepairStatus$1(null, this), 3);
        contactUsDelegate.f8(ContactUsMode.DISTANT_CARE);
        contactUsDelegate.C(ScreenType.DISTANT_CARE);
    }

    public static final void Ac(RepairBffViewModelImpl repairBffViewModelImpl) {
        repairBffViewModelImpl.C.b(NotificationBuilder.a(repairBffViewModelImpl.f63446e, new StringResourceUiModel.ResId(R.string.p12_errormessage_erroroccuredgeneric, null, 2, null), false, null, null, 60));
    }

    public static final void yc(RepairBffViewModelImpl repairBffViewModelImpl, CareServiceDetail careServiceDetail) {
        Object value;
        String str;
        Object value2;
        MutableStateFlow mutableStateFlow = repairBffViewModelImpl.z;
        do {
            value = mutableStateFlow.getValue();
            str = careServiceDetail.m;
            if (str == null) {
                str = "";
            }
        } while (!mutableStateFlow.i(value, str));
        CareServiceDetailUiModel careServiceDetailUiModelA = CareServiceDetailUiModelMapperKt.a(careServiceDetail, repairBffViewModelImpl.p);
        MutableStateFlow mutableStateFlow2 = repairBffViewModelImpl.y;
        do {
            value2 = mutableStateFlow2.getValue();
        } while (!mutableStateFlow2.i(value2, careServiceDetailUiModelA));
    }

    /* JADX WARN: Code duplicated, block: B:27:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:31:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:35:0x0119  */
    /* JADX WARN: Code duplicated, block: B:39:0x0142  */
    /* JADX WARN: Code duplicated, block: B:43:0x0176  */
    /* JADX WARN: Code duplicated, block: B:46:0x018e  */
    /* JADX WARN: Code duplicated, block: B:48:0x0191  */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
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
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x0176 -> B:16:0x004a). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object zc(com.vuitton.android.presentation.screen.repairs.RepairBffViewModelImpl r24, kotlin.coroutines.jvm.internal.ContinuationImpl r25) {
        /*
            Method dump skipped, instruction units count: 404
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.repairs.RepairBffViewModelImpl.zc(com.vuitton.android.presentation.screen.repairs.RepairBffViewModelImpl, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void B(ChatProductModel chatProductModel, int i2, int i3) {
        chatProductModel.getClass();
        this.d.B(chatProductModel, i2, i3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void C(ScreenType screenType) {
        screenType.getClass();
        this.d.C(screenType);
    }

    @Override // com.vuitton.android.presentation.screen.repairs.RepairBffViewModel
    public final void D0(String str) {
        d(DistantRepairTrackingUiModel.RepairDetailsCancelAppointmentEvent.f57444a);
        BuildersKt.c(ViewModelKt.a(this), null, null, new RepairBffViewModelImpl$cancelAppointment$1(this, str, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object E5(Continuation continuation) {
        return this.d.E5(continuation);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void I(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.d.I(chatProductModel, i2);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object M1(ContactUsOrigin contactUsOrigin, Continuation continuation) {
        return this.d.M1(contactUsOrigin, continuation);
    }

    @Override // com.vuitton.android.presentation.screen.repairs.RepairBffViewModel
    public final void O(TimeSlotUiModel timeSlotUiModel) {
        timeSlotUiModel.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new RepairBffViewModelImpl$rescheduleAppointment$1(this, timeSlotUiModel, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void Q0() {
        this.d.Q0();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final Object S0(Continuation continuation) {
        return this.d.S0(continuation);
    }

    @Override // com.vuitton.android.presentation.screen.repairs.RepairBffViewModel
    public final void T0(String str) {
        str.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new RepairBffViewModelImpl$getRepairDetailConfirmAddress$1(this, str, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.repairs.RepairBffViewModel
    public final Flow U() {
        return FlowKt.y(this.q);
    }

    @Override // com.vuitton.android.presentation.screen.repairs.RepairBffViewModel
    public final void Z0(String str) {
        str.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new RepairBffViewModelImpl$getRepairDetail$1(this, str, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.repairs.RepairBffViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getD() {
        return this.D;
    }

    @Override // com.vuitton.android.presentation.screen.repairs.RepairBffViewModel
    public final Flow b() {
        return FlowKt.y(this.C);
    }

    @Override // com.vuitton.android.presentation.screen.repairs.RepairBffViewModel
    public final void c() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new RepairBffViewModelImpl$setUserChatConsentEnabled$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.screen.repairs.RepairBffViewModel
    public final void d(DistantRepairTrackingUiModel distantRepairTrackingUiModel) {
        distantRepairTrackingUiModel.getClass();
        this.g.a(DistantRepairTrackingUiModelKt.b(distantRepairTrackingUiModel));
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void f8(ContactUsMode contactUsMode) {
        contactUsMode.getClass();
        this.d.f8(contactUsMode);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Flow i() {
        return this.d.i();
    }

    @Override // com.vuitton.android.presentation.screen.repairs.RepairBffViewModel
    public final void k0(boolean z) {
        BuildersKt.c(ViewModelKt.a(this), null, null, new RepairBffViewModelImpl$getRepairs$1(z, this, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void m4(StringResourceUiModel stringResourceUiModel) {
        this.d.m4(stringResourceUiModel);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void r(ChatProductModel chatProductModel) {
        chatProductModel.getClass();
        this.d.r(chatProductModel);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void s() {
        this.d.s();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void v(String str, String str2) {
        this.d.v(str, str2);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object vc(Continuation continuation) {
        return this.d.vc(continuation);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void x(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.d.x(chatProductModel, i2);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void z() {
        this.d.z();
    }
}
