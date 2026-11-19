package com.vuitton.android.presentation.screen.distantrepairs.assessment.bff;

import android.app.Application;
import android.content.Context;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.R;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.careservices.CareServicesMonitoring;
import com.vuitton.android.domain.usecase.account.GetProfileUseCase;
import com.vuitton.android.domain.usecase.account.address.GetAddressListUseCase;
import com.vuitton.android.domain.usecase.careservices.AcceptCareServiceBffUseCase;
import com.vuitton.android.domain.usecase.careservices.CancelCareServiceBffUseCase;
import com.vuitton.android.domain.usecase.careservices.ConfirmCareServiceAddressBffUseCase;
import com.vuitton.android.domain.usecase.careservices.GetCareServiceDetailBffUseCase;
import com.vuitton.android.domain.usecase.careservices.UpdateCareServiceAddressBffUseCase;
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
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentBffStateUIModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentBffViewState;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModelKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PriceSpecificationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.PriceUiModel;
import com.vuitton.android.presentation.screen.repairs.models.DistantRepairsConfigUiModel;
import com.vuitton.android.presentation.screen.repairs.models.DistantRepairsConfigUiModelKt;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceId;
import com.vuitton.foundation.model.domain.model.chat.ScreenType;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.md;
import defpackage.v40;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
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
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
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
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001+B¡\u0001\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020'¢\u0006\u0004\b)\u0010*¨\u0006,"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl;", "Landroidx/lifecycle/AndroidViewModel;", "Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;", "Landroid/app/Application;", "application", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lkotlinx/serialization/json/Json;", "json", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceDetailBffUseCase;", "getCareServiceDetailBffUseCase", "Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceAddressBffUseCase;", "updateCareServiceAddressBffUseCase", "Lcom/vuitton/android/domain/usecase/careservices/ConfirmCareServiceAddressBffUseCase;", "confirmCareServiceAddressBffUseCase", "Lcom/vuitton/android/domain/usecase/careservices/AcceptCareServiceBffUseCase;", "acceptCareServiceBffUseCase", "Lcom/vuitton/android/domain/usecase/careservices/CancelCareServiceBffUseCase;", "cancelCareServiceBffUseCase", "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;", "getProfileUseCase", "Lcom/vuitton/android/domain/usecase/account/address/GetAddressListUseCase;", "getAddressListUseCase", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;", "contactUsDelegate", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "<init>", "(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceDetailBffUseCase;Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceAddressBffUseCase;Lcom/vuitton/android/domain/usecase/careservices/ConfirmCareServiceAddressBffUseCase;Lcom/vuitton/android/domain/usecase/careservices/AcceptCareServiceBffUseCase;Lcom/vuitton/android/domain/usecase/careservices/CancelCareServiceBffUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/account/address/GetAddressListUseCase;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/presentation/notification/NotificationBuilder;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DistantRepairAssessmentBffViewModelImpl extends AndroidViewModel implements DistantRepairAssessmentBffViewModel {
    public static final /* synthetic */ int S = 0;
    public final MutableStateFlow A;
    public final MutableStateFlow B;
    public final MutableStateFlow C;
    public final MutableStateFlow D;
    public final MutableStateFlow E;
    public final MutableStateFlow F;
    public final MutableStateFlow G;
    public final MutableStateFlow H;
    public final StateFlow I;
    public final String J;
    public final BufferedChannel K;
    public final BufferedChannel L;
    public final BufferedChannel M;
    public final BufferedChannel N;
    public final BufferedChannel O;
    public List P;
    public String Q;
    public String R;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnalyticsTracker f56960b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Logger f56961c;
    public final Monitor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Json f56962e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RequireCachedAppConfigUseCase f56963f;
    public final IsFeatureAvailableUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final GetCareServiceDetailBffUseCase f56964h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final UpdateCareServiceAddressBffUseCase f56965i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ConfirmCareServiceAddressBffUseCase f56966j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AcceptCareServiceBffUseCase f56967k;
    public final CancelCareServiceBffUseCase l;
    public final GetAddressListUseCase m;
    public final LVEventSender n;
    public final ContactUsDelegate o;
    public final NotificationBuilder p;
    public final InAppDispatch q;
    public MonitorAction r;
    public final BufferedChannel s;
    public final MutableStateFlow t;
    public final MutableStateFlow u;
    public final MutableStateFlow v;
    public final MutableStateFlow w;
    public final MutableStateFlow x;
    public final MutableStateFlow y;
    public final MutableStateFlow z;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModelImpl$1", f = "DistantRepairAssessmentBffViewModelImpl.kt", l = {195}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f56968b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ DistantRepairAssessmentBffViewModelImpl f56969c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Continuation continuation, DistantRepairAssessmentBffViewModelImpl distantRepairAssessmentBffViewModelImpl) {
            super(2, continuation);
            this.f56969c = distantRepairAssessmentBffViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(continuation, this.f56969c);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f56968b;
            if (i2 == 0) {
                ResultKt.b(obj);
                this.f56968b = 1;
                if (DistantRepairAssessmentBffViewModelImpl.Ac(this.f56969c, this) == coroutineSingletons) {
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

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl$Companion;", "", "", "ATTEMPTS_FOR_PBL", "I", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f56970a;

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
            f56970a = iArr;
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public DistantRepairAssessmentBffViewModelImpl(Application application, SavedStateHandle savedStateHandle, AnalyticsTracker analyticsTracker, Logger logger, Monitor monitor, Json json, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, GetCareServiceDetailBffUseCase getCareServiceDetailBffUseCase, UpdateCareServiceAddressBffUseCase updateCareServiceAddressBffUseCase, ConfirmCareServiceAddressBffUseCase confirmCareServiceAddressBffUseCase, AcceptCareServiceBffUseCase acceptCareServiceBffUseCase, CancelCareServiceBffUseCase cancelCareServiceBffUseCase, GetProfileUseCase getProfileUseCase, GetAddressListUseCase getAddressListUseCase, LVEventSender lVEventSender, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, ContactUsDelegate contactUsDelegate, NotificationBuilder notificationBuilder) {
        super(application);
        application.getClass();
        savedStateHandle.getClass();
        analyticsTracker.getClass();
        logger.getClass();
        monitor.getClass();
        json.getClass();
        requireCachedAppConfigUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        getCareServiceDetailBffUseCase.getClass();
        updateCareServiceAddressBffUseCase.getClass();
        confirmCareServiceAddressBffUseCase.getClass();
        acceptCareServiceBffUseCase.getClass();
        cancelCareServiceBffUseCase.getClass();
        getProfileUseCase.getClass();
        getAddressListUseCase.getClass();
        lVEventSender.getClass();
        requireUserInAppDispatchUseCase.getClass();
        contactUsDelegate.getClass();
        notificationBuilder.getClass();
        this.f56960b = analyticsTracker;
        this.f56961c = logger;
        this.d = monitor;
        this.f56962e = json;
        this.f56963f = requireCachedAppConfigUseCase;
        this.g = isFeatureAvailableUseCase;
        this.f56964h = getCareServiceDetailBffUseCase;
        this.f56965i = updateCareServiceAddressBffUseCase;
        this.f56966j = confirmCareServiceAddressBffUseCase;
        this.f56967k = acceptCareServiceBffUseCase;
        this.l = cancelCareServiceBffUseCase;
        this.m = getAddressListUseCase;
        this.n = lVEventSender;
        this.o = contactUsDelegate;
        this.p = notificationBuilder;
        InAppDispatch inAppDispatchB = requireUserInAppDispatchUseCase.f49912a.b();
        this.q = inAppDispatchB;
        this.s = ChannelKt.a(0, 7, null);
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(bool);
        this.t = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(bool);
        this.u = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(bool);
        this.v = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(new AssessmentBffStateUIModel(null, null, null, null, 15, null));
        this.w = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(null);
        this.x = mutableStateFlowA5;
        EmptyList emptyList = EmptyList.f71768b;
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(emptyList);
        this.y = mutableStateFlowA6;
        MutableStateFlow mutableStateFlowA7 = StateFlowKt.a(null);
        this.z = mutableStateFlowA7;
        MutableStateFlow mutableStateFlowA8 = StateFlowKt.a(null);
        this.A = mutableStateFlowA8;
        MutableStateFlow mutableStateFlowA9 = StateFlowKt.a(new String());
        this.B = mutableStateFlowA9;
        MutableStateFlow mutableStateFlowA10 = StateFlowKt.a(new String());
        this.C = mutableStateFlowA10;
        MutableStateFlow mutableStateFlowA11 = StateFlowKt.a(new String());
        this.D = mutableStateFlowA11;
        MutableStateFlow mutableStateFlowA12 = StateFlowKt.a(bool);
        this.E = mutableStateFlowA12;
        MutableStateFlow mutableStateFlowA13 = StateFlowKt.a(bool);
        this.F = mutableStateFlowA13;
        MutableStateFlow mutableStateFlowA14 = StateFlowKt.a(bool);
        this.G = mutableStateFlowA14;
        MutableStateFlow mutableStateFlowA15 = StateFlowKt.a(new DistantRepairsConfigUiModel(null, null, null, null, null, null, null, null, null, 511, null));
        this.H = mutableStateFlowA15;
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA4, mutableStateFlowA5, mutableStateFlowA6, mutableStateFlowA7, mutableStateFlowA8, mutableStateFlowA9, mutableStateFlowA10, mutableStateFlowA11, mutableStateFlowA15, mutableStateFlowA12, mutableStateFlowA13, mutableStateFlowA14};
        Flow<AssessmentBffViewState> flow = new Flow<AssessmentBffViewState>() { // from class: com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModelImpl$special$$inlined$combine$1$3", f = "DistantRepairAssessmentBffViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super AssessmentBffViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f57005b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f57006c;
                public /* synthetic */ Object[] d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ DistantRepairAssessmentBffViewModelImpl f57007e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass3(Continuation continuation, DistantRepairAssessmentBffViewModelImpl distantRepairAssessmentBffViewModelImpl) {
                    super(3, continuation);
                    this.f57007e = distantRepairAssessmentBffViewModelImpl;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3, this.f57007e);
                    anonymousClass3.f57006c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f57006c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f57005b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        InAppDispatch inAppDispatch = this.f57007e.q;
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
                        AssessmentBffStateUIModel assessmentBffStateUIModel = (AssessmentBffStateUIModel) obj5;
                        CareServiceDetailUiModel careServiceDetailUiModel = (CareServiceDetailUiModel) objArr[4];
                        Object obj6 = objArr[5];
                        obj6.getClass();
                        List list = (List) obj6;
                        AddressUiModel addressUiModel = (AddressUiModel) objArr[6];
                        AddressUiModel addressUiModel2 = (AddressUiModel) objArr[7];
                        Object obj7 = objArr[8];
                        obj7.getClass();
                        String str = (String) obj7;
                        Object obj8 = objArr[9];
                        obj8.getClass();
                        String str2 = (String) obj8;
                        Object obj9 = objArr[10];
                        obj9.getClass();
                        String str3 = (String) obj9;
                        Object obj10 = objArr[11];
                        obj10.getClass();
                        DistantRepairsConfigUiModel distantRepairsConfigUiModel = (DistantRepairsConfigUiModel) obj10;
                        Object obj11 = objArr[12];
                        obj11.getClass();
                        boolean zBooleanValue4 = ((Boolean) obj11).booleanValue();
                        Object obj12 = objArr[13];
                        obj12.getClass();
                        boolean zBooleanValue5 = ((Boolean) obj12).booleanValue();
                        Object obj13 = objArr[14];
                        obj13.getClass();
                        AssessmentBffViewState assessmentBffViewState = new AssessmentBffViewState(inAppDispatch, zBooleanValue, assessmentBffStateUIModel, careServiceDetailUiModel, list, addressUiModel, addressUiModel2, str, zBooleanValue2, zBooleanValue3, str2, str3, distantRepairsConfigUiModel, zBooleanValue4, zBooleanValue5, ((Boolean) obj13).booleanValue());
                        this.f57006c = null;
                        this.d = null;
                        this.f57005b = 1;
                        if (flowCollector.emit(assessmentBffViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModelImpl$special$$inlined$combine$1.2
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
        MutableStateFlow mutableStateFlow = mutableStateFlowA15;
        this.I = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new AssessmentBffViewState(inAppDispatchB, true, null, null, null, null, null, null, false, false, null, null, null, false, false, false, 65532, null));
        CareServiceIdUiModel careServiceIdUiModel = (CareServiceIdUiModel) savedStateHandle.a("CARESERVICE_ID");
        this.J = careServiceIdUiModel != null ? careServiceIdUiModel.f64060b : null;
        this.K = ChannelKt.a(0, 7, null);
        this.L = ChannelKt.a(0, 7, null);
        this.M = ChannelKt.a(0, 7, null);
        this.N = ChannelKt.a(0, 7, null);
        this.O = ChannelKt.a(0, 7, null);
        this.P = emptyList;
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(null, this), 3);
        while (true) {
            Object value = mutableStateFlow.getValue();
            MutableStateFlow mutableStateFlow2 = mutableStateFlow;
            if (mutableStateFlow2.i(value, DistantRepairsConfigUiModelKt.a(this.f56963f.a().Q))) {
                break;
            } else {
                mutableStateFlow = mutableStateFlow2;
            }
        }
        Va();
        CareServiceIdUiModel.Companion companion = CareServiceIdUiModel.f64059c;
        String str = this.J;
        companion.getClass();
        str = str == null ? CareServiceIdUiModel.d : str;
        CareServiceIdUiModel.Companion.a(str);
        Ab(str, true);
        this.o.f8(ContactUsMode.DISTANT_CARE);
        this.o.C(ScreenType.DISTANT_CARE);
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
    public static final java.lang.Object Ac(com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModelImpl r10, kotlin.coroutines.jvm.internal.ContinuationImpl r11) {
        /*
            Method dump skipped, instruction units count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModelImpl.Ac(com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModelImpl, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static final Object yc(DistantRepairAssessmentBffViewModelImpl distantRepairAssessmentBffViewModelImpl, SuspendLambda suspendLambda) {
        Object objU = distantRepairAssessmentBffViewModelImpl.s.u(NotificationBuilder.a(distantRepairAssessmentBffViewModelImpl.p, new StringResourceUiModel.ResId(R.string.p12_errormessage_erroroccuredgeneric, null, 2, null), false, null, null, 60), suspendLambda);
        return objU == CoroutineSingletons.COROUTINE_SUSPENDED ? objU : Unit.f71739a;
    }

    public static final Object zc(Continuation continuation, DistantRepairAssessmentBffViewModelImpl distantRepairAssessmentBffViewModelImpl) {
        Object objU = distantRepairAssessmentBffViewModelImpl.s.u(NotificationBuilder.a(distantRepairAssessmentBffViewModelImpl.p, new StringResourceUiModel.ResId(R.string.generic_api_error_message, null, 2, null), false, null, null, 60), continuation);
        return objU == CoroutineSingletons.COROUTINE_SUSPENDED ? objU : Unit.f71739a;
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModel
    public final void A0(AddressUiModel addressUiModel, AddressUiModel addressUiModel2) {
        if (addressUiModel != null) {
            this.z.setValue(addressUiModel);
        }
        if (addressUiModel2 != null) {
            this.A.setValue(addressUiModel2);
        }
        Application application = this.f13405a;
        application.getClass();
        Bc(application);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModel
    public final void Ab(String str, boolean z) {
        this.Q = str;
        if (z) {
            CareServiceId.INSTANCE.getClass();
            if (StringsKt.w(str)) {
                str = null;
            }
            if (str != null) {
                this.r = this.d.a(this.q, CareServicesMonitoring.Action.ViewEstimate.f48872a);
                BuildersKt.c(ViewModelKt.a(this), null, null, new DistantRepairAssessmentBffViewModelImpl$getAssessmentDetail$1(null, this), 3);
            }
        }
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModel
    public final void B0(Step step) {
        step.getClass();
        int i2 = WhenMappings.f56970a[step.ordinal()];
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

    public final void Bc(Context context) {
        String strC;
        AddressUiModel addressUiModel = (AddressUiModel) this.z.getValue();
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
            strC = AddressHelper.c(context, this.f56962e, this.q, str, str2, str4, str6, str8, str9, str10, str12, str14, str15 == null ? "" : str15, "");
        } else {
            strC = null;
        }
        this.B.setValue(strC != null ? strC : "");
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModel
    public final void J0() {
        CareServiceDetailUiModel.Assessment assessment;
        PriceUiModel priceUiModel;
        PriceSpecificationUiModel priceSpecificationUiModel;
        MutableStateFlow mutableStateFlow = this.w;
        AssessmentBffStateUIModel assessmentBffStateUIModel = (AssessmentBffStateUIModel) mutableStateFlow.getValue();
        mutableStateFlow.setValue(AssessmentBffStateUIModel.a(assessmentBffStateUIModel.f57341a, assessmentBffStateUIModel.f57342b, assessmentBffStateUIModel.f57343c, FormState.CONFIRMED));
        CareServiceDetailUiModel careServiceDetailUiModel = (CareServiceDetailUiModel) this.x.getValue();
        if (careServiceDetailUiModel == null || (assessment = careServiceDetailUiModel.l) == null || (priceUiModel = assessment.d) == null || (priceSpecificationUiModel = priceUiModel.f61723c) == null) {
            return;
        }
        this.f56960b.a(DistantRepairTrackingUiModelKt.b(new DistantRepairTrackingUiModel.PreliminaryAssessmentConfirmationScreen(priceSpecificationUiModel.f61720b, priceSpecificationUiModel.f61721c)));
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModel
    public final void K0(String str) {
        this.f56960b.a(DistantRepairTrackingUiModelKt.b(DistantRepairTrackingUiModel.DeclineRepairClickedEvent.f57429a));
        BuildersKt.c(ViewModelKt.a(this), null, null, new DistantRepairAssessmentBffViewModelImpl$declineAssessment$1(this, str, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModel
    public final void K7(AddressUiModel addressUiModel) {
        BuildersKt.c(ViewModelKt.a(this), null, null, new DistantRepairAssessmentBffViewModelImpl$updateSelectedAddress$1(this, addressUiModel, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModel
    public final Flow L() {
        return FlowKt.y(this.O);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModel
    public final void N0() {
        this.f56960b.a(DistantRepairTrackingUiModelKt.b(DistantRepairTrackingUiModel.AssessmentConfirmClickedEvent.f57423a));
        BuildersKt.c(ViewModelKt.a(this), null, null, new DistantRepairAssessmentBffViewModelImpl$acceptAssessment$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModel
    public final Flow P0() {
        return FlowKt.y(this.M);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModel
    public final void S(int i2) {
        BuildersKt.c(ViewModelKt.a(this), null, null, new DistantRepairAssessmentBffViewModelImpl$getPayByLinkUrl$1(this, i2, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModel
    public final void S4() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new DistantRepairAssessmentBffViewModelImpl$confirmAddress$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModel
    public final Flow V() {
        return FlowKt.y(this.N);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModel
    public final void Va() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new DistantRepairAssessmentBffViewModelImpl$getAddresses$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getI() {
        return this.I;
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModel
    public final Flow b() {
        return FlowKt.y(this.s);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModel
    public final void c() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new DistantRepairAssessmentBffViewModelImpl$setUserChatConsentEnabled$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModel
    public final void d(DistantRepairTrackingUiModel distantRepairTrackingUiModel) {
        this.f56960b.a(DistantRepairTrackingUiModelKt.b(distantRepairTrackingUiModel));
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModel
    public final Flow i() {
        return this.o.i();
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModel
    public final void m(Step step) {
        step.getClass();
        int i2 = WhenMappings.f56970a[step.ordinal()];
        MutableStateFlow mutableStateFlow = this.w;
        if (i2 == 1) {
            AssessmentBffStateUIModel assessmentBffStateUIModel = (AssessmentBffStateUIModel) mutableStateFlow.getValue();
            StepState stepState = StepState.EDIT;
            StepState stepState2 = StepState.DISABLED;
            FormState formState = FormState.MODIFY;
            assessmentBffStateUIModel.getClass();
            mutableStateFlow.setValue(AssessmentBffStateUIModel.a(stepState, stepState2, stepState2, formState));
            return;
        }
        AnalyticsTracker analyticsTracker = this.f56960b;
        if (i2 == 2) {
            analyticsTracker.a(DistantRepairTrackingUiModelKt.b(DistantRepairTrackingUiModel.AcceptEstimateClickedEvent.f57420a));
            AssessmentBffStateUIModel assessmentBffStateUIModel2 = (AssessmentBffStateUIModel) mutableStateFlow.getValue();
            StepState stepState3 = StepState.READ;
            StepState stepState4 = StepState.EDIT;
            StepState stepState5 = StepState.DISABLED;
            FormState formState2 = FormState.MODIFY;
            assessmentBffStateUIModel2.getClass();
            mutableStateFlow.setValue(AssessmentBffStateUIModel.a(stepState3, stepState4, stepState5, formState2));
            return;
        }
        if (i2 == 3) {
            analyticsTracker.a(DistantRepairTrackingUiModelKt.b(DistantRepairTrackingUiModel.SendNextButtonClickedEvent.f57463a));
            AssessmentBffStateUIModel assessmentBffStateUIModel3 = (AssessmentBffStateUIModel) mutableStateFlow.getValue();
            StepState stepState6 = StepState.READ;
            StepState stepState7 = StepState.EDIT;
            FormState formState3 = FormState.MODIFY;
            assessmentBffStateUIModel3.getClass();
            mutableStateFlow.setValue(AssessmentBffStateUIModel.a(stepState6, stepState6, stepState7, formState3));
            return;
        }
        if (i2 != 4) {
            v40.g();
            return;
        }
        analyticsTracker.a(DistantRepairTrackingUiModelKt.b(DistantRepairTrackingUiModel.ReceiveNextButtonClickedEvent.f57441a));
        AssessmentBffStateUIModel assessmentBffStateUIModel4 = (AssessmentBffStateUIModel) mutableStateFlow.getValue();
        StepState stepState8 = StepState.READ;
        FormState formState4 = FormState.CONFIRM;
        assessmentBffStateUIModel4.getClass();
        mutableStateFlow.setValue(AssessmentBffStateUIModel.a(stepState8, stepState8, stepState8, formState4));
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModel
    public final boolean o0(String str) {
        String str2 = this.R;
        if (str2 != null) {
            return Intrinsics.c(str2, str);
        }
        return false;
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModel
    public final Flow r0() {
        return FlowKt.y(this.L);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModel
    public final void tb(String str, String str2) throws IOException {
        String lowerCase;
        str.getClass();
        MutableStateFlow mutableStateFlow = this.z;
        Object obj = null;
        if (str2 == null || str2.length() <= 0) {
            List list = this.P;
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
            List list2 = this.P;
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
        this.A.setValue(mutableStateFlow.getValue());
        Application application = this.f13405a;
        application.getClass();
        Bc(application);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModel
    public final void v0(String str) {
        str.getClass();
        List list = (List) this.y.getValue();
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
        this.z.setValue(obj);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModel
    public final Flow w0() {
        return FlowKt.y(this.K);
    }
}
