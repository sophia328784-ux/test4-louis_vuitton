.class public final Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ce\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0089\u0002\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020\'\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u0010,\u001a\u00020+\u0012\u0006\u0010.\u001a\u00020-\u0012\u0006\u00100\u001a\u00020/\u0012\u0006\u00102\u001a\u000201\u0012\u0006\u00104\u001a\u000203\u0012\u0006\u00106\u001a\u000205\u0012\u0006\u00108\u001a\u000207\u0012\u0006\u0010:\u001a\u000209\u0012\u0006\u0010<\u001a\u00020;\u0012\u0006\u0010>\u001a\u00020=\u0012\u0006\u0010@\u001a\u00020?\u0012\u0006\u0010B\u001a\u00020A\u00a2\u0006\u0004\u0008C\u0010D\u00a8\u0006E"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModel;",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Landroid/app/Application;",
        "application",
        "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;",
        "coroutineDispatchers",
        "Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase;",
        "determineUserInAppDispatchStatusUseCase",
        "Lcom/vuitton/android/domain/usecase/config/GetConfigsVersionUseCase;",
        "getConfigsVersionUseCase",
        "Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase;",
        "applyAutomatedTestConfigUseCase",
        "Lcom/vuitton/android/domain/usecase/automatedtest/SetUiTestModeUseCase;",
        "setUiTestModeUseCase",
        "Lcom/vuitton/android/domain/usecase/automatedtest/ApplySavedSecurityCookieUseCase;",
        "applySavedSecurityCookieUseCase",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/privacy/consent/GetPiplCbdtAgreementUseCase;",
        "getPiplCbdtAgreementUseCase",
        "Lcom/vuitton/android/domain/service/authentication/UserSessionService;",
        "userSessionService",
        "Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase;",
        "needShowPrivacyConsentUseCase",
        "Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase;",
        "handleAppUpdateUseCase",
        "Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase;",
        "syncConfigsWithRevisionsUseCase",
        "Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;",
        "requireCachedConfigsVersionUseCase",
        "Lcom/vuitton/android/domain/usecase/config/ShouldUpdateOsUseCase;",
        "shouldUpdateOsUseCase",
        "Lcom/vuitton/android/domain/usecase/config/ShouldUpdateAppUseCase;",
        "shouldUpdateAppUseCase",
        "Lcom/vuitton/android/domain/usecase/maintenance/IsAppInMaintenanceUseCase;",
        "isAppInMaintenanceUseCase",
        "Lcom/vuitton/android/domain/usecase/deeplinkredirection/GetSavedDeepLinkForRedirectionUseCase;",
        "getSavedDeepLinkForRedirectionUseCase",
        "Lcom/vuitton/android/domain/usecase/deeplinkredirection/SaveDeepLinkForRedirectionUseCase;",
        "saveDeepLinkForRedirectionUseCase",
        "Lcom/vuitton/android/domain/usecase/deeplinkredirection/ClearDeepLinkForRedirectionUseCase;",
        "clearDeepLinkForRedirectionUseCase",
        "Lcom/vuitton/android/domain/usecase/app/monitoring/StartOpenAppMonitoringUseCase;",
        "startOpenAppMonitoringUseCase",
        "Lcom/vuitton/android/domain/usecase/app/monitoring/EndOpenAppMonitoringUseCase;",
        "endOpenAppMonitoringUseCase",
        "Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentTypeUseCase;",
        "getConsentTypeUseCase",
        "Lcom/vuitton/android/domain/usecase/privacy/consent/HasConsentsUseCase;",
        "hasConsentsUseCase",
        "Lcom/vuitton/android/domain/usecase/onboarding/GetOnboardingStateUseCase;",
        "getOnboardingStateUseCase",
        "Lcom/vuitton/android/domain/usecase/onboarding/SetOnboardingStateUseCase;",
        "setOnboardingStateUseCase",
        "Lcom/vuitton/android/domain/usecase/applink/FetchAppLinkExclusionsUseCase;",
        "fetchAppLinkExclusionsUseCase",
        "Lcom/vuitton/android/domain/usecase/avatar/PreloadAvatarsCacheUseCase;",
        "preloadAvatarsCacheUseCase",
        "Lcom/vuitton/android/domain/usecase/botprotection/InitializeBotProtectionUseCase;",
        "initializeBotProtectionUseCase",
        "Lcom/vuitton/android/platform/security/RootDetector;",
        "rootDetector",
        "Lcom/vuitton/android/domain/usecase/environments/UpdateEnvironmentUseCase;",
        "updateEnvironmentUseCase",
        "<init>",
        "(Lcom/vuitton/foundation/logger/Logger;Landroid/app/Application;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase;Lcom/vuitton/android/domain/usecase/config/GetConfigsVersionUseCase;Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase;Lcom/vuitton/android/domain/usecase/automatedtest/SetUiTestModeUseCase;Lcom/vuitton/android/domain/usecase/automatedtest/ApplySavedSecurityCookieUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/GetPiplCbdtAgreementUseCase;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase;Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase;Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;Lcom/vuitton/android/domain/usecase/config/ShouldUpdateOsUseCase;Lcom/vuitton/android/domain/usecase/config/ShouldUpdateAppUseCase;Lcom/vuitton/android/domain/usecase/maintenance/IsAppInMaintenanceUseCase;Lcom/vuitton/android/domain/usecase/deeplinkredirection/GetSavedDeepLinkForRedirectionUseCase;Lcom/vuitton/android/domain/usecase/deeplinkredirection/SaveDeepLinkForRedirectionUseCase;Lcom/vuitton/android/domain/usecase/deeplinkredirection/ClearDeepLinkForRedirectionUseCase;Lcom/vuitton/android/domain/usecase/app/monitoring/StartOpenAppMonitoringUseCase;Lcom/vuitton/android/domain/usecase/app/monitoring/EndOpenAppMonitoringUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentTypeUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/HasConsentsUseCase;Lcom/vuitton/android/domain/usecase/onboarding/GetOnboardingStateUseCase;Lcom/vuitton/android/domain/usecase/onboarding/SetOnboardingStateUseCase;Lcom/vuitton/android/domain/usecase/applink/FetchAppLinkExclusionsUseCase;Lcom/vuitton/android/domain/usecase/avatar/PreloadAvatarsCacheUseCase;Lcom/vuitton/android/domain/usecase/botprotection/InitializeBotProtectionUseCase;Lcom/vuitton/android/platform/security/RootDetector;Lcom/vuitton/android/domain/usecase/environments/UpdateEnvironmentUseCase;)V",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final A:Lcom/vuitton/android/domain/usecase/onboarding/SetOnboardingStateUseCase;

.field public final B:Lcom/vuitton/android/domain/usecase/applink/FetchAppLinkExclusionsUseCase;

.field public final C:Lcom/vuitton/android/domain/usecase/avatar/PreloadAvatarsCacheUseCase;

.field public final D:Lcom/vuitton/android/domain/usecase/botprotection/InitializeBotProtectionUseCase;

.field public final E:Lcom/vuitton/android/platform/security/RootDetector;

.field public final F:Ljava/util/LinkedHashMap;

.field public final G:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final H:Lkotlinx/coroutines/flow/StateFlow;

.field public final I:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final J:Lkotlinx/coroutines/flow/StateFlow;

.field public K:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;

.field public final L:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final M:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final N:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public O:Ljava/lang/String;

.field public final b:Lcom/vuitton/foundation/logger/Logger;

.field public final c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

.field public final d:Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase;

.field public final e:Lcom/vuitton/android/domain/usecase/config/GetConfigsVersionUseCase;

.field public final f:Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase;

.field public final g:Lcom/vuitton/android/domain/usecase/automatedtest/SetUiTestModeUseCase;

.field public final h:Lcom/vuitton/android/domain/usecase/automatedtest/ApplySavedSecurityCookieUseCase;

.field public final i:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

.field public final j:Lcom/vuitton/android/domain/usecase/privacy/consent/GetPiplCbdtAgreementUseCase;

.field public final k:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

.field public final l:Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase;

.field public final m:Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase;

.field public final n:Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase;

.field public final o:Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;

.field public final p:Lcom/vuitton/android/domain/usecase/config/ShouldUpdateOsUseCase;

.field public final q:Lcom/vuitton/android/domain/usecase/config/ShouldUpdateAppUseCase;

.field public final r:Lcom/vuitton/android/domain/usecase/maintenance/IsAppInMaintenanceUseCase;

.field public final s:Lcom/vuitton/android/domain/usecase/deeplinkredirection/GetSavedDeepLinkForRedirectionUseCase;

.field public final t:Lcom/vuitton/android/domain/usecase/deeplinkredirection/SaveDeepLinkForRedirectionUseCase;

.field public final u:Lcom/vuitton/android/domain/usecase/deeplinkredirection/ClearDeepLinkForRedirectionUseCase;

.field public final v:Lcom/vuitton/android/domain/usecase/app/monitoring/StartOpenAppMonitoringUseCase;

.field public final w:Lcom/vuitton/android/domain/usecase/app/monitoring/EndOpenAppMonitoringUseCase;

.field public final x:Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentTypeUseCase;

.field public final y:Lcom/vuitton/android/domain/usecase/privacy/consent/HasConsentsUseCase;

.field public final z:Lcom/vuitton/android/domain/usecase/onboarding/GetOnboardingStateUseCase;


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/logger/Logger;Landroid/app/Application;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase;Lcom/vuitton/android/domain/usecase/config/GetConfigsVersionUseCase;Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase;Lcom/vuitton/android/domain/usecase/automatedtest/SetUiTestModeUseCase;Lcom/vuitton/android/domain/usecase/automatedtest/ApplySavedSecurityCookieUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/GetPiplCbdtAgreementUseCase;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase;Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase;Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;Lcom/vuitton/android/domain/usecase/config/ShouldUpdateOsUseCase;Lcom/vuitton/android/domain/usecase/config/ShouldUpdateAppUseCase;Lcom/vuitton/android/domain/usecase/maintenance/IsAppInMaintenanceUseCase;Lcom/vuitton/android/domain/usecase/deeplinkredirection/GetSavedDeepLinkForRedirectionUseCase;Lcom/vuitton/android/domain/usecase/deeplinkredirection/SaveDeepLinkForRedirectionUseCase;Lcom/vuitton/android/domain/usecase/deeplinkredirection/ClearDeepLinkForRedirectionUseCase;Lcom/vuitton/android/domain/usecase/app/monitoring/StartOpenAppMonitoringUseCase;Lcom/vuitton/android/domain/usecase/app/monitoring/EndOpenAppMonitoringUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentTypeUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/HasConsentsUseCase;Lcom/vuitton/android/domain/usecase/onboarding/GetOnboardingStateUseCase;Lcom/vuitton/android/domain/usecase/onboarding/SetOnboardingStateUseCase;Lcom/vuitton/android/domain/usecase/applink/FetchAppLinkExclusionsUseCase;Lcom/vuitton/android/domain/usecase/avatar/PreloadAvatarsCacheUseCase;Lcom/vuitton/android/domain/usecase/botprotection/InitializeBotProtectionUseCase;Lcom/vuitton/android/platform/security/RootDetector;Lcom/vuitton/android/domain/usecase/environments/UpdateEnvironmentUseCase;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p18 .. p18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p19 .. p19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p20 .. p20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p21 .. p21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p22 .. p22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p23 .. p23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p24 .. p24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p25 .. p25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p26 .. p26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p27 .. p27}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p28 .. p28}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p29 .. p29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p30 .. p30}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p31 .. p31}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p32 .. p32}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/config/GetConfigsVersionUseCase;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/automatedtest/SetUiTestModeUseCase;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/automatedtest/ApplySavedSecurityCookieUseCase;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/privacy/consent/GetPiplCbdtAgreementUseCase;

    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->k:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    iput-object p12, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase;

    iput-object p13, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->m:Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase;

    iput-object p14, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->n:Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase;

    iput-object p15, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->o:Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->p:Lcom/vuitton/android/domain/usecase/config/ShouldUpdateOsUseCase;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->q:Lcom/vuitton/android/domain/usecase/config/ShouldUpdateAppUseCase;

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->r:Lcom/vuitton/android/domain/usecase/maintenance/IsAppInMaintenanceUseCase;

    move-object/from16 p1, p19

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->s:Lcom/vuitton/android/domain/usecase/deeplinkredirection/GetSavedDeepLinkForRedirectionUseCase;

    move-object/from16 p1, p20

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->t:Lcom/vuitton/android/domain/usecase/deeplinkredirection/SaveDeepLinkForRedirectionUseCase;

    move-object/from16 p1, p21

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->u:Lcom/vuitton/android/domain/usecase/deeplinkredirection/ClearDeepLinkForRedirectionUseCase;

    move-object/from16 p1, p22

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->v:Lcom/vuitton/android/domain/usecase/app/monitoring/StartOpenAppMonitoringUseCase;

    move-object/from16 p1, p23

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->w:Lcom/vuitton/android/domain/usecase/app/monitoring/EndOpenAppMonitoringUseCase;

    move-object/from16 p1, p24

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->x:Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentTypeUseCase;

    move-object/from16 p1, p25

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->y:Lcom/vuitton/android/domain/usecase/privacy/consent/HasConsentsUseCase;

    move-object/from16 p1, p26

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->z:Lcom/vuitton/android/domain/usecase/onboarding/GetOnboardingStateUseCase;

    move-object/from16 p1, p27

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->A:Lcom/vuitton/android/domain/usecase/onboarding/SetOnboardingStateUseCase;

    move-object/from16 p1, p28

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->B:Lcom/vuitton/android/domain/usecase/applink/FetchAppLinkExclusionsUseCase;

    move-object/from16 p1, p29

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->C:Lcom/vuitton/android/domain/usecase/avatar/PreloadAvatarsCacheUseCase;

    move-object/from16 p1, p30

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->D:Lcom/vuitton/android/domain/usecase/botprotection/InitializeBotProtectionUseCase;

    move-object/from16 p1, p31

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->E:Lcom/vuitton/android/platform/security/RootDetector;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->F:Ljava/util/LinkedHashMap;

    sget-object p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$Idle;->a:Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$Idle;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->G:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->H:Lkotlinx/coroutines/flow/StateFlow;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p3

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->I:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p3}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p4

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->J:Lkotlinx/coroutines/flow/StateFlow;

    new-instance p4, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$1;

    const/4 p5, 0x0

    invoke-direct {p4, p0, p5}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$1;-><init>(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/Continuation;)V

    new-instance p5, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {p5, p1, p3, p4}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    invoke-static {p5, p1}, Lkotlinx/coroutines/flow/FlowKt;->u(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;->NOT_STARTED:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->K:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->L:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object p1, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;->START_NOW:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->M:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->N:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-void
.end method

.method public static final Ac(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    instance-of v1, p2, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$handleDeepLinkStorageForNextLaunch$1;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$handleDeepLinkStorageForNextLaunch$1;

    iget v2, v1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$handleDeepLinkStorageForNextLaunch$1;->d:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$handleDeepLinkStorageForNextLaunch$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$handleDeepLinkStorageForNextLaunch$1;

    invoke-direct {v1, p0, p2}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$handleDeepLinkStorageForNextLaunch$1;-><init>(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$handleDeepLinkStorageForNextLaunch$1;->b:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$handleDeepLinkStorageForNextLaunch$1;->d:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_4

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$ForceUpdateAppVersion;->a:Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$ForceUpdateAppVersion;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    sget-object p2, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$ForceUpdateOsVersion;->a:Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$ForceUpdateOsVersion;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    sget-object p2, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$AppInMaintenance;->a:Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$AppInMaintenance;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    instance-of p2, p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$GoMain;

    if-nez p2, :cond_5

    instance-of p2, p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$GoPrivacyPolicy;

    if-nez p2, :cond_5

    instance-of p1, p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$GoOnboarding;

    if-eqz p1, :cond_9

    :cond_5
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->O:Ljava/lang/String;

    if-eqz p1, :cond_9

    const-string p2, "Let\'s handle deep link if available and clear it from cache (because it\'s consumed): "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->u:Lcom/vuitton/android/domain/usecase/deeplinkredirection/ClearDeepLinkForRedirectionUseCase;

    iput v4, v1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$handleDeepLinkStorageForNextLaunch$1;->d:I

    invoke-virtual {p0, v1}, Lcom/vuitton/android/domain/usecase/deeplinkredirection/ClearDeepLinkForRedirectionUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_6

    goto :goto_3

    :cond_6
    :goto_1
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    goto :goto_5

    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->O:Ljava/lang/String;

    if-eqz p1, :cond_9

    const-string p2, "The user is required to complete certain actions, so the deep link is saved for the next launch: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->t:Lcom/vuitton/android/domain/usecase/deeplinkredirection/SaveDeepLinkForRedirectionUseCase;

    iput v5, v1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$handleDeepLinkStorageForNextLaunch$1;->d:I

    invoke-virtual {p0, p1, v1}, Lcom/vuitton/android/domain/usecase/deeplinkredirection/SaveDeepLinkForRedirectionUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_8

    :goto_3
    return-object v2

    :cond_8
    :goto_4
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :cond_9
    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final Bc(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$prepareStartupConfiguration$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$prepareStartupConfiguration$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$prepareStartupConfiguration$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$prepareStartupConfiguration$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$prepareStartupConfiguration$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$prepareStartupConfiguration$1;-><init>(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$prepareStartupConfiguration$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$prepareStartupConfiguration$1;->f:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$prepareStartupConfiguration$1;->c:Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$prepareStartupConfiguration$1;->b:Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->m:Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase;

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$prepareStartupConfiguration$1;->b:Ljava/lang/String;

    iput v5, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$prepareStartupConfiguration$1;->f:I

    invoke-virtual {p2, v0}, Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$prepareStartupConfiguration$1;->b:Ljava/lang/String;

    iput v4, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$prepareStartupConfiguration$1;->f:I

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->Lc(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$prepareStartupConfiguration$1;->b:Ljava/lang/String;

    iput-object p0, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$prepareStartupConfiguration$1;->c:Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;

    iput v3, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$prepareStartupConfiguration$1;->f:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->Nc(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Enum;

    move-result-object p2

    if-ne p2, v1, :cond_7

    :goto_3
    return-object v1

    :cond_7
    move-object p1, p0

    :goto_4
    check-cast p2, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;

    iput-object p2, p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->K:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance p2, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$observeLoginStateChanges$1;

    invoke-direct {p2, p0, v6}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$observeLoginStateChanges$1;-><init>(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v6, v6, p2, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final Cc(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$retrieveIfPrivacyNeeded$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$retrieveIfPrivacyNeeded$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$retrieveIfPrivacyNeeded$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$retrieveIfPrivacyNeeded$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$retrieveIfPrivacyNeeded$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$retrieveIfPrivacyNeeded$1;-><init>(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$retrieveIfPrivacyNeeded$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$retrieveIfPrivacyNeeded$1;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    return-object p2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$retrieveIfPrivacyNeeded$1;->b:Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase;

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$retrieveIfPrivacyNeeded$1;->b:Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;

    iput v5, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$retrieveIfPrivacyNeeded$1;->e:I

    invoke-virtual {p2, v0}, Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_8

    sget-object p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    if-eq p0, v5, :cond_7

    if-eq p0, v4, :cond_7

    const/4 p1, 0x3

    if-eq p0, p1, :cond_6

    const/4 p1, 0x4

    if-ne p0, p1, :cond_5

    sget-object p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;->LOGIN:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    return-object p0

    :cond_5
    invoke-static {}, Lv40;->g()V

    return-object v3

    :cond_6
    sget-object p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;->PIPL_CBT:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    return-object p0

    :cond_7
    sget-object p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;->PRIVACY_PRE_COMPLIANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    return-object p0

    :cond_8
    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$retrieveIfPrivacyNeeded$1;->b:Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;

    iput v4, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$retrieveIfPrivacyNeeded$1;->e:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->Mc(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Enum;

    move-result-object p0

    if-ne p0, v1, :cond_9

    :goto_2
    return-object v1

    :cond_9
    return-object p0
.end method

.method public static final Dc(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldFetchConfigsVersionOrNull$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldFetchConfigsVersionOrNull$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldFetchConfigsVersionOrNull$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldFetchConfigsVersionOrNull$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldFetchConfigsVersionOrNull$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldFetchConfigsVersionOrNull$1;-><init>(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldFetchConfigsVersionOrNull$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldFetchConfigsVersionOrNull$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/config/GetConfigsVersionUseCase;

    iput v4, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldFetchConfigsVersionOrNull$1;->d:I

    invoke-virtual {p1, v0}, Lcom/vuitton/android/domain/usecase/config/GetConfigsVersionUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_4

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;

    return-object v3

    :cond_4
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$RetryPopup;->a:Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$RetryPopup;

    return-object p0
.end method

.method public static final Ec(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldInitBotProtectionOrNull$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldInitBotProtectionOrNull$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldInitBotProtectionOrNull$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldInitBotProtectionOrNull$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldInitBotProtectionOrNull$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldInitBotProtectionOrNull$1;-><init>(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldInitBotProtectionOrNull$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldInitBotProtectionOrNull$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->D:Lcom/vuitton/android/domain/usecase/botprotection/InitializeBotProtectionUseCase;

    iput v4, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldInitBotProtectionOrNull$1;->d:I

    invoke-virtual {p1, v0}, Lcom/vuitton/android/domain/usecase/botprotection/InitializeBotProtectionUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_4

    check-cast p1, Lkotlin/Unit;

    return-object v3

    :cond_4
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$RetryPopup;->a:Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$RetryPopup;

    return-object p0
.end method

.method public static final Fc(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowDispatchCountryScreenOrNull$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowDispatchCountryScreenOrNull$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowDispatchCountryScreenOrNull$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowDispatchCountryScreenOrNull$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowDispatchCountryScreenOrNull$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowDispatchCountryScreenOrNull$1;-><init>(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowDispatchCountryScreenOrNull$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowDispatchCountryScreenOrNull$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase;

    iput v4, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowDispatchCountryScreenOrNull$1;->d:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$InAppDispatchStatus;

    instance-of p0, p1, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$InAppDispatchStatus$FetchDispatchAreaListFailed;

    if-eqz p0, :cond_4

    sget-object p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$RetryPopup;->a:Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$RetryPopup;

    return-object p0

    :cond_4
    instance-of p0, p1, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$InAppDispatchStatus$InAppDispatchNotSet;

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    instance-of p0, p1, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$InAppDispatchStatus$InAppDispatchAutoSelected;

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    instance-of p0, p1, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$InAppDispatchStatus$InAppDispatchDeprecated;

    if-eqz p0, :cond_7

    :goto_2
    sget-object p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$DispatchPage;->a:Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$DispatchPage;

    return-object p0

    :cond_7
    instance-of p0, p1, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase$InAppDispatchStatus$InAppDispatchValid;

    if-eqz p0, :cond_8

    :goto_3
    return-object v3

    :cond_8
    invoke-static {}, Lv40;->g()V

    return-object v3
.end method

.method public static final Gc(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowMaintenanceScreenOrNull$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowMaintenanceScreenOrNull$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowMaintenanceScreenOrNull$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowMaintenanceScreenOrNull$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowMaintenanceScreenOrNull$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowMaintenanceScreenOrNull$1;-><init>(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowMaintenanceScreenOrNull$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowMaintenanceScreenOrNull$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->r:Lcom/vuitton/android/domain/usecase/maintenance/IsAppInMaintenanceUseCase;

    iput v4, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowMaintenanceScreenOrNull$1;->d:I

    invoke-virtual {p1, v0}, Lcom/vuitton/android/domain/usecase/maintenance/IsAppInMaintenanceUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-eqz v0, :cond_4

    move-object p1, v3

    :cond_4
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$AppInMaintenance;->a:Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$AppInMaintenance;

    return-object p0

    :cond_5
    if-eqz v0, :cond_6

    sget-object p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$RetryPopup;->a:Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$RetryPopup;

    return-object p0

    :cond_6
    sget-object p1, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService;->i:Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$Companion;

    iget-object p0, p0, Landroidx/lifecycle/AndroidViewModel;->a:Landroid/app/Application;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/screen/maintenance/CheckMaintenanceStatusService$Companion;->a(Landroid/content/Context;Z)V

    return-object v3
.end method

.method public static final Hc(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowOnboardingScreenOrNull$1;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowOnboardingScreenOrNull$1;

    iget v2, v1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowOnboardingScreenOrNull$1;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowOnboardingScreenOrNull$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowOnboardingScreenOrNull$1;

    invoke-direct {v1, p0, p1}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowOnboardingScreenOrNull$1;-><init>(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowOnboardingScreenOrNull$1;->c:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowOnboardingScreenOrNull$1;->e:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v3, :cond_5

    if-eq v3, v9, :cond_4

    if-eq v3, v8, :cond_3

    if-eq v3, v7, :cond_2

    if-ne v3, v6, :cond_1

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowOnboardingScreenOrNull$1;->b:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->ONBOARDING_FORCED:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {p1}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object p1

    iput v9, v1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowOnboardingScreenOrNull$1;->e:I

    invoke-virtual {v0, p1, v4, v1}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_6

    goto :goto_5

    :cond_6
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->K:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;->DONE:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;

    if-ne p1, v0, :cond_a

    sget-object p1, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;->NOT_STARTED:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->K:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->A:Lcom/vuitton/android/domain/usecase/onboarding/SetOnboardingStateUseCase;

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/onboarding/OnboardingState;->NOT_STARTED:Lcom/vuitton/foundation/model/domain/model/onboarding/OnboardingState;

    iput v8, v1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowOnboardingScreenOrNull$1;->e:I

    iget-object p1, p1, Lcom/vuitton/android/domain/usecase/onboarding/SetOnboardingStateUseCase;->a:Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    invoke-interface {p1, v0, v1}, Lcom/vuitton/android/domain/repository/UserPreferencesRepository;->a(Lcom/vuitton/foundation/model/domain/model/onboarding/OnboardingState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_7

    goto :goto_2

    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_2
    if-ne p1, v2, :cond_a

    goto :goto_5

    :cond_8
    sget-object p1, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->ONBOARDING:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {p1}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object p1

    iput v7, v1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowOnboardingScreenOrNull$1;->e:I

    invoke-virtual {v0, p1, v4, v1}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_9

    goto :goto_5

    :cond_9
    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->K:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;->DONE:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;

    if-eq p1, v0, :cond_c

    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->M:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v0, v1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowOnboardingScreenOrNull$1;->b:Ljava/lang/Object;

    iput v6, v1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowOnboardingScreenOrNull$1;->e:I

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p1}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p1

    new-instance v3, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$computeOnboardingStartScreen$2;

    invoke-direct {v3, p0, v5}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$computeOnboardingStartScreen$2;-><init>(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v3, v1}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_b

    :goto_5
    return-object v2

    :cond_b
    :goto_6
    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    new-instance p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$GoOnboarding;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->O:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$GoOnboarding;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_c
    return-object v5
.end method

.method public static final Ic(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowPrivacyPolicyScreenOrNull$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowPrivacyPolicyScreenOrNull$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowPrivacyPolicyScreenOrNull$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowPrivacyPolicyScreenOrNull$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowPrivacyPolicyScreenOrNull$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowPrivacyPolicyScreenOrNull$1;-><init>(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowPrivacyPolicyScreenOrNull$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowPrivacyPolicyScreenOrNull$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->l:Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase;

    iput v4, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowPrivacyPolicyScreenOrNull$1;->d:I

    invoke-virtual {p1, v0}, Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$GoPrivacyPolicy;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->O:Ljava/lang/String;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$GoPrivacyPolicy;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_4
    return-object v3
.end method

.method public static final Jc(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowSecurityDialogOrNull$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowSecurityDialogOrNull$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowSecurityDialogOrNull$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowSecurityDialogOrNull$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowSecurityDialogOrNull$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowSecurityDialogOrNull$1;-><init>(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowSecurityDialogOrNull$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowSecurityDialogOrNull$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {p1}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p1

    new-instance v2, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowSecurityDialogOrNull$2;

    invoke-direct {v2, p0, v3}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowSecurityDialogOrNull$2;-><init>(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldShowSecurityDialogOrNull$1;->d:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_4

    sget-object p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$ShowSecurityDialog;->a:Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$ShowSecurityDialog;

    return-object p0

    :cond_4
    return-object v3
.end method

.method public static final Kc(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldUpdateOrSyncConfigsOrNull$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldUpdateOrSyncConfigsOrNull$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldUpdateOrSyncConfigsOrNull$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldUpdateOrSyncConfigsOrNull$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldUpdateOrSyncConfigsOrNull$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldUpdateOrSyncConfigsOrNull$1;-><init>(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldUpdateOrSyncConfigsOrNull$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldUpdateOrSyncConfigsOrNull$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->o:Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;

    iput v5, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldUpdateOrSyncConfigsOrNull$1;->d:I

    invoke-virtual {p1, v0}, Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_3

    :cond_4
    :goto_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->p:Lcom/vuitton/android/domain/usecase/config/ShouldUpdateOsUseCase;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p1, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->f:I

    if-ge v5, v2, :cond_5

    sget-object v3, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$ForceUpdateOsVersion;->a:Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$ForceUpdateOsVersion;

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->q:Lcom/vuitton/android/domain/usecase/config/ShouldUpdateAppUseCase;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p1, Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;->d:I

    const/16 v5, 0x2a0

    if-ge v5, v2, :cond_6

    sget-object v3, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$ForceUpdateAppVersion;->a:Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$ForceUpdateAppVersion;

    :cond_6
    :goto_2
    if-nez v3, :cond_8

    iput v4, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldUpdateOrSyncConfigsOrNull$1;->d:I

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->Oc(Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    :goto_3
    return-object v1

    :cond_7
    return-object p0

    :cond_8
    return-object v3
.end method

.method public static final yc(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lcom/vuitton/android/presentation/screen/splash/AutomatedTestConfig;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$applyAutomatedTestConfigThenRestartApp$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$applyAutomatedTestConfigThenRestartApp$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$applyAutomatedTestConfigThenRestartApp$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$applyAutomatedTestConfigThenRestartApp$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$applyAutomatedTestConfigThenRestartApp$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$applyAutomatedTestConfigThenRestartApp$1;-><init>(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$applyAutomatedTestConfigThenRestartApp$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$applyAutomatedTestConfigThenRestartApp$1;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p1, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$applyAutomatedTestConfigThenRestartApp$1;->b:Lcom/vuitton/android/presentation/screen/splash/AutomatedTestConfig;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p1, Lcom/vuitton/android/presentation/screen/splash/AutomatedTestConfig;->a:Lcom/vuitton/android/presentation/screen/splash/AutomatedTestConfig$EnvironmentConfig;

    if-eqz p2, :cond_4

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase;

    iget-object v6, p2, Lcom/vuitton/android/presentation/screen/splash/AutomatedTestConfig$EnvironmentConfig;->c:Ljava/lang/String;

    iget-object v7, p2, Lcom/vuitton/android/presentation/screen/splash/AutomatedTestConfig$EnvironmentConfig;->a:Lcom/vuitton/foundation/model/domain/model/environment/Environment;

    iget-object p2, p2, Lcom/vuitton/android/presentation/screen/splash/AutomatedTestConfig$EnvironmentConfig;->b:Ljava/lang/String;

    sget-object v8, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$applyAutomatedTestConfigThenRestartApp$1;->b:Lcom/vuitton/android/presentation/screen/splash/AutomatedTestConfig;

    iput v4, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$applyAutomatedTestConfigThenRestartApp$1;->e:I

    invoke-virtual {v2, v6, v7, p2, v0}, Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase;->a(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/environment/Environment;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_3

    :cond_4
    :goto_1
    iget-object p2, p1, Lcom/vuitton/android/presentation/screen/splash/AutomatedTestConfig;->b:Ljava/lang/Boolean;

    if-nez p2, :cond_6

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/splash/AutomatedTestConfig;->a:Lcom/vuitton/android/presentation/screen/splash/AutomatedTestConfig$EnvironmentConfig;

    if-eqz p1, :cond_5

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_5
    move-object p2, v5

    :cond_6
    :goto_2
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/automatedtest/SetUiTestModeUseCase;

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$applyAutomatedTestConfigThenRestartApp$1;->b:Lcom/vuitton/android/presentation/screen/splash/AutomatedTestConfig;

    iput v3, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$applyAutomatedTestConfigThenRestartApp$1;->e:I

    invoke-virtual {p2, p1, v0}, Lcom/vuitton/android/domain/usecase/automatedtest/SetUiTestModeUseCase;->a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    :goto_3
    return-object v1

    :cond_7
    :goto_4
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :cond_8
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->G:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$Idle;->a:Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$Idle;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$RestartApp;->a:Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$RestartApp;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final zc(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$fetchAppLinkExclusions$1;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$fetchAppLinkExclusions$1;

    iget v2, v1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$fetchAppLinkExclusions$1;->d:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$fetchAppLinkExclusions$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$fetchAppLinkExclusions$1;

    invoke-direct {v1, p0, p1}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$fetchAppLinkExclusions$1;-><init>(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$fetchAppLinkExclusions$1;->b:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$fetchAppLinkExclusions$1;->d:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v5, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->B:Lcom/vuitton/android/domain/usecase/applink/FetchAppLinkExclusionsUseCase;

    iput v5, v1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$fetchAppLinkExclusions$1;->d:I

    invoke-virtual {p0, v1}, Lcom/vuitton/android/domain/usecase/applink/FetchAppLinkExclusionsUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_3

    return-object v2

    :cond_3
    :goto_1
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v4

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$RetryPopup;->a:Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$RetryPopup;

    return-object p0
.end method


# virtual methods
.method public final A7()V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->I:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final K5()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->N:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public final Lc(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$determineDeepLinkUsedForRedirection$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$determineDeepLinkUsedForRedirection$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$determineDeepLinkUsedForRedirection$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$determineDeepLinkUsedForRedirection$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$determineDeepLinkUsedForRedirection$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$determineDeepLinkUsedForRedirection$1;-><init>(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$determineDeepLinkUsedForRedirection$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$determineDeepLinkUsedForRedirection$1;->f:I

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$determineDeepLinkUsedForRedirection$1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :cond_2
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$determineDeepLinkUsedForRedirection$1;->c:Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$determineDeepLinkUsedForRedirection$1;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_5

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$determineDeepLinkUsedForRedirection$1;->b:Ljava/lang/Object;

    iput-object p0, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$determineDeepLinkUsedForRedirection$1;->c:Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;

    iput v5, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$determineDeepLinkUsedForRedirection$1;->f:I

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->u:Lcom/vuitton/android/domain/usecase/deeplinkredirection/ClearDeepLinkForRedirectionUseCase;

    invoke-virtual {p2, v0}, Lcom/vuitton/android/domain/usecase/deeplinkredirection/ClearDeepLinkForRedirectionUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v2, p1

    move-object p1, p0

    :goto_1
    if-nez v2, :cond_7

    goto :goto_2

    :cond_5
    move-object p1, p0

    :goto_2
    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$determineDeepLinkUsedForRedirection$1;->b:Ljava/lang/Object;

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$determineDeepLinkUsedForRedirection$1;->c:Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;

    iput v4, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$determineDeepLinkUsedForRedirection$1;->f:I

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->s:Lcom/vuitton/android/domain/usecase/deeplinkredirection/GetSavedDeepLinkForRedirectionUseCase;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/deeplinkredirection/GetSavedDeepLinkForRedirectionUseCase;->a:Lcom/vuitton/android/domain/repository/DeepLinkCacheRepository;

    invoke-interface {p0, v0}, Lcom/vuitton/android/domain/repository/DeepLinkCacheRepository;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    :goto_3
    return-object v1

    :cond_6
    move-object p0, p1

    :goto_4
    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    move-object p1, p0

    :cond_7
    iput-object v2, p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->O:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final Mc(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Enum;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$getOnboardingResumeScreen$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$getOnboardingResumeScreen$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$getOnboardingResumeScreen$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$getOnboardingResumeScreen$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$getOnboardingResumeScreen$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$getOnboardingResumeScreen$1;-><init>(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$getOnboardingResumeScreen$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$getOnboardingResumeScreen$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->L:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    iput v4, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$getOnboardingResumeScreen$1;->d:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->Nc(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Enum;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;

    sget-object p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$WhenMappings;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lv40;->g()V

    return-object v3

    :pswitch_0
    sget-object p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;->LOGIN:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;->ICONS:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;->GEOLOCATION:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;->NOTIFICATIONS:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;->START_NOW:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    return-object p0

    :cond_4
    sget-object p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;->LOGIN:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutesName;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final Nc(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Enum;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$getOnboardingState$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$getOnboardingState$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$getOnboardingState$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$getOnboardingState$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$getOnboardingState$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$getOnboardingState$1;-><init>(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$getOnboardingState$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$getOnboardingState$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v3, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$getOnboardingState$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->z:Lcom/vuitton/android/domain/usecase/onboarding/GetOnboardingStateUseCase;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/onboarding/GetOnboardingStateUseCase;->a:Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    invoke-interface {p0, v0}, Lcom/vuitton/android/domain/repository/UserPreferencesRepository;->g(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/onboarding/OnboardingState;

    if-eqz p1, :cond_5

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/onboarding/OnboardingState;)Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    return-object p0

    :cond_5
    :goto_2
    sget-object p0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;->NOT_STARTED:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;

    return-object p0
.end method

.method public final Oc(Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldSyncConfigsWithRevisionsOrNull$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldSyncConfigsWithRevisionsOrNull$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldSyncConfigsWithRevisionsOrNull$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldSyncConfigsWithRevisionsOrNull$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldSyncConfigsWithRevisionsOrNull$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldSyncConfigsWithRevisionsOrNull$1;-><init>(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldSyncConfigsWithRevisionsOrNull$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldSyncConfigsWithRevisionsOrNull$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v4, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$shouldSyncConfigsWithRevisionsOrNull$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->n:Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase;

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase;->b(Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$SyncResult;

    sget-object p0, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$SyncResult$Success;->a:Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$SyncResult$Success;

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return-object v3

    :cond_4
    instance-of p0, p2, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase$SyncResult$Failure;

    if-eqz p0, :cond_5

    sget-object p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$RetryPopup;->a:Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$RetryPopup;

    return-object p0

    :cond_5
    invoke-static {}, Lv40;->g()V

    return-object v3
.end method

.method public final eb(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/splash/AutomatedTestConfig;)V
    .locals 8

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->F:Ljava/util/LinkedHashMap;

    const-string v1, "checkStartupConditionsJob"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/Job;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->v:Lcom/vuitton/android/domain/usecase/app/monitoring/StartOpenAppMonitoringUseCase;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lkotlin/time/TimeSource$Monotonic;->a:Lkotlin/time/TimeSource$Monotonic;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lkotlin/time/MonotonicTimeSource;->a:Lkotlin/time/MonotonicTimeSource;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lkotlin/time/MonotonicTimeSource;->b()J

    move-result-wide v3

    iget-object v5, v2, Lcom/vuitton/android/domain/usecase/app/monitoring/StartOpenAppMonitoringUseCase;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-static {v3, v4}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->b(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Start open app : "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lcom/vuitton/android/domain/usecase/app/monitoring/StartOpenAppMonitoringUseCase;->b:Lcom/vuitton/android/domain/repository/OpenAppTimestampRepository;

    invoke-interface {v2, v3, v4}, Lcom/vuitton/android/domain/repository/OpenAppTimestampRepository;->a(J)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$validateAppIntegrity$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, p2, v4}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$validateAppIntegrity$1;-><init>(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/splash/AutomatedTestConfig;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v2, v4, v4, v3, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final wa()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->H:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final x3()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->J:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method
