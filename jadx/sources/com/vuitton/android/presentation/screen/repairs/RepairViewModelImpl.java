package com.vuitton.android.presentation.screen.repairs;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.R;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.repository.LoginStateRepository;
import com.vuitton.android.domain.usecase.careservices.GetCareServiceByIdUseCase;
import com.vuitton.android.domain.usecase.careservices.GetCareServiceListUseCase;
import com.vuitton.android.domain.usecase.careservices.UpdateCareServiceAppointmentBffUseCase;
import com.vuitton.android.domain.usecase.careservices.UpdateCareServiceUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.products.GetSkusProductsListUseCase;
import com.vuitton.android.domain.usecase.repairs.GetRepairStatusMapUseCase;
import com.vuitton.android.presentation.contact.ContactUsDelegate;
import com.vuitton.android.presentation.contact.ContactUsMode;
import com.vuitton.android.presentation.contact.models.ContactUsOrigin;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerTracker;
import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModelKt;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceUiModel;
import com.vuitton.android.presentation.screen.repairs.models.DistantRepairsConfigUiModel;
import com.vuitton.android.presentation.screen.repairs.models.RepairFeatureFlags;
import com.vuitton.android.presentation.screen.repairs.models.RepairsViewState;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.chat.ChatProductModel;
import com.vuitton.foundation.model.domain.model.chat.ScreenType;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
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
import kotlin.jvm.internal.TypeIntrinsics;
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
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0099\u0001\b\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%¢\u0006\u0004\b'\u0010(¨\u0006)"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;", "Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "contactUsDelegate", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "Lcom/vuitton/android/domain/repository/LoginStateRepository;", "loginStateRepository", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;", "appsFlyerTracker", "Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;", "updateCareServiceUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListUseCase;", "getCareServiceListUseCase", "Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceByIdUseCase;", "getCareServiceByIdUseCase", "Lcom/vuitton/android/domain/usecase/repairs/GetRepairStatusMapUseCase;", "getRepairStatusMapUseCase", "Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;", "getSkusProductsListUseCase", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceAppointmentBffUseCase;", "updateCareServiceAppointmentBffUseCase", "<init>", "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/repository/LoginStateRepository;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListUseCase;Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceByIdUseCase;Lcom/vuitton/android/domain/usecase/repairs/GetRepairStatusMapUseCase;Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceAppointmentBffUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class RepairViewModelImpl extends ViewModel implements ContactUsDelegate, RepairViewModel {
    public final MutableStateFlow A;
    public final MutableStateFlow B;
    public final MutableStateFlow C;
    public final MutableStateFlow D;
    public final MutableStateFlow E;
    public final MutableStateFlow F;
    public final MutableStateFlow G;
    public final BufferedChannel H;
    public final StateFlow I;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f63496a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Monitor f63497b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LVEventSender f63498c;
    public final ContactUsDelegate d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final NotificationBuilder f63499e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LoginStateRepository f63500f;
    public final AnalyticsTracker g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final AppsFlyerTracker f63501h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final UpdateCareServiceUseCase f63502i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f63503j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final GetCareServiceListUseCase f63504k;
    public final GetCareServiceByIdUseCase l;
    public final GetRepairStatusMapUseCase m;
    public final GetSkusProductsListUseCase n;
    public final RequireCachedAppConfigUseCase o;
    public final UpdateCareServiceAppointmentBffUseCase p;
    public final InAppDispatch q;
    public final AppConfig r;
    public List s;
    public final BufferedChannel t;
    public final MutableStateFlow u;
    public final MutableStateFlow v;
    public final MutableStateFlow w;
    public final MutableStateFlow x;
    public final MutableStateFlow y;
    public final MutableStateFlow z;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.repairs.RepairViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.RepairViewModelImpl$1", f = "RepairViewModelImpl.kt", l = {174}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f63505b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ RepairViewModelImpl f63506c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Continuation continuation, RepairViewModelImpl repairViewModelImpl) {
            super(2, continuation);
            this.f63506c = repairViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(continuation, this.f63506c);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f63505b;
            if (i2 == 0) {
                ResultKt.b(obj);
                this.f63505b = 1;
                if (RepairViewModelImpl.zc(this.f63506c, this) == coroutineSingletons) {
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
        public static final /* synthetic */ int[] f63507a;

        static {
            int[] iArr = new int[RepairStatusUiModel.values().length];
            try {
                iArr[RepairStatusUiModel.SHIPPING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[RepairStatusUiModel.SHIPPING_TO_ATELIER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f63507a = iArr;
        }
    }

    @Inject
    public RepairViewModelImpl(SavedStateHandle savedStateHandle, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, Logger logger, Monitor monitor, LVEventSender lVEventSender, ContactUsDelegate contactUsDelegate, NotificationBuilder notificationBuilder, LoginStateRepository loginStateRepository, AnalyticsTracker analyticsTracker, AppsFlyerTracker appsFlyerTracker, UpdateCareServiceUseCase updateCareServiceUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, GetCareServiceListUseCase getCareServiceListUseCase, GetCareServiceByIdUseCase getCareServiceByIdUseCase, GetRepairStatusMapUseCase getRepairStatusMapUseCase, GetSkusProductsListUseCase getSkusProductsListUseCase, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, UpdateCareServiceAppointmentBffUseCase updateCareServiceAppointmentBffUseCase) {
        savedStateHandle.getClass();
        requireUserInAppDispatchUseCase.getClass();
        logger.getClass();
        monitor.getClass();
        lVEventSender.getClass();
        contactUsDelegate.getClass();
        notificationBuilder.getClass();
        loginStateRepository.getClass();
        analyticsTracker.getClass();
        appsFlyerTracker.getClass();
        updateCareServiceUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        getCareServiceListUseCase.getClass();
        getCareServiceByIdUseCase.getClass();
        getRepairStatusMapUseCase.getClass();
        getSkusProductsListUseCase.getClass();
        requireCachedAppConfigUseCase.getClass();
        updateCareServiceAppointmentBffUseCase.getClass();
        this.f63496a = logger;
        this.f63497b = monitor;
        this.f63498c = lVEventSender;
        this.d = contactUsDelegate;
        this.f63499e = notificationBuilder;
        this.f63500f = loginStateRepository;
        this.g = analyticsTracker;
        this.f63501h = appsFlyerTracker;
        this.f63502i = updateCareServiceUseCase;
        this.f63503j = isFeatureAvailableUseCase;
        this.f63504k = getCareServiceListUseCase;
        this.l = getCareServiceByIdUseCase;
        this.m = getRepairStatusMapUseCase;
        this.n = getSkusProductsListUseCase;
        this.o = requireCachedAppConfigUseCase;
        this.p = updateCareServiceAppointmentBffUseCase;
        InAppDispatch inAppDispatchB = requireUserInAppDispatchUseCase.f49912a.b();
        this.q = inAppDispatchB;
        this.r = requireCachedAppConfigUseCase.a();
        CareServiceUiModel careServiceUiModel = (CareServiceUiModel) savedStateHandle.a("CARE_SERVICE");
        this.s = new ArrayList();
        this.t = ChannelKt.a(0, 7, null);
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(bool);
        this.u = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(bool);
        this.v = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(bool);
        this.w = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(new ArrayList());
        this.x = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(new ArrayList());
        this.y = mutableStateFlowA5;
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(EmptyList.f71768b);
        this.z = mutableStateFlowA6;
        MutableStateFlow mutableStateFlowA7 = StateFlowKt.a(new String());
        this.A = mutableStateFlowA7;
        MutableStateFlow mutableStateFlowA8 = StateFlowKt.a(null);
        this.B = mutableStateFlowA8;
        MutableStateFlow mutableStateFlowA9 = StateFlowKt.a(Boolean.TRUE);
        this.C = mutableStateFlowA9;
        MutableStateFlow mutableStateFlowA10 = StateFlowKt.a(new ArrayList());
        this.D = mutableStateFlowA10;
        MutableStateFlow mutableStateFlowA11 = StateFlowKt.a(null);
        this.E = mutableStateFlowA11;
        MutableStateFlow mutableStateFlowA12 = StateFlowKt.a(new RepairFeatureFlags(false, false, false, false, false, 31, null));
        this.F = mutableStateFlowA12;
        MutableStateFlow mutableStateFlowA13 = StateFlowKt.a(new DistantRepairsConfigUiModel(null, null, null, null, null, null, null, null, null, 511, null));
        this.G = mutableStateFlowA13;
        this.H = ChannelKt.a(0, 7, null);
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA4, mutableStateFlowA5, mutableStateFlowA6, mutableStateFlowA7, mutableStateFlowA8, mutableStateFlowA9, mutableStateFlowA10, mutableStateFlowA11, mutableStateFlowA12, mutableStateFlowA13};
        Flow<RepairsViewState> flow = new Flow<RepairsViewState>() { // from class: com.vuitton.android.presentation.screen.repairs.RepairViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.repairs.RepairViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.RepairViewModelImpl$special$$inlined$combine$1$3", f = "RepairViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super RepairsViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f63565b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f63566c;
                public /* synthetic */ Object[] d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ RepairViewModelImpl f63567e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass3(Continuation continuation, RepairViewModelImpl repairViewModelImpl) {
                    super(3, continuation);
                    this.f63567e = repairViewModelImpl;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3, this.f63567e);
                    anonymousClass3.f63566c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f63566c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f63565b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        InAppDispatch inAppDispatch = this.f63567e.q;
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
                        List listB = TypeIntrinsics.b(obj5);
                        Object obj6 = objArr[4];
                        obj6.getClass();
                        List listB2 = TypeIntrinsics.b(obj6);
                        Object obj7 = objArr[5];
                        obj7.getClass();
                        List list = (List) obj7;
                        Object obj8 = objArr[6];
                        obj8.getClass();
                        String str = (String) obj8;
                        CareServiceDetailUiModel careServiceDetailUiModel = (CareServiceDetailUiModel) objArr[7];
                        Object obj9 = objArr[8];
                        obj9.getClass();
                        boolean zBooleanValue4 = ((Boolean) obj9).booleanValue();
                        Object obj10 = objArr[9];
                        obj10.getClass();
                        List listB3 = TypeIntrinsics.b(obj10);
                        String str2 = (String) objArr[10];
                        Object obj11 = objArr[11];
                        obj11.getClass();
                        Object obj12 = objArr[12];
                        obj12.getClass();
                        RepairsViewState repairsViewState = new RepairsViewState(inAppDispatch, zBooleanValue, zBooleanValue2, listB, listB2, list, str, careServiceDetailUiModel, zBooleanValue4, listB3, zBooleanValue3, str2, (RepairFeatureFlags) obj11, (DistantRepairsConfigUiModel) obj12);
                        this.f63566c = null;
                        this.d = null;
                        this.f63565b = 1;
                        if (flowCollector.emit(repairsViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.repairs.RepairViewModelImpl$special$$inlined$combine$1.2
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
        this.I = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new RepairsViewState(inAppDispatchB, true, false, null, null, null, null, null, false, null, false, null, null, null, 16380, null));
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(null, this), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new RepairViewModelImpl$initConfig$1(null, this), 3);
        if (careServiceUiModel == null) {
            k0(true);
        }
        BuildersKt.c(ViewModelKt.a(this), null, null, new RepairViewModelImpl$getRepairStatus$1(null, this), 3);
        contactUsDelegate.f8(ContactUsMode.DISTANT_CARE);
        contactUsDelegate.C(ScreenType.DISTANT_CARE);
    }

    public static final Object Ac(RepairViewModelImpl repairViewModelImpl, SuspendLambda suspendLambda) {
        Object objU = repairViewModelImpl.H.u(NotificationBuilder.a(repairViewModelImpl.f63499e, new StringResourceUiModel.ResId(R.string.p12_errormessage_erroroccuredgeneric, null, 2, null), false, null, null, 60), suspendLambda);
        return objU == CoroutineSingletons.COROUTINE_SUSPENDED ? objU : Unit.f71739a;
    }

    public static final boolean Bc(RepairViewModelImpl repairViewModelImpl, CareServiceUiModel careServiceUiModel) {
        repairViewModelImpl.getClass();
        if (careServiceUiModel.p.length() <= 0) {
            return false;
        }
        CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
        String str = careServiceUiModel.f63994b;
        companion.getClass();
        str.getClass();
        if (str.equals(CareServiceIdUiModel.d)) {
            return false;
        }
        int i2 = WhenMappings.f63507a[careServiceUiModel.f63996e.ordinal()];
        return i2 == 1 || i2 == 2;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x0245  */
    /* JADX WARN: Code duplicated, block: B:105:0x024c  */
    /* JADX WARN: Code duplicated, block: B:108:0x0260  */
    /* JADX WARN: Code duplicated, block: B:110:0x0270  */
    /* JADX WARN: Code duplicated, block: B:111:0x027b  */
    /* JADX WARN: Code duplicated, block: B:112:0x027d  */
    /* JADX WARN: Code duplicated, block: B:118:0x0291  */
    /* JADX WARN: Code duplicated, block: B:122:0x02a8  */
    /* JADX WARN: Code duplicated, block: B:123:0x0222 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:130:0x029c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:133:0x01f7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:42:0x010e A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:43:0x010f  */
    /* JADX WARN: Code duplicated, block: B:46:0x0126  */
    /* JADX WARN: Code duplicated, block: B:49:0x0138  */
    /* JADX WARN: Code duplicated, block: B:50:0x013a  */
    /* JADX WARN: Code duplicated, block: B:55:0x014b  */
    /* JADX WARN: Code duplicated, block: B:57:0x0153  */
    /* JADX WARN: Code duplicated, block: B:60:0x0174 A[LOOP:1: B:58:0x016e->B:60:0x0174, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:63:0x018c  */
    /* JADX WARN: Code duplicated, block: B:65:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:66:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:68:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:69:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:72:0x01d7  */
    /* JADX WARN: Code duplicated, block: B:75:0x01eb  */
    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    /* JADX WARN: Code duplicated, block: B:81:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:83:0x0204  */
    /* JADX WARN: Code duplicated, block: B:94:0x021c  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x010f -> B:44:0x0113). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object yc(com.vuitton.android.presentation.screen.repairs.RepairViewModelImpl r18, java.lang.String r19, com.vuitton.foundation.model.domain.model.careservices.CareServiceDetail r20, kotlin.coroutines.jvm.internal.ContinuationImpl r21) {
        /*
            Method dump skipped, instruction units count: 684
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.repairs.RepairViewModelImpl.yc(com.vuitton.android.presentation.screen.repairs.RepairViewModelImpl, java.lang.String, com.vuitton.foundation.model.domain.model.careservices.CareServiceDetail, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
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
    public static final java.lang.Object zc(com.vuitton.android.presentation.screen.repairs.RepairViewModelImpl r24, kotlin.coroutines.jvm.internal.ContinuationImpl r25) {
        /*
            Method dump skipped, instruction units count: 404
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.repairs.RepairViewModelImpl.zc(com.vuitton.android.presentation.screen.repairs.RepairViewModelImpl, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
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

    public final Object Cc(String str, RepairStatusUiModel repairStatusUiModel, ContinuationImpl continuationImpl) {
        if (Intrinsics.c(str, this.r.Q.f67247h)) {
            repairStatusUiModel.getClass();
            if (ArraysKt.f(repairStatusUiModel, new RepairStatusUiModel[]{RepairStatusUiModel.AWAITING_PAYMENT, RepairStatusUiModel.PAYMENT_INITIATED})) {
                return this.f63503j.c(new Feature[]{Feature.PAY_BY_LINK}, false, continuationImpl);
            }
        }
        return Boolean.FALSE;
    }

    @Override // com.vuitton.android.presentation.screen.repairs.RepairViewModel
    public final void D0(String str) {
        d(DistantRepairTrackingUiModel.RepairDetailsCancelAppointmentEvent.f57444a);
        BuildersKt.c(ViewModelKt.a(this), null, null, new RepairViewModelImpl$cancelAppointment$1(this, str, null), 3);
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

    @Override // com.vuitton.android.presentation.screen.repairs.RepairViewModel
    public final void O(TimeSlotUiModel timeSlotUiModel) {
        timeSlotUiModel.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new RepairViewModelImpl$rescheduleAppointment$1(this, timeSlotUiModel, null), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void Q0() {
        this.d.Q0();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final Object S0(Continuation continuation) {
        return this.d.S0(continuation);
    }

    @Override // com.vuitton.android.presentation.screen.repairs.RepairViewModel
    public final void T0(String str) {
        str.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new RepairViewModelImpl$getRepairDetailConfirmAddress$1(this, str, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.repairs.RepairViewModel
    public final Flow U() {
        return FlowKt.y(this.t);
    }

    @Override // com.vuitton.android.presentation.screen.repairs.RepairViewModel
    public final void Z0(String str) {
        str.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new RepairViewModelImpl$getRepairDetail$1(this, str, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.repairs.RepairViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getI() {
        return this.I;
    }

    @Override // com.vuitton.android.presentation.screen.repairs.RepairViewModel
    public final Flow b() {
        return FlowKt.y(this.H);
    }

    @Override // com.vuitton.android.presentation.screen.repairs.RepairViewModel
    public final void c() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new RepairViewModelImpl$setUserChatConsentEnabled$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.screen.repairs.RepairViewModel
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

    @Override // com.vuitton.android.presentation.screen.repairs.RepairViewModel
    public final void k0(boolean z) {
        BuildersKt.c(ViewModelKt.a(this), null, null, new RepairViewModelImpl$getRepairs$1(z, this, null), 3);
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
