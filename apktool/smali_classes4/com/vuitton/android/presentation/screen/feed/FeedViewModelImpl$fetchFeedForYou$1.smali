.class final Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedForYou$1;
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
    c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$fetchFeedForYou$1"
    f = "FeedViewModelImpl.kt"
    l = {
        0x1c8,
        0x1c5
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:Lcom/vuitton/android/domain/usecase/feed/GetFeedForYouUseCase;

.field public d:Lcom/vuitton/foundation/model/domain/model/common/Coordinates;

.field public e:Z

.field public f:I

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedForYou$1;->g:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedForYou$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedForYou$1;->g:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedForYou$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedForYou$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedForYou$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedForYou$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedForYou$1;->g:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->c0:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->O:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedForYou$1;->f:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_2

    if-eq v4, v7, :cond_1

    if-ne v4, v5, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedForYou$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :cond_1
    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedForYou$1;->e:Z

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedForYou$1;->d:Lcom/vuitton/foundation/model/domain/model/common/Coordinates;

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedForYou$1;->c:Lcom/vuitton/android/domain/usecase/feed/GetFeedForYouUseCase;

    iget-object v9, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedForYou$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v12, v7

    move-object v7, p1

    move-object p1, v9

    move-object v9, v8

    move-object v8, v12

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;

    if-eqz p1, :cond_3

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_3
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->G:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v8, Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Action$LoadForYouFeed;->a:Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Action$LoadForYouFeed;

    invoke-interface {p1, v4, v8}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object p1

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Error;

    if-eqz v4, :cond_5

    :cond_4
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;

    sget-object v8, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Loading;->a:Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Loading;

    invoke-interface {v2, v4, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_5
    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/feed/GetFeedForYouUseCase;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->H:Lcom/vuitton/foundation/model/domain/model/common/Coordinates;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->g:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    invoke-virtual {v9}, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->b()Z

    move-result v9

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->s:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v11, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->EXCLUSIVE_OFFER:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v11}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v11

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedForYou$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v8, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedForYou$1;->c:Lcom/vuitton/android/domain/usecase/feed/GetFeedForYouUseCase;

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedForYou$1;->d:Lcom/vuitton/foundation/model/domain/model/common/Coordinates;

    iput-boolean v9, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedForYou$1;->e:Z

    iput v7, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedForYou$1;->f:I

    const/4 v7, 0x0

    invoke-virtual {v10, v11, v7, p0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_6

    goto :goto_1

    :cond_6
    move-object v12, v8

    move-object v8, v4

    move v4, v9

    move-object v9, v12

    :goto_0
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedForYou$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v6, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedForYou$1;->c:Lcom/vuitton/android/domain/usecase/feed/GetFeedForYouUseCase;

    iput-object v6, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedForYou$1;->d:Lcom/vuitton/foundation/model/domain/model/common/Coordinates;

    iput v5, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedForYou$1;->f:I

    invoke-virtual {v9, v8, v4, v7, p0}, Lcom/vuitton/android/domain/usecase/feed/GetFeedForYouUseCase;->a(Lcom/vuitton/foundation/model/domain/model/common/Coordinates;ZZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v3, :cond_7

    :goto_1
    return-object v3

    :cond_7
    move-object v12, p1

    move-object p1, p0

    move-object p0, v12

    :goto_2
    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v3, p1, Lkotlin/Result$Failure;

    if-nez v3, :cond_8

    :try_start_0
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/feed/Feed;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/feed/models/mappers/FeedUiModelMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/feed/Feed;)Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v3, Lkotlin/Result$Failure;

    invoke-direct {v3, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v3

    :cond_8
    :goto_3
    instance-of v3, p1, Lkotlin/Result$Failure;

    if-nez v3, :cond_12

    move-object v3, p1

    check-cast v3, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

    :cond_9
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;

    new-instance v5, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;

    invoke-direct {v5, v3}, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;)V

    invoke-interface {v2, v4, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModelKt;->a(Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Cc(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;)V

    :cond_a
    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;->a:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    instance-of v4, v3, Ljava/util/Collection;

    if-eqz v4, :cond_b

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    goto/16 :goto_6

    :cond_b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    instance-of v5, v4, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;

    if-nez v5, :cond_d

    instance-of v4, v4, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;

    if-eqz v4, :cond_c

    :cond_d
    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->d0:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/coroutines/Job;

    invoke-interface {v5, v6}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    goto :goto_4

    :cond_e
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;

    instance-of v4, v3, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;

    if-nez v4, :cond_f

    goto :goto_6

    :cond_f
    check-cast v3, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;->a:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;->a:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    instance-of v5, v4, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;

    if-eqz v5, :cond_11

    check-cast v4, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;

    iget-object v5, v4, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;->a:Ljava/lang/String;

    iget-object v6, v4, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;->c:Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    iget-object v4, v4, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;->d:Ljava/util/List;

    invoke-virtual {v0, v5, v6, v4}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Kc(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;Ljava/util/List;)V

    goto :goto_5

    :cond_11
    instance-of v5, v4, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;

    if-eqz v5, :cond_10

    check-cast v4, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;

    iget-object v5, v4, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;->a:Ljava/lang/String;

    iget-object v6, v4, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;->c:Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    iget-object v4, v4, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;->d:Ljava/util/List;

    invoke-virtual {v0, v5, v6, v4}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Kc(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;Ljava/util/List;)V

    goto :goto_5

    :cond_12
    :goto_6
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_15

    :cond_13
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;

    sget-object v4, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Error;->a:Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Error;

    invoke-interface {v2, v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    new-instance v1, Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Error$LoadForYouFeedError;

    invoke-direct {v1, p1}, Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Error$LoadForYouFeedError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_14

    const-string v1, "Unable to retrieve feed for you"

    :cond_14
    const-string v2, "FeedViewModelImpl"

    invoke-interface {v0, v2, v1, p1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    invoke-interface {p0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
