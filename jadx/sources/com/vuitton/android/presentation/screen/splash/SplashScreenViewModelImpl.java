package com.vuitton.android.presentation.screen.splash;

import android.app.Application;
import android.os.Build;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.app.AppMonitoring;
import com.vuitton.android.domain.repository.OpenAppTimestampRepository;
import com.vuitton.android.domain.service.authentication.UserSessionService;
import com.vuitton.android.domain.usecase.app.monitoring.EndOpenAppMonitoringUseCase;
import com.vuitton.android.domain.usecase.app.monitoring.StartOpenAppMonitoringUseCase;
import com.vuitton.android.domain.usecase.applink.FetchAppLinkExclusionsUseCase;
import com.vuitton.android.domain.usecase.automatedtest.ApplyAutomatedTestConfigUseCase;
import com.vuitton.android.domain.usecase.automatedtest.ApplySavedSecurityCookieUseCase;
import com.vuitton.android.domain.usecase.automatedtest.SetUiTestModeUseCase;
import com.vuitton.android.domain.usecase.avatar.PreloadAvatarsCacheUseCase;
import com.vuitton.android.domain.usecase.botprotection.InitializeBotProtectionUseCase;
import com.vuitton.android.domain.usecase.config.GetConfigsVersionUseCase;
import com.vuitton.android.domain.usecase.config.HandleAppUpdateUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.domain.usecase.config.RequireCachedConfigsVersionUseCase;
import com.vuitton.android.domain.usecase.config.ShouldUpdateAppUseCase;
import com.vuitton.android.domain.usecase.config.ShouldUpdateOsUseCase;
import com.vuitton.android.domain.usecase.config.SyncConfigsWithRevisionsUseCase;
import com.vuitton.android.domain.usecase.deeplinkredirection.ClearDeepLinkForRedirectionUseCase;
import com.vuitton.android.domain.usecase.deeplinkredirection.GetSavedDeepLinkForRedirectionUseCase;
import com.vuitton.android.domain.usecase.deeplinkredirection.SaveDeepLinkForRedirectionUseCase;
import com.vuitton.android.domain.usecase.dispatch.DetermineUserInAppDispatchStatusUseCase;
import com.vuitton.android.domain.usecase.environments.UpdateEnvironmentUseCase;
import com.vuitton.android.domain.usecase.maintenance.IsAppInMaintenanceUseCase;
import com.vuitton.android.domain.usecase.onboarding.GetOnboardingStateUseCase;
import com.vuitton.android.domain.usecase.onboarding.SetOnboardingStateUseCase;
import com.vuitton.android.domain.usecase.privacy.NeedShowPrivacyConsentUseCase;
import com.vuitton.android.domain.usecase.privacy.consent.GetConsentTypeUseCase;
import com.vuitton.android.domain.usecase.privacy.consent.GetPiplCbdtAgreementUseCase;
import com.vuitton.android.domain.usecase.privacy.consent.HasConsentsUseCase;
import com.vuitton.android.platform.security.RootDetector;
import com.vuitton.android.presentation.screen.maintenance.CheckMaintenanceStatusService;
import com.vuitton.android.presentation.screen.onboarding.OnboardingRoutesName;
import com.vuitton.android.presentation.screen.onboarding.models.OnboardingMapperKt;
import com.vuitton.android.presentation.screen.onboarding.models.OnboardingStateUiModel;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.config.version.ConfigsVersion;
import com.vuitton.foundation.model.domain.model.onboarding.OnboardingState;
import com.vuitton.foundation.model.domain.model.privacy.PrivacyType;
import defpackage.md;
import defpackage.v40;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.LinkedHashMap;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationUnit;
import kotlin.time.LongSaturatedMathKt;
import kotlin.time.MonotonicTimeSource;
import kotlin.time.TimeSource;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000Î\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0089\u0002\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020'\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u0010,\u001a\u00020+\u0012\u0006\u0010.\u001a\u00020-\u0012\u0006\u00100\u001a\u00020/\u0012\u0006\u00102\u001a\u000201\u0012\u0006\u00104\u001a\u000203\u0012\u0006\u00106\u001a\u000205\u0012\u0006\u00108\u001a\u000207\u0012\u0006\u0010:\u001a\u000209\u0012\u0006\u0010<\u001a\u00020;\u0012\u0006\u0010>\u001a\u00020=\u0012\u0006\u0010@\u001a\u00020?\u0012\u0006\u0010B\u001a\u00020A¢\u0006\u0004\bC\u0010D¨\u0006E"}, d2 = {"Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;", "Landroidx/lifecycle/AndroidViewModel;", "Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModel;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Landroid/app/Application;", "application", "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;", "coroutineDispatchers", "Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase;", "determineUserInAppDispatchStatusUseCase", "Lcom/vuitton/android/domain/usecase/config/GetConfigsVersionUseCase;", "getConfigsVersionUseCase", "Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase;", "applyAutomatedTestConfigUseCase", "Lcom/vuitton/android/domain/usecase/automatedtest/SetUiTestModeUseCase;", "setUiTestModeUseCase", "Lcom/vuitton/android/domain/usecase/automatedtest/ApplySavedSecurityCookieUseCase;", "applySavedSecurityCookieUseCase", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/privacy/consent/GetPiplCbdtAgreementUseCase;", "getPiplCbdtAgreementUseCase", "Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "userSessionService", "Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase;", "needShowPrivacyConsentUseCase", "Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase;", "handleAppUpdateUseCase", "Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase;", "syncConfigsWithRevisionsUseCase", "Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;", "requireCachedConfigsVersionUseCase", "Lcom/vuitton/android/domain/usecase/config/ShouldUpdateOsUseCase;", "shouldUpdateOsUseCase", "Lcom/vuitton/android/domain/usecase/config/ShouldUpdateAppUseCase;", "shouldUpdateAppUseCase", "Lcom/vuitton/android/domain/usecase/maintenance/IsAppInMaintenanceUseCase;", "isAppInMaintenanceUseCase", "Lcom/vuitton/android/domain/usecase/deeplinkredirection/GetSavedDeepLinkForRedirectionUseCase;", "getSavedDeepLinkForRedirectionUseCase", "Lcom/vuitton/android/domain/usecase/deeplinkredirection/SaveDeepLinkForRedirectionUseCase;", "saveDeepLinkForRedirectionUseCase", "Lcom/vuitton/android/domain/usecase/deeplinkredirection/ClearDeepLinkForRedirectionUseCase;", "clearDeepLinkForRedirectionUseCase", "Lcom/vuitton/android/domain/usecase/app/monitoring/StartOpenAppMonitoringUseCase;", "startOpenAppMonitoringUseCase", "Lcom/vuitton/android/domain/usecase/app/monitoring/EndOpenAppMonitoringUseCase;", "endOpenAppMonitoringUseCase", "Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentTypeUseCase;", "getConsentTypeUseCase", "Lcom/vuitton/android/domain/usecase/privacy/consent/HasConsentsUseCase;", "hasConsentsUseCase", "Lcom/vuitton/android/domain/usecase/onboarding/GetOnboardingStateUseCase;", "getOnboardingStateUseCase", "Lcom/vuitton/android/domain/usecase/onboarding/SetOnboardingStateUseCase;", "setOnboardingStateUseCase", "Lcom/vuitton/android/domain/usecase/applink/FetchAppLinkExclusionsUseCase;", "fetchAppLinkExclusionsUseCase", "Lcom/vuitton/android/domain/usecase/avatar/PreloadAvatarsCacheUseCase;", "preloadAvatarsCacheUseCase", "Lcom/vuitton/android/domain/usecase/botprotection/InitializeBotProtectionUseCase;", "initializeBotProtectionUseCase", "Lcom/vuitton/android/platform/security/RootDetector;", "rootDetector", "Lcom/vuitton/android/domain/usecase/environments/UpdateEnvironmentUseCase;", "updateEnvironmentUseCase", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Landroid/app/Application;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase;Lcom/vuitton/android/domain/usecase/config/GetConfigsVersionUseCase;Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase;Lcom/vuitton/android/domain/usecase/automatedtest/SetUiTestModeUseCase;Lcom/vuitton/android/domain/usecase/automatedtest/ApplySavedSecurityCookieUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/GetPiplCbdtAgreementUseCase;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase;Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase;Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;Lcom/vuitton/android/domain/usecase/config/ShouldUpdateOsUseCase;Lcom/vuitton/android/domain/usecase/config/ShouldUpdateAppUseCase;Lcom/vuitton/android/domain/usecase/maintenance/IsAppInMaintenanceUseCase;Lcom/vuitton/android/domain/usecase/deeplinkredirection/GetSavedDeepLinkForRedirectionUseCase;Lcom/vuitton/android/domain/usecase/deeplinkredirection/SaveDeepLinkForRedirectionUseCase;Lcom/vuitton/android/domain/usecase/deeplinkredirection/ClearDeepLinkForRedirectionUseCase;Lcom/vuitton/android/domain/usecase/app/monitoring/StartOpenAppMonitoringUseCase;Lcom/vuitton/android/domain/usecase/app/monitoring/EndOpenAppMonitoringUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentTypeUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/HasConsentsUseCase;Lcom/vuitton/android/domain/usecase/onboarding/GetOnboardingStateUseCase;Lcom/vuitton/android/domain/usecase/onboarding/SetOnboardingStateUseCase;Lcom/vuitton/android/domain/usecase/applink/FetchAppLinkExclusionsUseCase;Lcom/vuitton/android/domain/usecase/avatar/PreloadAvatarsCacheUseCase;Lcom/vuitton/android/domain/usecase/botprotection/InitializeBotProtectionUseCase;Lcom/vuitton/android/platform/security/RootDetector;Lcom/vuitton/android/domain/usecase/environments/UpdateEnvironmentUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SplashScreenViewModelImpl extends AndroidViewModel implements SplashScreenViewModel {
    public final SetOnboardingStateUseCase A;
    public final FetchAppLinkExclusionsUseCase B;
    public final PreloadAvatarsCacheUseCase C;
    public final InitializeBotProtectionUseCase D;
    public final RootDetector E;
    public final LinkedHashMap F;
    public final MutableStateFlow G;
    public final StateFlow H;
    public final MutableStateFlow I;
    public final StateFlow J;
    public OnboardingStateUiModel K;
    public final MutableStateFlow L;
    public final MutableStateFlow M;
    public final MutableStateFlow N;
    public String O;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Logger f64450b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CoroutineDispatchers f64451c;
    public final DetermineUserInAppDispatchStatusUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final GetConfigsVersionUseCase f64452e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ApplyAutomatedTestConfigUseCase f64453f;
    public final SetUiTestModeUseCase g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ApplySavedSecurityCookieUseCase f64454h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f64455i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final GetPiplCbdtAgreementUseCase f64456j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final UserSessionService f64457k;
    public final NeedShowPrivacyConsentUseCase l;
    public final HandleAppUpdateUseCase m;
    public final SyncConfigsWithRevisionsUseCase n;
    public final RequireCachedConfigsVersionUseCase o;
    public final ShouldUpdateOsUseCase p;
    public final ShouldUpdateAppUseCase q;
    public final IsAppInMaintenanceUseCase r;
    public final GetSavedDeepLinkForRedirectionUseCase s;
    public final SaveDeepLinkForRedirectionUseCase t;
    public final ClearDeepLinkForRedirectionUseCase u;
    public final StartOpenAppMonitoringUseCase v;
    public final EndOpenAppMonitoringUseCase w;
    public final GetConsentTypeUseCase x;
    public final HasConsentsUseCase y;
    public final GetOnboardingStateUseCase z;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n"}, d2 = {"<anonymous>", "", "action", "Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;", "isFinished", ""}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl$1", f = "SplashScreenViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function3<SplashScreenAction, Boolean, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public /* synthetic */ SplashScreenAction f64458b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public /* synthetic */ boolean f64459c;

        public AnonymousClass1(Continuation continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object A(Object obj, Object obj2, Object obj3) {
            boolean zBooleanValue = ((Boolean) obj2).booleanValue();
            AnonymousClass1 anonymousClass1 = SplashScreenViewModelImpl.this.new AnonymousClass1((Continuation) obj3);
            anonymousClass1.f64458b = (SplashScreenAction) obj;
            anonymousClass1.f64459c = zBooleanValue;
            return anonymousClass1.invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            SplashScreenAction splashScreenAction = this.f64458b;
            boolean z = this.f64459c;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            if (z) {
                splashScreenAction.getClass();
                if (!(splashScreenAction instanceof SplashScreenAction.Idle) && !(splashScreenAction instanceof SplashScreenAction.ShowSecurityDialog)) {
                    EndOpenAppMonitoringUseCase endOpenAppMonitoringUseCase = SplashScreenViewModelImpl.this.w;
                    boolean zEquals = splashScreenAction.equals(SplashScreenAction.RetryPopup.f64431a);
                    OpenAppTimestampRepository openAppTimestampRepository = endOpenAppMonitoringUseCase.d;
                    Logger logger = endOpenAppMonitoringUseCase.f49250b;
                    DynatraceMonitorAction dynatraceMonitorActionA = endOpenAppMonitoringUseCase.f49249a.a(endOpenAppMonitoringUseCase.f49251c.a(), AppMonitoring.Action.OpenApp.f48818a);
                    if (zEquals) {
                        logger.getClass();
                        dynatraceMonitorActionA.d(new AppMonitoring.Error.OpenApp(new RuntimeException("Open app failed")));
                        openAppTimestampRepository.c();
                    } else {
                        Object objB = openAppTimestampRepository.b();
                        if (!(objB instanceof Result.Failure)) {
                            long j2 = ((TimeSource.Monotonic.ValueTimeMark) objB).f74590b;
                            TimeSource.Monotonic.f74589a.getClass();
                            MonotonicTimeSource monotonicTimeSource = MonotonicTimeSource.f74587a;
                            monotonicTimeSource.getClass();
                            long jB = MonotonicTimeSource.b();
                            "End open app : ".concat(TimeSource.Monotonic.ValueTimeMark.b(jB));
                            logger.getClass();
                            monotonicTimeSource.getClass();
                            dynatraceMonitorActionA.c(Double.valueOf(new BigDecimal(Duration.e(LongSaturatedMathKt.c(jB, j2, DurationUnit.NANOSECONDS)) / 1000.0d).setScale(1, RoundingMode.HALF_EVEN).doubleValue()), "time");
                        }
                        Throwable thA = Result.a(objB);
                        if (thA != null) {
                            logger.c("EndOpenAppMonitoringUseCase", "Error while getting start time", thA);
                            dynatraceMonitorActionA.d(new AppMonitoring.Error.OpenApp(thA));
                        }
                        dynatraceMonitorActionA.b();
                        openAppTimestampRepository.c();
                    }
                }
            }
            return Unit.f71739a;
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f64460a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f64461b;

        static {
            int[] iArr = new int[PrivacyType.values().length];
            try {
                iArr[PrivacyType.GDPR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PrivacyType.CCPA.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PrivacyType.PIPL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[PrivacyType.NONE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f64460a = iArr;
            int[] iArr2 = new int[OnboardingStateUiModel.values().length];
            try {
                iArr2[OnboardingStateUiModel.NOT_STARTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[OnboardingStateUiModel.START.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[OnboardingStateUiModel.NOTIFICATION.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[OnboardingStateUiModel.GEOLOCATION.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[OnboardingStateUiModel.ICONS.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr2[OnboardingStateUiModel.DONE.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            f64461b = iArr2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public SplashScreenViewModelImpl(Logger logger, Application application, CoroutineDispatchers coroutineDispatchers, DetermineUserInAppDispatchStatusUseCase determineUserInAppDispatchStatusUseCase, GetConfigsVersionUseCase getConfigsVersionUseCase, ApplyAutomatedTestConfigUseCase applyAutomatedTestConfigUseCase, SetUiTestModeUseCase setUiTestModeUseCase, ApplySavedSecurityCookieUseCase applySavedSecurityCookieUseCase, IsFeatureAvailableUseCase isFeatureAvailableUseCase, GetPiplCbdtAgreementUseCase getPiplCbdtAgreementUseCase, UserSessionService userSessionService, NeedShowPrivacyConsentUseCase needShowPrivacyConsentUseCase, HandleAppUpdateUseCase handleAppUpdateUseCase, SyncConfigsWithRevisionsUseCase syncConfigsWithRevisionsUseCase, RequireCachedConfigsVersionUseCase requireCachedConfigsVersionUseCase, ShouldUpdateOsUseCase shouldUpdateOsUseCase, ShouldUpdateAppUseCase shouldUpdateAppUseCase, IsAppInMaintenanceUseCase isAppInMaintenanceUseCase, GetSavedDeepLinkForRedirectionUseCase getSavedDeepLinkForRedirectionUseCase, SaveDeepLinkForRedirectionUseCase saveDeepLinkForRedirectionUseCase, ClearDeepLinkForRedirectionUseCase clearDeepLinkForRedirectionUseCase, StartOpenAppMonitoringUseCase startOpenAppMonitoringUseCase, EndOpenAppMonitoringUseCase endOpenAppMonitoringUseCase, GetConsentTypeUseCase getConsentTypeUseCase, HasConsentsUseCase hasConsentsUseCase, GetOnboardingStateUseCase getOnboardingStateUseCase, SetOnboardingStateUseCase setOnboardingStateUseCase, FetchAppLinkExclusionsUseCase fetchAppLinkExclusionsUseCase, PreloadAvatarsCacheUseCase preloadAvatarsCacheUseCase, InitializeBotProtectionUseCase initializeBotProtectionUseCase, RootDetector rootDetector, UpdateEnvironmentUseCase updateEnvironmentUseCase) {
        super(application);
        logger.getClass();
        application.getClass();
        coroutineDispatchers.getClass();
        determineUserInAppDispatchStatusUseCase.getClass();
        getConfigsVersionUseCase.getClass();
        applyAutomatedTestConfigUseCase.getClass();
        setUiTestModeUseCase.getClass();
        applySavedSecurityCookieUseCase.getClass();
        isFeatureAvailableUseCase.getClass();
        getPiplCbdtAgreementUseCase.getClass();
        userSessionService.getClass();
        needShowPrivacyConsentUseCase.getClass();
        handleAppUpdateUseCase.getClass();
        syncConfigsWithRevisionsUseCase.getClass();
        requireCachedConfigsVersionUseCase.getClass();
        shouldUpdateOsUseCase.getClass();
        shouldUpdateAppUseCase.getClass();
        isAppInMaintenanceUseCase.getClass();
        getSavedDeepLinkForRedirectionUseCase.getClass();
        saveDeepLinkForRedirectionUseCase.getClass();
        clearDeepLinkForRedirectionUseCase.getClass();
        startOpenAppMonitoringUseCase.getClass();
        endOpenAppMonitoringUseCase.getClass();
        getConsentTypeUseCase.getClass();
        hasConsentsUseCase.getClass();
        getOnboardingStateUseCase.getClass();
        setOnboardingStateUseCase.getClass();
        fetchAppLinkExclusionsUseCase.getClass();
        preloadAvatarsCacheUseCase.getClass();
        initializeBotProtectionUseCase.getClass();
        rootDetector.getClass();
        updateEnvironmentUseCase.getClass();
        this.f64450b = logger;
        this.f64451c = coroutineDispatchers;
        this.d = determineUserInAppDispatchStatusUseCase;
        this.f64452e = getConfigsVersionUseCase;
        this.f64453f = applyAutomatedTestConfigUseCase;
        this.g = setUiTestModeUseCase;
        this.f64454h = applySavedSecurityCookieUseCase;
        this.f64455i = isFeatureAvailableUseCase;
        this.f64456j = getPiplCbdtAgreementUseCase;
        this.f64457k = userSessionService;
        this.l = needShowPrivacyConsentUseCase;
        this.m = handleAppUpdateUseCase;
        this.n = syncConfigsWithRevisionsUseCase;
        this.o = requireCachedConfigsVersionUseCase;
        this.p = shouldUpdateOsUseCase;
        this.q = shouldUpdateAppUseCase;
        this.r = isAppInMaintenanceUseCase;
        this.s = getSavedDeepLinkForRedirectionUseCase;
        this.t = saveDeepLinkForRedirectionUseCase;
        this.u = clearDeepLinkForRedirectionUseCase;
        this.v = startOpenAppMonitoringUseCase;
        this.w = endOpenAppMonitoringUseCase;
        this.x = getConsentTypeUseCase;
        this.y = hasConsentsUseCase;
        this.z = getOnboardingStateUseCase;
        this.A = setOnboardingStateUseCase;
        this.B = fetchAppLinkExclusionsUseCase;
        this.C = preloadAvatarsCacheUseCase;
        this.D = initializeBotProtectionUseCase;
        this.E = rootDetector;
        this.F = new LinkedHashMap();
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(SplashScreenAction.Idle.f64429a);
        this.G = mutableStateFlowA;
        this.H = FlowKt.b(mutableStateFlowA);
        Boolean bool = Boolean.FALSE;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(bool);
        this.I = mutableStateFlowA2;
        this.J = FlowKt.b(mutableStateFlowA2);
        FlowKt.u(new FlowKt__ZipKt$combine$$inlined$unsafeFlow$1(mutableStateFlowA, mutableStateFlowA2, new AnonymousClass1(null)), ViewModelKt.a(this));
        this.K = OnboardingStateUiModel.NOT_STARTED;
        this.L = StateFlowKt.a(bool);
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(OnboardingRoutesName.START_NOW);
        this.M = mutableStateFlowA3;
        this.N = mutableStateFlowA3;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x007e, code lost:
    
        if (r6.a(r1) == r2) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0098, code lost:
    
        if (r6.a(r7, r1) == r2) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x009a, code lost:
    
        return r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object Ac(com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl r6, com.vuitton.android.presentation.screen.splash.SplashScreenAction r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            com.vuitton.foundation.logger.Logger r0 = r6.f64450b
            boolean r1 = r8 instanceof com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl$handleDeepLinkStorageForNextLaunch$1
            if (r1 == 0) goto L15
            r1 = r8
            com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl$handleDeepLinkStorageForNextLaunch$1 r1 = (com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl$handleDeepLinkStorageForNextLaunch$1) r1
            int r2 = r1.d
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.d = r2
            goto L1a
        L15:
            com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl$handleDeepLinkStorageForNextLaunch$1 r1 = new com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl$handleDeepLinkStorageForNextLaunch$1
            r1.<init>(r6, r8)
        L1a:
            java.lang.Object r8 = r1.f64485b
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r3 = r1.d
            r4 = 2
            r5 = 1
            if (r3 == 0) goto L3f
            if (r3 == r5) goto L37
            if (r3 != r4) goto L30
            kotlin.ResultKt.b(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r6 = r8.f71708b
            goto L81
        L30:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r6)
            r6 = 0
            return r6
        L37:
            kotlin.ResultKt.b(r8)
            kotlin.Result r8 = (kotlin.Result) r8
            java.lang.Object r6 = r8.f71708b
            goto L9b
        L3f:
            kotlin.ResultKt.b(r8)
            r7.getClass()
            com.vuitton.android.presentation.screen.splash.SplashScreenAction$ForceUpdateAppVersion r8 = com.vuitton.android.presentation.screen.splash.SplashScreenAction.ForceUpdateAppVersion.f64424a
            boolean r8 = r7.equals(r8)
            if (r8 != 0) goto L84
            com.vuitton.android.presentation.screen.splash.SplashScreenAction$ForceUpdateOsVersion r8 = com.vuitton.android.presentation.screen.splash.SplashScreenAction.ForceUpdateOsVersion.f64425a
            boolean r8 = r7.equals(r8)
            if (r8 != 0) goto L84
            com.vuitton.android.presentation.screen.splash.SplashScreenAction$AppInMaintenance r8 = com.vuitton.android.presentation.screen.splash.SplashScreenAction.AppInMaintenance.f64422a
            boolean r8 = r7.equals(r8)
            if (r8 == 0) goto L5e
            goto L84
        L5e:
            boolean r8 = r7 instanceof com.vuitton.android.presentation.screen.splash.SplashScreenAction.GoMain
            if (r8 != 0) goto L6a
            boolean r8 = r7 instanceof com.vuitton.android.presentation.screen.splash.SplashScreenAction.GoPrivacyPolicy
            if (r8 != 0) goto L6a
            boolean r7 = r7 instanceof com.vuitton.android.presentation.screen.splash.SplashScreenAction.GoOnboarding
            if (r7 == 0) goto L9d
        L6a:
            java.lang.String r7 = r6.O
            if (r7 == 0) goto L9d
            java.lang.String r8 = "Let's handle deep link if available and clear it from cache (because it's consumed): "
            r8.concat(r7)
            r0.getClass()
            com.vuitton.android.domain.usecase.deeplinkredirection.ClearDeepLinkForRedirectionUseCase r6 = r6.u
            r1.d = r4
            java.lang.Object r6 = r6.a(r1)
            if (r6 != r2) goto L81
            goto L9a
        L81:
            kotlin.Result$Companion r6 = kotlin.Result.INSTANCE
            goto L9d
        L84:
            java.lang.String r7 = r6.O
            if (r7 == 0) goto L9d
            java.lang.String r8 = "The user is required to complete certain actions, so the deep link is saved for the next launch: "
            r8.concat(r7)
            r0.getClass()
            com.vuitton.android.domain.usecase.deeplinkredirection.SaveDeepLinkForRedirectionUseCase r6 = r6.t
            r1.d = r5
            java.lang.Object r6 = r6.a(r7, r1)
            if (r6 != r2) goto L9b
        L9a:
            return r2
        L9b:
            kotlin.Result$Companion r6 = kotlin.Result.INSTANCE
        L9d:
            kotlin.Unit r6 = kotlin.Unit.f71739a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl.Ac(com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl, com.vuitton.android.presentation.screen.splash.SplashScreenAction, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0068  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object Bc(SplashScreenViewModelImpl splashScreenViewModelImpl, String str, ContinuationImpl continuationImpl) {
        SplashScreenViewModelImpl$prepareStartupConfiguration$1 splashScreenViewModelImpl$prepareStartupConfiguration$1;
        SplashScreenViewModelImpl splashScreenViewModelImpl2;
        if (continuationImpl instanceof SplashScreenViewModelImpl$prepareStartupConfiguration$1) {
            splashScreenViewModelImpl$prepareStartupConfiguration$1 = (SplashScreenViewModelImpl$prepareStartupConfiguration$1) continuationImpl;
            int i2 = splashScreenViewModelImpl$prepareStartupConfiguration$1.f64496f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                splashScreenViewModelImpl$prepareStartupConfiguration$1.f64496f = i2 - Integer.MIN_VALUE;
            } else {
                splashScreenViewModelImpl$prepareStartupConfiguration$1 = new SplashScreenViewModelImpl$prepareStartupConfiguration$1(splashScreenViewModelImpl, continuationImpl);
            }
        } else {
            splashScreenViewModelImpl$prepareStartupConfiguration$1 = new SplashScreenViewModelImpl$prepareStartupConfiguration$1(splashScreenViewModelImpl, continuationImpl);
        }
        Object objNc = splashScreenViewModelImpl$prepareStartupConfiguration$1.d;
        Object obj = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = splashScreenViewModelImpl$prepareStartupConfiguration$1.f64496f;
        if (i3 == 0) {
            ResultKt.b(objNc);
            HandleAppUpdateUseCase handleAppUpdateUseCase = splashScreenViewModelImpl.m;
            splashScreenViewModelImpl$prepareStartupConfiguration$1.f64493b = str;
            splashScreenViewModelImpl$prepareStartupConfiguration$1.f64496f = 1;
            if (handleAppUpdateUseCase.a(splashScreenViewModelImpl$prepareStartupConfiguration$1) != obj) {
            }
            return obj;
        }
        if (i3 == 1) {
            str = splashScreenViewModelImpl$prepareStartupConfiguration$1.f64493b;
            ResultKt.b(objNc);
        } else {
            if (i3 == 2) {
                ResultKt.b(objNc);
                splashScreenViewModelImpl$prepareStartupConfiguration$1.f64493b = null;
                splashScreenViewModelImpl$prepareStartupConfiguration$1.f64494c = splashScreenViewModelImpl;
                splashScreenViewModelImpl$prepareStartupConfiguration$1.f64496f = 3;
                objNc = splashScreenViewModelImpl.Nc(splashScreenViewModelImpl$prepareStartupConfiguration$1);
                if (objNc != obj) {
                    splashScreenViewModelImpl2 = splashScreenViewModelImpl;
                }
                return obj;
            }
            if (i3 != 3) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            splashScreenViewModelImpl2 = splashScreenViewModelImpl$prepareStartupConfiguration$1.f64494c;
            ResultKt.b(objNc);
        }
        splashScreenViewModelImpl2.K = (OnboardingStateUiModel) objNc;
        BuildersKt.c(ViewModelKt.a(splashScreenViewModelImpl), null, null, new SplashScreenViewModelImpl$observeLoginStateChanges$1(splashScreenViewModelImpl, null), 3);
        return Unit.f71739a;
        splashScreenViewModelImpl$prepareStartupConfiguration$1.f64493b = null;
        splashScreenViewModelImpl$prepareStartupConfiguration$1.f64496f = 2;
        if (splashScreenViewModelImpl.Lc(str, splashScreenViewModelImpl$prepareStartupConfiguration$1) != obj) {
            splashScreenViewModelImpl$prepareStartupConfiguration$1.f64493b = null;
            splashScreenViewModelImpl$prepareStartupConfiguration$1.f64494c = splashScreenViewModelImpl;
            splashScreenViewModelImpl$prepareStartupConfiguration$1.f64496f = 3;
            objNc = splashScreenViewModelImpl.Nc(splashScreenViewModelImpl$prepareStartupConfiguration$1);
            if (objNc != obj) {
                splashScreenViewModelImpl2 = splashScreenViewModelImpl;
                splashScreenViewModelImpl2.K = (OnboardingStateUiModel) objNc;
                BuildersKt.c(ViewModelKt.a(splashScreenViewModelImpl), null, null, new SplashScreenViewModelImpl$observeLoginStateChanges$1(splashScreenViewModelImpl, null), 3);
                return Unit.f71739a;
            }
        }
        return obj;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object Cc(SplashScreenViewModelImpl splashScreenViewModelImpl, PrivacyType privacyType, ContinuationImpl continuationImpl) {
        SplashScreenViewModelImpl$retrieveIfPrivacyNeeded$1 splashScreenViewModelImpl$retrieveIfPrivacyNeeded$1;
        if (continuationImpl instanceof SplashScreenViewModelImpl$retrieveIfPrivacyNeeded$1) {
            splashScreenViewModelImpl$retrieveIfPrivacyNeeded$1 = (SplashScreenViewModelImpl$retrieveIfPrivacyNeeded$1) continuationImpl;
            int i2 = splashScreenViewModelImpl$retrieveIfPrivacyNeeded$1.f64499e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                splashScreenViewModelImpl$retrieveIfPrivacyNeeded$1.f64499e = i2 - Integer.MIN_VALUE;
            } else {
                splashScreenViewModelImpl$retrieveIfPrivacyNeeded$1 = new SplashScreenViewModelImpl$retrieveIfPrivacyNeeded$1(splashScreenViewModelImpl, continuationImpl);
            }
        } else {
            splashScreenViewModelImpl$retrieveIfPrivacyNeeded$1 = new SplashScreenViewModelImpl$retrieveIfPrivacyNeeded$1(splashScreenViewModelImpl, continuationImpl);
        }
        Object objA = splashScreenViewModelImpl$retrieveIfPrivacyNeeded$1.f64498c;
        Enum r1 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = splashScreenViewModelImpl$retrieveIfPrivacyNeeded$1.f64499e;
        if (i3 == 0) {
            ResultKt.b(objA);
            NeedShowPrivacyConsentUseCase needShowPrivacyConsentUseCase = splashScreenViewModelImpl.l;
            splashScreenViewModelImpl$retrieveIfPrivacyNeeded$1.f64497b = privacyType;
            splashScreenViewModelImpl$retrieveIfPrivacyNeeded$1.f64499e = 1;
            objA = needShowPrivacyConsentUseCase.a(splashScreenViewModelImpl$retrieveIfPrivacyNeeded$1);
            if (objA != r1) {
            }
        }
        if (i3 != 1) {
            if (i3 == 2) {
                ResultKt.b(objA);
                return objA;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        privacyType = splashScreenViewModelImpl$retrieveIfPrivacyNeeded$1.f64497b;
        ResultKt.b(objA);
        if (!((Boolean) objA).booleanValue()) {
            splashScreenViewModelImpl$retrieveIfPrivacyNeeded$1.f64497b = null;
            splashScreenViewModelImpl$retrieveIfPrivacyNeeded$1.f64499e = 2;
            Enum enumMc = splashScreenViewModelImpl.Mc(splashScreenViewModelImpl$retrieveIfPrivacyNeeded$1);
            return enumMc == r1 ? r1 : enumMc;
        }
        int i4 = WhenMappings.f64460a[privacyType.ordinal()];
        if (i4 == 1 || i4 == 2) {
            return OnboardingRoutesName.PRIVACY_PRE_COMPLIANCE;
        }
        if (i4 == 3) {
            return OnboardingRoutesName.PIPL_CBT;
        }
        if (i4 == 4) {
            return OnboardingRoutesName.LOGIN;
        }
        v40.g();
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object Dc(SplashScreenViewModelImpl splashScreenViewModelImpl, ContinuationImpl continuationImpl) {
        SplashScreenViewModelImpl$shouldFetchConfigsVersionOrNull$1 splashScreenViewModelImpl$shouldFetchConfigsVersionOrNull$1;
        Object objA;
        if (continuationImpl instanceof SplashScreenViewModelImpl$shouldFetchConfigsVersionOrNull$1) {
            splashScreenViewModelImpl$shouldFetchConfigsVersionOrNull$1 = (SplashScreenViewModelImpl$shouldFetchConfigsVersionOrNull$1) continuationImpl;
            int i2 = splashScreenViewModelImpl$shouldFetchConfigsVersionOrNull$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                splashScreenViewModelImpl$shouldFetchConfigsVersionOrNull$1.d = i2 - Integer.MIN_VALUE;
            } else {
                splashScreenViewModelImpl$shouldFetchConfigsVersionOrNull$1 = new SplashScreenViewModelImpl$shouldFetchConfigsVersionOrNull$1(splashScreenViewModelImpl, continuationImpl);
            }
        } else {
            splashScreenViewModelImpl$shouldFetchConfigsVersionOrNull$1 = new SplashScreenViewModelImpl$shouldFetchConfigsVersionOrNull$1(splashScreenViewModelImpl, continuationImpl);
        }
        Object obj = splashScreenViewModelImpl$shouldFetchConfigsVersionOrNull$1.f64500b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = splashScreenViewModelImpl$shouldFetchConfigsVersionOrNull$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            GetConfigsVersionUseCase getConfigsVersionUseCase = splashScreenViewModelImpl.f64452e;
            splashScreenViewModelImpl$shouldFetchConfigsVersionOrNull$1.d = 1;
            objA = getConfigsVersionUseCase.a(splashScreenViewModelImpl$shouldFetchConfigsVersionOrNull$1);
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
        if (Result.a(objA) == null) {
            return null;
        }
        splashScreenViewModelImpl.f64450b.getClass();
        return SplashScreenAction.RetryPopup.f64431a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object Ec(SplashScreenViewModelImpl splashScreenViewModelImpl, ContinuationImpl continuationImpl) {
        SplashScreenViewModelImpl$shouldInitBotProtectionOrNull$1 splashScreenViewModelImpl$shouldInitBotProtectionOrNull$1;
        Object objA;
        if (continuationImpl instanceof SplashScreenViewModelImpl$shouldInitBotProtectionOrNull$1) {
            splashScreenViewModelImpl$shouldInitBotProtectionOrNull$1 = (SplashScreenViewModelImpl$shouldInitBotProtectionOrNull$1) continuationImpl;
            int i2 = splashScreenViewModelImpl$shouldInitBotProtectionOrNull$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                splashScreenViewModelImpl$shouldInitBotProtectionOrNull$1.d = i2 - Integer.MIN_VALUE;
            } else {
                splashScreenViewModelImpl$shouldInitBotProtectionOrNull$1 = new SplashScreenViewModelImpl$shouldInitBotProtectionOrNull$1(splashScreenViewModelImpl, continuationImpl);
            }
        } else {
            splashScreenViewModelImpl$shouldInitBotProtectionOrNull$1 = new SplashScreenViewModelImpl$shouldInitBotProtectionOrNull$1(splashScreenViewModelImpl, continuationImpl);
        }
        Object obj = splashScreenViewModelImpl$shouldInitBotProtectionOrNull$1.f64502b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = splashScreenViewModelImpl$shouldInitBotProtectionOrNull$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            InitializeBotProtectionUseCase initializeBotProtectionUseCase = splashScreenViewModelImpl.D;
            splashScreenViewModelImpl$shouldInitBotProtectionOrNull$1.d = 1;
            objA = initializeBotProtectionUseCase.a(splashScreenViewModelImpl$shouldInitBotProtectionOrNull$1);
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
        if (Result.a(objA) == null) {
            return null;
        }
        splashScreenViewModelImpl.f64450b.getClass();
        return SplashScreenAction.RetryPopup.f64431a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object Fc(SplashScreenViewModelImpl splashScreenViewModelImpl, ContinuationImpl continuationImpl) throws Throwable {
        SplashScreenViewModelImpl$shouldShowDispatchCountryScreenOrNull$1 splashScreenViewModelImpl$shouldShowDispatchCountryScreenOrNull$1;
        if (continuationImpl instanceof SplashScreenViewModelImpl$shouldShowDispatchCountryScreenOrNull$1) {
            splashScreenViewModelImpl$shouldShowDispatchCountryScreenOrNull$1 = (SplashScreenViewModelImpl$shouldShowDispatchCountryScreenOrNull$1) continuationImpl;
            int i2 = splashScreenViewModelImpl$shouldShowDispatchCountryScreenOrNull$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                splashScreenViewModelImpl$shouldShowDispatchCountryScreenOrNull$1.d = i2 - Integer.MIN_VALUE;
            } else {
                splashScreenViewModelImpl$shouldShowDispatchCountryScreenOrNull$1 = new SplashScreenViewModelImpl$shouldShowDispatchCountryScreenOrNull$1(splashScreenViewModelImpl, continuationImpl);
            }
        } else {
            splashScreenViewModelImpl$shouldShowDispatchCountryScreenOrNull$1 = new SplashScreenViewModelImpl$shouldShowDispatchCountryScreenOrNull$1(splashScreenViewModelImpl, continuationImpl);
        }
        Object objA = splashScreenViewModelImpl$shouldShowDispatchCountryScreenOrNull$1.f64504b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = splashScreenViewModelImpl$shouldShowDispatchCountryScreenOrNull$1.d;
        if (i3 == 0) {
            ResultKt.b(objA);
            DetermineUserInAppDispatchStatusUseCase determineUserInAppDispatchStatusUseCase = splashScreenViewModelImpl.d;
            splashScreenViewModelImpl$shouldShowDispatchCountryScreenOrNull$1.d = 1;
            objA = determineUserInAppDispatchStatusUseCase.a(splashScreenViewModelImpl$shouldShowDispatchCountryScreenOrNull$1);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objA);
        }
        DetermineUserInAppDispatchStatusUseCase.InAppDispatchStatus inAppDispatchStatus = (DetermineUserInAppDispatchStatusUseCase.InAppDispatchStatus) objA;
        if (inAppDispatchStatus instanceof DetermineUserInAppDispatchStatusUseCase.InAppDispatchStatus.FetchDispatchAreaListFailed) {
            return SplashScreenAction.RetryPopup.f64431a;
        }
        if (!(inAppDispatchStatus instanceof DetermineUserInAppDispatchStatusUseCase.InAppDispatchStatus.InAppDispatchNotSet)) {
            if (!(inAppDispatchStatus instanceof DetermineUserInAppDispatchStatusUseCase.InAppDispatchStatus.InAppDispatchAutoSelected)) {
                if (!(inAppDispatchStatus instanceof DetermineUserInAppDispatchStatusUseCase.InAppDispatchStatus.InAppDispatchDeprecated)) {
                    if (!(inAppDispatchStatus instanceof DetermineUserInAppDispatchStatusUseCase.InAppDispatchStatus.InAppDispatchValid)) {
                        v40.g();
                        return null;
                    }
                }
            }
            return null;
        }
        return SplashScreenAction.DispatchPage.f64423a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object Gc(SplashScreenViewModelImpl splashScreenViewModelImpl, ContinuationImpl continuationImpl) {
        SplashScreenViewModelImpl$shouldShowMaintenanceScreenOrNull$1 splashScreenViewModelImpl$shouldShowMaintenanceScreenOrNull$1;
        Object objA;
        if (continuationImpl instanceof SplashScreenViewModelImpl$shouldShowMaintenanceScreenOrNull$1) {
            splashScreenViewModelImpl$shouldShowMaintenanceScreenOrNull$1 = (SplashScreenViewModelImpl$shouldShowMaintenanceScreenOrNull$1) continuationImpl;
            int i2 = splashScreenViewModelImpl$shouldShowMaintenanceScreenOrNull$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                splashScreenViewModelImpl$shouldShowMaintenanceScreenOrNull$1.d = i2 - Integer.MIN_VALUE;
            } else {
                splashScreenViewModelImpl$shouldShowMaintenanceScreenOrNull$1 = new SplashScreenViewModelImpl$shouldShowMaintenanceScreenOrNull$1(splashScreenViewModelImpl, continuationImpl);
            }
        } else {
            splashScreenViewModelImpl$shouldShowMaintenanceScreenOrNull$1 = new SplashScreenViewModelImpl$shouldShowMaintenanceScreenOrNull$1(splashScreenViewModelImpl, continuationImpl);
        }
        Object obj = splashScreenViewModelImpl$shouldShowMaintenanceScreenOrNull$1.f64506b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = splashScreenViewModelImpl$shouldShowMaintenanceScreenOrNull$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            IsAppInMaintenanceUseCase isAppInMaintenanceUseCase = splashScreenViewModelImpl.r;
            splashScreenViewModelImpl$shouldShowMaintenanceScreenOrNull$1.d = 1;
            objA = isAppInMaintenanceUseCase.a(splashScreenViewModelImpl$shouldShowMaintenanceScreenOrNull$1);
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
        boolean z = objA instanceof Result.Failure;
        if (z) {
            objA = null;
        }
        if (Intrinsics.c(objA, Boolean.TRUE)) {
            return SplashScreenAction.AppInMaintenance.f64422a;
        }
        if (z) {
            return SplashScreenAction.RetryPopup.f64431a;
        }
        CheckMaintenanceStatusService.Companion companion2 = CheckMaintenanceStatusService.f59189i;
        Application application = splashScreenViewModelImpl.f13405a;
        application.getClass();
        companion2.getClass();
        CheckMaintenanceStatusService.Companion.a(application, false);
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x008f, code lost:
    
        if (r11 == r2) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00b5, code lost:
    
        if (r11 == r2) goto L42;
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object Hc(com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl r10, kotlin.coroutines.jvm.internal.ContinuationImpl r11) throws java.lang.Throwable {
        /*
            com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase r0 = r10.f64455i
            boolean r1 = r11 instanceof com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl$shouldShowOnboardingScreenOrNull$1
            if (r1 == 0) goto L15
            r1 = r11
            com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl$shouldShowOnboardingScreenOrNull$1 r1 = (com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl$shouldShowOnboardingScreenOrNull$1) r1
            int r2 = r1.f64510e
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.f64510e = r2
            goto L1a
        L15:
            com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl$shouldShowOnboardingScreenOrNull$1 r1 = new com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl$shouldShowOnboardingScreenOrNull$1
            r1.<init>(r10, r11)
        L1a:
            java.lang.Object r11 = r1.f64509c
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r3 = r1.f64510e
            r4 = 0
            r5 = 0
            r6 = 4
            r7 = 3
            r8 = 2
            r9 = 1
            if (r3 == 0) goto L4b
            if (r3 == r9) goto L47
            if (r3 == r8) goto L43
            if (r3 == r7) goto L3f
            if (r3 != r6) goto L39
            java.lang.Object r0 = r1.f64508b
            kotlinx.coroutines.flow.MutableStateFlow r0 = (kotlinx.coroutines.flow.MutableStateFlow) r0
            kotlin.ResultKt.b(r11)
            goto Lb8
        L39:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r10)
            return r5
        L3f:
            kotlin.ResultKt.b(r11)
            goto L92
        L43:
            kotlin.ResultKt.b(r11)
            goto La0
        L47:
            kotlin.ResultKt.b(r11)
            goto L5d
        L4b:
            kotlin.ResultKt.b(r11)
            com.vuitton.foundation.model.domain.model.sync.Feature r11 = com.vuitton.foundation.model.domain.model.sync.Feature.ONBOARDING_FORCED
            com.vuitton.foundation.model.domain.model.sync.Feature[] r11 = new com.vuitton.foundation.model.domain.model.sync.Feature[]{r11}
            r1.f64510e = r9
            java.lang.Object r11 = r0.c(r11, r4, r1)
            if (r11 != r2) goto L5d
            goto Lb7
        L5d:
            java.lang.Boolean r11 = (java.lang.Boolean) r11
            boolean r11 = r11.booleanValue()
            if (r11 == 0) goto L83
            com.vuitton.android.presentation.screen.onboarding.models.OnboardingStateUiModel r11 = r10.K
            com.vuitton.android.presentation.screen.onboarding.models.OnboardingStateUiModel r0 = com.vuitton.android.presentation.screen.onboarding.models.OnboardingStateUiModel.DONE
            if (r11 != r0) goto La0
            com.vuitton.android.presentation.screen.onboarding.models.OnboardingStateUiModel r11 = com.vuitton.android.presentation.screen.onboarding.models.OnboardingStateUiModel.NOT_STARTED
            r10.K = r11
            com.vuitton.android.domain.usecase.onboarding.SetOnboardingStateUseCase r11 = r10.A
            com.vuitton.foundation.model.domain.model.onboarding.OnboardingState r0 = com.vuitton.foundation.model.domain.model.onboarding.OnboardingState.NOT_STARTED
            r1.f64510e = r8
            com.vuitton.android.domain.repository.UserPreferencesRepository r11 = r11.f50152a
            java.lang.Object r11 = r11.a(r0, r1)
            if (r11 != r2) goto L7e
            goto L80
        L7e:
            kotlin.Unit r11 = kotlin.Unit.f71739a
        L80:
            if (r11 != r2) goto La0
            goto Lb7
        L83:
            com.vuitton.foundation.model.domain.model.sync.Feature r11 = com.vuitton.foundation.model.domain.model.sync.Feature.ONBOARDING
            com.vuitton.foundation.model.domain.model.sync.Feature[] r11 = new com.vuitton.foundation.model.domain.model.sync.Feature[]{r11}
            r1.f64510e = r7
            java.lang.Object r11 = r0.c(r11, r4, r1)
            if (r11 != r2) goto L92
            goto Lb7
        L92:
            java.lang.Boolean r11 = (java.lang.Boolean) r11
            boolean r11 = r11.booleanValue()
            if (r11 == 0) goto Lc3
            com.vuitton.android.presentation.screen.onboarding.models.OnboardingStateUiModel r11 = r10.K
            com.vuitton.android.presentation.screen.onboarding.models.OnboardingStateUiModel r0 = com.vuitton.android.presentation.screen.onboarding.models.OnboardingStateUiModel.DONE
            if (r11 == r0) goto Lc3
        La0:
            kotlinx.coroutines.flow.MutableStateFlow r0 = r10.M
            r1.f64508b = r0
            r1.f64510e = r6
            com.vuitton.android.core.schedulers.CoroutineDispatchers r11 = r10.f64451c
            kotlinx.coroutines.scheduling.DefaultIoScheduler r11 = r11.getF43530b()
            com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl$computeOnboardingStartScreen$2 r3 = new com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl$computeOnboardingStartScreen$2
            r3.<init>(r10, r5)
            java.lang.Object r11 = kotlinx.coroutines.BuildersKt.f(r11, r3, r1)
            if (r11 != r2) goto Lb8
        Lb7:
            return r2
        Lb8:
            r0.setValue(r11)
            com.vuitton.android.presentation.screen.splash.SplashScreenAction$GoOnboarding r11 = new com.vuitton.android.presentation.screen.splash.SplashScreenAction$GoOnboarding
            java.lang.String r10 = r10.O
            r11.<init>(r10)
            return r11
        Lc3:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl.Hc(com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object Ic(SplashScreenViewModelImpl splashScreenViewModelImpl, ContinuationImpl continuationImpl) {
        SplashScreenViewModelImpl$shouldShowPrivacyPolicyScreenOrNull$1 splashScreenViewModelImpl$shouldShowPrivacyPolicyScreenOrNull$1;
        if (continuationImpl instanceof SplashScreenViewModelImpl$shouldShowPrivacyPolicyScreenOrNull$1) {
            splashScreenViewModelImpl$shouldShowPrivacyPolicyScreenOrNull$1 = (SplashScreenViewModelImpl$shouldShowPrivacyPolicyScreenOrNull$1) continuationImpl;
            int i2 = splashScreenViewModelImpl$shouldShowPrivacyPolicyScreenOrNull$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                splashScreenViewModelImpl$shouldShowPrivacyPolicyScreenOrNull$1.d = i2 - Integer.MIN_VALUE;
            } else {
                splashScreenViewModelImpl$shouldShowPrivacyPolicyScreenOrNull$1 = new SplashScreenViewModelImpl$shouldShowPrivacyPolicyScreenOrNull$1(splashScreenViewModelImpl, continuationImpl);
            }
        } else {
            splashScreenViewModelImpl$shouldShowPrivacyPolicyScreenOrNull$1 = new SplashScreenViewModelImpl$shouldShowPrivacyPolicyScreenOrNull$1(splashScreenViewModelImpl, continuationImpl);
        }
        Object objA = splashScreenViewModelImpl$shouldShowPrivacyPolicyScreenOrNull$1.f64511b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = splashScreenViewModelImpl$shouldShowPrivacyPolicyScreenOrNull$1.d;
        if (i3 == 0) {
            ResultKt.b(objA);
            NeedShowPrivacyConsentUseCase needShowPrivacyConsentUseCase = splashScreenViewModelImpl.l;
            splashScreenViewModelImpl$shouldShowPrivacyPolicyScreenOrNull$1.d = 1;
            objA = needShowPrivacyConsentUseCase.a(splashScreenViewModelImpl$shouldShowPrivacyPolicyScreenOrNull$1);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objA);
        }
        if (((Boolean) objA).booleanValue()) {
            return new SplashScreenAction.GoPrivacyPolicy(splashScreenViewModelImpl.O);
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object Jc(SplashScreenViewModelImpl splashScreenViewModelImpl, ContinuationImpl continuationImpl) throws Throwable {
        SplashScreenViewModelImpl$shouldShowSecurityDialogOrNull$1 splashScreenViewModelImpl$shouldShowSecurityDialogOrNull$1;
        if (continuationImpl instanceof SplashScreenViewModelImpl$shouldShowSecurityDialogOrNull$1) {
            splashScreenViewModelImpl$shouldShowSecurityDialogOrNull$1 = (SplashScreenViewModelImpl$shouldShowSecurityDialogOrNull$1) continuationImpl;
            int i2 = splashScreenViewModelImpl$shouldShowSecurityDialogOrNull$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                splashScreenViewModelImpl$shouldShowSecurityDialogOrNull$1.d = i2 - Integer.MIN_VALUE;
            } else {
                splashScreenViewModelImpl$shouldShowSecurityDialogOrNull$1 = new SplashScreenViewModelImpl$shouldShowSecurityDialogOrNull$1(splashScreenViewModelImpl, continuationImpl);
            }
        } else {
            splashScreenViewModelImpl$shouldShowSecurityDialogOrNull$1 = new SplashScreenViewModelImpl$shouldShowSecurityDialogOrNull$1(splashScreenViewModelImpl, continuationImpl);
        }
        Object objF = splashScreenViewModelImpl$shouldShowSecurityDialogOrNull$1.f64513b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = splashScreenViewModelImpl$shouldShowSecurityDialogOrNull$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultIoScheduler f43530b = splashScreenViewModelImpl.f64451c.getF43530b();
            SplashScreenViewModelImpl$shouldShowSecurityDialogOrNull$2 splashScreenViewModelImpl$shouldShowSecurityDialogOrNull$2 = new SplashScreenViewModelImpl$shouldShowSecurityDialogOrNull$2(splashScreenViewModelImpl, null);
            splashScreenViewModelImpl$shouldShowSecurityDialogOrNull$1.d = 1;
            objF = BuildersKt.f(f43530b, splashScreenViewModelImpl$shouldShowSecurityDialogOrNull$2, splashScreenViewModelImpl$shouldShowSecurityDialogOrNull$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objF);
        }
        if (((Boolean) objF).booleanValue()) {
            return null;
        }
        return SplashScreenAction.ShowSecurityDialog.f64432a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object Kc(SplashScreenViewModelImpl splashScreenViewModelImpl, ContinuationImpl continuationImpl) throws Throwable {
        SplashScreenViewModelImpl$shouldUpdateOrSyncConfigsOrNull$1 splashScreenViewModelImpl$shouldUpdateOrSyncConfigsOrNull$1;
        if (continuationImpl instanceof SplashScreenViewModelImpl$shouldUpdateOrSyncConfigsOrNull$1) {
            splashScreenViewModelImpl$shouldUpdateOrSyncConfigsOrNull$1 = (SplashScreenViewModelImpl$shouldUpdateOrSyncConfigsOrNull$1) continuationImpl;
            int i2 = splashScreenViewModelImpl$shouldUpdateOrSyncConfigsOrNull$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                splashScreenViewModelImpl$shouldUpdateOrSyncConfigsOrNull$1.d = i2 - Integer.MIN_VALUE;
            } else {
                splashScreenViewModelImpl$shouldUpdateOrSyncConfigsOrNull$1 = new SplashScreenViewModelImpl$shouldUpdateOrSyncConfigsOrNull$1(splashScreenViewModelImpl, continuationImpl);
            }
        } else {
            splashScreenViewModelImpl$shouldUpdateOrSyncConfigsOrNull$1 = new SplashScreenViewModelImpl$shouldUpdateOrSyncConfigsOrNull$1(splashScreenViewModelImpl, continuationImpl);
        }
        Object objA = splashScreenViewModelImpl$shouldUpdateOrSyncConfigsOrNull$1.f64518b;
        Object obj = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = splashScreenViewModelImpl$shouldUpdateOrSyncConfigsOrNull$1.d;
        Object obj2 = null;
        if (i3 == 0) {
            ResultKt.b(objA);
            RequireCachedConfigsVersionUseCase requireCachedConfigsVersionUseCase = splashScreenViewModelImpl.o;
            splashScreenViewModelImpl$shouldUpdateOrSyncConfigsOrNull$1.d = 1;
            objA = requireCachedConfigsVersionUseCase.a(splashScreenViewModelImpl$shouldUpdateOrSyncConfigsOrNull$1);
            if (objA != obj) {
            }
        }
        if (i3 != 1) {
            if (i3 == 2) {
                ResultKt.b(objA);
                return objA;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(objA);
        ConfigsVersion configsVersion = (ConfigsVersion) objA;
        ShouldUpdateOsUseCase shouldUpdateOsUseCase = splashScreenViewModelImpl.p;
        int i4 = Build.VERSION.SDK_INT;
        shouldUpdateOsUseCase.getClass();
        configsVersion.getClass();
        if (i4 < configsVersion.f67291f) {
            obj2 = SplashScreenAction.ForceUpdateOsVersion.f64425a;
        } else {
            splashScreenViewModelImpl.q.getClass();
            if (672 < configsVersion.d) {
                obj2 = SplashScreenAction.ForceUpdateAppVersion.f64424a;
            }
        }
        if (obj2 != null) {
            return obj2;
        }
        splashScreenViewModelImpl$shouldUpdateOrSyncConfigsOrNull$1.d = 2;
        Object objOc = splashScreenViewModelImpl.Oc(configsVersion, splashScreenViewModelImpl$shouldUpdateOrSyncConfigsOrNull$1);
        return objOc == obj ? obj : objOc;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0076, code lost:
    
        if (r11.a(r10, r0) == r1) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object yc(com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl r9, com.vuitton.android.presentation.screen.splash.AutomatedTestConfig r10, kotlin.coroutines.jvm.internal.ContinuationImpl r11) {
        /*
            boolean r0 = r11 instanceof com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl$applyAutomatedTestConfigThenRestartApp$1
            if (r0 == 0) goto L13
            r0 = r11
            com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl$applyAutomatedTestConfigThenRestartApp$1 r0 = (com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl$applyAutomatedTestConfigThenRestartApp$1) r0
            int r1 = r0.f64464e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f64464e = r1
            goto L18
        L13:
            com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl$applyAutomatedTestConfigThenRestartApp$1 r0 = new com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl$applyAutomatedTestConfigThenRestartApp$1
            r0.<init>(r9, r11)
        L18:
            java.lang.Object r11 = r0.f64463c
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f64464e
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L3b
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2f
            kotlin.ResultKt.b(r11)
            kotlin.Result r11 = (kotlin.Result) r11
            java.lang.Object r10 = r11.f71708b
            goto L79
        L2f:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r9)
            return r5
        L35:
            com.vuitton.android.presentation.screen.splash.AutomatedTestConfig r10 = r0.f64462b
            kotlin.ResultKt.b(r11)
            goto L5a
        L3b:
            kotlin.ResultKt.b(r11)
            com.vuitton.android.presentation.screen.splash.AutomatedTestConfig$EnvironmentConfig r11 = r10.f64413a
            if (r11 == 0) goto L5a
            com.vuitton.android.domain.usecase.automatedtest.ApplyAutomatedTestConfigUseCase r2 = r9.f64453f
            java.lang.String r6 = r11.f64417c
            com.vuitton.foundation.model.domain.model.environment.Environment r7 = r11.f64415a
            java.lang.String r11 = r11.f64416b
            com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch$Id$Companion r8 = com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch.Id.f67485b
            r11.getClass()
            r0.f64462b = r10
            r0.f64464e = r4
            java.lang.Object r11 = r2.a(r6, r7, r11, r0)
            if (r11 != r1) goto L5a
            goto L78
        L5a:
            java.lang.Boolean r11 = r10.f64414b
            if (r11 != 0) goto L66
            com.vuitton.android.presentation.screen.splash.AutomatedTestConfig$EnvironmentConfig r10 = r10.f64413a
            if (r10 == 0) goto L65
            java.lang.Boolean r11 = java.lang.Boolean.TRUE
            goto L66
        L65:
            r11 = r5
        L66:
            if (r11 == 0) goto L7b
            boolean r10 = r11.booleanValue()
            com.vuitton.android.domain.usecase.automatedtest.SetUiTestModeUseCase r11 = r9.g
            r0.f64462b = r5
            r0.f64464e = r3
            java.lang.Object r10 = r11.a(r10, r0)
            if (r10 != r1) goto L79
        L78:
            return r1
        L79:
            kotlin.Result$Companion r10 = kotlin.Result.INSTANCE
        L7b:
            kotlinx.coroutines.flow.MutableStateFlow r9 = r9.G
            com.vuitton.android.presentation.screen.splash.SplashScreenAction$Idle r10 = com.vuitton.android.presentation.screen.splash.SplashScreenAction.Idle.f64429a
            r9.setValue(r10)
            com.vuitton.android.presentation.screen.splash.SplashScreenAction$RestartApp r10 = com.vuitton.android.presentation.screen.splash.SplashScreenAction.RestartApp.f64430a
            r9.setValue(r10)
            kotlin.Unit r9 = kotlin.Unit.f71739a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl.yc(com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl, com.vuitton.android.presentation.screen.splash.AutomatedTestConfig, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    public static final Object zc(SplashScreenViewModelImpl splashScreenViewModelImpl, ContinuationImpl continuationImpl) {
        SplashScreenViewModelImpl$fetchAppLinkExclusions$1 splashScreenViewModelImpl$fetchAppLinkExclusions$1;
        Object objA;
        Logger logger = splashScreenViewModelImpl.f64450b;
        if (continuationImpl instanceof SplashScreenViewModelImpl$fetchAppLinkExclusions$1) {
            splashScreenViewModelImpl$fetchAppLinkExclusions$1 = (SplashScreenViewModelImpl$fetchAppLinkExclusions$1) continuationImpl;
            int i2 = splashScreenViewModelImpl$fetchAppLinkExclusions$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                splashScreenViewModelImpl$fetchAppLinkExclusions$1.d = i2 - Integer.MIN_VALUE;
            } else {
                splashScreenViewModelImpl$fetchAppLinkExclusions$1 = new SplashScreenViewModelImpl$fetchAppLinkExclusions$1(splashScreenViewModelImpl, continuationImpl);
            }
        } else {
            splashScreenViewModelImpl$fetchAppLinkExclusions$1 = new SplashScreenViewModelImpl$fetchAppLinkExclusions$1(splashScreenViewModelImpl, continuationImpl);
        }
        Object obj = splashScreenViewModelImpl$fetchAppLinkExclusions$1.f64472b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = splashScreenViewModelImpl$fetchAppLinkExclusions$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            FetchAppLinkExclusionsUseCase fetchAppLinkExclusionsUseCase = splashScreenViewModelImpl.B;
            splashScreenViewModelImpl$fetchAppLinkExclusions$1.d = 1;
            objA = fetchAppLinkExclusionsUseCase.a(splashScreenViewModelImpl$fetchAppLinkExclusions$1);
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
        if (Result.a(objA) != null) {
            logger.getClass();
            return SplashScreenAction.RetryPopup.f64431a;
        }
        ((Boolean) objA).getClass();
        logger.getClass();
        return null;
    }

    @Override // com.vuitton.android.presentation.screen.splash.SplashScreenViewModel
    public final void A7() {
        this.I.setValue(Boolean.TRUE);
    }

    @Override // com.vuitton.android.presentation.screen.splash.SplashScreenViewModel
    public final StateFlow K5() {
        return this.N;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005f, code lost:
    
        if (r2 == null) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object Lc(java.lang.String r8, kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl$determineDeepLinkUsedForRedirection$1
            if (r0 == 0) goto L13
            r0 = r9
            com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl$determineDeepLinkUsedForRedirection$1 r0 = (com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl$determineDeepLinkUsedForRedirection$1) r0
            int r1 = r0.f64471f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f64471f = r1
            goto L18
        L13:
            com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl$determineDeepLinkUsedForRedirection$1 r0 = new com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl$determineDeepLinkUsedForRedirection$1
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.d
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f64471f
            com.vuitton.foundation.logger.Logger r3 = r7.f64450b
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L46
            if (r2 == r5) goto L37
            if (r2 != r4) goto L31
            java.lang.Object r7 = r0.f64468b
            com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl r7 = (com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl) r7
            kotlin.ResultKt.b(r9)
            goto L75
        L31:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r7)
            return r6
        L37:
            com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl r8 = r0.f64469c
            java.lang.Object r2 = r0.f64468b
            java.lang.String r2 = (java.lang.String) r2
            kotlin.ResultKt.b(r9)
            kotlin.Result r9 = (kotlin.Result) r9
            r9.getClass()
            goto L5f
        L46:
            kotlin.ResultKt.b(r9)
            r3.getClass()
            if (r8 == 0) goto L62
            r0.f64468b = r8
            r0.f64469c = r7
            r0.f64471f = r5
            com.vuitton.android.domain.usecase.deeplinkredirection.ClearDeepLinkForRedirectionUseCase r9 = r7.u
            java.lang.Object r9 = r9.a(r0)
            if (r9 != r1) goto L5d
            goto L73
        L5d:
            r2 = r8
            r8 = r7
        L5f:
            if (r2 != 0) goto L79
            goto L63
        L62:
            r8 = r7
        L63:
            r0.f64468b = r8
            r0.f64469c = r6
            r0.f64471f = r4
            com.vuitton.android.domain.usecase.deeplinkredirection.GetSavedDeepLinkForRedirectionUseCase r7 = r7.s
            com.vuitton.android.domain.repository.DeepLinkCacheRepository r7 = r7.f49886a
            java.lang.Object r9 = r7.c(r0)
            if (r9 != r1) goto L74
        L73:
            return r1
        L74:
            r7 = r8
        L75:
            r2 = r9
            java.lang.String r2 = (java.lang.String) r2
            r8 = r7
        L79:
            r8.O = r2
            r3.getClass()
            kotlin.Unit r7 = kotlin.Unit.f71739a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl.Lc(java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Enum Mc(ContinuationImpl continuationImpl) {
        SplashScreenViewModelImpl$getOnboardingResumeScreen$1 splashScreenViewModelImpl$getOnboardingResumeScreen$1;
        if (continuationImpl instanceof SplashScreenViewModelImpl$getOnboardingResumeScreen$1) {
            splashScreenViewModelImpl$getOnboardingResumeScreen$1 = (SplashScreenViewModelImpl$getOnboardingResumeScreen$1) continuationImpl;
            int i2 = splashScreenViewModelImpl$getOnboardingResumeScreen$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                splashScreenViewModelImpl$getOnboardingResumeScreen$1.d = i2 - Integer.MIN_VALUE;
            } else {
                splashScreenViewModelImpl$getOnboardingResumeScreen$1 = new SplashScreenViewModelImpl$getOnboardingResumeScreen$1(this, continuationImpl);
            }
        } else {
            splashScreenViewModelImpl$getOnboardingResumeScreen$1 = new SplashScreenViewModelImpl$getOnboardingResumeScreen$1(this, continuationImpl);
        }
        Object objNc = splashScreenViewModelImpl$getOnboardingResumeScreen$1.f64481b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = splashScreenViewModelImpl$getOnboardingResumeScreen$1.d;
        if (i3 == 0) {
            ResultKt.b(objNc);
            if (!((Boolean) this.L.getValue()).booleanValue()) {
                return OnboardingRoutesName.LOGIN;
            }
            splashScreenViewModelImpl$getOnboardingResumeScreen$1.d = 1;
            objNc = Nc(splashScreenViewModelImpl$getOnboardingResumeScreen$1);
            if (objNc == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objNc);
        }
        switch (WhenMappings.f64461b[((OnboardingStateUiModel) objNc).ordinal()]) {
            case 1:
            case 2:
                return OnboardingRoutesName.START_NOW;
            case 3:
                return OnboardingRoutesName.NOTIFICATIONS;
            case 4:
                return OnboardingRoutesName.GEOLOCATION;
            case 5:
                return OnboardingRoutesName.ICONS;
            case 6:
                return OnboardingRoutesName.LOGIN;
            default:
                v40.g();
                return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Enum Nc(ContinuationImpl continuationImpl) {
        SplashScreenViewModelImpl$getOnboardingState$1 splashScreenViewModelImpl$getOnboardingState$1;
        OnboardingStateUiModel onboardingStateUiModelA;
        if (continuationImpl instanceof SplashScreenViewModelImpl$getOnboardingState$1) {
            splashScreenViewModelImpl$getOnboardingState$1 = (SplashScreenViewModelImpl$getOnboardingState$1) continuationImpl;
            int i2 = splashScreenViewModelImpl$getOnboardingState$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                splashScreenViewModelImpl$getOnboardingState$1.d = i2 - Integer.MIN_VALUE;
            } else {
                splashScreenViewModelImpl$getOnboardingState$1 = new SplashScreenViewModelImpl$getOnboardingState$1(this, continuationImpl);
            }
        } else {
            splashScreenViewModelImpl$getOnboardingState$1 = new SplashScreenViewModelImpl$getOnboardingState$1(this, continuationImpl);
        }
        Object objG = splashScreenViewModelImpl$getOnboardingState$1.f64483b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = splashScreenViewModelImpl$getOnboardingState$1.d;
        if (i3 == 0) {
            ResultKt.b(objG);
            splashScreenViewModelImpl$getOnboardingState$1.d = 1;
            objG = this.z.f50151a.g(splashScreenViewModelImpl$getOnboardingState$1);
            if (objG == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objG);
        }
        OnboardingState onboardingState = (OnboardingState) objG;
        return (onboardingState == null || (onboardingStateUiModelA = OnboardingMapperKt.a(onboardingState)) == null) ? OnboardingStateUiModel.NOT_STARTED : onboardingStateUiModelA;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object Oc(ConfigsVersion configsVersion, ContinuationImpl continuationImpl) throws Throwable {
        SplashScreenViewModelImpl$shouldSyncConfigsWithRevisionsOrNull$1 splashScreenViewModelImpl$shouldSyncConfigsWithRevisionsOrNull$1;
        if (continuationImpl instanceof SplashScreenViewModelImpl$shouldSyncConfigsWithRevisionsOrNull$1) {
            splashScreenViewModelImpl$shouldSyncConfigsWithRevisionsOrNull$1 = (SplashScreenViewModelImpl$shouldSyncConfigsWithRevisionsOrNull$1) continuationImpl;
            int i2 = splashScreenViewModelImpl$shouldSyncConfigsWithRevisionsOrNull$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                splashScreenViewModelImpl$shouldSyncConfigsWithRevisionsOrNull$1.d = i2 - Integer.MIN_VALUE;
            } else {
                splashScreenViewModelImpl$shouldSyncConfigsWithRevisionsOrNull$1 = new SplashScreenViewModelImpl$shouldSyncConfigsWithRevisionsOrNull$1(this, continuationImpl);
            }
        } else {
            splashScreenViewModelImpl$shouldSyncConfigsWithRevisionsOrNull$1 = new SplashScreenViewModelImpl$shouldSyncConfigsWithRevisionsOrNull$1(this, continuationImpl);
        }
        Object objB = splashScreenViewModelImpl$shouldSyncConfigsWithRevisionsOrNull$1.f64516b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = splashScreenViewModelImpl$shouldSyncConfigsWithRevisionsOrNull$1.d;
        if (i3 == 0) {
            ResultKt.b(objB);
            splashScreenViewModelImpl$shouldSyncConfigsWithRevisionsOrNull$1.d = 1;
            objB = this.n.b(configsVersion, splashScreenViewModelImpl$shouldSyncConfigsWithRevisionsOrNull$1);
            if (objB == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objB);
        }
        SyncConfigsWithRevisionsUseCase.SyncResult syncResult = (SyncConfigsWithRevisionsUseCase.SyncResult) objB;
        if (Intrinsics.c(syncResult, SyncConfigsWithRevisionsUseCase.SyncResult.Success.f49726a)) {
            return null;
        }
        if (syncResult instanceof SyncConfigsWithRevisionsUseCase.SyncResult.Failure) {
            return SplashScreenAction.RetryPopup.f64431a;
        }
        v40.g();
        return null;
    }

    @Override // com.vuitton.android.presentation.screen.splash.SplashScreenViewModel
    public final void eb(String str, AutomatedTestConfig automatedTestConfig) {
        LinkedHashMap linkedHashMap = this.F;
        Job job = (Job) linkedHashMap.get("checkStartupConditionsJob");
        if (job == null || !job.isActive()) {
            StartOpenAppMonitoringUseCase startOpenAppMonitoringUseCase = this.v;
            startOpenAppMonitoringUseCase.getClass();
            TimeSource.Monotonic.f74589a.getClass();
            MonotonicTimeSource.f74587a.getClass();
            long jB = MonotonicTimeSource.b();
            Logger logger = startOpenAppMonitoringUseCase.f49252a;
            "Start open app : ".concat(TimeSource.Monotonic.ValueTimeMark.b(jB));
            logger.getClass();
            startOpenAppMonitoringUseCase.f49253b.a(jB);
            linkedHashMap.put("checkStartupConditionsJob", BuildersKt.c(ViewModelKt.a(this), null, null, new SplashScreenViewModelImpl$validateAppIntegrity$1(this, str, automatedTestConfig, null), 3));
        }
    }

    @Override // com.vuitton.android.presentation.screen.splash.SplashScreenViewModel
    /* JADX INFO: renamed from: wa, reason: from getter */
    public final StateFlow getH() {
        return this.H;
    }

    @Override // com.vuitton.android.presentation.screen.splash.SplashScreenViewModel
    /* JADX INFO: renamed from: x3, reason: from getter */
    public final StateFlow getJ() {
        return this.J;
    }
}
