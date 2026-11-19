.class final Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$observeLoginStateChanges$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$observeLoginStateChanges$1$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$observeLoginStateChanges$1$1;->b:Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$observeLoginStateChanges$1$1;->b:Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->L:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$observeLoginStateChanges$1$1$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :goto_0
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;->LOGGED_IN:Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->K:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;->NOT_STARTED:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;

    if-ne p1, v0, :cond_4

    sget-object p1, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;->DONE:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->K:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->A:Lcom/vuitton/android/domain/usecase/onboarding/SetOnboardingStateUseCase;

    sget-object p1, Lcom/vuitton/foundation/model/domain/model/onboarding/OnboardingState;->DONE:Lcom/vuitton/foundation/model/domain/model/onboarding/OnboardingState;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/onboarding/SetOnboardingStateUseCase;->a:Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    invoke-interface {p0, p1, p2}, Lcom/vuitton/android/domain/repository/UserPreferencesRepository;->a(Lcom/vuitton/foundation/model/domain/model/onboarding/OnboardingState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_2

    goto :goto_1

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_1
    if-ne p0, p1, :cond_3

    return-object p0

    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
