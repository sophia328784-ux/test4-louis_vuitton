package com.vuitton.android.presentation.screen.authentication.login;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import androidx.navigation.SavedStateHandleKt;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.monitoring.authentication.NativeLoginMonitoring;
import com.vuitton.android.domain.usecase.account.GetContactIdUseCase;
import com.vuitton.android.domain.usecase.account.UpdateContactIdUseCase;
import com.vuitton.android.domain.usecase.analytics.tools.appsflyer.SetAppsFlyerCustomerIdUseCase;
import com.vuitton.android.domain.usecase.authentication.oauth.NativeLoginUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ReportDYLoginEventUseCase;
import com.vuitton.android.domain.usecase.forms.GetAuthenticationFormUseCase;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.push.NotificationsManager;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerTracker;
import com.vuitton.android.presentation.screen.authentication.common.validation.EmailValidationRules;
import com.vuitton.android.presentation.screen.authentication.common.validation.FormPasswordValidationRules;
import com.vuitton.android.presentation.screen.authentication.login.models.NativeLoginTrackingUiModel;
import com.vuitton.android.presentation.screen.authentication.login.models.NativeLoginUiModel;
import com.vuitton.android.presentation.screen.authentication.login.models.NativeLoginViewState;
import com.vuitton.android.presentation.screen.dynamicform.DynamicFormSupervisor;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.analytics.HitType;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.profile.Profile;
import defpackage.md;
import defpackage.rq;
import defpackage.v40;
import java.util.LinkedHashMap;
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
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Job;
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
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0099\u0001\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%¢\u0006\u0004\b'\u0010(¨\u0006)"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModel;", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;", "appsFlyerTracker", "Lcom/vuitton/android/domain/usecase/authentication/oauth/NativeLoginUseCase;", "nativeLoginUseCase", "Lcom/vuitton/android/presentation/screen/authentication/common/validation/EmailValidationRules;", "emailValidationRules", "Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;", "passwordValidationRules", "Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;", "loginFormSupervisor", "Lcom/vuitton/android/domain/usecase/forms/GetAuthenticationFormUseCase;", "getAuthenticationFormUseCase", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYLoginEventUseCase;", "reportDYLoginEventUseCase", "Lcom/vuitton/android/presentation/push/NotificationsManager;", "notificationsManager", "Lcom/vuitton/android/domain/usecase/account/GetContactIdUseCase;", "getContactIdUseCase", "Lcom/vuitton/android/domain/usecase/account/UpdateContactIdUseCase;", "updateContactIdUseCase", "Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/SetAppsFlyerCustomerIdUseCase;", "setAppsFlyerCustomerIdUseCase", "<init>", "(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/usecase/authentication/oauth/NativeLoginUseCase;Lcom/vuitton/android/presentation/screen/authentication/common/validation/EmailValidationRules;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/domain/usecase/forms/GetAuthenticationFormUseCase;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYLoginEventUseCase;Lcom/vuitton/android/presentation/push/NotificationsManager;Lcom/vuitton/android/domain/usecase/account/GetContactIdUseCase;Lcom/vuitton/android/domain/usecase/account/UpdateContactIdUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/SetAppsFlyerCustomerIdUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class NativeLoginViewModelImpl extends ViewModel implements NativeLoginViewModel {
    public final StateFlow A;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f53598a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Monitor f53599b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AppsFlyerTracker f53600c;
    public final NativeLoginUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final EmailValidationRules f53601e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FormPasswordValidationRules f53602f;
    public final DynamicFormSupervisor g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final GetAuthenticationFormUseCase f53603h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LVEventSender f53604i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AnalyticsTracker f53605j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final NotificationBuilder f53606k;
    public final ReportDYLoginEventUseCase l;
    public final NotificationsManager m;
    public final GetContactIdUseCase n;
    public final UpdateContactIdUseCase o;
    public final SetAppsFlyerCustomerIdUseCase p;
    public final InAppDispatch q;
    public final BufferedChannel r;
    public final Flow s;
    public final BufferedChannel t;
    public final Flow u;
    public final String v;
    public final MutableStateFlow w;
    public final MutableStateFlow x;
    public final MutableStateFlow y;
    public final LinkedHashMap z;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f53607a;

        static {
            int[] iArr = new int[FormSectionTypeUiModel.values().length];
            try {
                iArr[FormSectionTypeUiModel.EMAIL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FormSectionTypeUiModel.PASSWORD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f53607a = iArr;
        }
    }

    @Inject
    public NativeLoginViewModelImpl(RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, SavedStateHandle savedStateHandle, Logger logger, Monitor monitor, AppsFlyerTracker appsFlyerTracker, NativeLoginUseCase nativeLoginUseCase, EmailValidationRules emailValidationRules, FormPasswordValidationRules formPasswordValidationRules, DynamicFormSupervisor dynamicFormSupervisor, GetAuthenticationFormUseCase getAuthenticationFormUseCase, LVEventSender lVEventSender, AnalyticsTracker analyticsTracker, NotificationBuilder notificationBuilder, ReportDYLoginEventUseCase reportDYLoginEventUseCase, NotificationsManager notificationsManager, GetContactIdUseCase getContactIdUseCase, UpdateContactIdUseCase updateContactIdUseCase, SetAppsFlyerCustomerIdUseCase setAppsFlyerCustomerIdUseCase) {
        requireUserInAppDispatchUseCase.getClass();
        savedStateHandle.getClass();
        logger.getClass();
        monitor.getClass();
        appsFlyerTracker.getClass();
        nativeLoginUseCase.getClass();
        emailValidationRules.getClass();
        formPasswordValidationRules.getClass();
        dynamicFormSupervisor.getClass();
        getAuthenticationFormUseCase.getClass();
        lVEventSender.getClass();
        analyticsTracker.getClass();
        notificationBuilder.getClass();
        reportDYLoginEventUseCase.getClass();
        notificationsManager.getClass();
        getContactIdUseCase.getClass();
        updateContactIdUseCase.getClass();
        setAppsFlyerCustomerIdUseCase.getClass();
        this.f53598a = logger;
        this.f53599b = monitor;
        this.f53600c = appsFlyerTracker;
        this.d = nativeLoginUseCase;
        this.f53601e = emailValidationRules;
        this.f53602f = formPasswordValidationRules;
        this.g = dynamicFormSupervisor;
        this.f53603h = getAuthenticationFormUseCase;
        this.f53604i = lVEventSender;
        this.f53605j = analyticsTracker;
        this.f53606k = notificationBuilder;
        this.l = reportDYLoginEventUseCase;
        this.m = notificationsManager;
        this.n = getContactIdUseCase;
        this.o = updateContactIdUseCase;
        this.p = setAppsFlyerCustomerIdUseCase;
        this.q = requireUserInAppDispatchUseCase.f49912a.b();
        BufferedChannel bufferedChannelA = ChannelKt.a(0, 7, null);
        this.r = bufferedChannelA;
        this.s = FlowKt.y(bufferedChannelA);
        BufferedChannel bufferedChannelA2 = ChannelKt.a(0, 7, null);
        this.t = bufferedChannelA2;
        this.u = FlowKt.y(bufferedChannelA2);
        String str = ((NativeLoginRoute.Login) SavedStateHandleKt.a(savedStateHandle, Reflection.f71922a.b(NativeLoginRoute.Login.class), MapsKt.c())).f53596a;
        this.v = str;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(new NativeLoginUiModel(str, null, false, 6, null));
        this.w = mutableStateFlowA;
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(bool);
        this.x = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(bool);
        this.y = mutableStateFlowA3;
        this.z = new LinkedHashMap();
        final Flow[] flowArr = {mutableStateFlowA, dynamicFormSupervisor.getF57468c(), mutableStateFlowA2, mutableStateFlowA3};
        Flow<NativeLoginViewState> flow = new Flow<NativeLoginViewState>() { // from class: com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModelImpl$special$$inlined$combine$1$3", f = "NativeLoginViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super NativeLoginViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f53620b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f53621c;
                public /* synthetic */ Object[] d;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3);
                    anonymousClass3.f53621c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f53621c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f53620b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        Object obj3 = objArr[1];
                        obj3.getClass();
                        Object obj4 = objArr[2];
                        obj4.getClass();
                        boolean zBooleanValue = ((Boolean) obj4).booleanValue();
                        Object obj5 = objArr[3];
                        obj5.getClass();
                        NativeLoginViewState nativeLoginViewState = new NativeLoginViewState((NativeLoginUiModel) obj2, (FormUiModel) obj3, zBooleanValue, ((Boolean) obj5).booleanValue());
                        this.f53621c = null;
                        this.d = null;
                        this.f53620b = 1;
                        if (flowCollector.emit(nativeLoginViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModelImpl$special$$inlined$combine$1.2
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
        this.A = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new NativeLoginViewState(null, null, false, false, 15, null));
        BuildersKt.c(ViewModelKt.a(this), null, null, new NativeLoginViewModelImpl$loadAuthenticationForm$1(this, null), 3);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object yc(NativeLoginViewModelImpl nativeLoginViewModelImpl, ContinuationImpl continuationImpl) {
        NativeLoginViewModelImpl$updateContactId$1 nativeLoginViewModelImpl$updateContactId$1;
        Object objA;
        nativeLoginViewModelImpl.getClass();
        if (continuationImpl instanceof NativeLoginViewModelImpl$updateContactId$1) {
            nativeLoginViewModelImpl$updateContactId$1 = (NativeLoginViewModelImpl$updateContactId$1) continuationImpl;
            int i2 = nativeLoginViewModelImpl$updateContactId$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                nativeLoginViewModelImpl$updateContactId$1.d = i2 - Integer.MIN_VALUE;
            } else {
                nativeLoginViewModelImpl$updateContactId$1 = new NativeLoginViewModelImpl$updateContactId$1(nativeLoginViewModelImpl, continuationImpl);
            }
        } else {
            nativeLoginViewModelImpl$updateContactId$1 = new NativeLoginViewModelImpl$updateContactId$1(nativeLoginViewModelImpl, continuationImpl);
        }
        Object obj = nativeLoginViewModelImpl$updateContactId$1.f53622b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = nativeLoginViewModelImpl$updateContactId$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            GetContactIdUseCase getContactIdUseCase = nativeLoginViewModelImpl.n;
            nativeLoginViewModelImpl$updateContactId$1.d = 1;
            objA = getContactIdUseCase.a(nativeLoginViewModelImpl$updateContactId$1);
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
            String str = ((Profile.ContactId) objA).f68174a;
            nativeLoginViewModelImpl.o.f49061a.e(str);
            nativeLoginViewModelImpl.m.m(str);
            SetAppsFlyerCustomerIdUseCase setAppsFlyerCustomerIdUseCase = nativeLoginViewModelImpl.p;
            setAppsFlyerCustomerIdUseCase.f49219a.b(setAppsFlyerCustomerIdUseCase.f49220b.b());
        }
        Throwable thA = Result.a(objA);
        if (thA != null) {
            nativeLoginViewModelImpl.f53598a.c("NativeLoginViewModelImpl", thA.getMessage(), null);
        }
        return Unit.f71739a;
    }

    @Override // com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModel
    public final void P6(NativeLoginTrackingUiModel nativeLoginTrackingUiModel) {
        Hit defaultEventHit;
        if (nativeLoginTrackingUiModel.equals(NativeLoginTrackingUiModel.NativeLoginScreen.f53684a)) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "identification_login", "identification_login", "mylv_native_authentification", null, 17, null);
        } else if (nativeLoginTrackingUiModel.equals(NativeLoginTrackingUiModel.OnHitForgetPasswordEvent.f53685a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "mylv_native_authentification", "forgot_password", "mylv_native", "create_new_password", "mylv_native_authentification", null, 65, null);
        } else if (nativeLoginTrackingUiModel.equals(NativeLoginTrackingUiModel.OnLoginClickEvent.f53686a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "mylv_native_authentification", "sign_in_intention", "mylv_native", "i_already_have_an_account", "mylv_native_authentification", null, 65, null);
        } else if (nativeLoginTrackingUiModel.equals(NativeLoginTrackingUiModel.OnLoginSuccessEvent.f53688a)) {
            defaultEventHit = new Hit.EventHit.DefaultEventHit(HitType.Login.f66514a, "mylv_native_authentification", "login_successful", "mylv_native", "i_already_have_an_account", "mylv_native_authentification", null, 64, null);
        } else {
            if (!nativeLoginTrackingUiModel.equals(NativeLoginTrackingUiModel.OnLoginFailureEvent.f53687a)) {
                v40.g();
                return;
            }
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "mylv_native_authentification", "login_failed", "mylv_native", "i_already_have_an_account", "mylv_native_authentification", null, 65, null);
        }
        this.f53605j.a(defaultEventHit);
    }

    @Override // com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getA() {
        return this.A;
    }

    @Override // com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModel
    /* JADX INFO: renamed from: b, reason: from getter */
    public final Flow getS() {
        return this.s;
    }

    @Override // com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModel
    public final void c7(NativeLoginUiModel nativeLoginUiModel) {
        DynatraceMonitorAction dynatraceMonitorActionA = this.f53599b.a(this.q, NativeLoginMonitoring.Action.LogIn.f48826a);
        LinkedHashMap linkedHashMap = this.z;
        Job job = (Job) linkedHashMap.get("loginJob");
        if (job == null || !job.isActive()) {
            linkedHashMap.put("loginJob", BuildersKt.c(ViewModelKt.a(this), null, null, new NativeLoginViewModelImpl$login$1(nativeLoginUiModel, this, dynatraceMonitorActionA, null), 3));
        }
    }

    @Override // com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModel
    public final void f(FormSectionTypeUiModel formSectionTypeUiModel, Object obj) {
        formSectionTypeUiModel.getClass();
        int i2 = WhenMappings.f53607a[formSectionTypeUiModel.ordinal()];
        boolean z = false;
        MutableStateFlow mutableStateFlow = this.w;
        if (i2 == 1) {
            EmailValidationRules emailValidationRules = this.f53601e;
            emailValidationRules.f53487a = false;
            emailValidationRules.f53488b = null;
            mutableStateFlow.setValue(NativeLoginUiModel.a((NativeLoginUiModel) mutableStateFlow.getValue(), obj.toString(), false, 6));
        } else if (i2 == 2 && obj.toString().length() == 0) {
            ((NativeLoginUiModel) mutableStateFlow.getValue()).f53690b.c();
        }
        rq rqVar = new rq(9);
        DynamicFormSupervisor dynamicFormSupervisor = this.g;
        dynamicFormSupervisor.j(formSectionTypeUiModel, obj, rqVar);
        NativeLoginUiModel nativeLoginUiModel = (NativeLoginUiModel) mutableStateFlow.getValue();
        if (((FormUiModel) dynamicFormSupervisor.getF57468c().getValue()).i() && !StringsKt.w(((NativeLoginUiModel) mutableStateFlow.getValue()).f53689a)) {
            z = true;
        }
        mutableStateFlow.setValue(NativeLoginUiModel.a(nativeLoginUiModel, null, z, 3));
    }

    @Override // com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModel
    /* JADX INFO: renamed from: k, reason: from getter */
    public final Flow getU() {
        return this.u;
    }
}
