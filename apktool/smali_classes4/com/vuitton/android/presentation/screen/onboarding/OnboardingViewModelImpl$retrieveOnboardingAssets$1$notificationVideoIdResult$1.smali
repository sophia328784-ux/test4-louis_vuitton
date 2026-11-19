.class final Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1$notificationVideoIdResult$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Result<",
        "+",
        "Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Result;",
        "Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;",
        "Lkotlinx/coroutines/CoroutineScope;"
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
    c = "com.vuitton.android.presentation.screen.onboarding.OnboardingViewModelImpl$retrieveOnboardingAssets$1$notificationVideoIdResult$1"
    f = "OnboardingViewModelImpl.kt"
    l = {
        0xa0
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1$notificationVideoIdResult$1;->c:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1$notificationVideoIdResult$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1$notificationVideoIdResult$1;->c:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1$notificationVideoIdResult$1;-><init>(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1$notificationVideoIdResult$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1$notificationVideoIdResult$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1$notificationVideoIdResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1$notificationVideoIdResult$1;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1$notificationVideoIdResult$1;->c:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;->i:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    invoke-interface {p1}, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;->n()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/vuitton/android/presentation/common/AppAssetsVideoId$OnboardingOnlyVideoId$NotificationVideoId;->c:Lcom/vuitton/android/presentation/common/AppAssetsVideoId$OnboardingOnlyVideoId$NotificationVideoId;

    iget-object p1, p1, Lcom/vuitton/android/presentation/common/AppAssetsVideoId;->b:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/vuitton/android/presentation/common/AppAssetsVideoId$OnboardingOnlyVideoId$NotificationVideoId;->c:Lcom/vuitton/android/presentation/common/AppAssetsVideoId$OnboardingOnlyVideoId$NotificationVideoId;

    iget-object p1, p1, Lcom/vuitton/android/presentation/common/AppAssetsVideoId;->a:Ljava/lang/String;

    :goto_0
    sget-object v3, Lcom/vuitton/foundation/model/domain/model/video/VideoId;->a:Lcom/vuitton/foundation/model/domain/model/video/VideoId$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v2, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1$notificationVideoIdResult$1;->b:I

    invoke-virtual {v1, p1, p0}, Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
