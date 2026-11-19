package com.vuitton.android.presentation.screen.onboarding;

import android.app.Application;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import com.vuitton.android.domain.provider.environment.EnvironmentProvider;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.onboarding.GetOnboardingStateUseCase;
import com.vuitton.android.domain.usecase.onboarding.SetOnboardingStateUseCase;
import com.vuitton.android.domain.usecase.permissions.SetNotificationsPermissionAskedUseCase;
import com.vuitton.android.domain.usecase.sharedPreferences.UpdateShowArLocationBottomSheetUseCase;
import com.vuitton.android.domain.usecase.video.GetLiveVideoUseCase;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.android.presentation.screen.authentication.welcome.model.WelcomeViewState;
import com.vuitton.android.presentation.screen.onboarding.models.OnboardingAssets;
import com.vuitton.android.presentation.screen.onboarding.models.OnboardingStateUiModel;
import com.vuitton.android.presentation.screen.onboarding.models.OnboardingTrackingUiModel;
import com.vuitton.android.presentation.screen.onboarding.models.OnboardingViewState;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import com.vuitton.foundation.model.domain.model.analytics.Hit;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import defpackage.o60;
import defpackage.v40;
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
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
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
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002BY\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;", "Landroidx/lifecycle/AndroidViewModel;", "Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModel;", "Landroid/app/Application;", "application", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "userSessionService", "Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;", "getLiveVideoUseCase", "Lcom/vuitton/android/domain/usecase/sharedPreferences/UpdateShowArLocationBottomSheetUseCase;", "updateShowArLocationBottomSheetUseCase", "Lcom/vuitton/android/domain/usecase/permissions/SetNotificationsPermissionAskedUseCase;", "setNotificationsPermissionAskedUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/onboarding/GetOnboardingStateUseCase;", "getOnboardingStateUseCase", "Lcom/vuitton/android/domain/usecase/onboarding/SetOnboardingStateUseCase;", "setOnboardingStateUseCase", "Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;", "environmentProvider", "<init>", "(Landroid/app/Application;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;Lcom/vuitton/android/domain/usecase/sharedPreferences/UpdateShowArLocationBottomSheetUseCase;Lcom/vuitton/android/domain/usecase/permissions/SetNotificationsPermissionAskedUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/onboarding/GetOnboardingStateUseCase;Lcom/vuitton/android/domain/usecase/onboarding/SetOnboardingStateUseCase;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class OnboardingViewModelImpl extends AndroidViewModel implements OnboardingViewModel {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnalyticsTracker f59496b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final UserSessionService f59497c;
    public final GetLiveVideoUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final UpdateShowArLocationBottomSheetUseCase f59498e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SetNotificationsPermissionAskedUseCase f59499f;
    public final GetOnboardingStateUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final SetOnboardingStateUseCase f59500h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final EnvironmentProvider f59501i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final BufferedChannel f59502j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MutableStateFlow f59503k;
    public final MutableStateFlow l;
    public final MutableStateFlow m;
    public final MutableStateFlow n;
    public final MutableStateFlow o;
    public final StateFlow p;
    public final StateFlow q;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.onboarding.OnboardingViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.onboarding.OnboardingViewModelImpl$1", f = "OnboardingViewModelImpl.kt", l = {112}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f59504b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f59505c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ IsFeatureAvailableUseCase f59506e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(IsFeatureAvailableUseCase isFeatureAvailableUseCase, Continuation continuation) {
            super(2, continuation);
            this.f59506e = isFeatureAvailableUseCase;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return OnboardingViewModelImpl.this.new AnonymousClass1(this.f59506e, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            MutableStateFlow mutableStateFlow;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f59505c;
            if (i2 == 0) {
                ResultKt.b(obj);
                MutableStateFlow mutableStateFlow2 = OnboardingViewModelImpl.this.o;
                Feature[] featureArr = {Feature.ACCESSIBILITY_SIMPLIFY_NAVIGATION, Feature.ACCESSIBILITY_DISABLE_AUTOPLAY, Feature.ACCESSIBILITY_ENHANCED_CONTRAST};
                this.f59504b = mutableStateFlow2;
                this.f59505c = 1;
                Object objC = this.f59506e.c(featureArr, true, this);
                if (objC == coroutineSingletons) {
                    return coroutineSingletons;
                }
                obj = objC;
                mutableStateFlow = mutableStateFlow2;
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                mutableStateFlow = (MutableStateFlow) this.f59504b;
                ResultKt.b(obj);
            }
            mutableStateFlow.setValue(obj);
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public OnboardingViewModelImpl(Application application, AnalyticsTracker analyticsTracker, UserSessionService userSessionService, GetLiveVideoUseCase getLiveVideoUseCase, UpdateShowArLocationBottomSheetUseCase updateShowArLocationBottomSheetUseCase, SetNotificationsPermissionAskedUseCase setNotificationsPermissionAskedUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, GetOnboardingStateUseCase getOnboardingStateUseCase, SetOnboardingStateUseCase setOnboardingStateUseCase, EnvironmentProvider environmentProvider) {
        super(application);
        application.getClass();
        analyticsTracker.getClass();
        userSessionService.getClass();
        getLiveVideoUseCase.getClass();
        updateShowArLocationBottomSheetUseCase.getClass();
        setNotificationsPermissionAskedUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        getOnboardingStateUseCase.getClass();
        setOnboardingStateUseCase.getClass();
        environmentProvider.getClass();
        this.f59496b = analyticsTracker;
        this.f59497c = userSessionService;
        this.d = getLiveVideoUseCase;
        this.f59498e = updateShowArLocationBottomSheetUseCase;
        this.f59499f = setNotificationsPermissionAskedUseCase;
        this.g = getOnboardingStateUseCase;
        this.f59500h = setOnboardingStateUseCase;
        this.f59501i = environmentProvider;
        this.f59502j = ChannelKt.a(0, 7, null);
        OnboardingStateUiModel onboardingStateUiModel = OnboardingStateUiModel.NOT_STARTED;
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(bool);
        this.f59503k = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(new OnboardingAssets(null, null, null, 7, null));
        this.l = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(EmptyList.f71768b);
        this.m = mutableStateFlowA3;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(bool);
        this.n = mutableStateFlowA4;
        MutableStateFlow mutableStateFlowA5 = StateFlowKt.a(bool);
        this.o = mutableStateFlowA5;
        final Flow[] flowArr = {mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3, mutableStateFlowA4};
        Flow<OnboardingViewState> flow = new Flow<OnboardingViewState>() { // from class: com.vuitton.android.presentation.screen.onboarding.OnboardingViewModelImpl$special$$inlined$combine$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.onboarding.OnboardingViewModelImpl$special$$inlined$combine$1$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.onboarding.OnboardingViewModelImpl$special$$inlined$combine$1$3", f = "OnboardingViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super OnboardingViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f59531b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f59532c;
                public /* synthetic */ Object[] d;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3);
                    anonymousClass3.f59532c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f59532c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f59531b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        boolean zBooleanValue = ((Boolean) obj2).booleanValue();
                        Object obj3 = objArr[1];
                        obj3.getClass();
                        Object obj4 = objArr[2];
                        obj4.getClass();
                        Object obj5 = objArr[3];
                        obj5.getClass();
                        OnboardingViewState onboardingViewState = new OnboardingViewState(zBooleanValue, (OnboardingAssets) obj3, (List) obj4, ((Boolean) obj5).booleanValue());
                        this.f59532c = null;
                        this.d = null;
                        this.f59531b = 1;
                        if (flowCollector.emit(onboardingViewState, this) == coroutineSingletons) {
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
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.onboarding.OnboardingViewModelImpl$special$$inlined$combine$1.2
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
        SharingStarted sharingStarted = SharingStarted.Companion.f74988c;
        this.p = FlowKt.A(flow, closeableCoroutineScopeA, sharingStarted, new OnboardingViewState(false, null, null, false, 15, null));
        final Flow[] flowArr2 = {mutableStateFlowA2, mutableStateFlowA4, mutableStateFlowA5};
        this.q = FlowKt.A(new Flow<WelcomeViewState>() { // from class: com.vuitton.android.presentation.screen.onboarding.OnboardingViewModelImpl$special$$inlined$combine$2

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.onboarding.OnboardingViewModelImpl$special$$inlined$combine$2$3, reason: invalid class name */
            @Metadata(d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001\u0018\u0001*\b\u0012\u0004\u0012\u00028\u00000\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0003H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"R", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "", "it", "", "<anonymous>", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"}, k = 3, mv = {2, 3, 0})
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.onboarding.OnboardingViewModelImpl$special$$inlined$combine$2$3", f = "OnboardingViewModelImpl.kt", l = {234}, m = "invokeSuspend", v = 2)
            public final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super WelcomeViewState>, Object[], Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public int f59535b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public /* synthetic */ FlowCollector f59536c;
                public /* synthetic */ Object[] d;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3((Continuation) obj3);
                    anonymousClass3.f59536c = (FlowCollector) obj;
                    anonymousClass3.d = (Object[]) obj2;
                    return anonymousClass3.invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    FlowCollector flowCollector = this.f59536c;
                    Object[] objArr = this.d;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i2 = this.f59535b;
                    if (i2 == 0) {
                        ResultKt.b(obj);
                        Object obj2 = objArr[0];
                        obj2.getClass();
                        AssetVideoUiModel assetVideoUiModel = ((OnboardingAssets) obj2).f59579a;
                        Object obj3 = objArr[1];
                        obj3.getClass();
                        boolean zBooleanValue = ((Boolean) obj3).booleanValue();
                        Object obj4 = objArr[2];
                        obj4.getClass();
                        WelcomeViewState welcomeViewState = new WelcomeViewState(null, assetVideoUiModel, zBooleanValue, true, false, false, ((Boolean) obj4).booleanValue(), 49, null);
                        this.f59536c = null;
                        this.d = null;
                        this.f59535b = 1;
                        if (flowCollector.emit(welcomeViewState, this) == coroutineSingletons) {
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
                final Flow[] flowArr3 = flowArr2;
                Object objA = CombineKt.a(continuation, new Function0<Object[]>() { // from class: com.vuitton.android.presentation.screen.onboarding.OnboardingViewModelImpl$special$$inlined$combine$2.2
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        return new Object[flowArr3.length];
                    }
                }, new AnonymousClass3(null), flowCollector, flowArr3);
                return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : Unit.f71739a;
            }
        }, ViewModelKt.a(this), sharingStarted, new WelcomeViewState(null, null, false, false, false, false, false, CertificateBody.profileType, null));
        BuildersKt.c(ViewModelKt.a(this), null, null, new OnboardingViewModelImpl$retrieveIsUserConnected$1(this, null), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new OnboardingViewModelImpl$retrieveOnboardingAssets$1(this, null), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new OnboardingViewModelImpl$retrieveOnboardingState$1(this, null), 3);
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(isFeatureAvailableUseCase, null), 3);
    }

    @Override // com.vuitton.android.presentation.screen.onboarding.OnboardingViewModel
    public final void D4(OnboardingTrackingUiModel onboardingTrackingUiModel) {
        Hit defaultEventHit;
        Hit.EventHit.DefaultEventHit defaultEventHit2;
        onboardingTrackingUiModel.getClass();
        if (onboardingTrackingUiModel.equals(OnboardingTrackingUiModel.AuthenticationScreen.f59584a)) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/Authentication", "LVPass/Authentication", "onboarding", null, 17, null);
        } else if (onboardingTrackingUiModel.equals(OnboardingTrackingUiModel.StartScreen.f59599a)) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/Onboarding/Start", "LVPass/Onboarding/Start", "onboarding", null, 17, null);
        } else if (onboardingTrackingUiModel.equals(OnboardingTrackingUiModel.NotificationScreen.f59593a)) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/Onboarding/Notifications", "LVPass/Onboarding/Notifications", "onboarding", null, 17, null);
        } else if (onboardingTrackingUiModel.equals(OnboardingTrackingUiModel.GeolocationScreen.f59588a)) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/Onboarding/Geolocation", "LVPass/Onboarding/Geolocation", "onboarding", null, 17, null);
        } else if (onboardingTrackingUiModel.equals(OnboardingTrackingUiModel.IconsScreen.f59591a)) {
            defaultEventHit = new Hit.ScreenHit.DefaultScreenHit(null, "LVPass/Onboarding/Icons", "LVPass/Onboarding/Icons", "onboarding", null, 17, null);
        } else {
            if (onboardingTrackingUiModel.equals(OnboardingTrackingUiModel.LogInClickEvent.f59592a)) {
                defaultEventHit2 = new Hit.EventHit.DefaultEventHit(null, "LVPass/Authentication", "log_in", "authentication", "navigation", null, o60.t("onboarding"), 33, null);
            } else if (onboardingTrackingUiModel.equals(OnboardingTrackingUiModel.SignUpClickEvent.f59597a)) {
                defaultEventHit2 = new Hit.EventHit.DefaultEventHit(null, "LVPass/Authentication", "sign_up", "authentication", "navigation", null, o60.t("onboarding"), 33, null);
            } else if (onboardingTrackingUiModel.equals(OnboardingTrackingUiModel.GuestClickEvent.f59589a)) {
                defaultEventHit2 = new Hit.EventHit.DefaultEventHit(null, "LVPass/Authentication", "guest", "authentication", "navigation", null, o60.t("onboarding"), 33, null);
            } else if (onboardingTrackingUiModel.equals(OnboardingTrackingUiModel.StartClickEvent.f59598a)) {
                defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/Onboarding/Start", "start", "onboarding", "navigation", null, null, 97, null);
            } else if (onboardingTrackingUiModel.equals(OnboardingTrackingUiModel.NotificationsContinueClickEvent.f59595a)) {
                defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/Onboarding/Notifications", "continue", "onboarding", "notification", null, null, 97, null);
            } else if (onboardingTrackingUiModel.equals(OnboardingTrackingUiModel.NotificationsAllowedEvent.f59594a)) {
                defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/Onboarding/Notifications", "allow", "onboarding", "notification", null, null, 97, null);
            } else if (onboardingTrackingUiModel.equals(OnboardingTrackingUiModel.NotificationsRefusedEvent.f59596a)) {
                defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/Onboarding/Notifications", "not_allow", "onboarding", "notification", null, null, 97, null);
            } else if (onboardingTrackingUiModel.equals(OnboardingTrackingUiModel.GeolocationContinueClickEvent.f59586a)) {
                defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/Onboarding/Geolocation", "continue", "onboarding", "geolocation", null, null, 97, null);
            } else if (onboardingTrackingUiModel.equals(OnboardingTrackingUiModel.GeolocationAllowedEvent.f59585a)) {
                defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/Onboarding/Geolocation", "allow_app", "onboarding", "geolocation", null, null, 97, null);
            } else if (onboardingTrackingUiModel.equals(OnboardingTrackingUiModel.GeolocationRefusedEvent.f59587a)) {
                defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/Onboarding/Geolocation", "not_allow", "onboarding", "geolocation", null, null, 97, null);
            } else {
                if (!(onboardingTrackingUiModel instanceof OnboardingTrackingUiModel.IconsConfirmClickEvent)) {
                    v40.g();
                    return;
                }
                defaultEventHit = new Hit.EventHit.DefaultEventHit(null, "LVPass/Onboarding/Icons", "confirm", "onboarding", "icons", null, CollectionsKt.O(new AdditionalProperty.ContentId(((OnboardingTrackingUiModel.IconsConfirmClickEvent) onboardingTrackingUiModel).f59590a)), 33, null);
            }
            defaultEventHit = defaultEventHit2;
        }
        this.f59496b.a(defaultEventHit);
    }

    @Override // com.vuitton.android.presentation.screen.onboarding.OnboardingViewModel
    /* JADX INFO: renamed from: R0, reason: from getter */
    public final StateFlow getQ() {
        return this.q;
    }

    @Override // com.vuitton.android.presentation.screen.onboarding.OnboardingViewModel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final StateFlow getP() {
        return this.p;
    }

    public final void yc(OnboardingRoutes onboardingRoutes) {
        onboardingRoutes.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new OnboardingViewModelImpl$redirectToScreen$1(this, onboardingRoutes, null), 3);
    }

    public final void zc(OnboardingStateUiModel onboardingStateUiModel) {
        onboardingStateUiModel.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new OnboardingViewModelImpl$setOnboardingState$1(this, onboardingStateUiModel, null), 3);
    }
}
