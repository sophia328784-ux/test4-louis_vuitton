.class final Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$checkIfSessionIdCopyIsEnabled$1;
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
    c = "com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModelImpl$checkIfSessionIdCopyIsEnabled$1"
    f = "AICompanionViewModelImpl.kt"
    l = {
        0x95
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public c:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

.field public d:Ljava/lang/Object;

.field public e:Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;

.field public f:I

.field public g:I

.field public final synthetic h:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$checkIfSessionIdCopyIsEnabled$1;->h:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$checkIfSessionIdCopyIsEnabled$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$checkIfSessionIdCopyIsEnabled$1;->h:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$checkIfSessionIdCopyIsEnabled$1;-><init>(Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$checkIfSessionIdCopyIsEnabled$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$checkIfSessionIdCopyIsEnabled$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$checkIfSessionIdCopyIsEnabled$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$checkIfSessionIdCopyIsEnabled$1;->g:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget v2, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$checkIfSessionIdCopyIsEnabled$1;->f:I

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$checkIfSessionIdCopyIsEnabled$1;->e:Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$checkIfSessionIdCopyIsEnabled$1;->d:Ljava/lang/Object;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$checkIfSessionIdCopyIsEnabled$1;->c:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$checkIfSessionIdCopyIsEnabled$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v9, p1

    :cond_0
    move-object v10, v5

    goto :goto_0

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$checkIfSessionIdCopyIsEnabled$1;->h:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

    iget-object v5, v2, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    move-object v7, v2

    move v2, v4

    move-object v8, v5

    :cond_3
    invoke-interface {v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;

    iget-object v9, v7, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v10, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->AI_COMPANION_SESSION_ID_ENABLED:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v10}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v10

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$checkIfSessionIdCopyIsEnabled$1;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$checkIfSessionIdCopyIsEnabled$1;->c:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$checkIfSessionIdCopyIsEnabled$1;->d:Ljava/lang/Object;

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$checkIfSessionIdCopyIsEnabled$1;->e:Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;

    iput v2, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$checkIfSessionIdCopyIsEnabled$1;->f:I

    iput v3, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$checkIfSessionIdCopyIsEnabled$1;->g:I

    invoke-virtual {v9, v10, v4, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_0

    return-object v1

    :goto_0
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    const/16 v19, 0x0

    const/16 v20, 0x1bf

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    invoke-static/range {v10 .. v20}, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;->a(Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;ZLcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionOnboardingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatSessionUiModel;Ljava/util/List;Ljava/lang/Boolean;ZZLjava/util/List;I)Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;

    move-result-object v5

    invoke-interface {v8, v6, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
