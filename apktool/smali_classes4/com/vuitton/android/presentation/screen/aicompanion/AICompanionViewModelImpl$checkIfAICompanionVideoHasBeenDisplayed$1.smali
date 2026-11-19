.class final Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$checkIfAICompanionVideoHasBeenDisplayed$1;
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
    c = "com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModelImpl$checkIfAICompanionVideoHasBeenDisplayed$1"
    f = "AICompanionViewModelImpl.kt"
    l = {
        0x7a
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/foundation/model/domain/model/config/AICompanionOnboarding;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$checkIfAICompanionVideoHasBeenDisplayed$1;->d:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$checkIfAICompanionVideoHasBeenDisplayed$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$checkIfAICompanionVideoHasBeenDisplayed$1;->d:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$checkIfAICompanionVideoHasBeenDisplayed$1;-><init>(Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$checkIfAICompanionVideoHasBeenDisplayed$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$checkIfAICompanionVideoHasBeenDisplayed$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$checkIfAICompanionVideoHasBeenDisplayed$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$checkIfAICompanionVideoHasBeenDisplayed$1;->d:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$checkIfAICompanionVideoHasBeenDisplayed$1;->c:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    if-ne v4, v5, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$checkIfAICompanionVideoHasBeenDisplayed$1;->b:Lcom/vuitton/foundation/model/domain/model/config/AICompanionOnboarding;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    check-cast v3, Lkotlin/Result;

    iget-object v3, v3, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    invoke-virtual {v4}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->j:Lcom/vuitton/foundation/model/domain/model/config/AICompanionConfig;

    if-eqz v4, :cond_2

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/config/AICompanionConfig;->b:Lcom/vuitton/foundation/model/domain/model/config/AICompanionOnboarding;

    goto :goto_0

    :cond_2
    move-object v4, v6

    :goto_0
    iget-object v7, v1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->n:Lcom/vuitton/android/domain/usecase/aicompanion/HasAICompanionVideoBeenDisplayedUseCase;

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$checkIfAICompanionVideoHasBeenDisplayed$1;->b:Lcom/vuitton/foundation/model/domain/model/config/AICompanionOnboarding;

    iput v5, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$checkIfAICompanionVideoHasBeenDisplayed$1;->c:I

    invoke-virtual {v7, v0}, Lcom/vuitton/android/domain/usecase/aicompanion/HasAICompanionVideoBeenDisplayedUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_3

    return-object v3

    :cond_3
    move-object v3, v0

    move-object v0, v4

    :goto_1
    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v4, v3, Lkotlin/Result$Failure;

    if-nez v4, :cond_6

    move-object v13, v3

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    :cond_4
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;

    if-eqz v0, :cond_5

    new-instance v5, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionOnboardingUiModel;

    iget-object v8, v0, Lcom/vuitton/foundation/model/domain/model/config/AICompanionOnboarding;->c:Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->b:Ljava/lang/String;

    iget-object v9, v0, Lcom/vuitton/foundation/model/domain/model/config/AICompanionOnboarding;->a:Ljava/lang/String;

    iget-object v10, v0, Lcom/vuitton/foundation/model/domain/model/config/AICompanionOnboarding;->b:Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;

    invoke-static {v10}, Lcom/vuitton/android/presentation/model/common/mapper/FeatureThemeMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;)Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    move-result-object v10

    invoke-direct {v5, v8, v9, v10}, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionOnboardingUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;)V

    move-object v9, v5

    goto :goto_2

    :cond_5
    move-object v9, v6

    :goto_2
    const/16 v16, 0x0

    const/16 v17, 0x1dd

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v7 .. v17}, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;->a(Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;ZLcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionOnboardingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatSessionUiModel;Ljava/util/List;Ljava/lang/Boolean;ZZLjava/util/List;I)Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_6
    invoke-static {v3}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    sget-object v4, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->v:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v7, "Error checking if AI companion video has been displayed: "

    invoke-static {v7, v5, v1, v4, v3}, La;->y(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;

    if-eqz v0, :cond_8

    new-instance v3, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionOnboardingUiModel;

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/config/AICompanionOnboarding;->c:Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/common/AssetVideo;->b:Ljava/lang/String;

    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/config/AICompanionOnboarding;->a:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/foundation/model/domain/model/config/AICompanionOnboarding;->b:Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;

    invoke-static {v8}, Lcom/vuitton/android/presentation/model/common/mapper/FeatureThemeMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;)Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    move-result-object v8

    invoke-direct {v3, v4, v5, v8}, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionOnboardingUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;)V

    move-object v9, v3

    goto :goto_3

    :cond_8
    move-object v9, v6

    :goto_3
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v16, 0x0

    const/16 v17, 0x1dd

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v7 .. v17}, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;->a(Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;ZLcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionOnboardingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatSessionUiModel;Ljava/util/List;Ljava/lang/Boolean;ZZLjava/util/List;I)Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
