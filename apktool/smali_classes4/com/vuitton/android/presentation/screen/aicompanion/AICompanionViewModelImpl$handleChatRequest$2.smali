.class final Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$handleChatRequest$2;
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
    c = "com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModelImpl$handleChatRequest$2"
    f = "AICompanionViewModelImpl.kt"
    l = {
        0xba,
        0xcf
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$handleChatRequest$2;->d:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$handleChatRequest$2;->e:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$handleChatRequest$2;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$handleChatRequest$2;->d:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$handleChatRequest$2;->e:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$handleChatRequest$2;-><init>(Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$handleChatRequest$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$handleChatRequest$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$handleChatRequest$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$handleChatRequest$2;->d:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$handleChatRequest$2;->c:I

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz v4, :cond_2

    if-eq v4, v5, :cond_1

    if-ne v4, v6, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    check-cast v4, Lkotlin/Result;

    iget-object v4, v4, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRequest;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;

    iget-object v8, v8, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;->d:Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatSessionUiModel;

    iget-object v8, v8, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatSessionUiModel;->a:Ljava/lang/String;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$handleChatRequest$2;->e:Ljava/lang/String;

    invoke-direct {v4, v8, v9}, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase;

    iput v5, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$handleChatRequest$2;->c:I

    invoke-virtual {v8, v4, v0}, Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase;->a(Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatRequest;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_3

    goto/16 :goto_3

    :cond_3
    :goto_0
    sget-object v5, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v5, v4, Lkotlin/Result$Failure;

    if-nez v5, :cond_7

    move-object v5, v4

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatResponse;

    :goto_1
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;

    iget-object v10, v9, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;->d:Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatSessionUiModel;

    iget-object v11, v5, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatResponse;->a:Ljava/lang/String;

    iget-object v12, v5, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatResponse;->b:Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessage;

    iget-object v10, v10, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatSessionUiModel;->b:Ljava/util/List;

    check-cast v10, Ljava/util/Collection;

    iget-object v13, v1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->q:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const/4 v14, 0x0

    invoke-static {v12, v14, v13}, Lcom/vuitton/android/presentation/screen/aicompanion/models/mapper/ChatMessageMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessage;ZLcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;

    move-result-object v13

    iget-object v14, v12, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessage;->d:Ljava/util/List;

    invoke-static {v13, v10}, Lkotlin/collections/CollectionsKt;->X(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v10

    new-instance v13, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatSessionUiModel;

    invoke-direct {v13, v11, v10}, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatSessionUiModel;-><init>(Ljava/lang/String;Ljava/util/List;)V

    const/16 v18, 0x0

    const/16 v19, 0x177

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v15, v12

    const/4 v12, 0x0

    move-object/from16 v16, v14

    const/4 v14, 0x0

    move-object/from16 v17, v15

    const/4 v15, 0x0

    move-object/from16 v20, v16

    const/16 v16, 0x0

    move-object/from16 v21, v17

    const/16 v17, 0x0

    move-object/from16 v7, v20

    move-object/from16 v6, v21

    invoke-static/range {v9 .. v19}, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;->a(Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;ZLcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionOnboardingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatSessionUiModel;Ljava/util/List;Ljava/lang/Boolean;ZZLjava/util/List;I)Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v14, v7

    check-cast v14, Ljava/lang/Iterable;

    instance-of v5, v14, Ljava/util/Collection;

    if-eqz v5, :cond_4

    move-object v5, v14

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessageSection;

    instance-of v9, v8, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessageSection$EditorialSection;

    if-eqz v9, :cond_5

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessageSection$EditorialSection;

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessageSection$EditorialSection;->a:Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule;

    instance-of v8, v8, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$ProductCarousel;

    if-eqz v8, :cond_5

    iget-object v5, v6, Lcom/vuitton/foundation/model/domain/model/aicompanion/ChatMessage;->a:Ljava/lang/String;

    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v6

    new-instance v8, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$fetchProductCarousel$1;

    const/4 v9, 0x0

    invoke-direct {v8, v7, v1, v5, v9}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$fetchProductCarousel$1;-><init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    invoke-static {v6, v9, v9, v8, v5}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_2

    :cond_6
    const/4 v6, 0x2

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_7
    :goto_2
    invoke-static {v4}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    sget-object v7, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->v:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Error sending chat prompt: "

    invoke-static {v9, v8, v6, v7, v5}, La;->y(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;

    const/4 v15, 0x0

    const/16 v16, 0x17f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v6 .. v16}, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;->a(Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;ZLcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionOnboardingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatSessionUiModel;Ljava/util/List;Ljava/lang/Boolean;ZZLjava/util/List;I)Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->s:Lkotlinx/coroutines/channels/BufferedChannel;

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->d:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v6, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v1, 0x7f140967

    const/4 v9, 0x0

    const/4 v11, 0x2

    invoke-direct {v6, v1, v9, v11, v9}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v9, 0x0

    const/16 v10, 0x3c

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v1

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$handleChatRequest$2;->b:Ljava/lang/Object;

    iput v11, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$handleChatRequest$2;->c:I

    invoke-interface {v2, v1, v0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_9

    :goto_3
    return-object v3

    :cond_9
    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
