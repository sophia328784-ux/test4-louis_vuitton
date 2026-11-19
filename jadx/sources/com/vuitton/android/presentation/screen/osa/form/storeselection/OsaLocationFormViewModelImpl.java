package com.vuitton.android.presentation.screen.osa.form.storeselection;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.provider.environment.EnvironmentProvider;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.usecase.account.GetProfileUseCase;
import com.vuitton.android.domain.usecase.account.consent.PatchUserConsentsUseCase;
import com.vuitton.android.domain.usecase.appointment.GetStoreAvailabilityListUseCase;
import com.vuitton.android.domain.usecase.appointment.GetStoreTimeSlotListUseCase;
import com.vuitton.android.domain.usecase.appointment.PrebookAppointmentUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.osa.GetLocatedStoreListUseCase;
import com.vuitton.android.domain.usecase.osa.GetStoreListByCodesUseCase;
import com.vuitton.android.domain.usecase.video.GetLiveVideoUseCase;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.model.location.PlaceGeocodingUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerTracker;
import com.vuitton.android.presentation.screen.authentication.models.AuthenticationTrackingUiModel;
import com.vuitton.android.presentation.screen.authentication.models.AuthenticationTrackingUiModelKt;
import com.vuitton.android.presentation.screen.authentication.welcome.model.LoginContext;
import com.vuitton.android.presentation.screen.authentication.welcome.model.WelcomeViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import com.vuitton.android.presentation.screen.osa.form.storeselection.models.OsaLocationFormViewState;
import com.vuitton.android.presentation.screen.osa.models.AppointmentTypeUiModel;
import com.vuitton.android.presentation.screen.osa.models.OsaFormItemUiModel;
import com.vuitton.android.presentation.screen.osa.models.OsaItemUiModel;
import com.vuitton.android.presentation.screen.osa.models.OsaOriginScreen;
import com.vuitton.android.presentation.screen.osa.models.OsaPrebookResult;
import com.vuitton.android.presentation.screen.osa.tracking.OsaTrackingUiModel;
import com.vuitton.android.presentation.screen.osa.tracking.OsaTrackingUiModelKt;
import com.vuitton.android.presentation.tracking.LoggedUserStatus;
import com.vuitton.android.presentation.tracking.OnlineStoreAppointmentActions;
import com.vuitton.android.presentation.utils.DateTimeUtils;
import com.vuitton.foundation.model.domain.model.account.consent.KisaConsents;
import com.vuitton.foundation.model.domain.model.account.consent.UserConsents;
import com.vuitton.foundation.model.domain.model.authentication.LoginState;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import defpackage.os;
import java.time.LocalDate;
import java.time.format.FormatStyle;
import java.util.List;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
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
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0091\u0001\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#¢\u0006\u0004\b%\u0010&¨\u0006'"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "userSessionService", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;", "environmentProvider", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;", "appsFlyerTracker", "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;", "getProfileUseCase", "Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;", "getLiveVideoUseCase", "Lcom/vuitton/android/domain/usecase/account/consent/PatchUserConsentsUseCase;", "patchUserConsentsUseCase", "Lcom/vuitton/android/domain/usecase/appointment/PrebookAppointmentUseCase;", "prebookAppointmentUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/osa/GetStoreListByCodesUseCase;", "getStoreListByCodesUseCase", "Lcom/vuitton/android/domain/usecase/osa/GetLocatedStoreListUseCase;", "getLocatedStoreListUseCase", "Lcom/vuitton/android/domain/usecase/appointment/GetStoreTimeSlotListUseCase;", "getStoreTimeSlotListUseCase", "Lcom/vuitton/android/domain/usecase/appointment/GetStoreAvailabilityListUseCase;", "getStoreAvailabilityListUseCase", "<init>", "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;Lcom/vuitton/android/domain/usecase/account/consent/PatchUserConsentsUseCase;Lcom/vuitton/android/domain/usecase/appointment/PrebookAppointmentUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/osa/GetStoreListByCodesUseCase;Lcom/vuitton/android/domain/usecase/osa/GetLocatedStoreListUseCase;Lcom/vuitton/android/domain/usecase/appointment/GetStoreTimeSlotListUseCase;Lcom/vuitton/android/domain/usecase/appointment/GetStoreAvailabilityListUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class OsaLocationFormViewModelImpl extends ViewModel implements OsaLocationFormViewModel {
    public final MutableStateFlow A;
    public final MutableStateFlow B;
    public final MutableStateFlow C;
    public final MutableStateFlow D;
    public final MutableStateFlow E;
    public final MutableStateFlow F;
    public final MutableStateFlow G;
    public final MutableStateFlow H;
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
    public final BufferedChannel S;
    public final BufferedChannel T;
    public final StateFlow U;
    public final MutableStateFlow V;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Monitor f60746a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UserSessionService f60747b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final NotificationBuilder f60748c;
    public final EnvironmentProvider d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AnalyticsTracker f60749e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AppsFlyerTracker f60750f;
    public final GetProfileUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final GetLiveVideoUseCase f60751h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final PatchUserConsentsUseCase f60752i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final PrebookAppointmentUseCase f60753j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f60754k;
    public final GetStoreListByCodesUseCase l;
    public final GetLocatedStoreListUseCase m;
    public final GetStoreTimeSlotListUseCase n;
    public final GetStoreAvailabilityListUseCase o;
    public final InAppDispatch p;
    public final String q;
    public List r;
    public OsaPrebookResult s;
    public String t;
    public boolean u;
    public final BufferedChannel v;
    public final MutableStateFlow w;
    public final MutableStateFlow x;
    public final MutableStateFlow y;
    public final MutableStateFlow z;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl$1", f = "OsaLocationFormViewModelImpl.kt", l = {228}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f60755b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ OsaLocationFormViewModelImpl f60756c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Continuation continuation, OsaLocationFormViewModelImpl osaLocationFormViewModelImpl) {
            super(2, continuation);
            this.f60756c = osaLocationFormViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(continuation, this.f60756c);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f60755b;
            if (i2 == 0) {
                ResultKt.b(obj);
                final OsaLocationFormViewModelImpl osaLocationFormViewModelImpl = this.f60756c;
                StateFlow stateFlow = osaLocationFormViewModelImpl.f60747b.g;
                FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl.1.1
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public final Object emit(Object obj2, Continuation continuation) {
                        osaLocationFormViewModelImpl.M.setValue(Boolean.valueOf(!((LoginState) obj2).a()));
                        return Unit.f71739a;
                    }
                };
                this.f60755b = 1;
                if (stateFlow.f(flowCollector, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            os.d();
            return null;
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl$2", f = "OsaLocationFormViewModelImpl.kt", l = {233}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f60758b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f60759c;
        public final /* synthetic */ OsaLocationFormViewModelImpl d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Continuation continuation, OsaLocationFormViewModelImpl osaLocationFormViewModelImpl) {
            super(2, continuation);
            this.d = osaLocationFormViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass2(continuation, this.d);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            MutableStateFlow mutableStateFlow;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f60759c;
            if (i2 == 0) {
                ResultKt.b(obj);
                OsaLocationFormViewModelImpl osaLocationFormViewModelImpl = this.d;
                MutableStateFlow mutableStateFlow2 = osaLocationFormViewModelImpl.N;
                IsFeatureAvailableUseCase isFeatureAvailableUseCase = osaLocationFormViewModelImpl.f60754k;
                Feature[] featureArr = {Feature.OSA_REASONS};
                this.f60758b = mutableStateFlow2;
                this.f60759c = 1;
                obj = isFeatureAvailableUseCase.c(featureArr, false, this);
                if (obj == coroutineSingletons) {
                    return coroutineSingletons;
                }
                mutableStateFlow = mutableStateFlow2;
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                mutableStateFlow = (MutableStateFlow) this.f60758b;
                ResultKt.b(obj);
            }
            mutableStateFlow.setValue(obj);
            return Unit.f71739a;
        }
    }

    @Inject
    public OsaLocationFormViewModelImpl(SavedStateHandle savedStateHandle, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, Monitor monitor, UserSessionService userSessionService, NotificationBuilder notificationBuilder, EnvironmentProvider environmentProvider, AnalyticsTracker analyticsTracker, AppsFlyerTracker appsFlyerTracker, GetProfileUseCase getProfileUseCase, GetLiveVideoUseCase getLiveVideoUseCase, PatchUserConsentsUseCase patchUserConsentsUseCase, PrebookAppointmentUseCase prebookAppointmentUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, GetStoreListByCodesUseCase getStoreListByCodesUseCase, GetLocatedStoreListUseCase getLocatedStoreListUseCase, GetStoreTimeSlotListUseCase getStoreTimeSlotListUseCase, GetStoreAvailabilityListUseCase getStoreAvailabilityListUseCase) {
        savedStateHandle.getClass();
        requireUserInAppDispatchUseCase.getClass();
        monitor.getClass();
        userSessionService.getClass();
        notificationBuilder.getClass();
        environmentProvider.getClass();
        analyticsTracker.getClass();
        appsFlyerTracker.getClass();
        getProfileUseCase.getClass();
        getLiveVideoUseCase.getClass();
        patchUserConsentsUseCase.getClass();
        prebookAppointmentUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        getStoreListByCodesUseCase.getClass();
        getLocatedStoreListUseCase.getClass();
        getStoreTimeSlotListUseCase.getClass();
        getStoreAvailabilityListUseCase.getClass();
        this.f60746a = monitor;
        this.f60747b = userSessionService;
        this.f60748c = notificationBuilder;
        this.d = environmentProvider;
        this.f60749e = analyticsTracker;
        this.f60750f = appsFlyerTracker;
        this.g = getProfileUseCase;
        this.f60751h = getLiveVideoUseCase;
        this.f60752i = patchUserConsentsUseCase;
        this.f60753j = prebookAppointmentUseCase;
        this.f60754k = isFeatureAvailableUseCase;
        this.l = getStoreListByCodesUseCase;
        this.m = getLocatedStoreListUseCase;
        this.n = getStoreTimeSlotListUseCase;
        this.o = getStoreAvailabilityListUseCase;
        InAppDispatch inAppDispatchB = requireUserInAppDispatchUseCase.f49912a.b();
        this.p = inAppDispatchB;
        this.q = (String) savedStateHandle.a("ORIGIN");
        this.v = ChannelKt.a(0, 7, null);
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(new AssetVideoUiModel(null, null, null, null, null, null, null, CertificateBody.profileType, null));
        this.w = mutableStateFlowA;
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(bool);
        this.x = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(bool);
        this.y = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(bool);
        this.z = mutableStateFlowA4;
        EmptyList emptyList = EmptyList.f71768b;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(emptyList);
        this.A = mutableStateFlowA5;
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(null);
        this.B = mutableStateFlowA6;
        MutableStateFlow mutableStateFlowA7 = StateFlowKt.a(emptyList);
        this.C = mutableStateFlowA7;
        MutableStateFlow mutableStateFlowA8 = StateFlowKt.a(emptyList);
        this.D = mutableStateFlowA8;
        MutableStateFlow mutableStateFlowA9 = StateFlowKt.a(emptyList);
        this.E = mutableStateFlowA9;
        MutableStateFlow mutableStateFlowA10 = StateFlowKt.a(null);
        this.F = mutableStateFlowA10;
        MutableStateFlow mutableStateFlowA11 = StateFlowKt.a(null);
        this.G = mutableStateFlowA11;
        MutableStateFlow mutableStateFlowA12 = StateFlowKt.a(null);
        this.H = mutableStateFlowA12;
        MutableStateFlow mutableStateFlowA13 = StateFlowKt.a(null);
        this.I = mutableStateFlowA13;
        MutableStateFlow mutableStateFlowA14 = StateFlowKt.a(null);
        this.J = mutableStateFlowA14;
        MutableStateFlow mutableStateFlowA15 = StateFlowKt.a(null);
        this.K = mutableStateFlowA15;
        MutableStateFlow mutableStateFlowA16 = StateFlowKt.a(bool);
        this.L = mutableStateFlowA16;
        MutableStateFlow mutableStateFlowA17 = StateFlowKt.a(Boolean.valueOf(!userSessionService.b()));
        this.M = mutableStateFlowA17;
        MutableStateFlow mutableStateFlowA18 = StateFlowKt.a(bool);
        this.N = mutableStateFlowA18;
        MutableStateFlow mutableStateFlowA19 = StateFlowKt.a(bool);
        this.O = mutableStateFlowA19;
        MutableStateFlow mutableStateFlowA20 = StateFlowKt.a(bool);
        this.P = mutableStateFlowA20;
        MutableStateFlow mutableStateFlowA21 = StateFlowKt.a(null);
        this.Q = mutableStateFlowA21;
        MutableStateFlow mutableStateFlowA22 = StateFlowKt.a(bool);
        this.R = mutableStateFlowA22;
        this.S = ChannelKt.a(0, 7, null);
        this.T = ChannelKt.a(0, 7, null);
        final Flow[] flowArr = {mutableStateFlowA3, mutableStateFlowA4, mutableStateFlowA5, mutableStateFlowA6, mutableStateFlowA7, mutableStateFlowA8, mutableStateFlowA9, mutableStateFlowA10, mutableStateFlowA11, mutableStateFlowA12, mutableStateFlowA13, mutableStateFlowA14, mutableStateFlowA15, mutableStateFlowA16, mutableStateFlowA17, mutableStateFlowA18, mutableStateFlowA19, mutableStateFlowA20, mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA21, mutableStateFlowA22};
        Flow<OsaLocationFormViewState> flow = new Flow<OsaLocationFormViewState>() { // from class: com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl$special$$inlined$combine$1$3", f = "OsaLocationFormViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super OsaLocationFormViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f60796b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f60797c;
                public /* synthetic */ Object[] d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ OsaLocationFormViewModelImpl f60798e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass3(Continuation continuation, OsaLocationFormViewModelImpl osaLocationFormViewModelImpl) {
                    super(3, continuation);
                    this.f60798e = osaLocationFormViewModelImpl;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3, this.f60798e);
                    anonymousClass3.f60797c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f60797c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f60796b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        InAppDispatch inAppDispatch = this.f60798e.p;
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                        Object obj3 = objArr[1];
                        obj3.getClass();
                        boolean zBooleanValue2 = ((Boolean) obj3).booleanValue();
                        Object obj4 = objArr[2];
                        obj4.getClass();
                        List list = (List) obj4;
                        PlaceGeocodingUiModel placeGeocodingUiModel = (PlaceGeocodingUiModel) objArr[3];
                        Object obj5 = objArr[4];
                        obj5.getClass();
                        List list2 = (List) obj5;
                        Object obj6 = objArr[5];
                        obj6.getClass();
                        List list3 = (List) obj6;
                        Object obj7 = objArr[6];
                        obj7.getClass();
                        List list4 = (List) obj7;
                        LocalDate localDate = (LocalDate) objArr[7];
                        String str = (String) objArr[8];
                        String str2 = (String) objArr[9];
                        AppointmentTypeUiModel appointmentTypeUiModel = (AppointmentTypeUiModel) objArr[10];
                        TimeSlotUiModel timeSlotUiModel = (TimeSlotUiModel) objArr[11];
                        OsaFormItemUiModel osaFormItemUiModel = (OsaFormItemUiModel) objArr[12];
                        Object obj8 = objArr[13];
                        obj8.getClass();
                        boolean zBooleanValue3 = ((Boolean) obj8).booleanValue();
                        Object obj9 = objArr[14];
                        obj9.getClass();
                        boolean zBooleanValue4 = ((Boolean) obj9).booleanValue();
                        Object obj10 = objArr[15];
                        obj10.getClass();
                        boolean zBooleanValue5 = ((Boolean) obj10).booleanValue();
                        Object obj11 = objArr[16];
                        obj11.getClass();
                        boolean zBooleanValue6 = ((Boolean) obj11).booleanValue();
                        Object obj12 = objArr[17];
                        obj12.getClass();
                        boolean zBooleanValue7 = ((Boolean) obj12).booleanValue();
                        Object obj13 = objArr[18];
                        obj13.getClass();
                        AssetVideoUiModel assetVideoUiModel = (AssetVideoUiModel) obj13;
                        Object obj14 = objArr[19];
                        obj14.getClass();
                        boolean zBooleanValue8 = ((Boolean) obj14).booleanValue();
                        String str3 = (String) objArr[20];
                        Object obj15 = objArr[21];
                        obj15.getClass();
                        OsaLocationFormViewState osaLocationFormViewState = new OsaLocationFormViewState(inAppDispatch, zBooleanValue, zBooleanValue2, list, placeGeocodingUiModel, list2, list3, list4, localDate, str, str2, appointmentTypeUiModel, timeSlotUiModel, osaFormItemUiModel, zBooleanValue3, zBooleanValue4, zBooleanValue5, zBooleanValue6, zBooleanValue7, assetVideoUiModel, zBooleanValue8, str3, ((Boolean) obj15).booleanValue());
                        this.f60797c = null;
                        this.d = null;
                        this.f60796b = 1;
                        if (flowCollector.emit(osaLocationFormViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl$special$$inlined$combine$1.2
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
        this.U = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new OsaLocationFormViewState(inAppDispatchB, false, false, null, null, null, null, null, null, null, null, null, null, null, false, false, false, false, false, null, false, null, false, 8388606, null));
        this.V = StateFlowKt.a(new WelcomeViewState(LoginContext.SERVICE, null, false, isFeatureAvailableUseCase.b(new Feature[]{Feature.OSA_GUEST}), false, false, false, 118, null));
        BuildersKt.c(ViewModelKt.a(this), null, null, new OsaLocationFormViewModelImpl$getLoginVideoUrl$1(null, this), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(null, this), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass2(null, this), 3);
    }

    public static final void yc(OsaLocationFormViewModelImpl osaLocationFormViewModelImpl, String str) {
        osaLocationFormViewModelImpl.getClass();
        BuildersKt.c(ViewModelKt.a(osaLocationFormViewModelImpl), null, null, new OsaLocationFormViewModelImpl$showErrorNotification$1(str, osaLocationFormViewModelImpl, null), 3);
    }

    public final void Ac() {
        this.J.setValue(null);
        this.K.setValue(null);
        EmptyList emptyList = EmptyList.f71768b;
        this.C.setValue(emptyList);
        this.E.setValue(emptyList);
        this.G.setValue(null);
    }

    public final void Bc() {
        Object value = this.J.getValue();
        Object value2 = this.I.getValue();
        Object value3 = this.K.getValue();
        if (value == null || value2 == null || value3 == null) {
            return;
        }
        o(new OsaTrackingUiModel.BookAppointmentNextClickedEvent((TimeSlotUiModel) value, (OsaFormItemUiModel) value3, (AppointmentTypeUiModel) value2, ((Boolean) this.O.getValue()).booleanValue()));
    }

    @Override // com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel
    public final void H4(TimeSlotUiModel timeSlotUiModel, OsaFormItemUiModel osaFormItemUiModel) {
        timeSlotUiModel.getClass();
        osaFormItemUiModel.getClass();
        MutableStateFlow mutableStateFlow = this.H;
        boolean zC = Intrinsics.c(mutableStateFlow.getValue(), osaFormItemUiModel.f60914b);
        MutableStateFlow mutableStateFlow2 = this.L;
        if (zC) {
            mutableStateFlow2.setValue(Boolean.TRUE);
        } else {
            mutableStateFlow.setValue(osaFormItemUiModel.f60914b);
            this.I.setValue(null);
            mutableStateFlow2.setValue(Boolean.FALSE);
        }
        this.K.setValue(osaFormItemUiModel);
        this.J.setValue(timeSlotUiModel);
    }

    @Override // com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel
    public final void I0(AuthenticationTrackingUiModel authenticationTrackingUiModel) {
        authenticationTrackingUiModel.getClass();
        if (((Boolean) this.M.getValue()).booleanValue()) {
            this.f60749e.a(AuthenticationTrackingUiModelKt.a(authenticationTrackingUiModel, "MyLV"));
        }
    }

    @Override // com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel
    public final void J5(OsaItemUiModel osaItemUiModel) {
        osaItemUiModel.getClass();
        this.O.setValue(Boolean.TRUE);
        this.t = osaItemUiModel.f60924a;
        BuildersKt.c(ViewModelKt.a(this), null, null, new OsaLocationFormViewModelImpl$initAppointmentToModify$1(this, osaItemUiModel, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel
    public final void J7(String str, AppointmentTypeUiModel appointmentTypeUiModel) {
        str.getClass();
        appointmentTypeUiModel.getClass();
        MutableStateFlow mutableStateFlow = this.H;
        if (!Intrinsics.c(str, mutableStateFlow.getValue())) {
            mutableStateFlow.setValue(str);
            this.K.setValue(null);
        }
        this.L.setValue(Boolean.FALSE);
        this.J.setValue(null);
        this.I.setValue(appointmentTypeUiModel);
    }

    @Override // com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel
    public final Flow M9() {
        return FlowKt.y(this.T);
    }

    @Override // com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel
    public final void Mb() {
        if (this.u || ((Boolean) this.O.getValue()).booleanValue()) {
            return;
        }
        this.u = true;
        this.f60750f.a("OsaLocationFormViewModelImpl", new AppsFlyerEvent.OnlineStoreAppointment(MapsKt.i(new Pair("action", OnlineStoreAppointmentActions.STARTED.getValue()), new Pair("login_status", (this.f60747b.b() ? LoggedUserStatus.LOGGED : LoggedUserStatus.NOT_LOGGED).getValue()))));
    }

    @Override // com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel
    public final StateFlow R0() {
        return this.V;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    @Override // com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel
    public final Object V2(ContinuationImpl continuationImpl) {
        OsaLocationFormViewModelImpl$acceptKisaConsent$1 osaLocationFormViewModelImpl$acceptKisaConsent$1;
        Object value;
        Boolean bool;
        Object value2;
        if (continuationImpl instanceof OsaLocationFormViewModelImpl$acceptKisaConsent$1) {
            osaLocationFormViewModelImpl$acceptKisaConsent$1 = (OsaLocationFormViewModelImpl$acceptKisaConsent$1) continuationImpl;
            int i2 = osaLocationFormViewModelImpl$acceptKisaConsent$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                osaLocationFormViewModelImpl$acceptKisaConsent$1.d = i2 - Integer.MIN_VALUE;
            } else {
                osaLocationFormViewModelImpl$acceptKisaConsent$1 = new OsaLocationFormViewModelImpl$acceptKisaConsent$1(this, continuationImpl);
            }
        } else {
            osaLocationFormViewModelImpl$acceptKisaConsent$1 = new OsaLocationFormViewModelImpl$acceptKisaConsent$1(this, continuationImpl);
        }
        Object obj = osaLocationFormViewModelImpl$acceptKisaConsent$1.f60760b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = osaLocationFormViewModelImpl$acceptKisaConsent$1.d;
        MutableStateFlow mutableStateFlow = this.P;
        if (i3 == 0) {
            ResultKt.b(obj);
            o(OsaTrackingUiModel.KisaConsentConfirmEvent.f61001a);
            do {
                value = mutableStateFlow.getValue();
                ((Boolean) value).getClass();
                bool = Boolean.TRUE;
            } while (!mutableStateFlow.i(value, bool));
            UserConsents userConsents = new UserConsents(new KisaConsents(null, bool, null, null, null, null, null, null), null);
            osaLocationFormViewModelImpl$acceptKisaConsent$1.d = 1;
            if (this.f60752i.a(userConsents, true, osaLocationFormViewModelImpl$acceptKisaConsent$1) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            ((Result) obj).getClass();
        }
        do {
            value2 = mutableStateFlow.getValue();
            ((Boolean) value2).getClass();
        } while (!mutableStateFlow.i(value2, Boolean.FALSE));
        return Unit.f71739a;
    }

    @Override // com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel
    public final void Wb() throws Throwable {
        Object failure;
        Bc();
        if (!((Boolean) this.O.getValue()).booleanValue()) {
            Bc();
            BuildersKt.c(ViewModelKt.a(this), null, null, new OsaLocationFormViewModelImpl$prebookAppointment$1(null, this), 3);
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            Object value = this.J.getValue();
            if (value == null) {
                throw new IllegalArgumentException("Selected time slot cannot be null");
            }
            Object value2 = this.I.getValue();
            if (value2 == null) {
                throw new IllegalArgumentException("Selected appointment type cannot be null");
            }
            failure = new Result(new Pair(value, value2));
            Throwable thA = Result.a(failure);
            if (thA != null) {
                if (thA instanceof CancellationException) {
                    throw thA;
                }
                failure = new Result(new Result.Failure(thA));
            }
            Object obj = ((Result) failure).f71708b;
            if (obj instanceof Result.Failure) {
                return;
            }
            try {
                Pair pair = (Pair) obj;
                TimeSlotUiModel timeSlotUiModel = (TimeSlotUiModel) pair.f71705b;
                AppointmentTypeUiModel appointmentTypeUiModel = (AppointmentTypeUiModel) pair.f71706c;
                BufferedChannel bufferedChannel = this.v;
                Object value3 = this.K.getValue();
                value3.getClass();
                OsaFormItemUiModel osaFormItemUiModel = (OsaFormItemUiModel) value3;
                String str = this.t;
                if (str != null) {
                    bufferedChannel.b(new OsaPrebookResult(osaFormItemUiModel, appointmentTypeUiModel, str, timeSlotUiModel));
                } else {
                    Intrinsics.h("modifyAppointmentId");
                    throw null;
                }
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                new Result.Failure(th);
            }
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            failure = new Result.Failure(th2);
        }
    }

    @Override // com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getU() {
        return this.U;
    }

    @Override // com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel
    public final Flow b() {
        return FlowKt.y(this.S);
    }

    @Override // com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel
    public final void e2() {
        zc(null);
    }

    @Override // com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel
    public final Flow e9() {
        return FlowKt.y(this.v);
    }

    @Override // com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel
    public final void fc(String str, List list, boolean z) {
        this.r = list;
        this.Q.setValue(str);
        this.R.setValue(Boolean.valueOf(z));
        List list2 = this.r;
        if (list2 != null) {
            BuildersKt.c(ViewModelKt.a(this), null, null, new OsaLocationFormViewModelImpl$initVirtualStudioPrefillIfNeeded$1$1(this, list2, null), 3);
        }
    }

    @Override // com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel
    public final void o(OsaTrackingUiModel osaTrackingUiModel) {
        String trackingName = OsaOriginScreen.PDP.getTrackingName();
        String str = this.q;
        this.f60749e.a(OsaTrackingUiModelKt.a(osaTrackingUiModel, this.p, Boolean.valueOf(Intrinsics.c(str, trackingName)), str));
    }

    @Override // com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel
    public final void o8() {
        this.B.setValue(null);
        Ac();
    }

    @Override // com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel
    public final void q1(LocalDate localDate) {
        localDate.getClass();
        this.F.setValue(localDate);
        String string = localDate.toString();
        string.getClass();
        this.G.setValue(DateTimeUtils.t(this.p, string, FormatStyle.SHORT));
        this.L.setValue(Boolean.FALSE);
        this.J.setValue(null);
        o(new OsaTrackingUiModel.BookAppointmentDateSelectionSelectedClickedEvent(localDate, ((Boolean) this.O.getValue()).booleanValue()));
        BuildersKt.c(ViewModelKt.a(this), null, null, new OsaLocationFormViewModelImpl$getStoreTimeSlotList$1(this, localDate, null), 3);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x006a  */
    /* JADX WARN: Code duplicated, block: B:38:0x008e  */
    /* JADX WARN: Code duplicated, block: B:41:0x0094  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0082, code lost:
    
        if (r9 == r1) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00a0, code lost:
    
        if (r9 == r1) goto L43;
     */
    @Override // com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object r2(kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl$shouldShowKisaConsentScreen$1
            if (r0 == 0) goto L13
            r0 = r9
            com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl$shouldShowKisaConsentScreen$1 r0 = (com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl$shouldShowKisaConsentScreen$1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl$shouldShowKisaConsentScreen$1 r0 = new com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl$shouldShowKisaConsentScreen$1
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.f60789b
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.d
            r3 = 4
            r4 = 3
            r5 = 2
            r6 = 1
            r7 = 0
            if (r2 == 0) goto L49
            if (r2 == r6) goto L45
            if (r2 == r5) goto L3d
            if (r2 == r4) goto L39
            if (r2 != r3) goto L32
            kotlin.ResultKt.b(r9)
            goto La3
        L32:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            r8 = 0
            return r8
        L39:
            kotlin.ResultKt.b(r9)
            goto L85
        L3d:
            kotlin.ResultKt.b(r9)
            kotlin.Result r9 = (kotlin.Result) r9
            java.lang.Object r9 = r9.f71708b
            goto L62
        L45:
            kotlin.ResultKt.b(r9)
            goto L57
        L49:
            kotlin.ResultKt.b(r9)
            r0.d = r6
            com.vuitton.android.domain.usecase.account.GetProfileUseCase r9 = r8.g
            java.lang.Object r9 = r9.a(r0)
            if (r9 != r1) goto L57
            goto La2
        L57:
            com.vuitton.foundation.model.domain.model.common.ResultStrategy r9 = (com.vuitton.foundation.model.domain.model.common.ResultStrategy) r9
            r0.d = r5
            java.lang.Object r9 = r9.c(r0)
            if (r9 != r1) goto L62
            goto La2
        L62:
            java.lang.Throwable r2 = kotlin.Result.a(r9)
            com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase r8 = r8.f60754k
            if (r2 != 0) goto L94
            com.vuitton.foundation.model.domain.model.profile.Profile r9 = (com.vuitton.foundation.model.domain.model.profile.Profile) r9
            java.lang.Boolean r9 = r9.o
            if (r9 == 0) goto L8e
            boolean r9 = r9.booleanValue()
            if (r9 != 0) goto L8e
            com.vuitton.foundation.model.domain.model.sync.Feature r9 = com.vuitton.foundation.model.domain.model.sync.Feature.OSA_KISA_V2
            com.vuitton.foundation.model.domain.model.sync.Feature[] r9 = new com.vuitton.foundation.model.domain.model.sync.Feature[]{r9}
            r0.d = r4
            java.lang.Object r9 = r8.c(r9, r7, r0)
            if (r9 != r1) goto L85
            goto La2
        L85:
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r8 = r9.booleanValue()
            if (r8 == 0) goto L8e
            goto L8f
        L8e:
            r6 = r7
        L8f:
            java.lang.Boolean r8 = java.lang.Boolean.valueOf(r6)
            return r8
        L94:
            com.vuitton.foundation.model.domain.model.sync.Feature r9 = com.vuitton.foundation.model.domain.model.sync.Feature.OSA_KISA_V2
            com.vuitton.foundation.model.domain.model.sync.Feature[] r9 = new com.vuitton.foundation.model.domain.model.sync.Feature[]{r9}
            r0.d = r3
            java.lang.Object r9 = r8.c(r9, r7, r0)
            if (r9 != r1) goto La3
        La2:
            return r1
        La3:
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            r9.getClass()
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl.r2(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    @Override // com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel
    public final void r4(PlaceGeocodingUiModel placeGeocodingUiModel) {
        Ac();
        this.B.setValue(placeGeocodingUiModel);
        o(new OsaTrackingUiModel.BookAppointmentLocationSelectionClickedEvent(placeGeocodingUiModel.f51804b, ((Boolean) this.O.getValue()).booleanValue()));
        BuildersKt.c(ViewModelKt.a(this), null, null, new OsaLocationFormViewModelImpl$getLocatedStoreList$1(this, placeGeocodingUiModel, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel
    public final void t() {
        EmptyList emptyList = EmptyList.f71768b;
        this.A.setValue(emptyList);
        this.B.setValue(null);
        this.C.setValue(emptyList);
        this.D.setValue(emptyList);
        this.E.setValue(emptyList);
        this.F.setValue(null);
        this.G.setValue(null);
        this.H.setValue(null);
        this.I.setValue(null);
        this.J.setValue(null);
        this.K.setValue(null);
        Boolean bool = Boolean.FALSE;
        this.L.setValue(bool);
        this.Q.setValue(null);
        this.R.setValue(bool);
        this.O.setValue(bool);
        this.u = false;
    }

    public final void zc(OsaItemUiModel osaItemUiModel) {
        BuildersKt.c(ViewModelKt.a(this), null, null, new OsaLocationFormViewModelImpl$getAvailabilities$1(this, osaItemUiModel, null), 3);
    }
}
