package com.vuitton.android.presentation.screen.osa.form.contactinformation;

import android.app.Application;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.usecase.account.GetAccountStatusUseCase;
import com.vuitton.android.domain.usecase.account.GetProfileUseCase;
import com.vuitton.android.domain.usecase.appointment.ConfirmAppointmentUseCase;
import com.vuitton.android.domain.usecase.appointment.ModifyAppointmentUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.forms.GetGuestAppointmentFormUseCase;
import com.vuitton.android.domain.usecase.forms.mapping.GetAddressCivilitiesMappingUseCase;
import com.vuitton.android.domain.usecase.osa.CancelAppointmentUseCase;
import com.vuitton.android.domain.usecase.osa.GetOnlineStoreAppointmentListUseCase;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.account.addresseditor.validation.PhoneValidationRules;
import com.vuitton.android.presentation.screen.account.profile.AccountStatusUiModel;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerTracker;
import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import com.vuitton.android.presentation.screen.dynamicform.DynamicFormSupervisor;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.models.OsaContactFormViewState;
import com.vuitton.android.presentation.screen.osa.models.AppointmentTypeUiModel;
import com.vuitton.android.presentation.screen.osa.models.FormTypeUiModel;
import com.vuitton.android.presentation.screen.osa.models.OsaFormItemUiModel;
import com.vuitton.android.presentation.screen.osa.models.OsaItemUiModel;
import com.vuitton.android.presentation.screen.osa.models.OsaOriginScreen;
import com.vuitton.android.presentation.screen.osa.models.OsaPrebookResult;
import com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonUiModel;
import com.vuitton.android.presentation.screen.osa.tracking.OsaTrackingUiModel;
import com.vuitton.android.presentation.screen.osa.tracking.OsaTrackingUiModelKt;
import com.vuitton.android.presentation.tracking.LoggedUserStatus;
import com.vuitton.android.presentation.tracking.OnlineStoreAppointmentActions;
import com.vuitton.foundation.model.domain.model.authentication.LoginState;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.profile.Profile;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import defpackage.os;
import defpackage.rq;
import defpackage.v40;
import java.util.LinkedHashMap;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.collections.builders.MapBuilder;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
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
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002BÁ\u0001\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0017\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0015\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020'\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u0010,\u001a\u00020+\u0012\u0006\u0010.\u001a\u00020-¢\u0006\u0004\b/\u00100¨\u00061"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;", "Landroidx/lifecycle/AndroidViewModel;", "Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;", "Landroid/app/Application;", "application", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lkotlinx/serialization/json/Json;", "json", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "userSessionService", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules;", "phoneValidationRules", "Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;", "loggedUserFormSupervisor", "guestUserMainFormSupervisor", "guestUserEmailFormSupervisor", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;", "appsFlyerTracker", "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;", "getProfileUseCase", "Lcom/vuitton/android/domain/usecase/account/GetAccountStatusUseCase;", "getAccountStatusUseCase", "Lcom/vuitton/android/domain/usecase/osa/CancelAppointmentUseCase;", "cancelAppointmentUseCase", "Lcom/vuitton/android/domain/usecase/appointment/ModifyAppointmentUseCase;", "modifyAppointmentUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/appointment/ConfirmAppointmentUseCase;", "confirmAppointmentUseCase", "Lcom/vuitton/android/domain/usecase/forms/GetGuestAppointmentFormUseCase;", "getGuestAppointmentFormUseCase", "Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;", "getAddressCivilitiesMappingUseCase", "Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;", "getOnlineStoreAppointmentListUseCase", "<init>", "(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/account/GetAccountStatusUseCase;Lcom/vuitton/android/domain/usecase/osa/CancelAppointmentUseCase;Lcom/vuitton/android/domain/usecase/appointment/ModifyAppointmentUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/appointment/ConfirmAppointmentUseCase;Lcom/vuitton/android/domain/usecase/forms/GetGuestAppointmentFormUseCase;Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class OsaContactFormViewModelImpl extends AndroidViewModel implements OsaContactFormViewModel {
    public final SharedFlowImpl A;
    public final SharedFlow B;
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
    public final LinkedHashMap T;
    public final StateFlow U;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Json f60624b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Monitor f60625c;
    public final LVEventSender d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final UserSessionService f60626e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final NotificationBuilder f60627f;
    public final PhoneValidationRules g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final DynamicFormSupervisor f60628h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final DynamicFormSupervisor f60629i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final DynamicFormSupervisor f60630j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AnalyticsTracker f60631k;
    public final AppsFlyerTracker l;
    public final GetProfileUseCase m;
    public final GetAccountStatusUseCase n;
    public final CancelAppointmentUseCase o;
    public final ModifyAppointmentUseCase p;
    public final IsFeatureAvailableUseCase q;
    public final ConfirmAppointmentUseCase r;
    public final GetGuestAppointmentFormUseCase s;
    public final GetAddressCivilitiesMappingUseCase t;
    public final GetOnlineStoreAppointmentListUseCase u;
    public final InAppDispatch v;
    public final MutableStateFlow w;
    public final String x;
    public final String y;
    public List z;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl$1", f = "OsaContactFormViewModelImpl.kt", l = {228, 229}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f60632b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f60633c;
        public final /* synthetic */ OsaContactFormViewModelImpl d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Continuation continuation, OsaContactFormViewModelImpl osaContactFormViewModelImpl) {
            super(2, continuation);
            this.d = osaContactFormViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(continuation, this.d);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            MutableStateFlow mutableStateFlow;
            MutableStateFlow mutableStateFlow2;
            OsaContactFormViewModelImpl osaContactFormViewModelImpl = this.d;
            IsFeatureAvailableUseCase isFeatureAvailableUseCase = osaContactFormViewModelImpl.q;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f60633c;
            if (i2 == 0) {
                ResultKt.b(obj);
                mutableStateFlow = osaContactFormViewModelImpl.K;
                Feature[] featureArr = {Feature.OSA_REASONS};
                this.f60632b = mutableStateFlow;
                this.f60633c = 1;
                obj = isFeatureAvailableUseCase.c(featureArr, false, this);
                if (obj != coroutineSingletons) {
                }
                return coroutineSingletons;
            }
            if (i2 == 1) {
                mutableStateFlow = (MutableStateFlow) this.f60632b;
                ResultKt.b(obj);
            } else {
                if (i2 != 2) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                mutableStateFlow2 = (MutableStateFlow) this.f60632b;
                ResultKt.b(obj);
            }
            mutableStateFlow2.setValue(obj);
            return Unit.f71739a;
            mutableStateFlow.setValue(obj);
            MutableStateFlow mutableStateFlow3 = osaContactFormViewModelImpl.N;
            Feature[] featureArr2 = {Feature.NATIVE_ACCOUNT_ACTIVATION};
            this.f60632b = mutableStateFlow3;
            this.f60633c = 2;
            Object objC = isFeatureAvailableUseCase.c(featureArr2, false, this);
            if (objC != coroutineSingletons) {
                obj = objC;
                mutableStateFlow2 = mutableStateFlow3;
                mutableStateFlow2.setValue(obj);
                return Unit.f71739a;
            }
            return coroutineSingletons;
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl$2", f = "OsaContactFormViewModelImpl.kt", l = {232}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f60634b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ OsaContactFormViewModelImpl f60635c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Continuation continuation, OsaContactFormViewModelImpl osaContactFormViewModelImpl) {
            super(2, continuation);
            this.f60635c = osaContactFormViewModelImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass2(continuation, this.f60635c);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f60634b;
            if (i2 == 0) {
                ResultKt.b(obj);
                final OsaContactFormViewModelImpl osaContactFormViewModelImpl = this.f60635c;
                StateFlow stateFlow = osaContactFormViewModelImpl.f60626e.g;
                FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl.2.1
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public final Object emit(Object obj2, Continuation continuation) {
                        LoginState loginState = (LoginState) obj2;
                        OsaContactFormViewModelImpl osaContactFormViewModelImpl2 = osaContactFormViewModelImpl;
                        osaContactFormViewModelImpl2.C.setValue(Boolean.valueOf(!loginState.a()));
                        if (loginState.a()) {
                            BuildersKt.c(ViewModelKt.a(osaContactFormViewModelImpl2), null, null, new OsaContactFormViewModelImpl$retrieveProfile$1(null, osaContactFormViewModelImpl2), 3);
                        }
                        return Unit.f71739a;
                    }
                };
                this.f60634b = 1;
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

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f60637a;

        static {
            int[] iArr = new int[FormTypeUiModel.values().length];
            try {
                iArr[FormTypeUiModel.GUEST_USER_EMAIL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FormTypeUiModel.GUEST_USER_MAIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FormTypeUiModel.LOGGED_USER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f60637a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public OsaContactFormViewModelImpl(Application application, SavedStateHandle savedStateHandle, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, Json json, Monitor monitor, LVEventSender lVEventSender, UserSessionService userSessionService, NotificationBuilder notificationBuilder, PhoneValidationRules phoneValidationRules, DynamicFormSupervisor dynamicFormSupervisor, DynamicFormSupervisor dynamicFormSupervisor2, DynamicFormSupervisor dynamicFormSupervisor3, AnalyticsTracker analyticsTracker, AppsFlyerTracker appsFlyerTracker, GetProfileUseCase getProfileUseCase, GetAccountStatusUseCase getAccountStatusUseCase, CancelAppointmentUseCase cancelAppointmentUseCase, ModifyAppointmentUseCase modifyAppointmentUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, ConfirmAppointmentUseCase confirmAppointmentUseCase, GetGuestAppointmentFormUseCase getGuestAppointmentFormUseCase, GetAddressCivilitiesMappingUseCase getAddressCivilitiesMappingUseCase, GetOnlineStoreAppointmentListUseCase getOnlineStoreAppointmentListUseCase) {
        super(application);
        application.getClass();
        savedStateHandle.getClass();
        requireUserInAppDispatchUseCase.getClass();
        json.getClass();
        monitor.getClass();
        lVEventSender.getClass();
        userSessionService.getClass();
        notificationBuilder.getClass();
        phoneValidationRules.getClass();
        dynamicFormSupervisor.getClass();
        dynamicFormSupervisor2.getClass();
        dynamicFormSupervisor3.getClass();
        analyticsTracker.getClass();
        appsFlyerTracker.getClass();
        getProfileUseCase.getClass();
        getAccountStatusUseCase.getClass();
        cancelAppointmentUseCase.getClass();
        modifyAppointmentUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        confirmAppointmentUseCase.getClass();
        getGuestAppointmentFormUseCase.getClass();
        getAddressCivilitiesMappingUseCase.getClass();
        getOnlineStoreAppointmentListUseCase.getClass();
        this.f60624b = json;
        this.f60625c = monitor;
        this.d = lVEventSender;
        this.f60626e = userSessionService;
        this.f60627f = notificationBuilder;
        this.g = phoneValidationRules;
        this.f60628h = dynamicFormSupervisor;
        this.f60629i = dynamicFormSupervisor2;
        this.f60630j = dynamicFormSupervisor3;
        this.f60631k = analyticsTracker;
        this.l = appsFlyerTracker;
        this.m = getProfileUseCase;
        this.n = getAccountStatusUseCase;
        this.o = cancelAppointmentUseCase;
        this.p = modifyAppointmentUseCase;
        this.q = isFeatureAvailableUseCase;
        this.r = confirmAppointmentUseCase;
        this.s = getGuestAppointmentFormUseCase;
        this.t = getAddressCivilitiesMappingUseCase;
        this.u = getOnlineStoreAppointmentListUseCase;
        InAppDispatch inAppDispatchB = requireUserInAppDispatchUseCase.f49912a.b();
        this.v = inAppDispatchB;
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(bool);
        this.w = mutableStateFlowA;
        this.x = (String) savedStateHandle.a("ORIGIN");
        this.y = (String) savedStateHandle.a("SELECTION_ID");
        this.z = EmptyList.f71768b;
        SharedFlowImpl sharedFlowImplB = SharedFlowKt.b(1, 0, null, 6);
        this.A = sharedFlowImplB;
        this.B = FlowKt.a(sharedFlowImplB);
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(Boolean.valueOf(Bc()));
        this.C = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(null);
        this.D = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(null);
        this.E = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(null);
        this.F = mutableStateFlowA5;
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(null);
        this.G = mutableStateFlowA6;
        MutableStateFlow mutableStateFlowA7 = StateFlowKt.a(null);
        this.H = mutableStateFlowA7;
        MutableStateFlow mutableStateFlowA8 = StateFlowKt.a(bool);
        this.I = mutableStateFlowA8;
        MutableStateFlow mutableStateFlowA9 = StateFlowKt.a(bool);
        this.J = mutableStateFlowA9;
        MutableStateFlow mutableStateFlowA10 = StateFlowKt.a(bool);
        this.K = mutableStateFlowA10;
        MutableStateFlow mutableStateFlowA11 = StateFlowKt.a(bool);
        this.L = mutableStateFlowA11;
        MutableStateFlow mutableStateFlowA12 = StateFlowKt.a(Boolean.valueOf(isFeatureAvailableUseCase.b(new Feature[]{Feature.OSA_CID})));
        this.M = mutableStateFlowA12;
        MutableStateFlow mutableStateFlowA13 = StateFlowKt.a(bool);
        this.N = mutableStateFlowA13;
        this.O = StateFlowKt.a(bool);
        MutableStateFlow mutableStateFlowA14 = StateFlowKt.a(null);
        this.P = mutableStateFlowA14;
        MutableStateFlow mutableStateFlowA15 = StateFlowKt.a(null);
        this.Q = mutableStateFlowA15;
        MutableStateFlow mutableStateFlowA16 = StateFlowKt.a(null);
        this.R = mutableStateFlowA16;
        this.S = ChannelKt.a(0, 7, null);
        this.T = new LinkedHashMap();
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA4, mutableStateFlowA5, mutableStateFlowA6, mutableStateFlowA14, mutableStateFlowA16, mutableStateFlowA9, dynamicFormSupervisor3.getF57468c(), dynamicFormSupervisor2.getF57468c(), dynamicFormSupervisor.getF57468c(), mutableStateFlowA7, mutableStateFlowA8, mutableStateFlowA15, mutableStateFlowA10, mutableStateFlowA11, mutableStateFlowA12, mutableStateFlowA13};
        Flow<OsaContactFormViewState> flow = new Flow<OsaContactFormViewState>() { // from class: com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl$special$$inlined$combine$1$3", f = "OsaContactFormViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super OsaContactFormViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f60697b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f60698c;
                public /* synthetic */ Object[] d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ OsaContactFormViewModelImpl f60699e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass3(Continuation continuation, OsaContactFormViewModelImpl osaContactFormViewModelImpl) {
                    super(3, continuation);
                    this.f60699e = osaContactFormViewModelImpl;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3, this.f60699e);
                    anonymousClass3.f60698c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f60698c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f60697b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        InAppDispatch inAppDispatch = this.f60699e.v;
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                        Object obj3 = objArr[1];
                        obj3.getClass();
                        Boolean bool = (Boolean) obj3;
                        TimeSlotUiModel timeSlotUiModel = (TimeSlotUiModel) objArr[2];
                        String str = (String) objArr[3];
                        OsaFormItemUiModel osaFormItemUiModel = (OsaFormItemUiModel) objArr[4];
                        AppointmentTypeUiModel appointmentTypeUiModel = (AppointmentTypeUiModel) objArr[5];
                        Profile profile = (Profile) objArr[6];
                        AccountStatusUiModel accountStatusUiModel = (AccountStatusUiModel) objArr[7];
                        Object obj4 = objArr[8];
                        obj4.getClass();
                        Boolean bool2 = (Boolean) obj4;
                        Object obj5 = objArr[9];
                        obj5.getClass();
                        FormUiModel formUiModel = (FormUiModel) obj5;
                        Object obj6 = objArr[10];
                        obj6.getClass();
                        FormUiModel formUiModel2 = (FormUiModel) obj6;
                        Object obj7 = objArr[11];
                        obj7.getClass();
                        FormUiModel formUiModel3 = (FormUiModel) obj7;
                        OsaItemUiModel osaItemUiModel = (OsaItemUiModel) objArr[12];
                        Boolean bool3 = (Boolean) objArr[13];
                        OsaItemUiModel osaItemUiModel2 = (OsaItemUiModel) objArr[14];
                        Object obj8 = objArr[15];
                        obj8.getClass();
                        Boolean bool4 = (Boolean) obj8;
                        Object obj9 = objArr[16];
                        obj9.getClass();
                        boolean zBooleanValue2 = ((Boolean) obj9).booleanValue();
                        Object obj10 = objArr[17];
                        obj10.getClass();
                        boolean zBooleanValue3 = ((Boolean) obj10).booleanValue();
                        Object obj11 = objArr[18];
                        obj11.getClass();
                        OsaContactFormViewState osaContactFormViewState = new OsaContactFormViewState(inAppDispatch, zBooleanValue, bool, timeSlotUiModel, str, null, osaFormItemUiModel, appointmentTypeUiModel, bool3, bool2, bool4, zBooleanValue2, zBooleanValue3, ((Boolean) obj11).booleanValue(), profile, osaItemUiModel2, accountStatusUiModel, null, osaItemUiModel, formUiModel, formUiModel2, formUiModel3, 131104, null);
                        this.f60698c = null;
                        this.d = null;
                        this.f60697b = 1;
                        if (flowCollector.emit(osaContactFormViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl$special$$inlined$combine$1.2
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
        this.U = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new OsaContactFormViewState(inAppDispatchB, false, null, null, null, null, null, null, null, null, null, false, false, false, null, null, null, null, null, (FormUiModel) dynamicFormSupervisor3.getF57468c().getValue(), (FormUiModel) dynamicFormSupervisor2.getF57468c().getValue(), (FormUiModel) dynamicFormSupervisor.getF57468c().getValue(), 524286, null));
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(null, this), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass2(null, this), 3);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    public static final Object yc(OsaContactFormViewModelImpl osaContactFormViewModelImpl, StringResourceUiModel stringResourceUiModel, ContinuationImpl continuationImpl) {
        OsaContactFormViewModelImpl$handleBottomSheetError$1 osaContactFormViewModelImpl$handleBottomSheetError$1;
        osaContactFormViewModelImpl.getClass();
        if (continuationImpl instanceof OsaContactFormViewModelImpl$handleBottomSheetError$1) {
            osaContactFormViewModelImpl$handleBottomSheetError$1 = (OsaContactFormViewModelImpl$handleBottomSheetError$1) continuationImpl;
            int i2 = osaContactFormViewModelImpl$handleBottomSheetError$1.f60654e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                osaContactFormViewModelImpl$handleBottomSheetError$1.f60654e = i2 - Integer.MIN_VALUE;
            } else {
                osaContactFormViewModelImpl$handleBottomSheetError$1 = new OsaContactFormViewModelImpl$handleBottomSheetError$1(osaContactFormViewModelImpl, continuationImpl);
            }
        } else {
            osaContactFormViewModelImpl$handleBottomSheetError$1 = new OsaContactFormViewModelImpl$handleBottomSheetError$1(osaContactFormViewModelImpl, continuationImpl);
        }
        Object obj = osaContactFormViewModelImpl$handleBottomSheetError$1.f60653c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = osaContactFormViewModelImpl$handleBottomSheetError$1.f60654e;
        if (i3 == 0) {
            ResultKt.b(obj);
            SharedFlowImpl sharedFlowImpl = osaContactFormViewModelImpl.A;
            osaContactFormViewModelImpl$handleBottomSheetError$1.f60652b = stringResourceUiModel;
            osaContactFormViewModelImpl$handleBottomSheetError$1.f60654e = 1;
            if (sharedFlowImpl.emit(null, osaContactFormViewModelImpl$handleBottomSheetError$1) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            stringResourceUiModel = osaContactFormViewModelImpl$handleBottomSheetError$1.f60652b;
            ResultKt.b(obj);
        }
        osaContactFormViewModelImpl.Cc(stringResourceUiModel);
        return Unit.f71739a;
    }

    public static final void zc(OsaContactFormViewModelImpl osaContactFormViewModelImpl, OnlineStoreAppointmentActions onlineStoreAppointmentActions, String str, String str2) {
        LoggedUserStatus loggedUserStatus = osaContactFormViewModelImpl.f60626e.b() ? LoggedUserStatus.LOGGED : LoggedUserStatus.NOT_LOGGED;
        AppsFlyerTracker appsFlyerTracker = osaContactFormViewModelImpl.l;
        MapBuilder mapBuilder = new MapBuilder();
        mapBuilder.put("action", onlineStoreAppointmentActions.getValue());
        if (str2 != null) {
            mapBuilder.put("appointment_reason", str2);
        }
        if (str != null) {
            mapBuilder.put("store_id", str);
        }
        mapBuilder.put("login_status", loggedUserStatus.getValue());
        appsFlyerTracker.a("OsaContactFormViewModelImpl", new AppsFlyerEvent.OnlineStoreAppointment(mapBuilder.c()));
    }

    public final void Ac(OsaReasonUiModel osaReasonUiModel) {
        TimeSlotUiModel timeSlotUiModel;
        OsaFormItemUiModel osaFormItemUiModel = (OsaFormItemUiModel) this.F.getValue();
        if (osaFormItemUiModel != null && (timeSlotUiModel = (TimeSlotUiModel) this.D.getValue()) != null) {
            o(new OsaTrackingUiModel.BookAppointmentContactInfoConfirmAppointmentClickedEvent(timeSlotUiModel, osaFormItemUiModel, ((Boolean) this.L.getValue()).booleanValue()));
        }
        BuildersKt.c(ViewModelKt.a(this), null, null, new OsaContactFormViewModelImpl$confirmAppointment$2(this, osaReasonUiModel, null), 3);
    }

    public final boolean Bc() {
        return !this.f60626e.b();
    }

    public final void Cc(StringResourceUiModel stringResourceUiModel) {
        BuildersKt.c(ViewModelKt.a(this), null, null, new OsaContactFormViewModelImpl$showErrorNotification$1(this, stringResourceUiModel, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModel
    public final void I3(OsaPrebookResult osaPrebookResult) {
        TimeSlotUiModel timeSlotUiModel;
        List listA;
        osaPrebookResult.getClass();
        OsaFormItemUiModel osaFormItemUiModel = osaPrebookResult.f60935b;
        MutableStateFlow mutableStateFlow = this.F;
        mutableStateFlow.setValue(osaFormItemUiModel);
        AppointmentTypeUiModel appointmentTypeUiModel = osaPrebookResult.f60936c;
        this.G.setValue(appointmentTypeUiModel);
        String str = osaPrebookResult.d;
        this.E.setValue(str);
        if (((Boolean) this.L.getValue()).booleanValue()) {
            timeSlotUiModel = osaPrebookResult.f60937e;
        } else {
            OsaFormItemUiModel osaFormItemUiModel2 = (OsaFormItemUiModel) mutableStateFlow.getValue();
            Object obj = null;
            if (osaFormItemUiModel2 == null || (listA = osaFormItemUiModel2.a(appointmentTypeUiModel)) == null) {
                timeSlotUiModel = null;
            } else {
                for (Object obj2 : listA) {
                    if (Intrinsics.c(((TimeSlotUiModel) obj2).f57418e, str)) {
                        obj = obj2;
                        break;
                    }
                }
                timeSlotUiModel = (TimeSlotUiModel) obj;
            }
        }
        this.D.setValue(timeSlotUiModel);
    }

    @Override // com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModel
    public final void I5(OsaReasonUiModel osaReasonUiModel) {
        if (((Boolean) this.L.getValue()).booleanValue()) {
            BuildersKt.c(ViewModelKt.a(this), null, null, new OsaContactFormViewModelImpl$modifyAppointment$1(this, osaReasonUiModel, null), 3);
        } else {
            Ac(osaReasonUiModel);
        }
    }

    @Override // com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModel
    public final void R2(OsaReasonUiModel osaReasonUiModel) {
        BuildersKt.c(ViewModelKt.a(this), null, null, new OsaContactFormViewModelImpl$replaceCurrentAppointment$1(this, osaReasonUiModel, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModel
    public final void W5(FormTypeUiModel formTypeUiModel, FormSectionTypeUiModel formSectionTypeUiModel, Object obj) {
        formTypeUiModel.getClass();
        formSectionTypeUiModel.getClass();
        int i2 = WhenMappings.f60637a[formTypeUiModel.ordinal()];
        if (i2 == 1) {
            this.f60630j.j(formSectionTypeUiModel, obj, new rq(9));
        } else if (i2 == 2) {
            this.f60629i.j(formSectionTypeUiModel, obj, new rq(9));
        } else if (i2 != 3) {
            v40.g();
        } else {
            this.f60628h.j(formSectionTypeUiModel, obj, new rq(9));
        }
    }

    @Override // com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModel
    public final void W8() {
        this.R.setValue(null);
    }

    @Override // com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getU() {
        return this.U;
    }

    @Override // com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModel
    public final Flow b() {
        return FlowKt.y(this.S);
    }

    @Override // com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModel
    public final void e8() {
        this.J.setValue(Boolean.TRUE);
    }

    @Override // com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModel
    public final void j1(FormSectionTypeUiModel formSectionTypeUiModel) {
        Job job;
        formSectionTypeUiModel.getClass();
        o(new OsaTrackingUiModel.BookAppointmentContactInfoConfirmAccountClickedEvent(((Boolean) this.L.getValue()).booleanValue()));
        FormSectionTypeUiModel formSectionTypeUiModel2 = FormSectionTypeUiModel.EMAIL;
        if (formSectionTypeUiModel != formSectionTypeUiModel2) {
            return;
        }
        FormUiModel formUiModel = (FormUiModel) this.f60630j.getF57468c().getValue();
        FormUiModel.Companion companion = FormUiModel.f57485b;
        String strE = formUiModel.e(formSectionTypeUiModel2, true);
        if (StringsKt.w(strE)) {
            return;
        }
        LinkedHashMap linkedHashMap = this.T;
        Job job2 = (Job) linkedHashMap.get("checkAccountStatusJob");
        if (job2 != null && job2.isActive() && (job = (Job) linkedHashMap.get("checkAccountStatusJob")) != null) {
            job.cancel(null);
        }
        linkedHashMap.put("checkAccountStatusJob", BuildersKt.c(ViewModelKt.a(this), null, null, new OsaContactFormViewModelImpl$checkAccountStatus$1(this, strE, null), 3));
    }

    @Override // com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModel
    public final void o(OsaTrackingUiModel osaTrackingUiModel) {
        osaTrackingUiModel.getClass();
        String trackingName = OsaOriginScreen.PDP.getTrackingName();
        String str = this.x;
        this.f60631k.a(OsaTrackingUiModelKt.a(osaTrackingUiModel, this.v, Boolean.valueOf(Intrinsics.c(str, trackingName)), str));
    }

    @Override // com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModel
    public final void p3(boolean z) {
        Boolean bool = Boolean.TRUE;
        this.L.setValue(bool);
        this.J.setValue(Boolean.FALSE);
        if (z) {
            this.O.setValue(bool);
        }
    }

    @Override // com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModel
    public final void sc() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new OsaContactFormViewModelImpl$resetBottomSheetScreen$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModel
    public final void t() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new OsaContactFormViewModelImpl$clearViewState$1(null, this), 3);
        this.R.setValue(null);
        this.D.setValue(null);
        this.E.setValue(null);
        this.F.setValue(null);
        this.G.setValue(null);
        this.H.setValue(null);
        Boolean bool = Boolean.FALSE;
        this.I.setValue(bool);
        this.J.setValue(bool);
        this.L.setValue(bool);
        this.O.setValue(bool);
        this.Q.setValue(null);
    }

    @Override // com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModel
    public final void x1() {
        LinkedHashMap linkedHashMap = this.T;
        Job job = (Job) linkedHashMap.get("loadDynamicFormsJob");
        if (job == null || !job.isActive()) {
            FormUiModel formUiModel = (FormUiModel) this.f60628h.getF57468c().getValue();
            FormSectionTypeUiModel formSectionTypeUiModel = FormSectionTypeUiModel.PHONE_NUMBER1;
            FormUiModel.Companion companion = FormUiModel.f57485b;
            linkedHashMap.put("loadDynamicFormsJob", BuildersKt.c(ViewModelKt.a(this), null, null, new OsaContactFormViewModelImpl$loadDynamicForms$1(this, true ^ StringsKt.w(formUiModel.e(formSectionTypeUiModel, true)), formUiModel, null), 3));
        }
    }

    @Override // com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModel
    /* JADX INFO: renamed from: x8, reason: from getter */
    public final SharedFlow getB() {
        return this.B;
    }
}
