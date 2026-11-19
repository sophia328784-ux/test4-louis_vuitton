.class final Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$setOnboardingState$1;
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
    c = "com.vuitton.android.presentation.screen.onboarding.OnboardingViewModelImpl$setOnboardingState$1"
    f = "OnboardingViewModelImpl.kt"
    l = {
        0xde
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$setOnboardingState$1;->c:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$setOnboardingState$1;->d:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$setOnboardingState$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$setOnboardingState$1;->c:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$setOnboardingState$1;->d:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$setOnboardingState$1;-><init>(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$setOnboardingState$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$setOnboardingState$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$setOnboardingState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$setOnboardingState$1;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$setOnboardingState$1;->c:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/onboarding/SetOnboardingStateUseCase;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$setOnboardingState$1;->d:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingMapperKt$WhenMappings;->b:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lv40;->g()V

    return-object v2

    :pswitch_0
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/onboarding/OnboardingState;->DONE:Lcom/vuitton/foundation/model/domain/model/onboarding/OnboardingState;

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/onboarding/OnboardingState;->ICONS:Lcom/vuitton/foundation/model/domain/model/onboarding/OnboardingState;

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/onboarding/OnboardingState;->NOTIFICATION:Lcom/vuitton/foundation/model/domain/model/onboarding/OnboardingState;

    goto :goto_0

    :pswitch_3
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/onboarding/OnboardingState;->GEOLOCATION:Lcom/vuitton/foundation/model/domain/model/onboarding/OnboardingState;

    goto :goto_0

    :pswitch_4
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/onboarding/OnboardingState;->START:Lcom/vuitton/foundation/model/domain/model/onboarding/OnboardingState;

    goto :goto_0

    :pswitch_5
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/onboarding/OnboardingState;->NOT_STARTED:Lcom/vuitton/foundation/model/domain/model/onboarding/OnboardingState;

    :goto_0
    iput v3, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl$setOnboardingState$1;->b:I

    iget-object p1, p1, Lcom/vuitton/android/domain/usecase/onboarding/SetOnboardingStateUseCase;->a:Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    invoke-interface {p1, v1, p0}, Lcom/vuitton/android/domain/repository/UserPreferencesRepository;->a(Lcom/vuitton/foundation/model/domain/model/onboarding/OnboardingState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    goto :goto_1

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_1
    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
