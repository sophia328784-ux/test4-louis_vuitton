package com.vuitton.android.presentation.screen.distantrepairs.assessment;

import android.app.Application;
import android.content.Context;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.R;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.core.extensions.SerializationExtKt;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.careservices.CareServicesMonitoring;
import com.vuitton.android.domain.usecase.account.GetProfileUseCase;
import com.vuitton.android.domain.usecase.account.address.GetAddressListUseCase;
import com.vuitton.android.domain.usecase.careservices.GetCareServiceByIdUseCase;
import com.vuitton.android.domain.usecase.careservices.UpdateCareServiceUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.presentation.contact.ContactUsDelegate;
import com.vuitton.android.presentation.contact.ContactUsMode;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.account.addressbook.AddressHelper;
import com.vuitton.android.presentation.screen.account.profile.AddressUiModel;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.FormState;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.Step;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.StepState;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentStateUIModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusUiModelKt;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModelKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceItemUiModel;
import com.vuitton.android.presentation.screen.repairs.models.DistantRepairsConfigUiModel;
import com.vuitton.android.presentation.screen.repairs.models.DistantRepairsConfigUiModelKt;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceTransactionIdUiModel;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.account.address.AddressState;
import com.vuitton.foundation.model.domain.model.careservices.CareServiceDetail;
import com.vuitton.foundation.model.domain.model.careservices.CareServiceItem;
import com.vuitton.foundation.model.domain.model.careservices.CareServiceOrigin;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceTransactionId;
import com.vuitton.foundation.model.domain.model.chat.ScreenType;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatchExtKt;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.RegionCode;
import com.vuitton.foundation.model.domain.model.repair.RepairStatus;
import com.vuitton.foundation.model.domain.model.repair.RepairType;
import defpackage.md;
import defpackage.v40;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.NoSuchElementException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
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
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001%B\u0089\u0001\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!¢\u0006\u0004\b#\u0010$¨\u0006&"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;", "Landroidx/lifecycle/AndroidViewModel;", "Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;", "Landroid/app/Application;", "application", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lkotlinx/serialization/json/Json;", "json", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceByIdUseCase;", "getCareServiceByIdUseCase", "Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;", "updateCareServiceUseCase", "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;", "getProfileUseCase", "Lcom/vuitton/android/domain/usecase/account/address/GetAddressListUseCase;", "getAddressListUseCase", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;", "contactUsDelegate", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "<init>", "(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceByIdUseCase;Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/account/address/GetAddressListUseCase;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/presentation/notification/NotificationBuilder;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DistantRepairAssessmentViewModelImpl extends AndroidViewModel implements DistantRepairAssessmentViewModel {
    public static final /* synthetic */ int R = 0;
    public final MutableStateFlow A;
    public final MutableStateFlow B;
    public final MutableStateFlow C;
    public final MutableStateFlow D;
    public final MutableStateFlow E;
    public final MutableStateFlow F;
    public final MutableStateFlow G;
    public final StateFlow H;
    public final String I;
    public final BufferedChannel J;
    public final BufferedChannel K;
    public final BufferedChannel L;
    public final BufferedChannel M;
    public final BufferedChannel N;
    public List O;
    public String P;
    public String Q;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnalyticsTracker f56884b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Logger f56885c;
    public final Monitor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Json f56886e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RequireCachedAppConfigUseCase f56887f;
    public final IsFeatureAvailableUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final GetCareServiceByIdUseCase f56888h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final UpdateCareServiceUseCase f56889i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final GetProfileUseCase f56890j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final GetAddressListUseCase f56891k;
    public final LVEventSender l;
    public final ContactUsDelegate m;
    public final NotificationBuilder n;
    public final InAppDispatch o;
    public MonitorAction p;
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

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModelImpl$1", f = "DistantRepairAssessmentViewModelImpl.kt", l = {205}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f56892b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ DistantRepairAssessmentViewModelImpl f56893c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Continuation continuation, DistantRepairAssessmentViewModelImpl distantRepairAssessmentViewModelImpl) {
            super(2, continuation);
            this.f56893c = distantRepairAssessmentViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(continuation, this.f56893c);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f56892b;
            if (i2 == 0) {
                ResultKt.b(obj);
                this.f56892b = 1;
                if (DistantRepairAssessmentViewModelImpl.zc(this.f56893c, this) == coroutineSingletons) {
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

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$Companion;", "", "", "ATTEMPTS_FOR_PBL", "I", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f56894a;

        static {
            int[] iArr = new int[Step.values().length];
            try {
                iArr[Step.ONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Step.TWO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Step.THREE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Step.FOUR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f56894a = iArr;
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public DistantRepairAssessmentViewModelImpl(Application application, SavedStateHandle savedStateHandle, AnalyticsTracker analyticsTracker, Logger logger, Monitor monitor, Json json, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, GetCareServiceByIdUseCase getCareServiceByIdUseCase, UpdateCareServiceUseCase updateCareServiceUseCase, GetProfileUseCase getProfileUseCase, GetAddressListUseCase getAddressListUseCase, LVEventSender lVEventSender, ContactUsDelegate contactUsDelegate, NotificationBuilder notificationBuilder) {
        super(application);
        application.getClass();
        savedStateHandle.getClass();
        analyticsTracker.getClass();
        logger.getClass();
        monitor.getClass();
        json.getClass();
        requireUserInAppDispatchUseCase.getClass();
        requireCachedAppConfigUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        getCareServiceByIdUseCase.getClass();
        updateCareServiceUseCase.getClass();
        getProfileUseCase.getClass();
        getAddressListUseCase.getClass();
        lVEventSender.getClass();
        contactUsDelegate.getClass();
        notificationBuilder.getClass();
        this.f56884b = analyticsTracker;
        this.f56885c = logger;
        this.d = monitor;
        this.f56886e = json;
        this.f56887f = requireCachedAppConfigUseCase;
        this.g = isFeatureAvailableUseCase;
        this.f56888h = getCareServiceByIdUseCase;
        this.f56889i = updateCareServiceUseCase;
        this.f56890j = getProfileUseCase;
        this.f56891k = getAddressListUseCase;
        this.l = lVEventSender;
        this.m = contactUsDelegate;
        this.n = notificationBuilder;
        InAppDispatch inAppDispatchB = requireUserInAppDispatchUseCase.f49912a.b();
        this.o = inAppDispatchB;
        this.q = ChannelKt.a(0, 7, null);
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(bool);
        this.r = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(bool);
        this.s = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(bool);
        this.t = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(new AssessmentStateUIModel(null, null, null, null, 15, null));
        this.u = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(null);
        this.v = mutableStateFlowA5;
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(null);
        this.w = mutableStateFlowA6;
        EmptyList emptyList = EmptyList.f71768b;
        MutableStateFlow mutableStateFlowA7 = StateFlowKt.a(emptyList);
        this.x = mutableStateFlowA7;
        MutableStateFlow mutableStateFlowA8 = StateFlowKt.a(null);
        this.y = mutableStateFlowA8;
        MutableStateFlow mutableStateFlowA9 = StateFlowKt.a(null);
        this.z = mutableStateFlowA9;
        MutableStateFlow mutableStateFlowA10 = StateFlowKt.a(new String());
        this.A = mutableStateFlowA10;
        MutableStateFlow mutableStateFlowA11 = StateFlowKt.a(new String());
        this.B = mutableStateFlowA11;
        MutableStateFlow mutableStateFlowA12 = StateFlowKt.a(new String());
        this.C = mutableStateFlowA12;
        MutableStateFlow mutableStateFlowA13 = StateFlowKt.a(bool);
        this.D = mutableStateFlowA13;
        MutableStateFlow mutableStateFlowA14 = StateFlowKt.a(bool);
        this.E = mutableStateFlowA14;
        MutableStateFlow mutableStateFlowA15 = StateFlowKt.a(bool);
        this.F = mutableStateFlowA15;
        MutableStateFlow mutableStateFlowA16 = StateFlowKt.a(new DistantRepairsConfigUiModel(null, null, null, null, null, null, null, null, null, 511, null));
        this.G = mutableStateFlowA16;
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA4, mutableStateFlowA5, mutableStateFlowA6, mutableStateFlowA7, mutableStateFlowA8, mutableStateFlowA9, mutableStateFlowA10, mutableStateFlowA11, mutableStateFlowA12, mutableStateFlowA16, mutableStateFlowA13, mutableStateFlowA14, mutableStateFlowA15};
        Flow<AssessmentViewState> flow = new Flow<AssessmentViewState>() { // from class: com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModelImpl$special$$inlined$combine$1$3", f = "DistantRepairAssessmentViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super AssessmentViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f56942b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f56943c;
                public /* synthetic */ Object[] d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ DistantRepairAssessmentViewModelImpl f56944e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass3(Continuation continuation, DistantRepairAssessmentViewModelImpl distantRepairAssessmentViewModelImpl) {
                    super(3, continuation);
                    this.f56944e = distantRepairAssessmentViewModelImpl;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3, this.f56944e);
                    anonymousClass3.f56943c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f56943c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f56942b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        InAppDispatch inAppDispatch = this.f56944e.o;
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
                        AssessmentStateUIModel assessmentStateUIModel = (AssessmentStateUIModel) obj5;
                        CareServiceDetailUiModel careServiceDetailUiModel = (CareServiceDetailUiModel) objArr[4];
                        CareServiceDetailUiModel careServiceDetailUiModel2 = (CareServiceDetailUiModel) objArr[5];
                        Object obj6 = objArr[6];
                        obj6.getClass();
                        List list = (List) obj6;
                        AddressUiModel addressUiModel = (AddressUiModel) objArr[7];
                        AddressUiModel addressUiModel2 = (AddressUiModel) objArr[8];
                        Object obj7 = objArr[9];
                        obj7.getClass();
                        String str = (String) obj7;
                        Object obj8 = objArr[10];
                        obj8.getClass();
                        String str2 = (String) obj8;
                        Object obj9 = objArr[11];
                        obj9.getClass();
                        String str3 = (String) obj9;
                        Object obj10 = objArr[12];
                        obj10.getClass();
                        DistantRepairsConfigUiModel distantRepairsConfigUiModel = (DistantRepairsConfigUiModel) obj10;
                        Object obj11 = objArr[13];
                        obj11.getClass();
                        boolean zBooleanValue4 = ((Boolean) obj11).booleanValue();
                        Object obj12 = objArr[14];
                        obj12.getClass();
                        boolean zBooleanValue5 = ((Boolean) obj12).booleanValue();
                        Object obj13 = objArr[15];
                        obj13.getClass();
                        AssessmentViewState assessmentViewState = new AssessmentViewState(inAppDispatch, zBooleanValue, assessmentStateUIModel, careServiceDetailUiModel, careServiceDetailUiModel2, list, addressUiModel, addressUiModel2, str, zBooleanValue2, zBooleanValue3, str2, str3, distantRepairsConfigUiModel, zBooleanValue4, zBooleanValue5, ((Boolean) obj13).booleanValue());
                        this.f56943c = null;
                        this.d = null;
                        this.f56942b = 1;
                        if (flowCollector.emit(assessmentViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModelImpl$special$$inlined$combine$1.2
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
        MutableStateFlow mutableStateFlow = mutableStateFlowA16;
        this.H = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new AssessmentViewState(inAppDispatchB, true, null, null, null, null, null, null, null, false, false, null, null, null, false, false, false, 131068, null));
        CareServiceIdUiModel careServiceIdUiModel = (CareServiceIdUiModel) savedStateHandle.a("CARESERVICE_ID");
        this.I = careServiceIdUiModel != null ? careServiceIdUiModel.f64060b : null;
        this.J = ChannelKt.a(0, 7, null);
        this.K = ChannelKt.a(0, 7, null);
        this.L = ChannelKt.a(0, 7, null);
        this.M = ChannelKt.a(0, 7, null);
        this.N = ChannelKt.a(0, 7, null);
        this.O = emptyList;
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(null, this), 3);
        while (true) {
            Object value = mutableStateFlow.getValue();
            MutableStateFlow mutableStateFlow2 = mutableStateFlow;
            if (mutableStateFlow2.i(value, DistantRepairsConfigUiModelKt.a(this.f56887f.a().Q))) {
                break;
            } else {
                mutableStateFlow = mutableStateFlow2;
            }
        }
        CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
        String str = this.I;
        companion.getClass();
        L8(str == null ? CareServiceIdUiModel.d : str);
        this.m.f8(ContactUsMode.DISTANT_CARE);
        this.m.C(ScreenType.DISTANT_CARE);
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:44:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:48:0x0106 A[PHI: r10
      0x0106: PHI (r10v18 java.lang.Object) = (r10v12 java.lang.Object), (r10v15 java.lang.Object), (r10v20 java.lang.Object) binds: [B:40:0x00c8, B:46:0x0103, B:13:0x0033] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:50:0x010c  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0085, code lost:
    
        if (r9.Dc(false, r2) == r3) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a0, code lost:
    
        if (r9.Dc(false, r2) == r3) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0122, code lost:
    
        if (r9.Dc(true, r2) == r3) goto L52;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object Ac(com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModelImpl r9, com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel r10, com.vuitton.android.presentation.screen.account.profile.AddressUiModel r11, com.vuitton.android.presentation.screen.account.profile.AddressUiModel r12, kotlin.jvm.functions.Function1 r13, kotlin.coroutines.jvm.internal.ContinuationImpl r14) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModelImpl.Ac(com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModelImpl, com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel, com.vuitton.android.presentation.screen.account.profile.AddressUiModel, com.vuitton.android.presentation.screen.account.profile.AddressUiModel, kotlin.jvm.functions.Function1, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static final Object yc(Continuation continuation, DistantRepairAssessmentViewModelImpl distantRepairAssessmentViewModelImpl) {
        Object objU = distantRepairAssessmentViewModelImpl.q.u(NotificationBuilder.a(distantRepairAssessmentViewModelImpl.n, new StringResourceUiModel.ResId(R.string.generic_api_error_message, null, 2, null), false, null, null, 60), continuation);
        return objU == CoroutineSingletons.COROUTINE_SUSPENDED ? objU : Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0075, code lost:
    
        if (r11 == r2) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00a3, code lost:
    
        if (r11 == r2) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00d1, code lost:
    
        if (r11 == r2) goto L33;
     */
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
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0075 -> B:22:0x0078). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00a3 -> B:28:0x00a6). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00d1 -> B:34:0x00d4). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object zc(com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModelImpl r10, kotlin.coroutines.jvm.internal.ContinuationImpl r11) {
        /*
            Method dump skipped, instruction units count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModelImpl.zc(com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModelImpl, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel
    public final void A0(AddressUiModel addressUiModel, AddressUiModel addressUiModel2) {
        if (addressUiModel != null) {
            this.y.setValue(addressUiModel);
        }
        if (addressUiModel2 != null) {
            this.z.setValue(addressUiModel2);
        }
        Application application = this.f13405a;
        application.getClass();
        Ec(application);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel
    public final void B0(Step step) {
        step.getClass();
        int i2 = WhenMappings.f56894a[step.ordinal()];
        if (i2 != 1) {
            if (i2 == 2) {
                m(step);
                return;
            }
            if (i2 == 3) {
                m(step);
            } else if (i2 == 4) {
                m(step);
            } else {
                v40.g();
            }
        }
    }

    public final Object Bc(ContinuationImpl continuationImpl) {
        Object objU = this.q.u(NotificationBuilder.a(this.n, new StringResourceUiModel.ResId(R.string.p12_errormessage_erroroccuredgeneric, null, 2, null), false, null, null, 60), continuationImpl);
        return objU == CoroutineSingletons.COROUTINE_SUSPENDED ? objU : Unit.f71739a;
    }

    public final CareServiceDetail Cc(Context context, CareServiceDetailUiModel careServiceDetailUiModel, AddressUiModel addressUiModel, AddressUiModel addressUiModel2) throws IOException {
        String strE;
        String str;
        Object next;
        InAppDispatch inAppDispatch = this.o;
        String str2 = inAppDispatch.f67483j;
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        AddressUiModel addressUiModel3 = (AddressUiModel) this.y.getValue();
        String str3 = addressUiModel3 != null ? addressUiModel3.r : null;
        if (str3 == null) {
            str3 = "";
        }
        ref$ObjectRef.f71921b = str3;
        int length = str3.length();
        Json json = this.f56886e;
        if (length > 2) {
            RegionCode.f67513b.getClass();
            String str4 = RegionCode.g;
            if (CollectionsKt.P(new RegionCode(str4), new RegionCode(RegionCode.F)).contains(new RegionCode(str2))) {
                InputStream inputStreamOpenRawResource = context.getResources().openRawResource(Intrinsics.c(str2, str4) ? R.raw.states_ca : R.raw.states_us);
                try {
                    inputStreamOpenRawResource.getClass();
                    String strA = SerializationExtKt.a(inputStreamOpenRawResource);
                    json.getClass();
                    Iterator it = ((List) json.b(new ArrayListSerializer(AddressState.INSTANCE.serializer()), strA)).iterator();
                    do {
                        if (!it.hasNext()) {
                            throw new NoSuchElementException("Collection contains no element matching the predicate.");
                        }
                        next = it.next();
                    } while (!Intrinsics.c(((AddressState) next).f66261b, ref$ObjectRef.f71921b));
                    ref$ObjectRef.f71921b = ((AddressState) next).f66260a;
                    inputStreamOpenRawResource.close();
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.a(inputStreamOpenRawResource, th);
                        throw th2;
                    }
                }
            }
        }
        String strE2 = (String) ref$ObjectRef.f71921b;
        CareServiceDetailUiModel careServiceDetailUiModel2 = careServiceDetailUiModel == null ? (CareServiceDetailUiModel) this.v.getValue() : careServiceDetailUiModel;
        if (careServiceDetailUiModel2 == null) {
            return null;
        }
        CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
        String str5 = careServiceDetailUiModel2.f63979b;
        companion.getClass();
        CareServiceIdUiModel.Companion.a(str5);
        RepairType repairType = careServiceDetailUiModel2.f63980c;
        RepairStatus repairStatusD = RepairStatusUiModelKt.d(careServiceDetailUiModel2.d);
        String str6 = careServiceDetailUiModel2.f63981e;
        String str7 = careServiceDetailUiModel2.f63982f;
        String str8 = careServiceDetailUiModel2.g;
        double d = careServiceDetailUiModel2.f63983h;
        Double d2 = careServiceDetailUiModel2.f63984i;
        SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
        String str9 = careServiceDetailUiModel2.f63985j;
        companion2.getClass();
        SkuIdUiModel.Companion.b(str9);
        String str10 = careServiceDetailUiModel2.f63986k;
        String str11 = careServiceDetailUiModel2.l;
        String str12 = addressUiModel != null ? addressUiModel.f52673b : null;
        String str13 = str12 == null ? "" : str12;
        String str14 = addressUiModel != null ? addressUiModel.f52679j : null;
        String str15 = str14 == null ? "" : str14;
        String str16 = addressUiModel != null ? addressUiModel.f52680k : null;
        String str17 = str16 == null ? "" : str16;
        String str18 = addressUiModel != null ? addressUiModel.l : null;
        String str19 = str18 == null ? "" : str18;
        String str20 = addressUiModel != null ? addressUiModel.p : null;
        String str21 = str20 == null ? "" : str20;
        String str22 = addressUiModel != null ? addressUiModel.q : null;
        String str23 = str22 == null ? "" : str22;
        boolean zD = InAppDispatchExtKt.d(inAppDispatch);
        Application application = this.f13405a;
        if (zD) {
            application.getClass();
            strE = AddressHelper.e(application, json, strE2);
        } else {
            strE = strE2;
        }
        String str24 = addressUiModel != null ? addressUiModel.t : null;
        String str25 = str24 == null ? "" : str24;
        String str26 = addressUiModel2 != null ? addressUiModel2.f52673b : null;
        String str27 = str26 == null ? "" : str26;
        String str28 = addressUiModel2 != null ? addressUiModel2.f52679j : null;
        String str29 = str28 == null ? "" : str28;
        String str30 = addressUiModel2 != null ? addressUiModel2.f52680k : null;
        String str31 = str30 == null ? "" : str30;
        String str32 = addressUiModel2 != null ? addressUiModel2.l : null;
        String str33 = str32 == null ? "" : str32;
        String str34 = addressUiModel2 != null ? addressUiModel2.p : null;
        String str35 = str34 == null ? "" : str34;
        String str36 = addressUiModel2 != null ? addressUiModel2.q : null;
        String str37 = str36 == null ? "" : str36;
        if (InAppDispatchExtKt.d(inAppDispatch)) {
            application.getClass();
            strE2 = AddressHelper.e(application, json, strE2);
        }
        String str38 = strE2;
        String str39 = addressUiModel2 != null ? addressUiModel2.t : null;
        String str40 = str39 == null ? "" : str39;
        String str41 = careServiceDetailUiModel2.u;
        String str42 = careServiceDetailUiModel2.v;
        List list = careServiceDetailUiModel2.w;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            CareServiceItemUiModel careServiceItemUiModel = (CareServiceItemUiModel) it2.next();
            careServiceItemUiModel.getClass();
            arrayList.add(new CareServiceItem(careServiceItemUiModel.f63987b, careServiceItemUiModel.f63988c, careServiceItemUiModel.d, careServiceItemUiModel.f63989e, careServiceItemUiModel.f63990f, careServiceItemUiModel.g, careServiceItemUiModel.f63991h, careServiceItemUiModel.f63992i, careServiceItemUiModel.f63993j));
            it2 = it2;
            str41 = str41;
            str42 = str42;
        }
        String str43 = str41;
        String str44 = str42;
        String str45 = careServiceDetailUiModel2.x;
        CareServiceOrigin careServiceOrigin = careServiceDetailUiModel2.y;
        String str46 = careServiceDetailUiModel2.z;
        String str47 = careServiceDetailUiModel2.A;
        String str48 = careServiceDetailUiModel2.B;
        String str49 = careServiceDetailUiModel2.C;
        String str50 = careServiceDetailUiModel2.D;
        String str51 = careServiceDetailUiModel2.E;
        if (str51 != null) {
            CareServiceTransactionIdUiModel.f64071c.getClass();
            CareServiceTransactionId.Companion companion3 = CareServiceTransactionId.INSTANCE;
            str = str51;
        } else {
            str = null;
        }
        String str52 = careServiceDetailUiModel2.F;
        String str53 = careServiceDetailUiModel2.G;
        String str54 = careServiceDetailUiModel2.H;
        String str55 = careServiceDetailUiModel2.I;
        String str56 = addressUiModel != null ? addressUiModel.d : null;
        String str57 = str56 == null ? "" : str56;
        String str58 = addressUiModel != null ? addressUiModel.f52676f : null;
        String str59 = str58 == null ? "" : str58;
        String str60 = addressUiModel != null ? addressUiModel.g : null;
        return new CareServiceDetail(str5, repairType, repairStatusD, str6, str7, str8, d, d2, str9, str10, str11, str13, str15, str17, str19, str21, str23, strE, str25, str27, str29, str31, str33, str35, str37, str38, str40, str43, str44, arrayList, str45, careServiceOrigin, str46, str47, str48, str49, str50, str, str52, str53, str54, str55, str57, str59, str60 == null ? "" : str60, careServiceDetailUiModel2.M, careServiceDetailUiModel2.N, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object Dc(boolean z, ContinuationImpl continuationImpl) {
        DistantRepairAssessmentViewModelImpl$handleUpdateError$1 distantRepairAssessmentViewModelImpl$handleUpdateError$1;
        if (continuationImpl instanceof DistantRepairAssessmentViewModelImpl$handleUpdateError$1) {
            distantRepairAssessmentViewModelImpl$handleUpdateError$1 = (DistantRepairAssessmentViewModelImpl$handleUpdateError$1) continuationImpl;
            int i2 = distantRepairAssessmentViewModelImpl$handleUpdateError$1.f56932e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                distantRepairAssessmentViewModelImpl$handleUpdateError$1.f56932e = i2 - Integer.MIN_VALUE;
            } else {
                distantRepairAssessmentViewModelImpl$handleUpdateError$1 = new DistantRepairAssessmentViewModelImpl$handleUpdateError$1(this, continuationImpl);
            }
        } else {
            distantRepairAssessmentViewModelImpl$handleUpdateError$1 = new DistantRepairAssessmentViewModelImpl$handleUpdateError$1(this, continuationImpl);
        }
        Object obj = distantRepairAssessmentViewModelImpl$handleUpdateError$1.f56931c;
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = distantRepairAssessmentViewModelImpl$handleUpdateError$1.f56932e;
        if (i3 == 0) {
            ResultKt.b(obj);
            distantRepairAssessmentViewModelImpl$handleUpdateError$1.f56930b = z;
            distantRepairAssessmentViewModelImpl$handleUpdateError$1.f56932e = 1;
            if (Bc(distantRepairAssessmentViewModelImpl$handleUpdateError$1) == obj2) {
                return obj2;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            z = distantRepairAssessmentViewModelImpl$handleUpdateError$1.f56930b;
            ResultKt.b(obj);
        }
        Boolean bool = Boolean.FALSE;
        this.r.setValue(bool);
        this.t.setValue(bool);
        if (z) {
            this.s.setValue(bool);
        }
        return Unit.f71739a;
    }

    public final void Ec(Context context) {
        String strC;
        AddressUiModel addressUiModel = (AddressUiModel) this.y.getValue();
        if (addressUiModel != null) {
            String str = addressUiModel.f52676f;
            String str2 = addressUiModel.g;
            String str3 = addressUiModel.f52679j;
            String str4 = str3 == null ? "" : str3;
            String str5 = addressUiModel.f52680k;
            String str6 = str5 == null ? "" : str5;
            String str7 = addressUiModel.l;
            String str8 = str7 == null ? "" : str7;
            String str9 = addressUiModel.p;
            String str10 = addressUiModel.t;
            String str11 = addressUiModel.r;
            String str12 = str11 == null ? "" : str11;
            String str13 = addressUiModel.q;
            String str14 = str13 == null ? "" : str13;
            String str15 = addressUiModel.o;
            strC = AddressHelper.c(context, this.f56886e, this.o, str, str2, str4, str6, str8, str9, str10, str12, str14, str15 == null ? "" : str15, "");
        } else {
            strC = null;
        }
        this.A.setValue(strC != null ? strC : "");
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel
    public final void J0() {
        Double dValueOf;
        MutableStateFlow mutableStateFlow = this.u;
        AssessmentStateUIModel assessmentStateUIModel = (AssessmentStateUIModel) mutableStateFlow.getValue();
        mutableStateFlow.setValue(AssessmentStateUIModel.a(assessmentStateUIModel.f57353a, assessmentStateUIModel.f57354b, assessmentStateUIModel.f57355c, FormState.CONFIRMED));
        MutableStateFlow mutableStateFlow2 = this.v;
        CareServiceDetailUiModel careServiceDetailUiModel = (CareServiceDetailUiModel) mutableStateFlow2.getValue();
        if (careServiceDetailUiModel == null || (dValueOf = careServiceDetailUiModel.f63984i) == null) {
            CareServiceDetailUiModel careServiceDetailUiModel2 = (CareServiceDetailUiModel) mutableStateFlow2.getValue();
            dValueOf = careServiceDetailUiModel2 != null ? Double.valueOf(careServiceDetailUiModel2.f63983h) : null;
        }
        if (dValueOf != null) {
            CareServiceDetailUiModel careServiceDetailUiModel3 = (CareServiceDetailUiModel) mutableStateFlow2.getValue();
            String str = careServiceDetailUiModel3 != null ? careServiceDetailUiModel3.f63982f : null;
            if (str == null) {
                str = "";
            }
            this.f56884b.a(DistantRepairTrackingUiModelKt.b(new DistantRepairTrackingUiModel.PreliminaryAssessmentConfirmationScreen(str, dValueOf.doubleValue())));
        }
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel
    public final void K0(String str) {
        this.f56884b.a(DistantRepairTrackingUiModelKt.b(DistantRepairTrackingUiModel.DeclineRepairClickedEvent.f57429a));
        BuildersKt.c(ViewModelKt.a(this), null, null, new DistantRepairAssessmentViewModelImpl$declineAssessment$1(this, str, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel
    public final Flow L() {
        return FlowKt.y(this.N);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel
    public final void L6(CareServiceDetailUiModel careServiceDetailUiModel) {
        BuildersKt.c(ViewModelKt.a(this), null, null, new DistantRepairAssessmentViewModelImpl$confirmAddress$1(this, new Ref$ObjectRef(), careServiceDetailUiModel, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel
    public final void L8(String str) {
        str.getClass();
        this.P = str;
        CareServiceIdUiModel.f64059c.getClass();
        if (str.equals(CareServiceIdUiModel.d)) {
            str = null;
        }
        if (str != null) {
            this.p = this.d.a(this.o, CareServicesMonitoring.Action.ViewEstimate.f48872a);
            M3();
        }
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel
    public final void M3() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new DistantRepairAssessmentViewModelImpl$getAssessmentDetail$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel
    public final void N0() {
        this.f56884b.a(DistantRepairTrackingUiModelKt.b(DistantRepairTrackingUiModel.AssessmentConfirmClickedEvent.f57423a));
        BuildersKt.c(ViewModelKt.a(this), null, null, new DistantRepairAssessmentViewModelImpl$acceptAssessment$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel
    public final Flow P0() {
        return FlowKt.y(this.L);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel
    public final void S(int i2) {
        BuildersKt.c(ViewModelKt.a(this), null, null, new DistantRepairAssessmentViewModelImpl$getPayByLinkUrl$1(this, i2, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel
    public final void T8(AddressUiModel addressUiModel, CareServiceDetailUiModel careServiceDetailUiModel) {
        BuildersKt.c(ViewModelKt.a(this), null, null, new DistantRepairAssessmentViewModelImpl$updateSelectedAddress$1(this, careServiceDetailUiModel, addressUiModel, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel
    public final Flow V() {
        return FlowKt.y(this.M);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getH() {
        return this.H;
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel
    public final Flow b() {
        return FlowKt.y(this.q);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel
    public final void b6(String str) {
        BuildersKt.c(ViewModelKt.a(this), null, null, new DistantRepairAssessmentViewModelImpl$getAddresses$1(this, str, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel
    public final void c() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new DistantRepairAssessmentViewModelImpl$setUserChatConsentEnabled$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel
    public final void d(DistantRepairTrackingUiModel distantRepairTrackingUiModel) {
        this.f56884b.a(DistantRepairTrackingUiModelKt.b(distantRepairTrackingUiModel));
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel
    public final Flow i() {
        return this.m.i();
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel
    public final void l7(String str, String str2) throws IOException {
        String lowerCase;
        str.getClass();
        MutableStateFlow mutableStateFlow = this.y;
        Object obj = null;
        if (str2 == null || str2.length() == 0) {
            List list = this.O;
            if (list != null) {
                if (list.isEmpty()) {
                    list = null;
                }
                if (list != null) {
                    for (Object obj2 : list) {
                        String str3 = ((AddressUiModel) obj2).f52679j;
                        if (str3 != null) {
                            StringBuilder sb = new StringBuilder();
                            int length = str3.length();
                            for (int i2 = 0; i2 < length; i2++) {
                                char cCharAt = str3.charAt(i2);
                                if (Character.isLetterOrDigit(cCharAt)) {
                                    sb.append(cCharAt);
                                }
                            }
                            lowerCase = sb.toString().toLowerCase(Locale.ROOT);
                            lowerCase.getClass();
                        } else {
                            lowerCase = null;
                        }
                        StringBuilder sb2 = new StringBuilder();
                        int length2 = str.length();
                        for (int i3 = 0; i3 < length2; i3++) {
                            char cCharAt2 = str.charAt(i3);
                            if (Character.isLetterOrDigit(cCharAt2)) {
                                sb2.append(cCharAt2);
                            }
                        }
                        String lowerCase2 = sb2.toString().toLowerCase(Locale.ROOT);
                        lowerCase2.getClass();
                        if (Intrinsics.c(lowerCase, lowerCase2)) {
                            obj = obj2;
                            break;
                        }
                    }
                    obj = (AddressUiModel) obj;
                }
            }
            mutableStateFlow.setValue(obj);
        } else {
            List list2 = this.O;
            if (list2 != null) {
                if (list2.isEmpty()) {
                    list2 = null;
                }
                if (list2 != null) {
                    for (Object obj3 : list2) {
                        if (Intrinsics.c(((AddressUiModel) obj3).f52673b, str2)) {
                            obj = obj3;
                            break;
                        }
                    }
                    obj = (AddressUiModel) obj;
                }
            }
            mutableStateFlow.setValue(obj);
        }
        this.z.setValue(mutableStateFlow.getValue());
        Application application = this.f13405a;
        application.getClass();
        Ec(application);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel
    public final void m(Step step) {
        step.getClass();
        int i2 = WhenMappings.f56894a[step.ordinal()];
        MutableStateFlow mutableStateFlow = this.u;
        if (i2 == 1) {
            AssessmentStateUIModel assessmentStateUIModel = (AssessmentStateUIModel) mutableStateFlow.getValue();
            StepState stepState = StepState.EDIT;
            StepState stepState2 = StepState.DISABLED;
            FormState formState = FormState.MODIFY;
            assessmentStateUIModel.getClass();
            mutableStateFlow.setValue(AssessmentStateUIModel.a(stepState, stepState2, stepState2, formState));
            return;
        }
        AnalyticsTracker analyticsTracker = this.f56884b;
        if (i2 == 2) {
            analyticsTracker.a(DistantRepairTrackingUiModelKt.b(DistantRepairTrackingUiModel.AcceptEstimateClickedEvent.f57420a));
            AssessmentStateUIModel assessmentStateUIModel2 = (AssessmentStateUIModel) mutableStateFlow.getValue();
            StepState stepState3 = StepState.READ;
            StepState stepState4 = StepState.EDIT;
            StepState stepState5 = StepState.DISABLED;
            FormState formState2 = FormState.MODIFY;
            assessmentStateUIModel2.getClass();
            mutableStateFlow.setValue(AssessmentStateUIModel.a(stepState3, stepState4, stepState5, formState2));
            return;
        }
        if (i2 == 3) {
            analyticsTracker.a(DistantRepairTrackingUiModelKt.b(DistantRepairTrackingUiModel.SendNextButtonClickedEvent.f57463a));
            AssessmentStateUIModel assessmentStateUIModel3 = (AssessmentStateUIModel) mutableStateFlow.getValue();
            StepState stepState6 = StepState.READ;
            StepState stepState7 = StepState.EDIT;
            FormState formState3 = FormState.MODIFY;
            assessmentStateUIModel3.getClass();
            mutableStateFlow.setValue(AssessmentStateUIModel.a(stepState6, stepState6, stepState7, formState3));
            return;
        }
        if (i2 != 4) {
            v40.g();
            return;
        }
        analyticsTracker.a(DistantRepairTrackingUiModelKt.b(DistantRepairTrackingUiModel.ReceiveNextButtonClickedEvent.f57441a));
        AssessmentStateUIModel assessmentStateUIModel4 = (AssessmentStateUIModel) mutableStateFlow.getValue();
        StepState stepState8 = StepState.READ;
        FormState formState4 = FormState.CONFIRM;
        assessmentStateUIModel4.getClass();
        mutableStateFlow.setValue(AssessmentStateUIModel.a(stepState8, stepState8, stepState8, formState4));
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel
    public final boolean o0(String str) {
        String str2 = this.Q;
        if (str2 != null) {
            return Intrinsics.c(str2, str);
        }
        return false;
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel
    public final Flow r0() {
        return FlowKt.y(this.K);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel
    public final void t7() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new DistantRepairAssessmentViewModelImpl$getUserFirstName$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel
    public final void v0(String str) {
        str.getClass();
        List list = (List) this.x.getValue();
        Object obj = null;
        if (list != null) {
            if (list.isEmpty()) {
                list = null;
            }
            if (list != null) {
                for (Object obj2 : list) {
                    if (Intrinsics.c(((AddressUiModel) obj2).f52673b, str)) {
                        obj = obj2;
                        break;
                    }
                }
                obj = (AddressUiModel) obj;
            }
        }
        this.y.setValue(obj);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel
    public final Flow w0() {
        return FlowKt.y(this.J);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel
    public final String z1() {
        AddressUiModel addressUiModel = ((AssessmentViewState) this.H.getValue()).g;
        String str = addressUiModel != null ? addressUiModel.f52673b : null;
        return str == null ? "" : str;
    }
}
