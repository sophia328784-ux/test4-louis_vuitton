.class final Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$loadHistoryConversation$1;
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
    c = "com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModelImpl$loadHistoryConversation$1"
    f = "AICompanionViewModelImpl.kt"
    l = {
        0xea
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

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$loadHistoryConversation$1;->c:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$loadHistoryConversation$1;->d:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$loadHistoryConversation$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$loadHistoryConversation$1;->c:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$loadHistoryConversation$1;->d:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$loadHistoryConversation$1;-><init>(Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$loadHistoryConversation$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$loadHistoryConversation$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$loadHistoryConversation$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$loadHistoryConversation$1;->b:I

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$loadHistoryConversation$1;->d:Ljava/lang/String;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$loadHistoryConversation$1;->c:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v6, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v5, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/aicompanion/GetChatSessionByIdUseCase;

    iput v6, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$loadHistoryConversation$1;->b:I

    invoke-virtual {v2, v4, v0}, Lcom/vuitton/android/domain/usecase/aicompanion/GetChatSessionByIdUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v1, v0, Lkotlin/Result$Failure;

    if-nez v1, :cond_9

    move-object v1, v0

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatSession;

    iget-object v2, v5, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_3
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;

    iget-object v9, v5, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->q:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v1, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatSession;->b:Ljava/util/List;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v1, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatSession;->a:Ljava/lang/String;

    check-cast v10, Ljava/lang/Iterable;

    new-instance v12, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v10, v13}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessage;

    invoke-static {v14, v6, v9}, Lcom/vuitton/android/presentation/screen/aicompanion/models/mapper/ChatMessageMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessage;ZLcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance v9, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatSessionUiModel;

    invoke-direct {v9, v11, v12}, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatSessionUiModel;-><init>(Ljava/lang/String;Ljava/util/List;)V

    const/16 v17, 0x0

    const/16 v18, 0x173

    move-object v12, v9

    const/4 v9, 0x0

    move-object v11, v10

    const/4 v10, 0x0

    move-object v13, v11

    const-string v11, ""

    move-object v14, v13

    const/4 v13, 0x0

    move-object v15, v14

    const/4 v14, 0x0

    move-object/from16 v16, v15

    const/4 v15, 0x0

    move-object/from16 v19, v16

    const/16 v16, 0x0

    invoke-static/range {v8 .. v18}, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;->a(Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;ZLcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionOnboardingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatSessionUiModel;Ljava/util/List;Ljava/lang/Boolean;ZZLjava/util/List;I)Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessage;

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessage;->d:Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    instance-of v8, v7, Ljava/util/Collection;

    if-eqz v8, :cond_6

    move-object v8, v7

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_2

    :cond_6
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessageSection;

    instance-of v9, v8, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessageSection$EditorialSection;

    if-eqz v9, :cond_7

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessageSection$EditorialSection;

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessageSection$EditorialSection;->a:Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;

    instance-of v8, v8, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$ProductCarousel;

    if-eqz v8, :cond_7

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessage;

    iget-object v6, v2, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessage;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessage;->d:Ljava/util/List;

    invoke-static {v5}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v7

    new-instance v8, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$fetchProductCarousel$1;

    invoke-direct {v8, v2, v5, v6, v3}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$fetchProductCarousel$1;-><init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    invoke-static {v7, v3, v3, v8, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_3

    :cond_9
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v1, v5, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    sget-object v2, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->v:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v6, "Error loading chat session by ID: "

    invoke-static {v6, v3, v1, v2, v0}, La;->y(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/Throwable;)V

    instance-of v0, v0, Lcom/vuitton/foundation/model/domain/error/aicompanion/AICompanionError$IdRejected;

    if-eqz v0, :cond_a

    invoke-virtual {v5, v4}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->o5(Ljava/lang/String;)V

    :cond_a
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
