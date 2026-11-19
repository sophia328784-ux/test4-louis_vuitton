.class final Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveIsUserConnected$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveIsUserConnected$1$1$WhenMappings;
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
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveIsUserConnected$1$1;->b:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveIsUserConnected$1$1;->b:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveIsUserConnected$1$1$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-object v1

    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :goto_0
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    new-instance p2, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingSteps$1;

    invoke-direct {p2, p0, v1}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingSteps$1;-><init>(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, p2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
