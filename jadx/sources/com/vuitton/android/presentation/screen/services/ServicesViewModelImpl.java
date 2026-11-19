package com.vuitton.android.presentation.screen.services;

import android.app.Application;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.usecase.account.CheckEligibilityForPassUseCase;
import com.vuitton.android.domain.usecase.account.GetProfileUseCase;
import com.vuitton.android.domain.usecase.account.accessibility.GetAccessibilityValueUseCase;
import com.vuitton.android.domain.usecase.booking.GetBookingsUseCase;
import com.vuitton.android.domain.usecase.careservices.GetCareServiceListUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.osa.GetOnlineStoreAppointmentListUseCase;
import com.vuitton.android.domain.usecase.personalselections.GetPersonalSelectionsListUseCase;
import com.vuitton.android.presentation.contact.ContactUsDelegate;
import com.vuitton.android.presentation.contact.ContactUsMode;
import com.vuitton.android.presentation.contact.models.ContactUsOrigin;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusUiModel;
import com.vuitton.android.presentation.screen.osa.OsaRoutesName;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceMapperKt;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceUiModel;
import com.vuitton.android.presentation.screen.services.models.ServicesFeatureFlags;
import com.vuitton.android.presentation.screen.services.models.ServicesImmersiveArticlesKey;
import com.vuitton.android.presentation.screen.services.models.ServicesNavigationEvent;
import com.vuitton.android.presentation.screen.services.models.ServicesTrackingUiModel;
import com.vuitton.android.presentation.screen.services.models.ServicesUrls;
import com.vuitton.android.presentation.screen.services.models.ServicesViewState;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.account.accessibility.AccessibilityPreferenceType;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.authentication.LoginState;
import com.vuitton.foundation.model.domain.model.chat.ChatProductModel;
import com.vuitton.foundation.model.domain.model.chat.ScreenType;
import com.vuitton.foundation.model.domain.model.config.AppConfig;
import com.vuitton.foundation.model.domain.model.config.HelpConfig;
import com.vuitton.foundation.model.domain.model.config.ServicesConfig;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.osa.OnlineStoreAppointments;
import com.vuitton.foundation.model.domain.model.personalselections.PersonalSelections;
import defpackage.md;
import defpackage.v40;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0089\u0001\b\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\u001e\u001a\u00020\u0003\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!¢\u0006\u0004\b#\u0010$¨\u0006%"}, d2 = {"Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl;", "Landroidx/lifecycle/AndroidViewModel;", "Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;", "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;", "Landroid/app/Application;", "application", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "userSessionService", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListUseCase;", "getCareServiceListUseCase", "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;", "getProfileUseCase", "Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;", "getOnlineStoreAppointmentListUseCase", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsListUseCase;", "getPersonalSelectionsListUseCase", "Lcom/vuitton/android/domain/usecase/booking/GetBookingsUseCase;", "getBookingsUseCase", "contactUsDelegate", "Lcom/vuitton/android/domain/usecase/account/CheckEligibilityForPassUseCase;", "checkEligibilityForPassUseCase", "Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;", "getAccessibilityValueUseCase", "<init>", "(Landroid/app/Application;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsListUseCase;Lcom/vuitton/android/domain/usecase/booking/GetBookingsUseCase;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/domain/usecase/account/CheckEligibilityForPassUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ServicesViewModelImpl extends AndroidViewModel implements ServicesViewModel, ContactUsDelegate {
    public final MutableStateFlow A;
    public final MutableStateFlow B;
    public final SharedFlowImpl C;
    public final SharedFlow D;
    public final StateFlow E;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Logger f64304b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Monitor f64305c;
    public final UserSessionService d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AnalyticsTracker f64306e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f64307f;
    public final GetCareServiceListUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final GetProfileUseCase f64308h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final GetOnlineStoreAppointmentListUseCase f64309i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final GetPersonalSelectionsListUseCase f64310j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final GetBookingsUseCase f64311k;
    public final ContactUsDelegate l;
    public final CheckEligibilityForPassUseCase m;
    public final InAppDispatch n;
    public final boolean o;
    public final MutableStateFlow p;
    public final MutableStateFlow q;
    public final MutableStateFlow r;
    public final MutableStateFlow s;
    public final MutableStateFlow t;
    public final MutableStateFlow u;
    public final MutableStateFlow v;
    public final MutableStateFlow w;
    public final MutableStateFlow x;
    public final MutableStateFlow y;
    public final MutableStateFlow z;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.services.ServicesViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.services.ServicesViewModelImpl$1", f = "ServicesViewModelImpl.kt", l = {346}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f64312b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ ServicesViewModelImpl f64313c;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.services.ServicesViewModelImpl$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "state", "Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.services.ServicesViewModelImpl$1$1", f = "ServicesViewModelImpl.kt", l = {147}, m = "invokeSuspend", v = 2)
        final class C03171 extends SuspendLambda implements Function2<LoginState, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f64314b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public /* synthetic */ Object f64315c;
            public final /* synthetic */ ServicesViewModelImpl d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C03171(Continuation continuation, ServicesViewModelImpl servicesViewModelImpl) {
                super(2, continuation);
                this.d = servicesViewModelImpl;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                C03171 c03171 = new C03171(continuation, this.d);
                c03171.f64315c = obj;
                return c03171;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C03171) create((LoginState) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                LoginState loginState = (LoginState) this.f64315c;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f64314b;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    ServicesViewModelImpl servicesViewModelImpl = this.d;
                    servicesViewModelImpl.q.setValue(Boolean.valueOf(loginState.a()));
                    if (loginState.a() && ((ServicesFeatureFlags) servicesViewModelImpl.u.getValue()).f64377e) {
                        BuildersKt.c(ViewModelKt.a(servicesViewModelImpl), null, null, new ServicesViewModelImpl$checkEligibilityForPass$1(null, servicesViewModelImpl), 3);
                    }
                    this.f64315c = null;
                    this.f64314b = 1;
                    if (ServicesViewModelImpl.Bc(servicesViewModelImpl, this) == coroutineSingletons) {
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

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Continuation continuation, ServicesViewModelImpl servicesViewModelImpl) {
            super(2, continuation);
            this.f64313c = servicesViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(continuation, this.f64313c);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f64312b;
            if (i2 == 0) {
                ResultKt.b(obj);
                ServicesViewModelImpl servicesViewModelImpl = this.f64313c;
                StateFlow stateFlow = servicesViewModelImpl.d.g;
                C03171 c03171 = new C03171(null, servicesViewModelImpl);
                stateFlow.getClass();
                this.f64312b = 1;
                if (FlowKt.g(stateFlow, c03171, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            md.k("SharedFlow never completes, this call should never return.");
            return null;
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.services.ServicesViewModelImpl$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.services.ServicesViewModelImpl$2", f = "ServicesViewModelImpl.kt", l = {155}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f64316b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ ServicesViewModelImpl f64317c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Continuation continuation, ServicesViewModelImpl servicesViewModelImpl) {
            super(2, continuation);
            this.f64317c = servicesViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass2(continuation, this.f64317c);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            ContactUsDelegate contactUsDelegate = this.f64317c.l;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f64316b;
            if (i2 == 0) {
                ResultKt.b(obj);
                contactUsDelegate.f8(ContactUsMode.DEFAULT);
                this.f64316b = 1;
                if (contactUsDelegate.M1(null, this) == coroutineSingletons) {
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public ServicesViewModelImpl(Application application, Logger logger, Monitor monitor, UserSessionService userSessionService, AnalyticsTracker analyticsTracker, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, GetCareServiceListUseCase getCareServiceListUseCase, GetProfileUseCase getProfileUseCase, GetOnlineStoreAppointmentListUseCase getOnlineStoreAppointmentListUseCase, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, GetPersonalSelectionsListUseCase getPersonalSelectionsListUseCase, GetBookingsUseCase getBookingsUseCase, ContactUsDelegate contactUsDelegate, CheckEligibilityForPassUseCase checkEligibilityForPassUseCase, GetAccessibilityValueUseCase getAccessibilityValueUseCase) {
        super(application);
        application.getClass();
        logger.getClass();
        monitor.getClass();
        userSessionService.getClass();
        analyticsTracker.getClass();
        requireUserInAppDispatchUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        getCareServiceListUseCase.getClass();
        getProfileUseCase.getClass();
        getOnlineStoreAppointmentListUseCase.getClass();
        requireCachedAppConfigUseCase.getClass();
        getPersonalSelectionsListUseCase.getClass();
        getBookingsUseCase.getClass();
        contactUsDelegate.getClass();
        checkEligibilityForPassUseCase.getClass();
        getAccessibilityValueUseCase.getClass();
        this.f64304b = logger;
        this.f64305c = monitor;
        this.d = userSessionService;
        this.f64306e = analyticsTracker;
        this.f64307f = isFeatureAvailableUseCase;
        this.g = getCareServiceListUseCase;
        this.f64308h = getProfileUseCase;
        this.f64309i = getOnlineStoreAppointmentListUseCase;
        this.f64310j = getPersonalSelectionsListUseCase;
        this.f64311k = getBookingsUseCase;
        this.l = contactUsDelegate;
        this.m = checkEligibilityForPassUseCase;
        InAppDispatch inAppDispatchB = requireUserInAppDispatchUseCase.f49912a.b();
        this.n = inAppDispatchB;
        Object objA = getAccessibilityValueUseCase.a(AccessibilityPreferenceType.SIMPLIFY_NAVIGATION);
        Boolean bool = Boolean.FALSE;
        Result.Companion companion = Result.INSTANCE;
        this.o = ((Boolean) (objA instanceof Result.Failure ? bool : objA)).booleanValue();
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(bool);
        this.p = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(bool);
        this.q = mutableStateFlowA2;
        this.r = StateFlowKt.a(null);
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(null);
        this.s = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(null);
        this.t = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(new ServicesFeatureFlags(false, false, false, false, false, 31, null));
        this.u = mutableStateFlowA5;
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(EmptyList.f71768b);
        this.v = mutableStateFlowA6;
        MutableStateFlow mutableStateFlowA7 = StateFlowKt.a(null);
        this.w = mutableStateFlowA7;
        MutableStateFlow mutableStateFlowA8 = StateFlowKt.a(0);
        this.x = mutableStateFlowA8;
        MutableStateFlow mutableStateFlowA9 = StateFlowKt.a(0);
        this.y = mutableStateFlowA9;
        MutableStateFlow mutableStateFlowA10 = StateFlowKt.a(null);
        this.z = mutableStateFlowA10;
        MutableStateFlow mutableStateFlowA11 = StateFlowKt.a(bool);
        this.A = mutableStateFlowA11;
        MutableStateFlow mutableStateFlowA12 = StateFlowKt.a(null);
        this.B = mutableStateFlowA12;
        SharedFlowImpl sharedFlowImplB = SharedFlowKt.b(0, 1, null, 5);
        this.C = sharedFlowImplB;
        this.D = FlowKt.a(sharedFlowImplB);
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA5, mutableStateFlowA6, mutableStateFlowA7, mutableStateFlowA8, mutableStateFlowA9, mutableStateFlowA4, mutableStateFlowA10, contactUsDelegate.i(), mutableStateFlowA12, mutableStateFlowA11};
        Flow<ServicesViewState> flow = new Flow<ServicesViewState>() { // from class: com.vuitton.android.presentation.screen.services.ServicesViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.services.ServicesViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.services.ServicesViewModelImpl$special$$inlined$combine$1$3", f = "ServicesViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super ServicesViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f64352b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f64353c;
                public /* synthetic */ Object[] d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ ServicesViewModelImpl f64354e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass3(Continuation continuation, ServicesViewModelImpl servicesViewModelImpl) {
                    super(3, continuation);
                    this.f64354e = servicesViewModelImpl;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3, this.f64354e);
                    anonymousClass3.f64353c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f64353c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f64352b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        ServicesViewModelImpl servicesViewModelImpl = this.f64354e;
                        InAppDispatch inAppDispatch = servicesViewModelImpl.n;
                        boolean z = servicesViewModelImpl.o;
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                        Object obj3 = objArr[1];
                        obj3.getClass();
                        boolean zBooleanValue2 = ((Boolean) obj3).booleanValue();
                        ServicesUrls servicesUrls = (ServicesUrls) objArr[2];
                        Object obj4 = objArr[3];
                        obj4.getClass();
                        ServicesFeatureFlags servicesFeatureFlags = (ServicesFeatureFlags) obj4;
                        Object obj5 = objArr[4];
                        obj5.getClass();
                        List list = (List) obj5;
                        PersonalSelections personalSelections = (PersonalSelections) objArr[5];
                        Object obj6 = objArr[6];
                        obj6.getClass();
                        int iIntValue = ((Integer) obj6).intValue();
                        Object obj7 = objArr[7];
                        obj7.getClass();
                        int iIntValue2 = ((Integer) obj7).intValue();
                        Object obj8 = objArr[8];
                        obj8.getClass();
                        ServicesImmersiveArticlesKey servicesImmersiveArticlesKey = (ServicesImmersiveArticlesKey) obj8;
                        String str = (String) objArr[9];
                        Object obj9 = objArr[10];
                        obj9.getClass();
                        String str2 = (String) objArr[11];
                        Object obj10 = objArr[12];
                        obj10.getClass();
                        ServicesViewState servicesViewState = new ServicesViewState(inAppDispatch, zBooleanValue, zBooleanValue2, ((Boolean) obj10).booleanValue(), str, servicesUrls, servicesImmersiveArticlesKey, servicesFeatureFlags, list, personalSelections, iIntValue, iIntValue2, (ContactUsUiModel) obj9, str2, z);
                        this.f64353c = null;
                        this.d = null;
                        this.f64352b = 1;
                        if (flowCollector.emit(servicesViewState, this) == coroutineSingletons) {
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
                Object objA2 = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.services.ServicesViewModelImpl$special$$inlined$combine$1.2
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return new Object[flowArr2.length];
                    }
                }, new AnonymousClass3(null, this), flowCollector, flowArr2);
                return objA2 == CoroutineSingletons.COROUTINE_SUSPENDED ? objA2 : Unit.f71739a;
            }
        };
        CloseableCoroutineScope closeableCoroutineScopeA = ViewModelKt.a(this);
        SharingStarted.f74985a.getClass();
        this.E = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new ServicesViewState(inAppDispatchB, false, false, false, null, null, null, null, null, null, 0, 0, null, null, false, 32766, null));
        BuildersKt.c(ViewModelKt.a(this), null, null, new ServicesViewModelImpl$retrieveFeatureFlags$1(null, this), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(null, this), 3);
        AppConfig appConfigA = requireCachedAppConfigUseCase.a();
        String str = appConfigA.g;
        ServicesConfig servicesConfig = appConfigA.R;
        String str2 = servicesConfig != null ? servicesConfig.f67277a : null;
        String str3 = servicesConfig != null ? servicesConfig.f67278b : null;
        HelpConfig helpConfig = appConfigA.I;
        mutableStateFlowA3.setValue(new ServicesUrls(str, str2, str3, helpConfig != null ? helpConfig.f67261a : null, helpConfig != null ? helpConfig.f67262b : null, helpConfig != null ? helpConfig.f67263c : null, helpConfig != null ? helpConfig.d : null, helpConfig != null ? helpConfig.f67264e : null));
        mutableStateFlowA4.setValue(new ServicesImmersiveArticlesKey(servicesConfig != null ? servicesConfig.f67279c : null, servicesConfig != null ? servicesConfig.d : null));
        mutableStateFlowA12.setValue(appConfigA.Q.f67250k);
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass2(null, this), 3);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object Ac(ServicesViewModelImpl servicesViewModelImpl, ContinuationImpl continuationImpl) {
        ServicesViewModelImpl$getPersonalSelectionsList$1 servicesViewModelImpl$getPersonalSelectionsList$1;
        Object objA;
        if (continuationImpl instanceof ServicesViewModelImpl$getPersonalSelectionsList$1) {
            servicesViewModelImpl$getPersonalSelectionsList$1 = (ServicesViewModelImpl$getPersonalSelectionsList$1) continuationImpl;
            int i2 = servicesViewModelImpl$getPersonalSelectionsList$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                servicesViewModelImpl$getPersonalSelectionsList$1.d = i2 - Integer.MIN_VALUE;
            } else {
                servicesViewModelImpl$getPersonalSelectionsList$1 = new ServicesViewModelImpl$getPersonalSelectionsList$1(servicesViewModelImpl, continuationImpl);
            }
        } else {
            servicesViewModelImpl$getPersonalSelectionsList$1 = new ServicesViewModelImpl$getPersonalSelectionsList$1(servicesViewModelImpl, continuationImpl);
        }
        Object obj = servicesViewModelImpl$getPersonalSelectionsList$1.f64324b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = servicesViewModelImpl$getPersonalSelectionsList$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            GetPersonalSelectionsListUseCase getPersonalSelectionsListUseCase = servicesViewModelImpl.f64310j;
            servicesViewModelImpl$getPersonalSelectionsList$1.d = 1;
            objA = getPersonalSelectionsListUseCase.a(servicesViewModelImpl$getPersonalSelectionsList$1);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            servicesViewModelImpl.w.setValue((PersonalSelections) objA);
        }
        Throwable thA = Result.a(objA);
        if (thA != null) {
            servicesViewModelImpl.f64304b.c("ServicesViewModelImpl", "Unable to retrieve personal selection list", thA);
        }
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x004f, code lost:
    
        if (r7 == r1) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object Bc(com.vuitton.android.presentation.screen.services.ServicesViewModelImpl r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            boolean r0 = r7 instanceof com.vuitton.android.presentation.screen.services.ServicesViewModelImpl$retrieveProfile$1
            if (r0 == 0) goto L13
            r0 = r7
            com.vuitton.android.presentation.screen.services.ServicesViewModelImpl$retrieveProfile$1 r0 = (com.vuitton.android.presentation.screen.services.ServicesViewModelImpl$retrieveProfile$1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            com.vuitton.android.presentation.screen.services.ServicesViewModelImpl$retrieveProfile$1 r0 = new com.vuitton.android.presentation.screen.services.ServicesViewModelImpl$retrieveProfile$1
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.f64346b
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.d
            r3 = 0
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L39
            if (r2 == r5) goto L35
            if (r2 != r4) goto L2f
            kotlin.ResultKt.b(r7)
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r7 = r7.f71708b
            goto L52
        L2f:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            return r3
        L35:
            kotlin.ResultKt.b(r7)
            goto L47
        L39:
            kotlin.ResultKt.b(r7)
            com.vuitton.android.domain.usecase.account.GetProfileUseCase r7 = r6.f64308h
            r0.d = r5
            java.lang.Object r7 = r7.a(r0)
            if (r7 != r1) goto L47
            goto L51
        L47:
            com.vuitton.foundation.model.domain.model.common.ResultStrategy r7 = (com.vuitton.foundation.model.domain.model.common.ResultStrategy) r7
            r0.d = r4
            java.lang.Object r7 = r7.c(r0)
            if (r7 != r1) goto L52
        L51:
            return r1
        L52:
            kotlin.Result$Companion r0 = kotlin.Result.INSTANCE
            boolean r0 = r7 instanceof kotlin.Result.Failure
            if (r0 != 0) goto L74
            r0 = r7
            com.vuitton.foundation.model.domain.model.profile.Profile r0 = (com.vuitton.foundation.model.domain.model.profile.Profile) r0
            kotlinx.coroutines.flow.MutableStateFlow r1 = r6.r
            r1.setValue(r0)
            kotlinx.coroutines.flow.MutableStateFlow r1 = r6.z
            java.lang.String r0 = r0.s
            r1.setValue(r0)
            androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope r0 = androidx.lifecycle.ViewModelKt.a(r6)
            com.vuitton.android.presentation.screen.services.ServicesViewModelImpl$initCounters$1 r1 = new com.vuitton.android.presentation.screen.services.ServicesViewModelImpl$initCounters$1
            r1.<init>(r3, r6)
            r2 = 3
            kotlinx.coroutines.BuildersKt.c(r0, r3, r3, r1, r2)
        L74:
            java.lang.Throwable r7 = kotlin.Result.a(r7)
            if (r7 == 0) goto L82
            com.vuitton.foundation.logger.Logger r6 = r6.f64304b
            r7.getMessage()
            r6.getClass()
        L82:
            kotlin.Unit r6 = kotlin.Unit.f71739a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.services.ServicesViewModelImpl.Bc(com.vuitton.android.presentation.screen.services.ServicesViewModelImpl, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object yc(ServicesViewModelImpl servicesViewModelImpl, ContinuationImpl continuationImpl) {
        ServicesViewModelImpl$getCareServiceList$1 servicesViewModelImpl$getCareServiceList$1;
        Object objA;
        if (continuationImpl instanceof ServicesViewModelImpl$getCareServiceList$1) {
            servicesViewModelImpl$getCareServiceList$1 = (ServicesViewModelImpl$getCareServiceList$1) continuationImpl;
            int i2 = servicesViewModelImpl$getCareServiceList$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                servicesViewModelImpl$getCareServiceList$1.d = i2 - Integer.MIN_VALUE;
            } else {
                servicesViewModelImpl$getCareServiceList$1 = new ServicesViewModelImpl$getCareServiceList$1(servicesViewModelImpl, continuationImpl);
            }
        } else {
            servicesViewModelImpl$getCareServiceList$1 = new ServicesViewModelImpl$getCareServiceList$1(servicesViewModelImpl, continuationImpl);
        }
        Object obj = servicesViewModelImpl$getCareServiceList$1.f64320b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = servicesViewModelImpl$getCareServiceList$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            GetCareServiceListUseCase getCareServiceListUseCase = servicesViewModelImpl.g;
            servicesViewModelImpl$getCareServiceList$1.d = 1;
            objA = getCareServiceListUseCase.a(servicesViewModelImpl$getCareServiceList$1);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            ArrayList arrayListB = CareServiceMapperKt.b((List) objA, false);
            MutableStateFlow mutableStateFlow = servicesViewModelImpl.x;
            ArrayList arrayList = new ArrayList();
            for (Object obj2 : arrayListB) {
                RepairStatusUiModel repairStatusUiModel = ((CareServiceUiModel) obj2).f63996e;
                if (repairStatusUiModel != RepairStatusUiModel.CANCELLED && repairStatusUiModel != RepairStatusUiModel.PRELIMINARY_ASSESSMENT_DEC && repairStatusUiModel != RepairStatusUiModel.HISTORY && repairStatusUiModel != RepairStatusUiModel.DELIVERED_TO_CLIENT) {
                    arrayList.add(obj2);
                }
            }
            mutableStateFlow.setValue(new Integer(arrayList.size()));
        }
        Throwable thA = Result.a(objA);
        if (thA != null) {
            servicesViewModelImpl.f64304b.c("ServicesViewModelImpl", "Unable to retrieve care services list", thA);
        }
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object zc(ServicesViewModelImpl servicesViewModelImpl, ContinuationImpl continuationImpl) {
        ServicesViewModelImpl$getOngoingAppointmentCounter$1 servicesViewModelImpl$getOngoingAppointmentCounter$1;
        Object objA;
        if (continuationImpl instanceof ServicesViewModelImpl$getOngoingAppointmentCounter$1) {
            servicesViewModelImpl$getOngoingAppointmentCounter$1 = (ServicesViewModelImpl$getOngoingAppointmentCounter$1) continuationImpl;
            int i2 = servicesViewModelImpl$getOngoingAppointmentCounter$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                servicesViewModelImpl$getOngoingAppointmentCounter$1.d = i2 - Integer.MIN_VALUE;
            } else {
                servicesViewModelImpl$getOngoingAppointmentCounter$1 = new ServicesViewModelImpl$getOngoingAppointmentCounter$1(servicesViewModelImpl, continuationImpl);
            }
        } else {
            servicesViewModelImpl$getOngoingAppointmentCounter$1 = new ServicesViewModelImpl$getOngoingAppointmentCounter$1(servicesViewModelImpl, continuationImpl);
        }
        Object obj = servicesViewModelImpl$getOngoingAppointmentCounter$1.f64322b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = servicesViewModelImpl$getOngoingAppointmentCounter$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            GetOnlineStoreAppointmentListUseCase getOnlineStoreAppointmentListUseCase = servicesViewModelImpl.f64309i;
            servicesViewModelImpl$getOngoingAppointmentCounter$1.d = 1;
            objA = getOnlineStoreAppointmentListUseCase.a(servicesViewModelImpl$getOngoingAppointmentCounter$1);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            servicesViewModelImpl.y.setValue(new Integer(((OnlineStoreAppointments) objA).f67770a.size()));
        }
        Throwable thA = Result.a(objA);
        if (thA != null) {
            servicesViewModelImpl.f64304b.c("ServicesViewModelImpl", "Unable to retrieve online store appointments list", thA);
        }
        return Unit.f71739a;
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void B(ChatProductModel chatProductModel, int i2, int i3) {
        chatProductModel.getClass();
        this.l.B(chatProductModel, i2, i3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void C(ScreenType screenType) {
        screenType.getClass();
        this.l.C(screenType);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object E5(Continuation continuation) {
        return this.l.E5(continuation);
    }

    @Override // com.vuitton.android.presentation.screen.services.ServicesViewModel
    public final void H9() {
        L7(ServicesTrackingUiModel.BookAppointmentEvent.f64383a);
        boolean z = ((ServicesFeatureFlags) this.u.getValue()).f64375b;
        boolean zBooleanValue = ((Boolean) this.q.getValue()).booleanValue();
        SharedFlowImpl sharedFlowImpl = this.C;
        if (!zBooleanValue) {
            sharedFlowImpl.a(new ServicesNavigationEvent.ToOsa(OsaRoutesName.LOGIN, z));
        } else if (z) {
            BuildersKt.c(ViewModelKt.a(this), null, null, new ServicesViewModelImpl$onAppointmentsClicked$1(null, this), 3);
        } else {
            sharedFlowImpl.a(new ServicesNavigationEvent.ToOsa(OsaRoutesName.LIST, false));
        }
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void I(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.l.I(chatProductModel, i2);
    }

    @Override // com.vuitton.android.presentation.screen.services.ServicesViewModel
    public final void L7(ServicesTrackingUiModel servicesTrackingUiModel) {
        Hit defaultEventHit;
        servicesTrackingUiModel.getClass();
        if (servicesTrackingUiModel.equals(ServicesTrackingUiModel.ServicesScreen.f64397a)) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/services", "Services", "services", null, 17, null);
        } else if (servicesTrackingUiModel.equals(ServicesTrackingUiModel.BookAppointmentEvent.f64383a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/services", "book_appointment", "services", "navigation", null, null, 97, null);
        } else if (servicesTrackingUiModel.equals(ServicesTrackingUiModel.RequestRepairEvent.f64396a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/services", "request_repair", "services", "navigation", null, null, 97, null);
        } else if (servicesTrackingUiModel.equals(ServicesTrackingUiModel.OpenStoreLocatorEvent.f64395a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/services", "find_store", "services", "navigation", null, null, 97, null);
        } else if (servicesTrackingUiModel.equals(ServicesTrackingUiModel.OpenArtOfGiftingEvent.f64387a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/services", "art_gifting", "services", "navigation", null, null, 97, null);
        } else if (servicesTrackingUiModel.equals(ServicesTrackingUiModel.OpenPersonalizationEvent.f64394a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/services", "personalization", "services", "navigation", null, null, 97, null);
        } else if (servicesTrackingUiModel.equals(ServicesTrackingUiModel.OpenContactUsEvent.f64389a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/services", "contact_us", "services", "navigation", null, null, 97, null);
        } else if (servicesTrackingUiModel.equals(ServicesTrackingUiModel.OpenFaqEvent.f64390a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/services", "faq", "services", "navigation", null, null, 97, null);
        } else if (servicesTrackingUiModel.equals(ServicesTrackingUiModel.OpenCareServiceEvent.f64388a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/services", "care_services", "services", "navigation", null, null, 97, null);
        } else if (servicesTrackingUiModel.equals(ServicesTrackingUiModel.OpenPersonalSelectionEvent.f64393a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "services", "my_personal_selection", "services", "click", null, null, 97, null);
        } else if (servicesTrackingUiModel.equals(ServicesTrackingUiModel.OpenMyLVEvent.f64392a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "services", "open_myLV", "services", "click", null, null, 97, null);
        } else if (servicesTrackingUiModel.equals(ServicesTrackingUiModel.OpenLVPassEvent.f64391a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "services", "open_lvpass", "services", "click", null, null, 97, null);
        } else if (!(servicesTrackingUiModel instanceof ServicesTrackingUiModel.ExpansionListToggleEvent)) {
            v40.g();
            return;
        } else {
            ServicesTrackingUiModel.ExpansionListToggleEvent expansionListToggleEvent = (ServicesTrackingUiModel.ExpansionListToggleEvent) servicesTrackingUiModel;
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "services", expansionListToggleEvent.f64386c ? "expand_panel_info" : "collapse_panel_info", "services", "click", null, CollectionsKt.P(new AdditionalProperty.ContentId(String.valueOf(expansionListToggleEvent.f64384a)), new AdditionalProperty.ModuleId(expansionListToggleEvent.f64385b)), 33, null);
        }
        this.f64306e.a(defaultEventHit);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object M1(ContactUsOrigin contactUsOrigin, Continuation continuation) {
        return this.l.M1(contactUsOrigin, continuation);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void Q0() {
        this.l.Q0();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final Object S0(Continuation continuation) {
        return this.l.S0(continuation);
    }

    @Override // com.vuitton.android.presentation.screen.services.ServicesViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getE() {
        return this.E;
    }

    @Override // com.vuitton.android.presentation.screen.services.ServicesViewModel
    public final void c() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new ServicesViewModelImpl$setUserChatConsentEnabled$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void f8(ContactUsMode contactUsMode) {
        contactUsMode.getClass();
        this.l.f8(contactUsMode);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Flow i() {
        return this.l.i();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final void m4(StringResourceUiModel stringResourceUiModel) {
        this.l.m4(stringResourceUiModel);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void r(ChatProductModel chatProductModel) {
        chatProductModel.getClass();
        this.l.r(chatProductModel);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void s() {
        this.l.s();
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void v(String str, String str2) {
        this.l.v(str, str2);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate
    public final Object vc(Continuation continuation) {
        return this.l.vc(continuation);
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void x(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        this.l.x(chatProductModel, i2);
    }

    @Override // com.vuitton.android.presentation.screen.services.ServicesViewModel
    /* JADX INFO: renamed from: y, reason: from getter */
    public final SharedFlow getD() {
        return this.D;
    }

    @Override // com.vuitton.android.presentation.contact.ContactUsDelegate, com.vuitton.android.presentation.chat.consent.ChatConsentDelegate
    public final void z() {
        this.l.z();
    }
}
