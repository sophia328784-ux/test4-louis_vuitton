package com.vuitton.android.presentation.screen.authentication.social;

import android.app.Application;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.core.platform.serialization.JsonProviderKt;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.usecase.authentication.social.SocialRegisterUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import com.vuitton.android.domain.usecase.dynamicyield.ReportDYSignUpEventUseCase;
import com.vuitton.android.domain.usecase.forms.GetCompleteProfileFormUseCase;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.appsflyer.AppsFlyerTracker;
import com.vuitton.android.presentation.screen.authentication.common.validation.FieldErrorUiModel;
import com.vuitton.android.presentation.screen.authentication.common.validation.GenericFieldValidationRules;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthEntryPoint;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.social.SocialRegisterViewModelImpl;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialRegisterFeatureFlags;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialRegisterUiModel;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialRegisterViewState;
import com.vuitton.android.presentation.screen.dynamicform.DynamicFormSupervisor;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.foundation.model.domain.model.account.consent.KisaConsents;
import com.vuitton.foundation.model.domain.model.authentication.social.SocialAuthMode;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.av0;
import defpackage.iv;
import defpackage.md;
import defpackage.rq;
import defpackage.rt;
import defpackage.xo0;
import defpackage.zt0;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
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
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0081\u0001\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0017\u001a\u00020\u0015\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b \u0010!¨\u0006\""}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;", "Landroidx/lifecycle/AndroidViewModel;", "Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModel;", "Landroid/app/Application;", "application", "Landroidx/lifecycle/SavedStateHandle;", "savedStateHandle", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/monitoring/Monitor;", "monitor", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;", "appsFlyerTracker", "Lcom/vuitton/android/presentation/notification/NotificationBuilder;", "notificationBuilder", "Lcom/vuitton/android/presentation/screen/authentication/common/validation/GenericFieldValidationRules;", "genericFieldValidationRules", "Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;", "registrationDynamicFormSupervisor", "consentRegistrationFormSupervisor", "Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase;", "socialRegisterUseCase", "Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSignUpEventUseCase;", "reportDYSignUpEventUseCase", "Lcom/vuitton/android/domain/usecase/forms/GetCompleteProfileFormUseCase;", "getCompleteProfileFormUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "<init>", "(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/screen/authentication/common/validation/GenericFieldValidationRules;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSignUpEventUseCase;Lcom/vuitton/android/domain/usecase/forms/GetCompleteProfileFormUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SocialRegisterViewModelImpl extends AndroidViewModel implements SocialRegisterViewModel {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Monitor f54085b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AnalyticsTracker f54086c;
    public final LVEventSender d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AppsFlyerTracker f54087e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final NotificationBuilder f54088f;
    public final GenericFieldValidationRules g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final DynamicFormSupervisor f54089h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final DynamicFormSupervisor f54090i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final SocialRegisterUseCase f54091j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ReportDYSignUpEventUseCase f54092k;
    public final GetCompleteProfileFormUseCase l;
    public final IsFeatureAvailableUseCase m;
    public final KisaConsents n;
    public final MutableStateFlow o;
    public final LinkedHashMap p;
    public final MutableStateFlow q;
    public final InAppDispatch r;
    public final BufferedChannel s;
    public final Flow t;
    public final BufferedChannel u;
    public final Flow v;
    public final MutableStateFlow w;
    public final StateFlow x;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.authentication.social.SocialRegisterViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.social.SocialRegisterViewModelImpl$1", f = "SocialRegisterViewModelImpl.kt", l = {162, 163}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public MutableStateFlow f54093b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f54094c;
        public int d;

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return SocialRegisterViewModelImpl.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            MutableStateFlow mutableStateFlow;
            Object objC;
            boolean zBooleanValue;
            MutableStateFlow mutableStateFlow2;
            SocialRegisterViewModelImpl socialRegisterViewModelImpl = SocialRegisterViewModelImpl.this;
            IsFeatureAvailableUseCase isFeatureAvailableUseCase = socialRegisterViewModelImpl.m;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.d;
            if (i2 == 0) {
                ResultKt.b(obj);
                mutableStateFlow = socialRegisterViewModelImpl.w;
                Feature[] featureArr = {Feature.EMAIL_TRACKING_CONSENT};
                this.f54093b = mutableStateFlow;
                this.d = 1;
                objC = isFeatureAvailableUseCase.c(featureArr, false, this);
                if (objC != coroutineSingletons) {
                }
                return coroutineSingletons;
            }
            if (i2 == 1) {
                MutableStateFlow mutableStateFlow3 = this.f54093b;
                ResultKt.b(obj);
                objC = obj;
                mutableStateFlow = mutableStateFlow3;
            } else {
                if (i2 != 2) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                zBooleanValue = this.f54094c;
                mutableStateFlow2 = this.f54093b;
                ResultKt.b(obj);
            }
            mutableStateFlow2.setValue(new SocialRegisterFeatureFlags(zBooleanValue, ((Boolean) obj).booleanValue()));
            return Unit.f71739a;
            zBooleanValue = ((Boolean) objC).booleanValue();
            Feature[] featureArr2 = {Feature.LEGAL_NOTICE_REGISTER};
            this.f54093b = mutableStateFlow;
            this.f54094c = zBooleanValue;
            this.d = 2;
            Object objC2 = isFeatureAvailableUseCase.c(featureArr2, false, this);
            if (objC2 != coroutineSingletons) {
                MutableStateFlow mutableStateFlow4 = mutableStateFlow;
                obj = objC2;
                mutableStateFlow2 = mutableStateFlow4;
                mutableStateFlow2.setValue(new SocialRegisterFeatureFlags(zBooleanValue, ((Boolean) obj).booleanValue()));
                return Unit.f71739a;
            }
            return coroutineSingletons;
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f54096a;

        static {
            int[] iArr = new int[FormSectionTypeUiModel.values().length];
            try {
                iArr[FormSectionTypeUiModel.EMAIL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FormSectionTypeUiModel.CIVILITY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FormSectionTypeUiModel.FIRSTNAME1.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FormSectionTypeUiModel.FIRSTNAME2.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[FormSectionTypeUiModel.LASTNAME1.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[FormSectionTypeUiModel.LASTNAME2.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[FormSectionTypeUiModel.ALL_MARKETING_COMMUNICATIONS_CONSENTS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            f54096a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    @Inject
    public SocialRegisterViewModelImpl(Application application, SavedStateHandle savedStateHandle, RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, Monitor monitor, AnalyticsTracker analyticsTracker, LVEventSender lVEventSender, AppsFlyerTracker appsFlyerTracker, NotificationBuilder notificationBuilder, GenericFieldValidationRules genericFieldValidationRules, DynamicFormSupervisor dynamicFormSupervisor, DynamicFormSupervisor dynamicFormSupervisor2, SocialRegisterUseCase socialRegisterUseCase, ReportDYSignUpEventUseCase reportDYSignUpEventUseCase, GetCompleteProfileFormUseCase getCompleteProfileFormUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase) {
        super(application);
        application.getClass();
        savedStateHandle.getClass();
        requireUserInAppDispatchUseCase.getClass();
        monitor.getClass();
        analyticsTracker.getClass();
        lVEventSender.getClass();
        appsFlyerTracker.getClass();
        notificationBuilder.getClass();
        genericFieldValidationRules.getClass();
        dynamicFormSupervisor.getClass();
        dynamicFormSupervisor2.getClass();
        socialRegisterUseCase.getClass();
        reportDYSignUpEventUseCase.getClass();
        getCompleteProfileFormUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        this.f54085b = monitor;
        this.f54086c = analyticsTracker;
        this.d = lVEventSender;
        this.f54087e = appsFlyerTracker;
        this.f54088f = notificationBuilder;
        this.g = genericFieldValidationRules;
        this.f54089h = dynamicFormSupervisor;
        this.f54090i = dynamicFormSupervisor2;
        this.f54091j = socialRegisterUseCase;
        this.f54092k = reportDYSignUpEventUseCase;
        this.l = getCompleteProfileFormUseCase;
        this.m = isFeatureAvailableUseCase;
        String str = (String) savedStateHandle.a("KEY_KISA_CONSENTS");
        this.n = str != null ? (KisaConsents) JsonProviderKt.f43520a.b(KisaConsents.INSTANCE.serializer(), str) : null;
        String str2 = (String) savedStateHandle.a("KEY_EMAIL_VALUE");
        str2 = str2 == null ? "" : str2;
        String str3 = (String) savedStateHandle.a("KEY_FIRSTNAME_VALUE");
        str3 = str3 == null ? "" : str3;
        String str4 = (String) savedStateHandle.a("KEY_LASTNAME_VALUE");
        str4 = str4 == null ? "" : str4;
        String str5 = (String) savedStateHandle.a("KEY_IDENTITY_TOKEN_VALUE");
        String str6 = str5 == null ? "" : str5;
        String str7 = (String) savedStateHandle.a("KEY_RAW_NONCE_VALUE");
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(new SocialRegisterUiModel(str2, str3, str4, null, null, null, false, null, null, str6, null, str7 == null ? "" : str7, (TrackingAuthOrigin) savedStateHandle.a("KEY_ORIGIN_VALUE"), (TrackingAuthEntryPoint) savedStateHandle.a("KEY_ENTRY_POINT_VALUE"), (SocialAuthMode) savedStateHandle.a("KEY_PROVIDER_VALUE"), 1528, null));
        this.o = mutableStateFlowA;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.p = linkedHashMap;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(Boolean.FALSE);
        this.q = mutableStateFlowA2;
        this.r = requireUserInAppDispatchUseCase.f49912a.b();
        BufferedChannel bufferedChannelA = ChannelKt.a(0, 7, null);
        this.s = bufferedChannelA;
        this.t = FlowKt.y(bufferedChannelA);
        BufferedChannel bufferedChannelA2 = ChannelKt.a(0, 7, null);
        this.u = bufferedChannelA2;
        this.v = FlowKt.y(bufferedChannelA2);
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(new SocialRegisterFeatureFlags(false, false, 3, null));
        this.w = mutableStateFlowA3;
        final Flow[] flowArr = {mutableStateFlowA, dynamicFormSupervisor.getF57468c(), dynamicFormSupervisor2.getF57468c(), mutableStateFlowA2, mutableStateFlowA3};
        Flow<SocialRegisterViewState> flow = new Flow<SocialRegisterViewState>() { // from class: com.vuitton.android.presentation.screen.authentication.social.SocialRegisterViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.authentication.social.SocialRegisterViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.social.SocialRegisterViewModelImpl$special$$inlined$combine$1$3", f = "SocialRegisterViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super SocialRegisterViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f54123b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f54124c;
                public /* synthetic */ Object[] d;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3);
                    anonymousClass3.f54124c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f54124c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f54123b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        Object obj2 = objArr[1];
                        obj2.getClass();
                        Object obj3 = objArr[0];
                        obj3.getClass();
                        FormUiModel formUiModelA = FormUiModel.a(CollectionsKt.o0(((FormUiModel) obj2).f57486a, 
                        /*  JADX ERROR: Method code generation error
                            jadx.core.utils.exceptions.CodegenException: Error generate insn: 0x003b: INVOKE (r9v1 'formUiModelA' com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel) = 
                              (wrap java.util.List:0x0037: INVOKE 
                              (wrap java.util.List:0x002e: IGET 
                              (wrap com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel:0x0022: CHECK_CAST (com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel) (r4v1 'obj2' java.lang.Object))
                             A[WRAPPED] com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel.a java.util.List)
                              (wrap java.util.Comparator:0x0034: CONSTRUCTOR  A[MD:():void (m), WRAPPED] call: com.vuitton.android.presentation.screen.authentication.social.SocialRegisterViewModelImpl$viewState$lambda$0$$inlined$sortedBy$1.<init>():void type: CONSTRUCTOR)
                             STATIC call: kotlin.collections.CollectionsKt.o0(java.lang.Iterable, java.util.Comparator):java.util.List A[MD:(java.lang.Iterable, java.util.Comparator):java.util.List (m), WRAPPED])
                             STATIC call: com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel.a(java.util.List):com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel A[DECLARE_VAR, MD:(java.util.List):com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel (m)] in method: com.vuitton.android.presentation.screen.authentication.social.SocialRegisterViewModelImpl$special$$inlined$combine$1.3.invokeSuspend(java.lang.Object):java.lang.Object, file: classes4.dex
                            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:310)
                            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:273)
                            	at jadx.core.codegen.RegionGen.makeSimpleBlock(RegionGen.java:94)
                            	at jadx.core.dex.nodes.IBlock.generate(IBlock.java:15)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.RegionGen.makeRegionIndent(RegionGen.java:83)
                            	at jadx.core.codegen.RegionGen.makeIf(RegionGen.java:126)
                            	at jadx.core.dex.regions.conditions.IfRegion.generate(IfRegion.java:90)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.dex.regions.Region.generate(Region.java:35)
                            	at jadx.core.codegen.RegionGen.makeRegion(RegionGen.java:66)
                            	at jadx.core.codegen.MethodGen.addRegionInsns(MethodGen.java:291)
                            	at jadx.core.codegen.MethodGen.addInstructions(MethodGen.java:270)
                            	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:420)
                            	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
                            	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
                            	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:183)
                            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
                            	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
                            	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:258)
                            Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Expected class to be processed at this point, class: com.vuitton.android.presentation.screen.authentication.social.SocialRegisterViewModelImpl$viewState$lambda$0$$inlined$sortedBy$1, state: NOT_LOADED
                            	at jadx.core.dex.nodes.ClassNode.ensureProcessed(ClassNode.java:306)
                            	at jadx.core.codegen.InsnGen.inlineAnonymousConstructor(InsnGen.java:807)
                            	at jadx.core.codegen.InsnGen.makeConstructor(InsnGen.java:730)
                            	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:418)
                            	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:145)
                            	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:121)
                            	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:108)
                            	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:1143)
                            	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:910)
                            	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:422)
                            	at jadx.core.codegen.InsnGen.addWrappedArg(InsnGen.java:145)
                            	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:121)
                            	at jadx.core.codegen.InsnGen.addArg(InsnGen.java:108)
                            	at jadx.core.codegen.InsnGen.generateMethodArguments(InsnGen.java:1143)
                            	at jadx.core.codegen.InsnGen.makeInvoke(InsnGen.java:910)
                            	at jadx.core.codegen.InsnGen.makeInsnBody(InsnGen.java:422)
                            	at jadx.core.codegen.InsnGen.makeInsn(InsnGen.java:303)
                            	... 21 more
                            */
                        /*
                            this = this;
                            r0 = r16
                            kotlinx.coroutines.flow.FlowCollector r1 = r0.f54124c
                            java.lang.Object[] r2 = r0.d
                            kotlin.coroutines.intrinsics.CoroutineSingletons r3 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                            int r4 = r0.f54123b
                            r5 = 0
                            r6 = 1
                            if (r4 == 0) goto L1a
                            if (r4 != r6) goto L14
                            kotlin.ResultKt.b(r17)
                            goto L71
                        L14:
                            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                            defpackage.md.k(r0)
                            return r5
                        L1a:
                            kotlin.ResultKt.b(r17)
                            r4 = r2[r6]
                            r4.getClass()
                            com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel r4 = (com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel) r4
                            com.vuitton.android.presentation.screen.authentication.social.models.SocialRegisterViewState r7 = new com.vuitton.android.presentation.screen.authentication.social.models.SocialRegisterViewState
                            r8 = 0
                            r8 = r2[r8]
                            r8.getClass()
                            com.vuitton.android.presentation.screen.authentication.social.models.SocialRegisterUiModel r8 = (com.vuitton.android.presentation.screen.authentication.social.models.SocialRegisterUiModel) r8
                            java.util.List r4 = r4.f57486a
                            java.lang.Iterable r4 = (java.lang.Iterable) r4
                            com.vuitton.android.presentation.screen.authentication.social.SocialRegisterViewModelImpl$viewState$lambda$0$$inlined$sortedBy$1 r9 = new com.vuitton.android.presentation.screen.authentication.social.SocialRegisterViewModelImpl$viewState$lambda$0$$inlined$sortedBy$1
                            r9.<init>()
                            java.util.List r4 = kotlin.collections.CollectionsKt.o0(r4, r9)
                            com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel r9 = com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel.a(r4)
                            r4 = 2
                            r4 = r2[r4]
                            r4.getClass()
                            r10 = r4
                            com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel r10 = (com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel) r10
                            r4 = 3
                            r4 = r2[r4]
                            r4.getClass()
                            java.lang.Boolean r4 = (java.lang.Boolean) r4
                            boolean r11 = r4.booleanValue()
                            r4 = 4
                            r2 = r2[r4]
                            r2.getClass()
                            r13 = r2
                            com.vuitton.android.presentation.screen.authentication.social.models.SocialRegisterFeatureFlags r13 = (com.vuitton.android.presentation.screen.authentication.social.models.SocialRegisterFeatureFlags) r13
                            r14 = 16
                            r15 = 0
                            r12 = 0
                            r7.<init>(r8, r9, r10, r11, r12, r13, r14, r15)
                            r0.f54124c = r5
                            r0.d = r5
                            r0.f54123b = r6
                            java.lang.Object r0 = r1.emit(r7, r0)
                            if (r0 != r3) goto L71
                            return r3
                        L71:
                            kotlin.Unit r0 = kotlin.Unit.f71739a
                            return r0
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.authentication.social.SocialRegisterViewModelImpl$special$$inlined$combine$1.AnonymousClass3.invokeSuspend(java.lang.Object):java.lang.Object");
                    }
                }

                @Override // kotlinx.coroutines.flow.Flow
                public final Object f(FlowCollector flowCollector, Continuation continuation) {
                    final Flow[] flowArr2 = flowArr;
                    Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.authentication.social.SocialRegisterViewModelImpl$special$$inlined$combine$1.2
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
            this.x = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74988c, new SocialRegisterViewState(0 == true ? 1 : 0, 0 == true ? 1 : 0, null, false, false, null, 63, null));
            BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(null), 3);
            Job job = (Job) linkedHashMap.get("loadDynamicRegistrationFormJob");
            if (job == null || !job.isActive()) {
                linkedHashMap.put("loadDynamicRegistrationFormJob", BuildersKt.c(ViewModelKt.a(this), null, null, new SocialRegisterViewModelImpl$loadRegistrationForms$1(this, null), 3));
            }
        }

        public static final Object Ac(SocialRegisterViewModelImpl socialRegisterViewModelImpl, int i2, Continuation continuation) {
            Object objU = socialRegisterViewModelImpl.s.u(NotificationBuilder.a(socialRegisterViewModelImpl.f54088f, new StringResourceUiModel.ResId(i2, null, 2, null), false, null, null, 60), continuation);
            return objU == CoroutineSingletons.COROUTINE_SUSPENDED ? objU : Unit.f71739a;
        }

        /* JADX WARN: Code duplicated, block: B:8:0x0014  */
        public static final Object yc(SocialRegisterViewModelImpl socialRegisterViewModelImpl, ContinuationImpl continuationImpl) {
            SocialRegisterViewModelImpl$loadSocialConsentForm$1 socialRegisterViewModelImpl$loadSocialConsentForm$1;
            if (continuationImpl instanceof SocialRegisterViewModelImpl$loadSocialConsentForm$1) {
                socialRegisterViewModelImpl$loadSocialConsentForm$1 = (SocialRegisterViewModelImpl$loadSocialConsentForm$1) continuationImpl;
                int i2 = socialRegisterViewModelImpl$loadSocialConsentForm$1.d;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    socialRegisterViewModelImpl$loadSocialConsentForm$1.d = i2 - Integer.MIN_VALUE;
                } else {
                    socialRegisterViewModelImpl$loadSocialConsentForm$1 = new SocialRegisterViewModelImpl$loadSocialConsentForm$1(socialRegisterViewModelImpl, continuationImpl);
                }
            } else {
                socialRegisterViewModelImpl$loadSocialConsentForm$1 = new SocialRegisterViewModelImpl$loadSocialConsentForm$1(socialRegisterViewModelImpl, continuationImpl);
            }
            SocialRegisterViewModelImpl$loadSocialConsentForm$1 socialRegisterViewModelImpl$loadSocialConsentForm$2 = socialRegisterViewModelImpl$loadSocialConsentForm$1;
            Object obj = socialRegisterViewModelImpl$loadSocialConsentForm$2.f54103b;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i3 = socialRegisterViewModelImpl$loadSocialConsentForm$2.d;
            if (i3 == 0) {
                ResultKt.b(obj);
                DynamicFormSupervisor dynamicFormSupervisor = socialRegisterViewModelImpl.f54090i;
                SocialRegisterViewModelImpl$loadSocialConsentForm$2 socialRegisterViewModelImpl$loadSocialConsentForm$3 = new SocialRegisterViewModelImpl$loadSocialConsentForm$2(socialRegisterViewModelImpl, null);
                av0 av0Var = new av0(26);
                socialRegisterViewModelImpl$loadSocialConsentForm$2.d = 1;
                if (dynamicFormSupervisor.b(socialRegisterViewModelImpl$loadSocialConsentForm$3, (124 & 2) != 0 ? new iv(2) : av0Var, (124 & 4) != 0 ? new rq(7) : null, (124 & 8) != 0 ? new iv(3) : null, (124 & 16) != 0 ? new rt(11) : null, (124 & 32) != 0 ? new iv(4) : null, (124 & 64) != 0 ? new rq(8) : null, (124 & 128) != 0 ? new iv(5) : null, (124 & 256) != 0 ? new iv(6) : null, socialRegisterViewModelImpl$loadSocialConsentForm$2) == coroutineSingletons) {
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
            return Unit.f71739a;
        }

        /* JADX WARN: Code duplicated, block: B:8:0x0014  */
        public static final Object zc(final SocialRegisterViewModelImpl socialRegisterViewModelImpl, ContinuationImpl continuationImpl) {
            SocialRegisterViewModelImpl$loadSocialRegistrationForm$1 socialRegisterViewModelImpl$loadSocialRegistrationForm$1;
            Object value;
            if (continuationImpl instanceof SocialRegisterViewModelImpl$loadSocialRegistrationForm$1) {
                socialRegisterViewModelImpl$loadSocialRegistrationForm$1 = (SocialRegisterViewModelImpl$loadSocialRegistrationForm$1) continuationImpl;
                int i2 = socialRegisterViewModelImpl$loadSocialRegistrationForm$1.d;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    socialRegisterViewModelImpl$loadSocialRegistrationForm$1.d = i2 - Integer.MIN_VALUE;
                } else {
                    socialRegisterViewModelImpl$loadSocialRegistrationForm$1 = new SocialRegisterViewModelImpl$loadSocialRegistrationForm$1(socialRegisterViewModelImpl, continuationImpl);
                }
            } else {
                socialRegisterViewModelImpl$loadSocialRegistrationForm$1 = new SocialRegisterViewModelImpl$loadSocialRegistrationForm$1(socialRegisterViewModelImpl, continuationImpl);
            }
            SocialRegisterViewModelImpl$loadSocialRegistrationForm$1 socialRegisterViewModelImpl$loadSocialRegistrationForm$2 = socialRegisterViewModelImpl$loadSocialRegistrationForm$1;
            Object obj = socialRegisterViewModelImpl$loadSocialRegistrationForm$2.f54107b;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i3 = socialRegisterViewModelImpl$loadSocialRegistrationForm$2.d;
            final int i4 = 1;
            if (i3 == 0) {
                ResultKt.b(obj);
                LinkedHashSet linkedHashSetE = SetsKt.e(FormSectionTypeUiModel.EMAIL, FormSectionTypeUiModel.CIVILITY, FormSectionTypeUiModel.FIRSTNAME1, FormSectionTypeUiModel.FIRSTNAME2, FormSectionTypeUiModel.LASTNAME1, FormSectionTypeUiModel.LASTNAME2);
                DynamicFormSupervisor dynamicFormSupervisor = socialRegisterViewModelImpl.f54089h;
                SocialRegisterViewModelImpl$loadSocialRegistrationForm$2 socialRegisterViewModelImpl$loadSocialRegistrationForm$3 = new SocialRegisterViewModelImpl$loadSocialRegistrationForm$2(socialRegisterViewModelImpl, null);
                xo0 xo0Var = new xo0(linkedHashSetE, 28);
                zt0 zt0Var = new zt0(socialRegisterViewModelImpl);
                final int i5 = 0;
                Function1 function1 = new Function1(socialRegisterViewModelImpl) { // from class: e01

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ SocialRegisterViewModelImpl f68718c;

                    {
                        this.f68718c = socialRegisterViewModelImpl;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        int i6 = i5;
                        SocialRegisterViewModelImpl socialRegisterViewModelImpl2 = this.f68718c;
                        FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj2;
                        switch (i6) {
                            case 0:
                                formSectionTypeUiModel.getClass();
                                MutableStateFlow mutableStateFlow = socialRegisterViewModelImpl2.o;
                                int i7 = SocialRegisterViewModelImpl.WhenMappings.f54096a[formSectionTypeUiModel.ordinal()];
                                if (i7 == 1) {
                                    return ((SocialRegisterUiModel) mutableStateFlow.getValue()).f54226a;
                                }
                                if (i7 == 3) {
                                    return ((SocialRegisterUiModel) mutableStateFlow.getValue()).f54227b;
                                }
                                if (i7 != 5) {
                                    return null;
                                }
                                return ((SocialRegisterUiModel) mutableStateFlow.getValue()).f54228c;
                            default:
                                formSectionTypeUiModel.getClass();
                                MutableStateFlow mutableStateFlow2 = socialRegisterViewModelImpl2.o;
                                GenericFieldValidationRules genericFieldValidationRules = socialRegisterViewModelImpl2.g;
                                int i8 = SocialRegisterViewModelImpl.WhenMappings.f54096a[formSectionTypeUiModel.ordinal()];
                                if (i8 == 3 || i8 == 4) {
                                    FieldErrorUiModel fieldErrorUiModel = ((SocialRegisterUiModel) mutableStateFlow2.getValue()).f54231h;
                                    genericFieldValidationRules.getClass();
                                    return GenericFieldValidationRules.a(fieldErrorUiModel);
                                }
                                if (i8 != 5 && i8 != 6) {
                                    return null;
                                }
                                FieldErrorUiModel fieldErrorUiModel2 = ((SocialRegisterUiModel) mutableStateFlow2.getValue()).f54232i;
                                genericFieldValidationRules.getClass();
                                return GenericFieldValidationRules.a(fieldErrorUiModel2);
                        }
                    }
                };
                Function1 function2 = new Function1(socialRegisterViewModelImpl) { // from class: e01

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ SocialRegisterViewModelImpl f68718c;

                    {
                        this.f68718c = socialRegisterViewModelImpl;
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        int i6 = i4;
                        SocialRegisterViewModelImpl socialRegisterViewModelImpl2 = this.f68718c;
                        FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj2;
                        switch (i6) {
                            case 0:
                                formSectionTypeUiModel.getClass();
                                MutableStateFlow mutableStateFlow = socialRegisterViewModelImpl2.o;
                                int i7 = SocialRegisterViewModelImpl.WhenMappings.f54096a[formSectionTypeUiModel.ordinal()];
                                if (i7 == 1) {
                                    return ((SocialRegisterUiModel) mutableStateFlow.getValue()).f54226a;
                                }
                                if (i7 == 3) {
                                    return ((SocialRegisterUiModel) mutableStateFlow.getValue()).f54227b;
                                }
                                if (i7 != 5) {
                                    return null;
                                }
                                return ((SocialRegisterUiModel) mutableStateFlow.getValue()).f54228c;
                            default:
                                formSectionTypeUiModel.getClass();
                                MutableStateFlow mutableStateFlow2 = socialRegisterViewModelImpl2.o;
                                GenericFieldValidationRules genericFieldValidationRules = socialRegisterViewModelImpl2.g;
                                int i8 = SocialRegisterViewModelImpl.WhenMappings.f54096a[formSectionTypeUiModel.ordinal()];
                                if (i8 == 3 || i8 == 4) {
                                    FieldErrorUiModel fieldErrorUiModel = ((SocialRegisterUiModel) mutableStateFlow2.getValue()).f54231h;
                                    genericFieldValidationRules.getClass();
                                    return GenericFieldValidationRules.a(fieldErrorUiModel);
                                }
                                if (i8 != 5 && i8 != 6) {
                                    return null;
                                }
                                FieldErrorUiModel fieldErrorUiModel2 = ((SocialRegisterUiModel) mutableStateFlow2.getValue()).f54232i;
                                genericFieldValidationRules.getClass();
                                return GenericFieldValidationRules.a(fieldErrorUiModel2);
                        }
                    }
                };
                socialRegisterViewModelImpl$loadSocialRegistrationForm$2.d = 1;
                if (dynamicFormSupervisor.b(socialRegisterViewModelImpl$loadSocialRegistrationForm$3, (124 & 2) != 0 ? new iv(2) : xo0Var, (124 & 4) != 0 ? new rq(7) : zt0Var, (124 & 8) != 0 ? new iv(3) : null, (124 & 16) != 0 ? new rt(11) : null, (124 & 32) != 0 ? new iv(4) : function1, (124 & 64) != 0 ? new rq(8) : null, (124 & 128) != 0 ? new iv(5) : function2, (124 & 256) != 0 ? new iv(6) : null, socialRegisterViewModelImpl$loadSocialRegistrationForm$2) == coroutineSingletons) {
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
            FormUiModel formUiModel = (FormUiModel) socialRegisterViewModelImpl.f54089h.getF57468c().getValue();
            FormSectionTypeUiModel formSectionTypeUiModel = FormSectionTypeUiModel.CIVILITY;
            FormUiModel.Companion companion = FormUiModel.f57485b;
            String strE = formUiModel.e(formSectionTypeUiModel, true);
            if (!StringsKt.w(strE)) {
                MutableStateFlow mutableStateFlow = socialRegisterViewModelImpl.o;
                do {
                    value = mutableStateFlow.getValue();
                } while (!mutableStateFlow.i(value, SocialRegisterUiModel.a((SocialRegisterUiModel) value, null, null, null, null, strE, false, 32735)));
            }
            return Unit.f71739a;
        }

        @Override // com.vuitton.android.presentation.screen.authentication.social.SocialRegisterViewModel
        public final Flow a() {
            return this.x;
        }

        @Override // com.vuitton.android.presentation.screen.authentication.social.SocialRegisterViewModel
        /* JADX INFO: renamed from: b, reason: from getter */
        public final Flow getT() {
            return this.t;
        }
    }
