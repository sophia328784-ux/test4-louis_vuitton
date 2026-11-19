.class final Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$onDeleteConversationClicked$1;
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
    c = "com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModelImpl$onDeleteConversationClicked$1"
    f = "AICompanionViewModelImpl.kt"
    l = {
        0x10c
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$onDeleteConversationClicked$1;->c:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$onDeleteConversationClicked$1;->d:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$onDeleteConversationClicked$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$onDeleteConversationClicked$1;->c:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$onDeleteConversationClicked$1;->d:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$onDeleteConversationClicked$1;-><init>(Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$onDeleteConversationClicked$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$onDeleteConversationClicked$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$onDeleteConversationClicked$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$onDeleteConversationClicked$1;->c:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$onDeleteConversationClicked$1;->b:I

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$onDeleteConversationClicked$1;->d:Ljava/lang/String;

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    if-ne v4, v6, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->m:Lcom/vuitton/android/domain/usecase/aicompanion/DeleteChatSessionFromHistoryUseCase;

    iput v6, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$onDeleteConversationClicked$1;->b:I

    invoke-virtual {v4, v5, v0}, Lcom/vuitton/android/domain/usecase/aicompanion/DeleteChatSessionFromHistoryUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_2

    return-object v3

    :cond_2
    :goto_0
    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v3, v0, Lkotlin/Result$Failure;

    if-nez v3, :cond_6

    move-object v3, v0

    check-cast v3, Lkotlin/Unit;

    :cond_3
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;

    iget-object v4, v6, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;->i:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatHistoryUiModel;

    iget-object v8, v8, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatHistoryUiModel;->a:Ljava/lang/String;

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const/4 v14, 0x0

    const/16 v16, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v6 .. v16}, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;->a(Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;ZLcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionOnboardingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatSessionUiModel;Ljava/util/List;Ljava/lang/Boolean;ZZLjava/util/List;I)Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;->d:Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatSessionUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatSessionUiModel;->a:Ljava/lang/String;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->e3()V

    :cond_6
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    sget-object v2, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->v:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error deleting chat session from history: "

    invoke-static {v4, v3, v1, v2, v0}, La;->y(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
