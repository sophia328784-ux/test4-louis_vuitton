package com.vuitton.android.presentation.screen.distantrepairs.form;

import android.app.Application;
import android.net.Uri;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.careservices.CareServicesMonitoring;
import com.vuitton.android.domain.repository.LoginStateRepository;
import com.vuitton.android.domain.usecase.account.GetLocaleCountryListUseCase;
import com.vuitton.android.domain.usecase.account.GetProfileUseCase;
import com.vuitton.android.domain.usecase.careservices.CreateCareServiceBffUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.forms.GetCareServiceFormUseCase;
import com.vuitton.android.domain.usecase.forms.GetMainAddressFormUseCase;
import com.vuitton.android.presentation.contact.ContactUsDelegate;
import com.vuitton.android.presentation.contact.ContactUsMode;
import com.vuitton.android.presentation.extensions.UriExtKt;
import com.vuitton.android.presentation.helper.PhotoEncodingHelper;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerEvent;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerTracker;
import com.vuitton.android.presentation.screen.authentication.common.validation.GenericFieldValidationRules;
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
import com.vuitton.android.presentation.screen.dynamicform.DynamicFormSupervisor;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.repairs.models.DistantRepairsConfigUiModel;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceIdUiModel;
import com.vuitton.android.presentation.tracking.LoggedUserStatus;
import com.vuitton.android.presentation.tracking.ServiceRepairActions;
import com.vuitton.android.presentation.utils.DateTimeUtils;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.authentication.LoginState;
import com.vuitton.foundation.model.domain.model.chat.ScreenType;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.md;
import defpackage.rq;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
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
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B©\u0001\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020'\u0012\u0006\u0010*\u001a\u00020)¢\u0006\u0004\b+\u0010,¨\u0006-"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;", "Landroidx/lifecycle/AndroidViewModel;", "Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;", "Landroid/app/Application;", "application", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;", "contactUsDelegate", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "Lcom/vuitton/android/presentation/helper/PhotoEncodingHelper;", "photoEncodingHelper", "Lcom/vuitton/android/domain/repository/LoginStateRepository;", "loginStateRepository", "Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;", "careServiceFormSupervisor", "Lcom/vuitton/android/presentation/screen/authentication/common/validation/GenericFieldValidationRules;", "genericFieldValidationRules", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;", "appsFlyerTracker", "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;", "getProfileUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/forms/GetMainAddressFormUseCase;", "getMainAddressFormUseCase", "Lcom/vuitton/android/domain/usecase/forms/GetCareServiceFormUseCase;", "getCareServiceFormUseCase", "Lcom/vuitton/android/domain/usecase/careservices/CreateCareServiceBffUseCase;", "createCareServiceBffUseCase", "Lcom/vuitton/android/domain/usecase/account/GetLocaleCountryListUseCase;", "getLocaleCountryListUseCase", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "<init>", "(Landroid/app/Application;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/helper/PhotoEncodingHelper;Lcom/vuitton/android/domain/repository/LoginStateRepository;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/authentication/common/validation/GenericFieldValidationRules;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/forms/GetMainAddressFormUseCase;Lcom/vuitton/android/domain/usecase/forms/GetCareServiceFormUseCase;Lcom/vuitton/android/domain/usecase/careservices/CreateCareServiceBffUseCase;Lcom/vuitton/android/domain/usecase/account/GetLocaleCountryListUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DistantRepairFormBffViewModelImpl extends AndroidViewModel implements DistantRepairFormBffViewModel {
    public final MutableStateFlow A;
    public final MutableStateFlow B;
    public final MutableStateFlow C;
    public final StateFlow D;
    public final BufferedChannel E;
    public final BufferedChannel F;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Logger f57098b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Monitor f57099c;
    public final LVEventSender d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ContactUsDelegate f57100e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final NotificationBuilder f57101f;
    public final PhotoEncodingHelper g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final LoginStateRepository f57102h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final DynamicFormSupervisor f57103i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final GenericFieldValidationRules f57104j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AnalyticsTracker f57105k;
    public final AppsFlyerTracker l;
    public final GetProfileUseCase m;
    public final IsFeatureAvailableUseCase n;
    public final GetMainAddressFormUseCase o;
    public final GetCareServiceFormUseCase p;
    public final CreateCareServiceBffUseCase q;
    public final GetLocaleCountryListUseCase r;
    public final RequireCachedAppConfigUseCase s;
    public final InAppDispatch t;
    public final MutableStateFlow u;
    public final MutableStateFlow v;
    public final MutableStateFlow w;
    public final MutableStateFlow x;
    public final MutableStateFlow y;
    public final MutableStateFlow z;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModelImpl$1", f = "DistantRepairFormBffViewModelImpl.kt", l = {189, 200}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public MonitorAction f57106b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f57107c;
        public final /* synthetic */ DistantRepairFormBffViewModelImpl d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Continuation continuation, DistantRepairFormBffViewModelImpl distantRepairFormBffViewModelImpl) {
            super(2, continuation);
            this.d = distantRepairFormBffViewModelImpl;
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
            MonitorAction monitorActionA;
            Object value;
            MonitorAction monitorAction;
            DistantRepairFormBffViewModelImpl distantRepairFormBffViewModelImpl = this.d;
            ContactUsDelegate contactUsDelegate = distantRepairFormBffViewModelImpl.f57100e;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f57107c;
            if (i2 == 0) {
                ResultKt.b(obj);
                monitorActionA = distantRepairFormBffViewModelImpl.f57099c.a(distantRepairFormBffViewModelImpl.t, CareServicesMonitoring.Action.OpenInitiateRepairForm.f48867a);
                this.f57106b = monitorActionA;
                this.f57107c = 1;
                if (DistantRepairFormBffViewModelImpl.yc(distantRepairFormBffViewModelImpl, this) != coroutineSingletons) {
                }
                return coroutineSingletons;
            }
            if (i2 == 1) {
                MonitorAction monitorAction2 = this.f57106b;
                ResultKt.b(obj);
                monitorActionA = monitorAction2;
            } else {
                if (i2 != 2) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                monitorAction = this.f57106b;
                ResultKt.b(obj);
            }
            contactUsDelegate.f8(ContactUsMode.DISTANT_CARE);
            contactUsDelegate.C(ScreenType.DISTANT_CARE);
            monitorAction.b();
            return Unit.f71739a;
            BuildersKt.c(ViewModelKt.a(distantRepairFormBffViewModelImpl), null, null, new DistantRepairFormBffViewModelImpl$initConfig$1(null, distantRepairFormBffViewModelImpl), 3);
            if (((DistantRepairsFormFeatureFlags) distantRepairFormBffViewModelImpl.B.getValue()).d) {
                BuildersKt.c(ViewModelKt.a(distantRepairFormBffViewModelImpl), null, null, new DistantRepairFormBffViewModelImpl$retrieveAddressZipCodeRegex$1(null, distantRepairFormBffViewModelImpl), 3);
            }
            BuildersKt.c(ViewModelKt.a(distantRepairFormBffViewModelImpl), null, null, new DistantRepairFormBffViewModelImpl$getCountryList$1(distantRepairFormBffViewModelImpl, monitorActionA, null), 3);
            MutableStateFlow mutableStateFlow = distantRepairFormBffViewModelImpl.v;
            do {
                value = mutableStateFlow.getValue();
            } while (!mutableStateFlow.i(value, FormStateUIModel.b((FormStateUIModel) value, StepState.EDIT, null, 14)));
            this.f57106b = monitorActionA;
            this.f57107c = 2;
            if (DistantRepairFormBffViewModelImpl.zc(distantRepairFormBffViewModelImpl, this) != coroutineSingletons) {
                monitorAction = monitorActionA;
                contactUsDelegate.f8(ContactUsMode.DISTANT_CARE);
                contactUsDelegate.C(ScreenType.DISTANT_CARE);
                monitorAction.b();
                return Unit.f71739a;
            }
            return coroutineSingletons;
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f57108a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f57109b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f57110c;

        static {
            int[] iArr = new int[FormSectionTypeUiModel.values().length];
            try {
                iArr[FormSectionTypeUiModel.PHONE_NUMBER_TYPE1.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FormSectionTypeUiModel.PHONE_NUMBER_COUNTRY1.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FormSectionTypeUiModel.PHONE_NUMBER1.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FormSectionTypeUiModel.POSTAL_CODE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f57108a = iArr;
            int[] iArr2 = new int[Step.values().length];
            try {
                iArr2[Step.ONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[Step.TWO.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[Step.THREE.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[Step.FOUR.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            f57109b = iArr2;
            int[] iArr3 = new int[PhoneNumber.Type.values().length];
            try {
                iArr3[PhoneNumber.Type.MOBILE.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr3[PhoneNumber.Type.HOME.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr3[PhoneNumber.Type.WORK.ordinal()] = 3;
            } catch (NoSuchFieldError unused11) {
            }
            f57110c = iArr3;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    @Inject
    public DistantRepairFormBffViewModelImpl(Application application, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, Logger logger, Monitor monitor, LVEventSender lVEventSender, ContactUsDelegate contactUsDelegate, NotificationBuilder notificationBuilder, PhotoEncodingHelper photoEncodingHelper, LoginStateRepository loginStateRepository, DynamicFormSupervisor dynamicFormSupervisor, GenericFieldValidationRules genericFieldValidationRules, AnalyticsTracker analyticsTracker, AppsFlyerTracker appsFlyerTracker, GetProfileUseCase getProfileUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, GetMainAddressFormUseCase getMainAddressFormUseCase, GetCareServiceFormUseCase getCareServiceFormUseCase, CreateCareServiceBffUseCase createCareServiceBffUseCase, GetLocaleCountryListUseCase getLocaleCountryListUseCase, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase) {
        super(application);
        application.getClass();
        requireUserInAppDispatchUseCase.getClass();
        logger.getClass();
        monitor.getClass();
        lVEventSender.getClass();
        contactUsDelegate.getClass();
        notificationBuilder.getClass();
        photoEncodingHelper.getClass();
        loginStateRepository.getClass();
        dynamicFormSupervisor.getClass();
        genericFieldValidationRules.getClass();
        analyticsTracker.getClass();
        appsFlyerTracker.getClass();
        getProfileUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        getMainAddressFormUseCase.getClass();
        getCareServiceFormUseCase.getClass();
        createCareServiceBffUseCase.getClass();
        getLocaleCountryListUseCase.getClass();
        requireCachedAppConfigUseCase.getClass();
        this.f57098b = logger;
        this.f57099c = monitor;
        this.d = lVEventSender;
        this.f57100e = contactUsDelegate;
        this.f57101f = notificationBuilder;
        this.g = photoEncodingHelper;
        this.f57102h = loginStateRepository;
        this.f57103i = dynamicFormSupervisor;
        this.f57104j = genericFieldValidationRules;
        this.f57105k = analyticsTracker;
        this.l = appsFlyerTracker;
        this.m = getProfileUseCase;
        this.n = isFeatureAvailableUseCase;
        this.o = getMainAddressFormUseCase;
        this.p = getCareServiceFormUseCase;
        this.q = createCareServiceBffUseCase;
        this.r = getLocaleCountryListUseCase;
        this.s = requireCachedAppConfigUseCase;
        InAppDispatch inAppDispatchB = requireUserInAppDispatchUseCase.f49912a.b();
        this.t = inAppDispatchB;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(Boolean.FALSE);
        this.u = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(new FormStateUIModel(null, null, null, null, 15, null));
        this.v = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(new Step1StateUIModel(null, null, null, 7, null));
        this.w = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(new Step2StateUIModel(0 == true ? 1 : 0, 0 == true ? 1 : 0, null, null, null, null, null, CertificateBody.profileType, 0 == true ? 1 : 0));
        this.x = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(new Step3StateUIModel(0, null, null, 7, null));
        this.y = mutableStateFlowA5;
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(new PhotosStateUIModel(0 == true ? 1 : 0, 1, 0 == true ? 1 : 0));
        this.z = mutableStateFlowA6;
        CareServiceIdUiModel.f64059c.getClass();
        MutableStateFlow mutableStateFlowA7 = StateFlowKt.a(new CareServiceIdUiModel(CareServiceIdUiModel.d));
        this.A = mutableStateFlowA7;
        MutableStateFlow mutableStateFlowA8 = StateFlowKt.a(new DistantRepairsFormFeatureFlags(false, false, false, false, 15, 0 == true ? 1 : 0));
        this.B = mutableStateFlowA8;
        MutableStateFlow mutableStateFlowA9 = StateFlowKt.a(new DistantRepairsConfigUiModel(null, null, null, null, null, null, null, null, null, 511, null));
        this.C = mutableStateFlowA9;
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA4, mutableStateFlowA5, mutableStateFlowA6, mutableStateFlowA7, mutableStateFlowA8, mutableStateFlowA9, dynamicFormSupervisor.getF57468c()};
        Flow<DistantRepairFormViewState> flow = new Flow<DistantRepairFormViewState>() { // from class: com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModelImpl$special$$inlined$combine$1$3", f = "DistantRepairFormBffViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super DistantRepairFormViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f57140b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f57141c;
                public /* synthetic */ Object[] d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ DistantRepairFormBffViewModelImpl f57142e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass3(Continuation continuation, DistantRepairFormBffViewModelImpl distantRepairFormBffViewModelImpl) {
                    super(3, continuation);
                    this.f57142e = distantRepairFormBffViewModelImpl;
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3, this.f57142e);
                    anonymousClass3.f57141c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f57141c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f57140b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        InAppDispatch inAppDispatch = this.f57142e.t;
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
                        DistantRepairsFormFeatureFlags distantRepairsFormFeatureFlags = (DistantRepairsFormFeatureFlags) obj9;
                        Object obj10 = objArr[8];
                        obj10.getClass();
                        Object obj11 = objArr[9];
                        obj11.getClass();
                        DistantRepairFormViewState distantRepairFormViewState = new DistantRepairFormViewState(inAppDispatch, formStateUIModel, step1StateUIModel, step2StateUIModel, step3StateUIModel, photosStateUIModel, zBooleanValue, str, distantRepairsFormFeatureFlags, (DistantRepairsConfigUiModel) obj10, (FormUiModel) obj11, null);
                        this.f57141c = null;
                        this.d = null;
                        this.f57140b = 1;
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModelImpl$special$$inlined$combine$1.2
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
        this.D = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new DistantRepairFormViewState(inAppDispatchB, null, null, null, null, null, false, null, null, null, null, 2046, null));
        this.E = ChannelKt.a(0, 7, null);
        this.F = ChannelKt.a(0, 7, null);
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
    public static final java.lang.Object yc(com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModelImpl r17, kotlin.coroutines.jvm.internal.ContinuationImpl r18) {
        /*
            Method dump skipped, instruction units count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModelImpl.yc(com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModelImpl, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0096, code lost:
    
        if (r5.b(r2, (124 & 2) != 0 ? new defpackage.iv(2) : r3, (124 & 4) != 0 ? new defpackage.rq(7) : null, (124 & 8) != 0 ? new defpackage.iv(3) : null, (124 & 16) != 0 ? new defpackage.rt(11) : null, (124 & 32) != 0 ? new defpackage.iv(4) : r7, (124 & 64) != 0 ? new defpackage.rq(8) : null, (124 & 128) != 0 ? new defpackage.iv(5) : r9, (124 & 256) != 0 ? new defpackage.iv(6) : null, r11) == r0) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object zc(final com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModelImpl r13, kotlin.coroutines.jvm.internal.ContinuationImpl r14) {
        /*
            boolean r0 = r14 instanceof com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModelImpl$loadCareServiceForm$1
            if (r0 == 0) goto L14
            r0 = r14
            com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModelImpl$loadCareServiceForm$1 r0 = (com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModelImpl$loadCareServiceForm$1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L14
            int r1 = r1 - r2
            r0.d = r1
        L12:
            r11 = r0
            goto L1a
        L14:
            com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModelImpl$loadCareServiceForm$1 r0 = new com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModelImpl$loadCareServiceForm$1
            r0.<init>(r13, r14)
            goto L12
        L1a:
            java.lang.Object r14 = r11.f57122b
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r11.d
            r2 = 2
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L40
            if (r1 == r3) goto L38
            if (r1 != r2) goto L32
            kotlin.ResultKt.b(r14)
            kotlin.Result r14 = (kotlin.Result) r14
            r14.getClass()
            goto L99
        L32:
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r13)
            return r4
        L38:
            kotlin.ResultKt.b(r14)
            kotlin.Result r14 = (kotlin.Result) r14
            java.lang.Object r14 = r14.f71708b
            goto L50
        L40:
            kotlin.ResultKt.b(r14)
            com.vuitton.android.domain.usecase.forms.GetCareServiceFormUseCase r14 = r13.p
            com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch r1 = r13.t
            r11.d = r3
            java.lang.Object r14 = r14.a(r1, r11)
            if (r14 != r0) goto L50
            goto L98
        L50:
            kotlinx.coroutines.flow.MutableStateFlow r1 = r13.B
            java.lang.Object r1 = r1.getValue()
            com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairsFormFeatureFlags r1 = (com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairsFormFeatureFlags) r1
            boolean r1 = r1.d
            if (r1 == 0) goto L69
            com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel r1 = com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel.PHONE_BLOC
            com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel r5 = com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel.POSTAL_CODE
            com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel[] r1 = new com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel[]{r1, r5}
            java.util.List r1 = kotlin.collections.CollectionsKt.P(r1)
            goto L6f
        L69:
            com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel r1 = com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel.PHONE_BLOC
            java.util.List r1 = kotlin.collections.CollectionsKt.O(r1)
        L6f:
            com.vuitton.android.presentation.screen.dynamicform.DynamicFormSupervisor r5 = r13.f57103i
            r6 = r2
            com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModelImpl$loadCareServiceForm$2 r2 = new com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModelImpl$loadCareServiceForm$2
            r2.<init>(r14, r4)
            r14 = r3
            ud r3 = new ud
            r3.<init>(r1, r6)
            mu r7 = new mu
            r1 = 0
            r7.<init>(r13)
            mu r9 = new mu
            r9.<init>(r13)
            r11.d = r6
            r4 = 0
            r1 = r5
            r5 = 0
            r6 = 0
            r8 = 0
            r10 = 0
            r12 = 348(0x15c, float:4.88E-43)
            java.lang.Object r13 = com.vuitton.android.presentation.screen.dynamicform.DynamicFormSupervisor.e(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12)
            if (r13 != r0) goto L99
        L98:
            return r0
        L99:
            kotlin.Unit r13 = kotlin.Unit.f71739a
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModelImpl.zc(com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModelImpl, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final boolean Ac() {
        MutableStateFlow mutableStateFlow = this.w;
        if (((Step1StateUIModel) mutableStateFlow.getValue()).f57401a != DistantRepairContactMethod.EMAIL) {
            return (((Step1StateUIModel) mutableStateFlow.getValue()).f57401a == null || ((Step1StateUIModel) mutableStateFlow.getValue()).f57402b == null) ? false : true;
        }
        return true;
    }

    public final void Bc() {
        MutableStateFlow mutableStateFlow;
        Object value;
        FormUiModel formUiModel = (FormUiModel) this.f57103i.getF57468c().getValue();
        FormSectionTypeUiModel formSectionTypeUiModel = FormSectionTypeUiModel.PHONE_NUMBER_COUNTRY1;
        String strG = FormUiModel.g(formUiModel, formSectionTypeUiModel, null, false, 2);
        String strG2 = FormUiModel.g(formUiModel, formSectionTypeUiModel, null, true, 2);
        String strE = formUiModel.e(FormSectionTypeUiModel.PHONE_NUMBER1, true);
        if (strG == null || StringsKt.w(strG) || strG2 == null || StringsKt.w(strG2) || StringsKt.w(strE)) {
            return;
        }
        do {
            mutableStateFlow = this.x;
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.i(value, Step2StateUIModel.a((Step2StateUIModel) value, null, new PhoneNumber(strG, strG2, strE, null, 8, null), null, null, null, 125)));
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModel
    public final void C0() {
        MutableStateFlow mutableStateFlow;
        Object value;
        DistantRepairContactMethod distantRepairContactMethod = ((Step1StateUIModel) this.w.getValue()).f57401a;
        if (distantRepairContactMethod != null) {
            this.f57105k.a(DistantRepairTrackingUiModelKt.b(new DistantRepairTrackingUiModel.CreateRepairConfirmClickedEvent(distantRepairContactMethod)));
        }
        do {
            mutableStateFlow = this.u;
            value = mutableStateFlow.getValue();
            ((Boolean) value).getClass();
        } while (!mutableStateFlow.i(value, Boolean.TRUE));
        BuildersKt.c(ViewModelKt.a(this), null, null, new DistantRepairFormBffViewModelImpl$sendRepairData$3(null, this), 3);
    }

    public final void Cc(ServiceRepairActions serviceRepairActions, String str) {
        LoggedUserStatus loggedUserStatus = ((LoginState) this.f57102h.a().getValue()).a() ? LoggedUserStatus.LOGGED : LoggedUserStatus.NOT_LOGGED;
        MapBuilder mapBuilder = new MapBuilder();
        mapBuilder.put("action", serviceRepairActions.getValue());
        if (str != null) {
            mapBuilder.put("store_id", str);
        }
        mapBuilder.put("login_status", loggedUserStatus.getValue());
        this.l.a("DistantRepairFormBffViewModelImpl", new AppsFlyerEvent.ServiceRepair(mapBuilder.c()));
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModel
    public final boolean E0() {
        return ((Step1StateUIModel) this.w.getValue()).f57401a == DistantRepairContactMethod.VIDEO_CALL;
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModel
    public final void H0(String str) {
        str.getClass();
        while (true) {
            MutableStateFlow mutableStateFlow = this.x;
            Object value = mutableStateFlow.getValue();
            String str2 = str;
            if (mutableStateFlow.i(value, Step2StateUIModel.a((Step2StateUIModel) value, null, null, str2, null, null, 123))) {
                return;
            } else {
                str = str2;
            }
        }
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModel
    public final void J(String str) {
        MutableStateFlow mutableStateFlow;
        Object value;
        str.getClass();
        do {
            mutableStateFlow = this.y;
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.i(value, Step3StateUIModel.a((Step3StateUIModel) value, null, str, 3)));
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModel
    public final void P(String str, TimeSlotUiModel timeSlotUiModel) {
        MutableStateFlow mutableStateFlow;
        Object value;
        str.getClass();
        do {
            mutableStateFlow = this.w;
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.i(value, Step1StateUIModel.a((Step1StateUIModel) value, timeSlotUiModel, null, 5)));
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModel
    public final void V0(String str, String str2, String str3) {
        MutableStateFlow mutableStateFlow;
        Object value;
        Step2StateUIModel step2StateUIModel;
        PhoneNumber phoneNumber;
        do {
            mutableStateFlow = this.x;
            value = mutableStateFlow.getValue();
            step2StateUIModel = (Step2StateUIModel) value;
            if (str == null || str2 == null || str3 == null) {
                phoneNumber = null;
            } else {
                phoneNumber = new PhoneNumber(str, str2, str3, null, 8, null);
            }
        } while (!mutableStateFlow.i(value, Step2StateUIModel.a(step2StateUIModel, null, phoneNumber, null, null, null, 125)));
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModel
    public final void W0(Uri uri, int i2) {
        Object value;
        uri.getClass();
        MutableStateFlow mutableStateFlow = this.y;
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
        MutableStateFlow mutableStateFlow2 = this.z;
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
        CollectionsKt.m0(new DistantRepairFormBffViewModelImpl$sortNullsLast$$inlined$compareByDescending$1(new kotlin.comparisons.a(ComparisonsKt.c())), ((PhotosStateUIModel) mutableStateFlow2.getValue()).f57395a);
        ArrayList arrayListZ = CollectionsKt.z(((PhotosStateUIModel) mutableStateFlow2.getValue()).f57395a);
        do {
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.i(value, Step3StateUIModel.a((Step3StateUIModel) value, arrayListZ, null, 5)));
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModel
    public final Flow X() {
        return FlowKt.y(this.F);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getD() {
        return this.D;
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModel
    public final Flow b() {
        return FlowKt.y(this.E);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModel
    public final void b0() {
        String strI;
        Object value;
        MutableStateFlow mutableStateFlow = this.w;
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

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModel
    public final void c() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new DistantRepairFormBffViewModelImpl$setUserChatConsentEnabled$1(null, this), 3);
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModel
    public final void d(DistantRepairTrackingUiModel distantRepairTrackingUiModel) {
        this.f57105k.a(DistantRepairTrackingUiModelKt.b(distantRepairTrackingUiModel));
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModel
    public final void f(FormSectionTypeUiModel formSectionTypeUiModel, Object obj) {
        formSectionTypeUiModel.getClass();
        rq rqVar = new rq(9);
        DynamicFormSupervisor dynamicFormSupervisor = this.f57103i;
        dynamicFormSupervisor.j(formSectionTypeUiModel, obj, rqVar);
        int i2 = WhenMappings.f57108a[formSectionTypeUiModel.ordinal()];
        MutableStateFlow mutableStateFlow = this.x;
        if (i2 == 2 || i2 == 3) {
            ((Step2StateUIModel) mutableStateFlow.getValue()).f57408f.a();
            Bc();
        } else if (i2 == 4) {
            ((Step2StateUIModel) mutableStateFlow.getValue()).g.a();
        }
        dynamicFormSupervisor.i();
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModel
    public final Flow i() {
        return this.f57100e.i();
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModel
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
        int i2 = WhenMappings.f57109b[step.ordinal()];
        MutableStateFlow mutableStateFlow = this.v;
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

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModel
    public final void m0(int i2) {
        MutableStateFlow mutableStateFlow;
        Object value;
        MutableStateFlow mutableStateFlow2 = this.z;
        ((PhotosStateUIModel) mutableStateFlow2.getValue()).f57395a.set(i2, null);
        CollectionsKt.m0(new DistantRepairFormBffViewModelImpl$sortNullsLast$$inlined$compareByDescending$1(new kotlin.comparisons.a(ComparisonsKt.c())), ((PhotosStateUIModel) mutableStateFlow2.getValue()).f57395a);
        ArrayList arrayListZ = CollectionsKt.z(((PhotosStateUIModel) mutableStateFlow2.getValue()).f57395a);
        do {
            mutableStateFlow = this.y;
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.i(value, Step3StateUIModel.a((Step3StateUIModel) value, arrayListZ, null, 5)));
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModel
    public final void s0(Step step) {
        step.getClass();
        int i2 = WhenMappings.f57109b[step.ordinal()];
        if (i2 != 1) {
            AnalyticsTracker analyticsTracker = this.f57105k;
            MutableStateFlow mutableStateFlow = this.w;
            if (i2 == 2) {
                if (Ac()) {
                    DistantRepairContactMethod distantRepairContactMethod = ((Step1StateUIModel) mutableStateFlow.getValue()).f57401a;
                    if (distantRepairContactMethod != null) {
                        analyticsTracker.a(DistantRepairTrackingUiModelKt.b(new DistantRepairTrackingUiModel.FirstStepNextClickedEvent(distantRepairContactMethod)));
                    }
                    m(step);
                    return;
                }
                return;
            }
            DynamicFormSupervisor dynamicFormSupervisor = this.f57103i;
            if (i2 == 3) {
                if (Ac() && ((FormUiModel) dynamicFormSupervisor.getF57468c().getValue()).i()) {
                    DistantRepairContactMethod distantRepairContactMethod2 = ((Step1StateUIModel) mutableStateFlow.getValue()).f57401a;
                    if (distantRepairContactMethod2 != null) {
                        analyticsTracker.a(DistantRepairTrackingUiModelKt.b(new DistantRepairTrackingUiModel.SecondStepNextClickedEvent(distantRepairContactMethod2)));
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
            if (Ac() && ((FormUiModel) dynamicFormSupervisor.getF57468c().getValue()).i()) {
                if (((Step1StateUIModel) mutableStateFlow.getValue()).f57401a != DistantRepairContactMethod.VIDEO_CALL) {
                    MutableStateFlow mutableStateFlow2 = this.y;
                    if (((Step3StateUIModel) mutableStateFlow2.getValue()).f57410b.size() < ((Step3StateUIModel) mutableStateFlow2.getValue()).f57409a || ((Step3StateUIModel) mutableStateFlow2.getValue()).f57411c.length() <= 0) {
                        return;
                    }
                }
                DistantRepairContactMethod distantRepairContactMethod3 = ((Step1StateUIModel) mutableStateFlow.getValue()).f57401a;
                if (distantRepairContactMethod3 != null) {
                    analyticsTracker.a(DistantRepairTrackingUiModelKt.b(new DistantRepairTrackingUiModel.ThirdStepNextClickedEvent(distantRepairContactMethod3)));
                }
                m(step);
            }
        }
    }

    @Override // com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModel
    public final void z0(DistantRepairContactMethod distantRepairContactMethod) {
        MutableStateFlow mutableStateFlow;
        Object value;
        TimeSlotUiModel timeSlotUiModel;
        String str;
        distantRepairContactMethod.getClass();
        do {
            mutableStateFlow = this.w;
            value = mutableStateFlow.getValue();
            Step1StateUIModel step1StateUIModel = (Step1StateUIModel) value;
            DistantRepairContactMethod distantRepairContactMethod2 = DistantRepairContactMethod.EMAIL;
            timeSlotUiModel = distantRepairContactMethod == distantRepairContactMethod2 ? null : ((Step1StateUIModel) mutableStateFlow.getValue()).f57402b;
            str = distantRepairContactMethod != distantRepairContactMethod2 ? ((Step1StateUIModel) mutableStateFlow.getValue()).f57403c : null;
            step1StateUIModel.getClass();
        } while (!mutableStateFlow.i(value, new Step1StateUIModel(distantRepairContactMethod, timeSlotUiModel, str)));
    }
}
