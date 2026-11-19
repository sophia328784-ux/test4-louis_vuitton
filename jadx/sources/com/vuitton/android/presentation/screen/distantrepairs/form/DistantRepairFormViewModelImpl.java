package com.vuitton.android.presentation.screen.distantrepairs.form;

import android.app.Application;
import android.net.Uri;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.vuitton.android.R;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.careservices.CareServicesMonitoring;
import com.vuitton.android.domain.repository.LoginStateRepository;
import com.vuitton.android.domain.usecase.account.GetLocaleCountryListUseCase;
import com.vuitton.android.domain.usecase.account.GetProfileUseCase;
import com.vuitton.android.domain.usecase.appointment.ConfirmAppointmentUseCase;
import com.vuitton.android.domain.usecase.careservices.CreateCareServiceUseCase;
import com.vuitton.android.domain.usecase.careservices.UpdateCareServiceUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.forms.GetMainAddressFormUseCase;
import com.vuitton.android.presentation.contact.ContactUsDelegate;
import com.vuitton.android.presentation.contact.ContactUsMode;
import com.vuitton.android.presentation.extensions.UriExtKt;
import com.vuitton.android.presentation.helper.PhotoEncodingHelper;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerTracker;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethod;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairsFormFeatureFlags;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.FormState;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.Step;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.StepState;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairFormViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairPhoto;
import com.vuitton.android.presentation.screen.distantrepairs.models.FormStateUIModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.PhoneNumber;
import com.vuitton.android.presentation.screen.distantrepairs.models.PhotosStateUIModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.Step1StateUIModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.Step2StateUIModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.Step3StateUIModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModelKt;
import com.vuitton.android.presentation.screen.repairs.models.DistantRepairsConfigUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import com.vuitton.android.presentation.tracking.LoggedUserStatus;
import com.vuitton.android.presentation.tracking.ServiceRepairActions;
import com.vuitton.android.presentation.utils.DateTimeUtils;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.authentication.LoginState;
import com.vuitton.foundation.model.domain.model.careservices.CareServiceOrigin;
import com.vuitton.foundation.model.domain.model.chat.ScreenType;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.profile.Profile;
import defpackage.md;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.MapBuilder;
import kotlin.comparisons.ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
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
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B¡\u0001\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020'¢\u0006\u0004\b)\u0010*¨\u0006+"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;", "Landroidx/lifecycle/AndroidViewModel;", "Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModel;", "Landroid/app/Application;", "application", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;", "contactUsDelegate", "Lcom/vuitton/android/presentation/helper/PhotoEncodingHelper;", "photoEncodingHelper", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "Lcom/vuitton/android/domain/repository/LoginStateRepository;", "loginStateRepository", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;", "appsFlyerTracker", "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;", "getProfileUseCase", "Lcom/vuitton/android/domain/usecase/careservices/CreateCareServiceUseCase;", "createCareServiceUseCase", "Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;", "updateCareServiceUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/appointment/ConfirmAppointmentUseCase;", "confirmAppointmentUseCase", "Lcom/vuitton/android/domain/usecase/forms/GetMainAddressFormUseCase;", "getMainAddressFormUseCase", "Lcom/vuitton/android/domain/usecase/account/GetLocaleCountryListUseCase;", "getLocaleCountryListUseCase", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "<init>", "(Landroid/app/Application;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/presentation/helper/PhotoEncodingHelper;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/repository/LoginStateRepository;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/careservices/CreateCareServiceUseCase;Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/appointment/ConfirmAppointmentUseCase;Lcom/vuitton/android/domain/usecase/forms/GetMainAddressFormUseCase;Lcom/vuitton/android/domain/usecase/account/GetLocaleCountryListUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DistantRepairFormViewModelImpl extends AndroidViewModel implements DistantRepairFormViewModel {
    public final MutableStateFlow A;
    public final MutableStateFlow B;
    public final StateFlow C;
    public final BufferedChannel D;
    public final BufferedChannel E;
    public final String F;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Logger f57156b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Monitor f57157c;
    public final LVEventSender d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ContactUsDelegate f57158e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final PhotoEncodingHelper f57159f;
    public final NotificationBuilder g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final LoginStateRepository f57160h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AnalyticsTracker f57161i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AppsFlyerTracker f57162j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final GetProfileUseCase f57163k;
    public final CreateCareServiceUseCase l;
    public final UpdateCareServiceUseCase m;
    public final IsFeatureAvailableUseCase n;
    public final ConfirmAppointmentUseCase o;
    public final GetMainAddressFormUseCase p;
    public final GetLocaleCountryListUseCase q;
    public final RequireCachedAppConfigUseCase r;
    public final InAppDispatch s;
    public final MutableStateFlow t;
    public final MutableStateFlow u;
    public final MutableStateFlow v;
    public final MutableStateFlow w;
    public final MutableStateFlow x;
    public final MutableStateFlow y;
    public final MutableStateFlow z;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModelImpl$1", f = "DistantRepairFormViewModelImpl.kt", l = {ModuleDescriptor.MODULE_VERSION}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public MonitorAction f57164b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f57165c;
        public final /* synthetic */ DistantRepairFormViewModelImpl d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Continuation continuation, DistantRepairFormViewModelImpl distantRepairFormViewModelImpl) {
            super(2, continuation);
            this.d = distantRepairFormViewModelImpl;
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
            MonitorAction monitorAction;
            Object value;
            DistantRepairFormViewModelImpl distantRepairFormViewModelImpl = this.d;
            ContactUsDelegate contactUsDelegate = distantRepairFormViewModelImpl.f57158e;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f57165c;
            if (i2 == 0) {
                ResultKt.b(obj);
                DynatraceMonitorAction dynatraceMonitorActionA = distantRepairFormViewModelImpl.f57157c.a(distantRepairFormViewModelImpl.s, CareServicesMonitoring.Action.OpenInitiateRepairForm.f48867a);
                this.f57164b = dynatraceMonitorActionA;
                this.f57165c = 1;
                if (DistantRepairFormViewModelImpl.yc(distantRepairFormViewModelImpl, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
                monitorAction = dynatraceMonitorActionA;
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                monitorAction = this.f57164b;
                ResultKt.b(obj);
            }
            BuildersKt.c(ViewModelKt.a(distantRepairFormViewModelImpl), null, null, new DistantRepairFormViewModelImpl$initConfig$1(null, distantRepairFormViewModelImpl), 3);
            if (((DistantRepairsFormFeatureFlags) distantRepairFormViewModelImpl.A.getValue()).d) {
                BuildersKt.c(ViewModelKt.a(distantRepairFormViewModelImpl), null, null, new DistantRepairFormViewModelImpl$retrieveAddressZipCodeRegex$1(null, distantRepairFormViewModelImpl), 3);
            }
            BuildersKt.c(ViewModelKt.a(distantRepairFormViewModelImpl), null, null, new DistantRepairFormViewModelImpl$getCountryList$1(distantRepairFormViewModelImpl, monitorAction, null), 3);
            MutableStateFlow mutableStateFlow = distantRepairFormViewModelImpl.u;
            do {
                value = mutableStateFlow.getValue();
            } while (!mutableStateFlow.i(value, FormStateUIModel.b((FormStateUIModel) value, StepState.EDIT, null, 14)));
            contactUsDelegate.f8(ContactUsMode.DISTANT_CARE);
            contactUsDelegate.C(ScreenType.DISTANT_CARE);
            monitorAction.b();
            return Unit.f71739a;
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f57166a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f57167b;

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
            f57166a = iArr;
            int[] iArr2 = new int[DistantRepairContactMethod.values().length];
            try {
                iArr2[DistantRepairContactMethod.EMAIL.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[DistantRepairContactMethod.PHONE_CALL.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[DistantRepairContactMethod.VIDEO_CALL.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            f57167b = iArr2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    @Inject
    public DistantRepairFormViewModelImpl(Application application, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, Logger logger, Monitor monitor, LVEventSender lVEventSender, ContactUsDelegate contactUsDelegate, PhotoEncodingHelper photoEncodingHelper, NotificationBuilder notificationBuilder, LoginStateRepository loginStateRepository, AnalyticsTracker analyticsTracker, AppsFlyerTracker appsFlyerTracker, GetProfileUseCase getProfileUseCase, CreateCareServiceUseCase createCareServiceUseCase, UpdateCareServiceUseCase updateCareServiceUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, ConfirmAppointmentUseCase confirmAppointmentUseCase, GetMainAddressFormUseCase getMainAddressFormUseCase, GetLocaleCountryListUseCase getLocaleCountryListUseCase, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase) {
        super(application);
        application.getClass();
        requireUserInAppDispatchUseCase.getClass();
        logger.getClass();
        monitor.getClass();
        lVEventSender.getClass();
        contactUsDelegate.getClass();
        photoEncodingHelper.getClass();
        notificationBuilder.getClass();
        loginStateRepository.getClass();
        analyticsTracker.getClass();
        appsFlyerTracker.getClass();
        getProfileUseCase.getClass();
        createCareServiceUseCase.getClass();
        updateCareServiceUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        confirmAppointmentUseCase.getClass();
        getMainAddressFormUseCase.getClass();
        getLocaleCountryListUseCase.getClass();
        requireCachedAppConfigUseCase.getClass();
        this.f57156b = logger;
        this.f57157c = monitor;
        this.d = lVEventSender;
        this.f57158e = contactUsDelegate;
        this.f57159f = photoEncodingHelper;
        this.g = notificationBuilder;
        this.f57160h = loginStateRepository;
        this.f57161i = analyticsTracker;
        this.f57162j = appsFlyerTracker;
        this.f57163k = getProfileUseCase;
        this.l = createCareServiceUseCase;
        this.m = updateCareServiceUseCase;
        this.n = isFeatureAvailableUseCase;
        this.o = confirmAppointmentUseCase;
        this.p = getMainAddressFormUseCase;
        this.q = getLocaleCountryListUseCase;
        this.r = requireCachedAppConfigUseCase;
        InAppDispatch inAppDispatchB = requireUserInAppDispatchUseCase.f49912a.b();
        this.s = inAppDispatchB;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(Boolean.FALSE);
        this.t = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(new FormStateUIModel(null, null, null, null, 15, null));
        this.u = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(new Step1StateUIModel(null, null, null, 7, null));
        this.v = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(new Step2StateUIModel(0 == true ? 1 : 0, 0 == true ? 1 : 0, null, null, null, null, null, CertificateBody.profileType, 0 == true ? 1 : 0));
        this.w = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(new Step3StateUIModel(0, null, null, 7, null));
        this.x = mutableStateFlowA5;
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(new PhotosStateUIModel(0 == true ? 1 : 0, 1, 0 == true ? 1 : 0));
        this.y = mutableStateFlowA6;
        CareServiceIdUiModel.f64059c.getClass();
        MutableStateFlow mutableStateFlowA7 = StateFlowKt.a(new CareServiceIdUiModel(CareServiceIdUiModel.d));
        this.z = mutableStateFlowA7;
        MutableStateFlow mutableStateFlowA8 = StateFlowKt.a(new DistantRepairsFormFeatureFlags(false, false, false, false, 15, 0 == true ? 1 : 0));
        this.A = mutableStateFlowA8;
        MutableStateFlow mutableStateFlowA9 = StateFlowKt.a(new DistantRepairsConfigUiModel(null, null, null, null, null, null, null, null, null, 511, null));
        this.B = mutableStateFlowA9;
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA4, mutableStateFlowA5, mutableStateFlowA6, mutableStateFlowA7, mutableStateFlowA8, mutableStateFlowA9};
        Flow<DistantRepairFormViewState> flow = new Flow<DistantRepairFormViewState>() { // from class: com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModelImpl$special$$inlined$combine$1$3", f = "DistantRepairFormViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super DistantRepairFormViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f57202b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f57203c;
                public /* synthetic */ Object[] d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ DistantRepairFormViewModelImpl f57204e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass3(Continuation continuation, DistantRepairFormViewModelImpl distantRepairFormViewModelImpl) {
                    super(3, continuation);
                    this.f57204e = distantRepairFormViewModelImpl;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3, this.f57204e);
                    anonymousClass3.f57203c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f57203c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f57202b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        InAppDispatch inAppDispatch = this.f57204e.s;
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                        Object obj3 = objArr[1];
                        obj3.getClass();
                        FormStateUIModel formStateUIModel = (FormStateUIModel) obj3;
                        Object obj4 = objArr[2];
                        obj4.getClass();
                        Step1StateUIModel step1StateUIModel = (Step1StateUIModel) obj4;
                        Object obj5 = objArr[3];
                        obj5.getClass();
                        Step2StateUIModel step2StateUIModel = (Step2StateUIModel) obj5;
                        Object obj6 = objArr[4];
                        obj6.getClass();
                        Step3StateUIModel step3StateUIModel = (Step3StateUIModel) obj6;
                        Object obj7 = objArr[5];
                        obj7.getClass();
                        PhotosStateUIModel photosStateUIModel = (PhotosStateUIModel) obj7;
                        Object obj8 = objArr[6];
                        obj8.getClass();
                        String str = ((CareServiceIdUiModel) obj8).f64060b;
                        Object obj9 = objArr[7];
                        obj9.getClass();
                        Object obj10 = objArr[8];
                        obj10.getClass();
                        DistantRepairFormViewState distantRepairFormViewState = new DistantRepairFormViewState(inAppDispatch, formStateUIModel, step1StateUIModel, step2StateUIModel, step3StateUIModel, photosStateUIModel, zBooleanValue, str, (DistantRepairsFormFeatureFlags) obj9, (DistantRepairsConfigUiModel) obj10, null, 1024, null);
                        this.f57203c = null;
                        this.d = null;
                        this.f57202b = 1;
                        if (flowCollector.emit(distantRepairFormViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModelImpl$special$$inlined$combine$1.2
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
        this.C = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new DistantRepairFormViewState(inAppDispatchB, null, null, null, null, null, false, null, null, null, null, 2046, null));
        this.D = ChannelKt.a(0, 7, null);
        this.E = ChannelKt.a(0, 7, null);
        this.F = "ANDROID-" + UUID.randomUUID();
        Cc(ServiceRepairActions.STARTED, null);
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(null, this), 3);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:28:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:32:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:36:0x011e  */
    /* JADX WARN: Code duplicated, block: B:39:0x0134  */
    /* JADX WARN: Code duplicated, block: B:41:0x0137  */
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
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x011e -> B:37:0x0123). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object yc(com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModelImpl r17, kotlin.coroutines.jvm.internal.ContinuationImpl r18) {
        /*
            Method dump skipped, instruction units count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModelImpl.yc(com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModelImpl, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static final Object zc(DistantRepairFormViewModelImpl distantRepairFormViewModelImpl, SuspendLambda suspendLambda) {
        Object objU = distantRepairFormViewModelImpl.D.u(NotificationBuilder.a(distantRepairFormViewModelImpl.g, new StringResourceUiModel.ResId(R.string.p12_errormessage_erroroccuredgeneric, null, 2, null), false, null, null, 60), suspendLambda);
        return objU == CoroutineSingletons.COROUTINE_SUSPENDED ? objU : Unit.f71739a;
    }

    public final boolean Ac() {
        MutableStateFlow mutableStateFlow = this.v;
        if (((Step1StateUIModel) mutableStateFlow.getValue()).f57401a != DistantRepairContactMethod.EMAIL) {
            return (((Step1StateUIModel) mutableStateFlow.getValue()).f57401a == null || ((Step1StateUIModel) mutableStateFlow.getValue()).f57402b == null) ? false : true;
        }
        return true;
    }

    public final boolean Bc() {
        MutableStateFlow mutableStateFlow = this.w;
        Profile profile = ((Step2StateUIModel) mutableStateFlow.getValue()).f57404a;
        return ((profile != null ? profile.g : null) == null || ((Step2StateUIModel) mutableStateFlow.getValue()).f57405b == null) ? false : true;
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModel
    public final void C0() {
        MutableStateFlow mutableStateFlow;
        Object value;
        CareServiceOrigin careServiceOrigin;
        MutableStateFlow mutableStateFlow2 = this.v;
        DistantRepairContactMethod distantRepairContactMethod = ((Step1StateUIModel) mutableStateFlow2.getValue()).f57401a;
        if (distantRepairContactMethod != null) {
            this.f57161i.a(DistantRepairTrackingUiModelKt.b(new DistantRepairTrackingUiModel.CreateRepairConfirmClickedEvent(distantRepairContactMethod)));
        }
        do {
            mutableStateFlow = this.t;
            value = mutableStateFlow.getValue();
            ((Boolean) value).getClass();
        } while (!mutableStateFlow.i(value, Boolean.TRUE));
        DistantRepairContactMethod distantRepairContactMethod2 = ((Step1StateUIModel) mutableStateFlow2.getValue()).f57401a;
        int i2 = distantRepairContactMethod2 == null ? -1 : WhenMappings.f57167b[distantRepairContactMethod2.ordinal()];
        if (i2 == 1) {
            careServiceOrigin = CareServiceOrigin.AppForm;
        } else if (i2 != 2) {
            careServiceOrigin = i2 != 3 ? CareServiceOrigin.AppForm : CareServiceOrigin.VideoCall;
        } else {
            careServiceOrigin = CareServiceOrigin.Call;
        }
        BuildersKt.c(ViewModelKt.a(this), null, null, new DistantRepairFormViewModelImpl$sendRepairData$3(this, careServiceOrigin, null), 3);
    }

    public final void Cc(ServiceRepairActions serviceRepairActions, String str) {
        LoggedUserStatus loggedUserStatus = ((LoginState) this.f57160h.a().getValue()).a() ? LoggedUserStatus.LOGGED : LoggedUserStatus.NOT_LOGGED;
        MapBuilder mapBuilder = new MapBuilder();
        mapBuilder.put("action", serviceRepairActions.getValue());
        if (str != null) {
            mapBuilder.put("store_id", str);
        }
        mapBuilder.put("login_status", loggedUserStatus.getValue());
        this.f57162j.a("DistantRepairFormViewModelImpl", new AppsFlyerEvent.ServiceRepair(mapBuilder.c()));
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModel
    public final boolean E0() {
        return ((Step1StateUIModel) this.v.getValue()).f57401a == DistantRepairContactMethod.VIDEO_CALL;
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModel
    public final void H0(String str) {
        str.getClass();
        while (true) {
            MutableStateFlow mutableStateFlow = this.w;
            Object value = mutableStateFlow.getValue();
            String str2 = str;
            if (mutableStateFlow.i(value, Step2StateUIModel.a((Step2StateUIModel) value, null, null, str2, null, null, 123))) {
                return;
            } else {
                str = str2;
            }
        }
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModel
    public final void J(String str) {
        MutableStateFlow mutableStateFlow;
        Object value;
        str.getClass();
        do {
            mutableStateFlow = this.x;
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.i(value, Step3StateUIModel.a((Step3StateUIModel) value, null, str, 3)));
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModel
    public final void P(String str, TimeSlotUiModel timeSlotUiModel) {
        MutableStateFlow mutableStateFlow;
        Object value;
        str.getClass();
        do {
            mutableStateFlow = this.v;
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.i(value, Step1StateUIModel.a((Step1StateUIModel) value, timeSlotUiModel, null, 5)));
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModel
    public final void V0(String str, String str2, String str3) {
        MutableStateFlow mutableStateFlow;
        Object value;
        Step2StateUIModel step2StateUIModel;
        PhoneNumber phoneNumber;
        do {
            mutableStateFlow = this.w;
            value = mutableStateFlow.getValue();
            step2StateUIModel = (Step2StateUIModel) value;
            if (str == null || str2 == null || str3 == null) {
                phoneNumber = null;
            } else {
                phoneNumber = new PhoneNumber(str, str2, str3, null, 8, null);
            }
        } while (!mutableStateFlow.i(value, Step2StateUIModel.a(step2StateUIModel, null, phoneNumber, null, null, null, 125)));
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModel
    public final void W0(Uri uri, int i2) {
        Object value;
        uri.getClass();
        MutableStateFlow mutableStateFlow = this.x;
        List list = ((Step3StateUIModel) mutableStateFlow.getValue()).f57410b;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Uri uri2 = ((DistantRepairPhoto) it.next()).f57388a;
                if (Intrinsics.c(uri2 != null ? UriExtKt.g(uri2) : null, UriExtKt.g(uri))) {
                    return;
                }
            }
        }
        MutableStateFlow mutableStateFlow2 = this.y;
        PhotosStateUIModel photosStateUIModel = (PhotosStateUIModel) mutableStateFlow2.getValue();
        Object obj = photosStateUIModel.f57395a.get(i2);
        List list2 = photosStateUIModel.f57395a;
        if (obj == null) {
            list2.set(i2, new DistantRepairPhoto(uri));
        } else {
            DistantRepairPhoto distantRepairPhoto = (DistantRepairPhoto) list2.get(i2);
            if (distantRepairPhoto != null) {
                distantRepairPhoto.f57388a = uri;
            }
        }
        if (((PhotosStateUIModel) mutableStateFlow2.getValue()).f57395a.size() <= 7) {
            ((PhotosStateUIModel) mutableStateFlow2.getValue()).f57395a.add(null);
        }
        CollectionsKt.m0(new DistantRepairFormViewModelImpl$sortNullsLast$$inlined$compareByDescending$1(new kotlin.comparisons.a(ComparisonsKt.c())), ((PhotosStateUIModel) mutableStateFlow2.getValue()).f57395a);
        ArrayList arrayListZ = CollectionsKt.z(((PhotosStateUIModel) mutableStateFlow2.getValue()).f57395a);
        do {
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.i(value, Step3StateUIModel.a((Step3StateUIModel) value, arrayListZ, null, 5)));
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModel
    public final Flow X() {
        return FlowKt.y(this.E);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getC() {
        return this.C;
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModel
    public final Flow b() {
        return FlowKt.y(this.D);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModel
    public final void b0() {
        String strI;
        Object value;
        MutableStateFlow mutableStateFlow = this.v;
        TimeSlotUiModel timeSlotUiModel = ((Step1StateUIModel) mutableStateFlow.getValue()).f57402b;
        if (timeSlotUiModel != null) {
            strI = DateTimeUtils.i(DateTimeUtils.f65832a, DateTimeUtils.a(timeSlotUiModel.d, null), true, 2);
        } else {
            strI = null;
        }
        do {
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.i(value, Step1StateUIModel.a((Step1StateUIModel) value, null, strI, 3)));
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModel
    public final void c() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new DistantRepairFormViewModelImpl$setUserChatConsentEnabled$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModel
    public final void d(DistantRepairTrackingUiModel distantRepairTrackingUiModel) {
        this.f57161i.a(DistantRepairTrackingUiModelKt.b(distantRepairTrackingUiModel));
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModel
    public final Flow i() {
        return this.f57158e.i();
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModel
    public final void m(Step step) {
        Object value;
        StepState stepState;
        StepState stepState2;
        FormState formState;
        Object value2;
        StepState stepState3;
        StepState stepState4;
        StepState stepState5;
        FormState formState2;
        Object value3;
        StepState stepState6;
        StepState stepState7;
        FormState formState3;
        Object value4;
        StepState stepState8;
        FormState formState4;
        step.getClass();
        int i2 = WhenMappings.f57166a[step.ordinal()];
        MutableStateFlow mutableStateFlow = this.u;
        if (i2 == 1) {
            do {
                value = mutableStateFlow.getValue();
                stepState = StepState.EDIT;
                stepState2 = StepState.DISABLED;
                formState = FormState.MODIFY;
                ((FormStateUIModel) value).getClass();
            } while (!mutableStateFlow.i(value, FormStateUIModel.a(stepState, stepState2, stepState2, formState)));
            return;
        }
        if (i2 == 2) {
            do {
                value2 = mutableStateFlow.getValue();
                stepState3 = StepState.READ;
                stepState4 = StepState.EDIT;
                stepState5 = StepState.DISABLED;
                formState2 = FormState.MODIFY;
                ((FormStateUIModel) value2).getClass();
            } while (!mutableStateFlow.i(value2, FormStateUIModel.a(stepState3, stepState4, stepState5, formState2)));
            return;
        }
        if (i2 == 3) {
            do {
                value3 = mutableStateFlow.getValue();
                stepState6 = StepState.READ;
                stepState7 = StepState.EDIT;
                formState3 = FormState.MODIFY;
                ((FormStateUIModel) value3).getClass();
            } while (!mutableStateFlow.i(value3, FormStateUIModel.a(stepState6, stepState6, stepState7, formState3)));
            return;
        }
        if (i2 != 4) {
            v40.g();
            return;
        }
        do {
            value4 = mutableStateFlow.getValue();
            stepState8 = StepState.READ;
            formState4 = FormState.CONFIRM;
            ((FormStateUIModel) value4).getClass();
        } while (!mutableStateFlow.i(value4, FormStateUIModel.a(stepState8, stepState8, stepState8, formState4)));
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModel
    public final void m0(int i2) {
        MutableStateFlow mutableStateFlow;
        Object value;
        MutableStateFlow mutableStateFlow2 = this.y;
        ((PhotosStateUIModel) mutableStateFlow2.getValue()).f57395a.set(i2, null);
        CollectionsKt.m0(new DistantRepairFormViewModelImpl$sortNullsLast$$inlined$compareByDescending$1(new kotlin.comparisons.a(ComparisonsKt.c())), ((PhotosStateUIModel) mutableStateFlow2.getValue()).f57395a);
        ArrayList arrayListZ = CollectionsKt.z(((PhotosStateUIModel) mutableStateFlow2.getValue()).f57395a);
        do {
            mutableStateFlow = this.x;
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.i(value, Step3StateUIModel.a((Step3StateUIModel) value, arrayListZ, null, 5)));
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModel
    public final void s0(Step step) {
        step.getClass();
        int i2 = WhenMappings.f57166a[step.ordinal()];
        if (i2 != 1) {
            MutableStateFlow mutableStateFlow = this.v;
            if (i2 == 2) {
                if (Ac()) {
                    DistantRepairContactMethod distantRepairContactMethod = ((Step1StateUIModel) mutableStateFlow.getValue()).f57401a;
                    if (distantRepairContactMethod != null) {
                        d(new DistantRepairTrackingUiModel.FirstStepNextClickedEvent(distantRepairContactMethod));
                    }
                    m(step);
                    return;
                }
                return;
            }
            if (i2 == 3) {
                if (Ac() && Bc()) {
                    DistantRepairContactMethod distantRepairContactMethod2 = ((Step1StateUIModel) mutableStateFlow.getValue()).f57401a;
                    if (distantRepairContactMethod2 != null) {
                        d(new DistantRepairTrackingUiModel.SecondStepNextClickedEvent(distantRepairContactMethod2));
                    }
                    m(step);
                    return;
                }
                return;
            }
            if (i2 != 4) {
                v40.g();
                return;
            }
            if (Ac() && Bc()) {
                if (((Step1StateUIModel) mutableStateFlow.getValue()).f57401a != DistantRepairContactMethod.VIDEO_CALL) {
                    MutableStateFlow mutableStateFlow2 = this.x;
                    if (((Step3StateUIModel) mutableStateFlow2.getValue()).f57410b.size() < ((Step3StateUIModel) mutableStateFlow2.getValue()).f57409a || ((Step3StateUIModel) mutableStateFlow2.getValue()).f57411c.length() <= 0) {
                        return;
                    }
                }
                DistantRepairContactMethod distantRepairContactMethod3 = ((Step1StateUIModel) mutableStateFlow.getValue()).f57401a;
                if (distantRepairContactMethod3 != null) {
                    d(new DistantRepairTrackingUiModel.ThirdStepNextClickedEvent(distantRepairContactMethod3));
                }
                m(step);
            }
        }
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModel
    public final void z0(DistantRepairContactMethod distantRepairContactMethod) {
        MutableStateFlow mutableStateFlow;
        Object value;
        TimeSlotUiModel timeSlotUiModel;
        String str;
        distantRepairContactMethod.getClass();
        do {
            mutableStateFlow = this.v;
            value = mutableStateFlow.getValue();
            Step1StateUIModel step1StateUIModel = (Step1StateUIModel) value;
            DistantRepairContactMethod distantRepairContactMethod2 = DistantRepairContactMethod.EMAIL;
            timeSlotUiModel = distantRepairContactMethod == distantRepairContactMethod2 ? null : ((Step1StateUIModel) mutableStateFlow.getValue()).f57402b;
            str = distantRepairContactMethod != distantRepairContactMethod2 ? ((Step1StateUIModel) mutableStateFlow.getValue()).f57403c : null;
            step1StateUIModel.getClass();
        } while (!mutableStateFlow.i(value, new Step1StateUIModel(distantRepairContactMethod, timeSlotUiModel, str)));
    }
}
