.class final Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;-><init>(Lcom/vuitton/foundation/logger/Logger;Landroid/app/Application;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase;Lcom/vuitton/android/domain/usecase/config/GetConfigsVersionUseCase;Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase;Lcom/vuitton/android/domain/usecase/automatedtest/SetUiTestModeUseCase;Lcom/vuitton/android/domain/usecase/automatedtest/ApplySavedSecurityCookieUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/GetPiplCbdtAgreementUseCase;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase;Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase;Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;Lcom/vuitton/android/domain/usecase/config/ShouldUpdateOsUseCase;Lcom/vuitton/android/domain/usecase/config/ShouldUpdateAppUseCase;Lcom/vuitton/android/domain/usecase/maintenance/IsAppInMaintenanceUseCase;Lcom/vuitton/android/domain/usecase/deeplinkredirection/GetSavedDeepLinkForRedirectionUseCase;Lcom/vuitton/android/domain/usecase/deeplinkredirection/SaveDeepLinkForRedirectionUseCase;Lcom/vuitton/android/domain/usecase/deeplinkredirection/ClearDeepLinkForRedirectionUseCase;Lcom/vuitton/android/domain/usecase/app/monitoring/StartOpenAppMonitoringUseCase;Lcom/vuitton/android/domain/usecase/app/monitoring/EndOpenAppMonitoringUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentTypeUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/HasConsentsUseCase;Lcom/vuitton/android/domain/usecase/onboarding/GetOnboardingStateUseCase;Lcom/vuitton/android/domain/usecase/onboarding/SetOnboardingStateUseCase;Lcom/vuitton/android/domain/usecase/applink/FetchAppLinkExclusionsUseCase;Lcom/vuitton/android/domain/usecase/avatar/PreloadAvatarsCacheUseCase;Lcom/vuitton/android/domain/usecase/botprotection/InitializeBotProtectionUseCase;Lcom/vuitton/android/platform/security/RootDetector;Lcom/vuitton/android/domain/usecase/environments/UpdateEnvironmentUseCase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;",
        "Ljava/lang/Boolean;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "action",
        "Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;",
        "isFinished",
        ""
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl$1"
    f = "SplashScreenViewModelImpl.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;

.field public synthetic c:Z

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$1;->d:Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$1;->d:Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$1;-><init>(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$1;->b:Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;

    iput-boolean p2, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$1;->c:Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$1;->b:Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$1;->c:Z

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$Idle;

    if-nez p1, :cond_4

    instance-of p1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$ShowSecurityDialog;

    if-eqz p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$1;->d:Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->w:Lcom/vuitton/android/domain/usecase/app/monitoring/EndOpenAppMonitoringUseCase;

    sget-object p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$RetryPopup;->a:Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$RetryPopup;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget-object v0, p0, Lcom/vuitton/android/domain/usecase/app/monitoring/EndOpenAppMonitoringUseCase;->d:Lcom/vuitton/android/domain/repository/OpenAppTimestampRepository;

    iget-object v1, p0, Lcom/vuitton/android/domain/usecase/app/monitoring/EndOpenAppMonitoringUseCase;->b:Lcom/vuitton/foundation/logger/Logger;

    iget-object v2, p0, Lcom/vuitton/android/domain/usecase/app/monitoring/EndOpenAppMonitoringUseCase;->a:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/app/monitoring/EndOpenAppMonitoringUseCase;->c:Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;

    invoke-virtual {p0}, Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;->a()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object p0

    sget-object v3, Lcom/vuitton/android/domain/monitoring/app/AppMonitoring$Action$OpenApp;->a:Lcom/vuitton/android/domain/monitoring/app/AppMonitoring$Action$OpenApp;

    invoke-interface {v2, p0, v3}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object p0

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/vuitton/android/domain/monitoring/app/AppMonitoring$Error$OpenApp;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Open app failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v1}, Lcom/vuitton/android/domain/monitoring/app/AppMonitoring$Error$OpenApp;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    invoke-interface {v0}, Lcom/vuitton/android/domain/repository/OpenAppTimestampRepository;->c()V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/vuitton/android/domain/repository/OpenAppTimestampRepository;->b()Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Lkotlin/Result$Failure;

    if-nez v2, :cond_2

    move-object v2, p1

    check-cast v2, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;

    iget-wide v2, v2, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->b:J

    sget-object v4, Lkotlin/time/TimeSource$Monotonic;->a:Lkotlin/time/TimeSource$Monotonic;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lkotlin/time/MonotonicTimeSource;->a:Lkotlin/time/MonotonicTimeSource;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lkotlin/time/MonotonicTimeSource;->b()J

    move-result-wide v5

    invoke-static {v5, v6}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->b(J)Ljava/lang/String;

    move-result-object v7

    const-string v8, "End open app : "

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v5, v6, v2, v3, v4}, Lkotlin/time/LongSaturatedMathKt;->c(JJLkotlin/time/DurationUnit;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lkotlin/time/Duration;->e(J)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v2, 0x1

    sget-object v3, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {v4, v2, v3}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "time"

    invoke-virtual {p0, v2, v3}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :cond_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v2, "EndOpenAppMonitoringUseCase"

    const-string v3, "Error while getting start time"

    invoke-interface {v1, v2, v3, p1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lcom/vuitton/android/domain/monitoring/app/AppMonitoring$Error$OpenApp;

    invoke-direct {v1, p1}, Lcom/vuitton/android/domain/monitoring/app/AppMonitoring$Error$OpenApp;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    :cond_3
    invoke-virtual {p0}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->b()Lkotlin/Unit;

    invoke-interface {v0}, Lcom/vuitton/android/domain/repository/OpenAppTimestampRepository;->c()V

    :cond_4
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
