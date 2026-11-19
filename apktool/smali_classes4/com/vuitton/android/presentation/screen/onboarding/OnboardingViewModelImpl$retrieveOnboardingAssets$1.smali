.class final Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1;
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
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
    c = "com.vuitton.android.presentation.screen.onboarding.OnboardingViewModelImpl$retrieveOnboardingAssets$1"
    f = "OnboardingViewModelImpl.kt"
    l = {
        0xb6,
        0xb9,
        0xbc
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Lkotlinx/coroutines/Deferred;

.field public d:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

.field public e:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

.field public f:I

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1;->h:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1;->h:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1;-><init>(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1;->g:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1;->f:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1;->h:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;

    const/4 v7, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1;->e:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1;->d:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_1
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1;->d:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1;->c:Lkotlinx/coroutines/Deferred;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v9, v2

    move-object v2, p1

    move-object p1, v0

    move-object v0, v9

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1;->c:Lkotlinx/coroutines/Deferred;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1;->b:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/Deferred;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p1, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1$logInVideoIdResult$1;

    invoke-direct {p1, v6, v7}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1$logInVideoIdResult$1;-><init>(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v7, p1, v3}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    new-instance v2, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1$notificationVideoIdResult$1;

    invoke-direct {v2, v6, v7}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1$notificationVideoIdResult$1;-><init>(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v7, v2, v3}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Deferred;

    move-result-object v2

    new-instance v8, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1$geolocationVideoIdResult$1;

    invoke-direct {v8, v6, v7}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1$geolocationVideoIdResult$1;-><init>(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v7, v8, v3}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    iput-object v7, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1;->g:Ljava/lang/Object;

    iput-object v2, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1;->b:Ljava/lang/Object;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1;->c:Lkotlinx/coroutines/Deferred;

    iput v5, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1;->f:I

    invoke-interface {p1, p0}, Lkotlinx/coroutines/Deferred;->k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_0
    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v5, p1, Lkotlin/Result$Failure;

    if-nez v5, :cond_5

    sget-object v5, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    invoke-static {p1}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;)Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    move-result-object p1

    :cond_5
    instance-of v5, p1, Lkotlin/Result$Failure;

    if-eqz v5, :cond_6

    move-object p1, v7

    :cond_6
    check-cast p1, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    iput-object v7, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1;->g:Ljava/lang/Object;

    iput-object v7, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1;->b:Ljava/lang/Object;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1;->c:Lkotlinx/coroutines/Deferred;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1;->d:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1;->f:I

    invoke-interface {v2, p0}, Lkotlinx/coroutines/Deferred;->k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_7

    goto :goto_2

    :cond_7
    :goto_1
    check-cast v2, Lkotlin/Result;

    iget-object v2, v2, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v4, v2, Lkotlin/Result$Failure;

    if-nez v4, :cond_8

    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    invoke-static {v2}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;)Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    move-result-object v2

    :cond_8
    instance-of v4, v2, Lkotlin/Result$Failure;

    if-eqz v4, :cond_9

    move-object v2, v7

    :cond_9
    check-cast v2, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    iput-object v7, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1;->g:Ljava/lang/Object;

    iput-object v7, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1;->b:Ljava/lang/Object;

    iput-object v7, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1;->c:Lkotlinx/coroutines/Deferred;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1;->d:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    iput-object v2, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1;->e:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    iput v3, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$retrieveOnboardingAssets$1;->f:I

    invoke-interface {v0, p0}, Lkotlinx/coroutines/Deferred;->k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_a

    :goto_2
    return-object v1

    :cond_a
    move-object v0, p1

    move-object p1, p0

    move-object p0, v0

    move-object v0, v2

    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v1, p1, Lkotlin/Result$Failure;

    if-nez v1, :cond_b

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    invoke-static {p1}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;)Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    move-result-object p1

    :cond_b
    instance-of v1, p1, Lkotlin/Result$Failure;

    if-eqz v1, :cond_c

    goto :goto_4

    :cond_c
    move-object v7, p1

    :goto_4
    check-cast v7, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    iget-object p1, v6, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;->l:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingAssets;

    if-nez p0, :cond_d

    iget-object p0, v1, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingAssets;->a:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    :cond_d
    if-nez v0, :cond_e

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingAssets;->b:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    :cond_e
    if-nez v7, :cond_f

    iget-object v7, v1, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingAssets;->c:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    :cond_f
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingAssets;

    invoke-direct {v1, p0, v0, v7}, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingAssets;-><init>(Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;)V

    invoke-interface {p1, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
