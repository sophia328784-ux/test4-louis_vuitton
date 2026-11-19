package com.vuitton.android.presentation.screen.privacy;

import android.app.Application;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.core.events.LVEventSender;
import com.vuitton.android.domain.usecase.analytics.tools.InitializePrivacyRelatedToolsUseCase;
import com.vuitton.android.domain.usecase.analytics.tools.appsflyer.StartAppsFlyerUseCase;
import com.vuitton.android.domain.usecase.analytics.tools.appsflyer.StopAppsFlyerUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.permissions.SetNotificationsPermissionAskedUseCase;
import com.vuitton.android.domain.usecase.permissions.ShouldRequestNotificationsPermissionUseCase;
import com.vuitton.android.domain.usecase.privacy.consent.GetConsentListUseCase;
import com.vuitton.android.domain.usecase.privacy.consent.GetConsentTypeUseCase;
import com.vuitton.android.domain.usecase.privacy.consent.GetPiplCbdtAgreementUseCase;
import com.vuitton.android.domain.usecase.privacy.consent.SetConsentsUseCase;
import com.vuitton.android.domain.usecase.privacy.consent.SetPiplCbdtAgreementUseCase;
import com.vuitton.android.domain.usecase.privacy.consent.UserHasConsentForAppsFlyerUseCase;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.privacy.models.ConsentUiModel;
import com.vuitton.android.presentation.screen.privacy.models.ConsentValueUiModel;
import com.vuitton.android.presentation.screen.privacy.models.PrivacyTrackingUiModel;
import com.vuitton.android.presentation.screen.privacy.models.PrivacyViewState;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.privacy.PrivacyType;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
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
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
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
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0089\u0001\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!¢\u0006\u0004\b#\u0010$¨\u0006%"}, d2 = {"Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;", "Landroidx/lifecycle/AndroidViewModel;", "Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;", "Landroid/app/Application;", "application", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentTypeUseCase;", "getConsentTypeByLocale", "Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentListUseCase;", "getConsentListUseCase", "Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;", "shouldRequestNotificationsPermissionUseCase", "Lcom/vuitton/android/domain/usecase/permissions/SetNotificationsPermissionAskedUseCase;", "setNotificationsPermissionAskedUseCase", "Lcom/vuitton/android/domain/usecase/privacy/consent/SetPiplCbdtAgreementUseCase;", "setPiplCbdtAgreementUseCase", "Lcom/vuitton/android/domain/usecase/privacy/consent/GetPiplCbdtAgreementUseCase;", "getPiplCbdtAgreementUseCase", "Lcom/vuitton/android/domain/usecase/privacy/consent/SetConsentsUseCase;", "setConsentsUseCase", "Lcom/vuitton/android/domain/usecase/analytics/tools/InitializePrivacyRelatedToolsUseCase;", "initializePrivacyRelatedToolsUseCase", "Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/StartAppsFlyerUseCase;", "startAppsFlyerUseCase", "Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/StopAppsFlyerUseCase;", "stopAppsFlyerUseCase", "Lcom/vuitton/android/domain/usecase/privacy/consent/UserHasConsentForAppsFlyerUseCase;", "userHasConsentForAppsFlyerUseCase", "Lcom/vuitton/android/core/events/LVEventSender;", "eventSender", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "<init>", "(Landroid/app/Application;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentTypeUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentListUseCase;Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;Lcom/vuitton/android/domain/usecase/permissions/SetNotificationsPermissionAskedUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/SetPiplCbdtAgreementUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/GetPiplCbdtAgreementUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/SetConsentsUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/InitializePrivacyRelatedToolsUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/StartAppsFlyerUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/StopAppsFlyerUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/UserHasConsentForAppsFlyerUseCase;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PrivacyViewModelImpl extends AndroidViewModel implements PrivacyViewModel {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnalyticsTracker f63348b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final GetConsentListUseCase f63349c;
    public final ShouldRequestNotificationsPermissionUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SetNotificationsPermissionAskedUseCase f63350e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SetPiplCbdtAgreementUseCase f63351f;
    public final GetPiplCbdtAgreementUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final SetConsentsUseCase f63352h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final InitializePrivacyRelatedToolsUseCase f63353i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final StartAppsFlyerUseCase f63354j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final StopAppsFlyerUseCase f63355k;
    public final UserHasConsentForAppsFlyerUseCase l;
    public final LVEventSender m;
    public final Logger n;
    public final MutableStateFlow o;
    public final MutableStateFlow p;
    public final MutableStateFlow q;
    public final MutableStateFlow r;
    public final MutableStateFlow s;
    public final MutableStateFlow t;
    public final SharedFlowImpl u;
    public final SharedFlow v;
    public final SharedFlowImpl w;
    public final SharedFlow x;
    public final StateFlow y;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f63356a;

        static {
            int[] iArr = new int[PrivacyType.values().length];
            try {
                iArr[PrivacyType.CCPA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PrivacyType.GDPR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PrivacyType.PIPL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f63356a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public PrivacyViewModelImpl(Application application, AnalyticsTracker analyticsTracker, GetConsentTypeUseCase getConsentTypeUseCase, GetConsentListUseCase getConsentListUseCase, ShouldRequestNotificationsPermissionUseCase shouldRequestNotificationsPermissionUseCase, SetNotificationsPermissionAskedUseCase setNotificationsPermissionAskedUseCase, SetPiplCbdtAgreementUseCase setPiplCbdtAgreementUseCase, GetPiplCbdtAgreementUseCase getPiplCbdtAgreementUseCase, SetConsentsUseCase setConsentsUseCase, InitializePrivacyRelatedToolsUseCase initializePrivacyRelatedToolsUseCase, StartAppsFlyerUseCase startAppsFlyerUseCase, StopAppsFlyerUseCase stopAppsFlyerUseCase, UserHasConsentForAppsFlyerUseCase userHasConsentForAppsFlyerUseCase, LVEventSender lVEventSender, Logger logger, IsFeatureAvailableUseCase isFeatureAvailableUseCase) {
        super(application);
        application.getClass();
        analyticsTracker.getClass();
        getConsentTypeUseCase.getClass();
        getConsentListUseCase.getClass();
        shouldRequestNotificationsPermissionUseCase.getClass();
        setNotificationsPermissionAskedUseCase.getClass();
        setPiplCbdtAgreementUseCase.getClass();
        getPiplCbdtAgreementUseCase.getClass();
        setConsentsUseCase.getClass();
        initializePrivacyRelatedToolsUseCase.getClass();
        startAppsFlyerUseCase.getClass();
        stopAppsFlyerUseCase.getClass();
        userHasConsentForAppsFlyerUseCase.getClass();
        lVEventSender.getClass();
        logger.getClass();
        isFeatureAvailableUseCase.getClass();
        this.f63348b = analyticsTracker;
        this.f63349c = getConsentListUseCase;
        this.d = shouldRequestNotificationsPermissionUseCase;
        this.f63350e = setNotificationsPermissionAskedUseCase;
        this.f63351f = setPiplCbdtAgreementUseCase;
        this.g = getPiplCbdtAgreementUseCase;
        this.f63352h = setConsentsUseCase;
        this.f63353i = initializePrivacyRelatedToolsUseCase;
        this.f63354j = startAppsFlyerUseCase;
        this.f63355k = stopAppsFlyerUseCase;
        this.l = userHasConsentForAppsFlyerUseCase;
        this.m = lVEventSender;
        this.n = logger;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(PrivacyType.GDPR);
        this.o = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(EmptyList.f71768b);
        this.p = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(Boolean.TRUE);
        this.q = mutableStateFlowA3;
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(bool);
        this.r = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(bool);
        this.s = mutableStateFlowA5;
        MutableStateFlow mutableStateFlowA6 = StateFlowKt.a(bool);
        this.t = mutableStateFlowA6;
        SharedFlowImpl sharedFlowImplB = SharedFlowKt.b(0, 1, null, 5);
        this.u = sharedFlowImplB;
        this.v = FlowKt.a(sharedFlowImplB);
        SharedFlowImpl sharedFlowImplB2 = SharedFlowKt.b(0, 1, null, 5);
        this.w = sharedFlowImplB2;
        this.x = FlowKt.a(sharedFlowImplB2);
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA4, mutableStateFlowA5, mutableStateFlowA6};
        Flow<PrivacyViewState> flow = new Flow<PrivacyViewState>() { // from class: com.vuitton.android.presentation.screen.privacy.PrivacyViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.privacy.PrivacyViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.privacy.PrivacyViewModelImpl$special$$inlined$combine$1$3", f = "PrivacyViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super PrivacyViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f63373b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f63374c;
                public /* synthetic */ Object[] d;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3);
                    anonymousClass3.f63374c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f63374c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f63373b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        PrivacyType privacyType = (PrivacyType) obj2;
                        Object obj3 = objArr[1];
                        obj3.getClass();
                        List list = (List) obj3;
                        Object obj4 = objArr[2];
                        obj4.getClass();
                        boolean zBooleanValue = ((Boolean) obj4).booleanValue();
                        Object obj5 = objArr[3];
                        obj5.getClass();
                        boolean zBooleanValue2 = ((Boolean) obj5).booleanValue();
                        Object obj6 = objArr[4];
                        obj6.getClass();
                        boolean zBooleanValue3 = ((Boolean) obj6).booleanValue();
                        Object obj7 = objArr[5];
                        obj7.getClass();
                        PrivacyViewState privacyViewState = new PrivacyViewState(privacyType, list, zBooleanValue, zBooleanValue2, zBooleanValue3, ((Boolean) obj7).booleanValue());
                        this.f63374c = null;
                        this.d = null;
                        this.f63373b = 1;
                        if (flowCollector.emit(privacyViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.privacy.PrivacyViewModelImpl$special$$inlined$combine$1.2
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
        this.y = FlowKt.A(flow, closeableCoroutineScopeA, SharingStarted.Companion.f74987b, new PrivacyViewState(null, null, false, false, false, false, 63, null));
        mutableStateFlowA6.setValue(Boolean.valueOf(isFeatureAvailableUseCase.b(new Feature[]{Feature.POWERFRONT})));
        mutableStateFlowA5.setValue(Boolean.valueOf(isFeatureAvailableUseCase.b(new Feature[]{Feature.APPSFLYER})));
        mutableStateFlowA.setValue(getConsentTypeUseCase.f50268a.k());
        BuildersKt.c(ViewModelKt.a(this), null, null, new PrivacyViewModelImpl$getConsents$1(this, null), 3);
        if (mutableStateFlowA.getValue() == PrivacyType.PIPL) {
            BuildersKt.c(ViewModelKt.a(this), null, null, new PrivacyViewModelImpl$getPiplCbdtAgreement$1(this, null), 3);
        }
    }

    public static final void yc(PrivacyViewModelImpl privacyViewModelImpl, PrivacyTrackingUiModel privacyTrackingUiModel) {
        Object next;
        Object next2;
        Object next3;
        Object next4;
        Hit defaultEventHit;
        Object next5;
        Object next6;
        Object next7;
        Object next8;
        AnalyticsTracker analyticsTracker = privacyViewModelImpl.f63348b;
        if (privacyTrackingUiModel instanceof PrivacyTrackingUiModel.PrivacyParamsScreen) {
            List list = ((PrivacyTrackingUiModel.PrivacyParamsScreen) privacyTrackingUiModel).f63408a;
            Iterator it = list.iterator();
            do {
                if (!it.hasNext()) {
                    next5 = null;
                    break;
                }
                next5 = it.next();
            } while (!(((ConsentUiModel) next5) instanceof ConsentUiModel.FunctionalConsentUiModel));
            ConsentUiModel consentUiModel = (ConsentUiModel) next5;
            boolean z = (consentUiModel != null ? consentUiModel.f63400a : null) != ConsentValueUiModel.REFUSED;
            Iterator it2 = list.iterator();
            do {
                if (!it2.hasNext()) {
                    next6 = null;
                    break;
                }
                next6 = it2.next();
            } while (!(((ConsentUiModel) next6) instanceof ConsentUiModel.AnalyticsConsentUiModel));
            ConsentUiModel consentUiModel2 = (ConsentUiModel) next6;
            boolean z2 = (consentUiModel2 != null ? consentUiModel2.f63400a : null) != ConsentValueUiModel.REFUSED;
            Iterator it3 = list.iterator();
            do {
                if (!it3.hasNext()) {
                    next7 = null;
                    break;
                }
                next7 = it3.next();
            } while (!(((ConsentUiModel) next7) instanceof ConsentUiModel.CustomisationConsentUiModel));
            ConsentUiModel consentUiModel3 = (ConsentUiModel) next7;
            boolean z3 = (consentUiModel3 != null ? consentUiModel3.f63400a : null) != ConsentValueUiModel.REFUSED;
            Iterator it4 = list.iterator();
            do {
                if (!it4.hasNext()) {
                    next8 = null;
                    break;
                }
                next8 = it4.next();
            } while (!(((ConsentUiModel) next8) instanceof ConsentUiModel.SocialConsentUiModel));
            ConsentUiModel consentUiModel4 = (ConsentUiModel) next8;
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/Consent_manager", null, "consent_manager", CollectionsKt.O(new AdditionalProperty.CookieConsent(z, z2, z3, (consentUiModel4 != null ? consentUiModel4.f63400a : null) != ConsentValueUiModel.REFUSED, null, 16, null)), 1, null);
        } else {
            if (!(privacyTrackingUiModel instanceof PrivacyTrackingUiModel.PrivacyParamsSelectedEvent)) {
                v40.g();
                return;
            }
            List list2 = ((PrivacyTrackingUiModel.PrivacyParamsSelectedEvent) privacyTrackingUiModel).f63409a;
            Iterator it5 = list2.iterator();
            do {
                if (!it5.hasNext()) {
                    next = null;
                    break;
                }
                next = it5.next();
            } while (!(((ConsentUiModel) next) instanceof ConsentUiModel.FunctionalConsentUiModel));
            ConsentUiModel consentUiModel5 = (ConsentUiModel) next;
            boolean z4 = (consentUiModel5 != null ? consentUiModel5.f63400a : null) != ConsentValueUiModel.REFUSED;
            Iterator it6 = list2.iterator();
            do {
                if (!it6.hasNext()) {
                    next2 = null;
                    break;
                }
                next2 = it6.next();
            } while (!(((ConsentUiModel) next2) instanceof ConsentUiModel.AnalyticsConsentUiModel));
            ConsentUiModel consentUiModel6 = (ConsentUiModel) next2;
            boolean z5 = (consentUiModel6 != null ? consentUiModel6.f63400a : null) != ConsentValueUiModel.REFUSED;
            Iterator it7 = list2.iterator();
            do {
                if (!it7.hasNext()) {
                    next3 = null;
                    break;
                }
                next3 = it7.next();
            } while (!(((ConsentUiModel) next3) instanceof ConsentUiModel.CustomisationConsentUiModel));
            ConsentUiModel consentUiModel7 = (ConsentUiModel) next3;
            boolean z6 = (consentUiModel7 != null ? consentUiModel7.f63400a : null) != ConsentValueUiModel.REFUSED;
            Iterator it8 = list2.iterator();
            do {
                if (!it8.hasNext()) {
                    next4 = null;
                    break;
                }
                next4 = it8.next();
            } while (!(((ConsentUiModel) next4) instanceof ConsentUiModel.SocialConsentUiModel));
            ConsentUiModel consentUiModel8 = (ConsentUiModel) next4;
            defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/consent_manager", "save", "consent_manager", "submit_consent", null, CollectionsKt.O(new AdditionalProperty.CookieConsent(z4, z5, z6, (consentUiModel8 != null ? consentUiModel8.f63400a : null) != ConsentValueUiModel.REFUSED, null)), 33, null);
        }
        analyticsTracker.a(defaultEventHit);
    }

    @Override // com.vuitton.android.presentation.screen.privacy.PrivacyViewModel
    public final void O4() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new PrivacyViewModelImpl$initiatePrivacyRelatedTools$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.privacy.PrivacyViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getY() {
        return this.y;
    }

    @Override // com.vuitton.android.presentation.screen.privacy.PrivacyViewModel
    public final void a4() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new PrivacyViewModelImpl$saveConsents$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.privacy.PrivacyViewModel
    public final void d1(ConsentUiModel consentUiModel, boolean z) {
        ConsentUiModel lucieLabsConsentUiModel;
        consentUiModel.getClass();
        MutableStateFlow mutableStateFlow = this.p;
        Iterable<ConsentUiModel> iterable = (Iterable) mutableStateFlow.getValue();
        ArrayList arrayList = new ArrayList(CollectionsKt.t(iterable, 10));
        for (ConsentUiModel consentUiModel2 : iterable) {
            if (Intrinsics.c(consentUiModel2, consentUiModel)) {
                consentUiModel2.getClass();
                if (consentUiModel2 instanceof ConsentUiModel.FunctionalConsentUiModel) {
                    ConsentValueUiModel consentValueUiModel = z ? ConsentValueUiModel.GIVEN : ConsentValueUiModel.REFUSED;
                    consentValueUiModel.getClass();
                    lucieLabsConsentUiModel = new ConsentUiModel.FunctionalConsentUiModel(consentValueUiModel);
                } else if (consentUiModel2 instanceof ConsentUiModel.AnalyticsConsentUiModel) {
                    ConsentValueUiModel consentValueUiModel2 = z ? ConsentValueUiModel.GIVEN : ConsentValueUiModel.REFUSED;
                    consentValueUiModel2.getClass();
                    lucieLabsConsentUiModel = new ConsentUiModel.AnalyticsConsentUiModel(consentValueUiModel2);
                } else if (consentUiModel2 instanceof ConsentUiModel.CustomisationConsentUiModel) {
                    ConsentValueUiModel consentValueUiModel3 = z ? ConsentValueUiModel.GIVEN : ConsentValueUiModel.REFUSED;
                    consentValueUiModel3.getClass();
                    lucieLabsConsentUiModel = new ConsentUiModel.CustomisationConsentUiModel(consentValueUiModel3);
                } else if (consentUiModel2 instanceof ConsentUiModel.SocialConsentUiModel) {
                    ConsentValueUiModel consentValueUiModel4 = z ? ConsentValueUiModel.GIVEN : ConsentValueUiModel.REFUSED;
                    consentValueUiModel4.getClass();
                    lucieLabsConsentUiModel = new ConsentUiModel.SocialConsentUiModel(consentValueUiModel4);
                } else if (consentUiModel2 instanceof ConsentUiModel.ChatConsentUiModel) {
                    ConsentValueUiModel consentValueUiModel5 = z ? ConsentValueUiModel.GIVEN : ConsentValueUiModel.REFUSED;
                    consentValueUiModel5.getClass();
                    lucieLabsConsentUiModel = new ConsentUiModel.ChatConsentUiModel(consentValueUiModel5);
                } else if (!(consentUiModel2 instanceof ConsentUiModel.LucieLabsConsentUiModel)) {
                    v40.g();
                    return;
                } else {
                    ConsentValueUiModel consentValueUiModel6 = z ? ConsentValueUiModel.GIVEN : ConsentValueUiModel.REFUSED;
                    consentValueUiModel6.getClass();
                    lucieLabsConsentUiModel = new ConsentUiModel.LucieLabsConsentUiModel(consentValueUiModel6);
                }
                consentUiModel2 = lucieLabsConsentUiModel;
            }
            arrayList.add(consentUiModel2);
        }
        mutableStateFlow.setValue(arrayList);
    }

    @Override // com.vuitton.android.presentation.screen.privacy.PrivacyViewModel
    public final boolean kb() {
        int i2 = WhenMappings.f63356a[((PrivacyType) this.o.getValue()).ordinal()];
        if (i2 != 1) {
            if (i2 != 2 && i2 != 3) {
                return false;
            }
            Iterable iterable = (Iterable) this.p.getValue();
            if ((iterable instanceof Collection) && ((Collection) iterable).isEmpty()) {
                return true;
            }
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                if (((ConsentUiModel) it.next()).f63400a == ConsentValueUiModel.UNSET) {
                    return false;
                }
            }
        }
        return true;
    }

    @Override // com.vuitton.android.presentation.screen.privacy.PrivacyViewModel
    /* JADX INFO: renamed from: n8, reason: from getter */
    public final SharedFlow getV() {
        return this.v;
    }

    @Override // com.vuitton.android.presentation.screen.privacy.PrivacyViewModel
    public final void xc(boolean z) {
        MutableStateFlow mutableStateFlow = this.p;
        Iterable<ConsentUiModel> iterable = (Iterable) mutableStateFlow.getValue();
        ArrayList arrayList = new ArrayList(CollectionsKt.t(iterable, 10));
        for (ConsentUiModel consentUiModelA : iterable) {
            if (consentUiModelA.f63400a != ConsentValueUiModel.MANDATORY) {
                consentUiModelA = consentUiModelA.a(ConsentValueUiModel.GIVEN);
            }
            arrayList.add(consentUiModelA);
        }
        mutableStateFlow.setValue(arrayList);
        if (z) {
            a4();
        }
    }

    @Override // com.vuitton.android.presentation.screen.privacy.PrivacyViewModel
    public final void za(boolean z) {
        MutableStateFlow mutableStateFlow = this.p;
        Iterable<ConsentUiModel> iterable = (Iterable) mutableStateFlow.getValue();
        ArrayList arrayList = new ArrayList(CollectionsKt.t(iterable, 10));
        for (ConsentUiModel consentUiModelA : iterable) {
            if (consentUiModelA.f63400a != ConsentValueUiModel.MANDATORY) {
                consentUiModelA = consentUiModelA.a(ConsentValueUiModel.REFUSED);
            }
            arrayList.add(consentUiModelA);
        }
        mutableStateFlow.setValue(arrayList);
        if (z) {
            a4();
        }
    }

    public final void zc() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new PrivacyViewModelImpl$agreePiplCbdt$1(this, null), 3);
    }
}
