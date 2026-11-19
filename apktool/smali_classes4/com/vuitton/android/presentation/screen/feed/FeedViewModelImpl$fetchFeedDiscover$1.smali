.class final Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedDiscover$1;
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
    c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$fetchFeedDiscover$1"
    f = "FeedViewModelImpl.kt"
    l = {
        0x1ac,
        0x1a9
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public d:Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase;

.field public e:Lcom/vuitton/foundation/model/domain/model/common/Coordinates;

.field public f:Z

.field public g:I

.field public final synthetic h:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedDiscover$1;->h:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedDiscover$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedDiscover$1;->h:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedDiscover$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedDiscover$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedDiscover$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedDiscover$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedDiscover$1;->h:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->N:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedDiscover$1;->g:I

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    if-eq v3, v6, :cond_1

    if-ne v3, v5, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedDiscover$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_1
    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedDiscover$1;->f:Z

    iget v6, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedDiscover$1;->b:I

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedDiscover$1;->e:Lcom/vuitton/foundation/model/domain/model/common/Coordinates;

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedDiscover$1;->d:Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase;

    iget-object v9, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedDiscover$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v12, v9

    move v9, v3

    move-object v3, v12

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;

    if-eqz p1, :cond_3

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_3
    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->G:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v8, Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Action$LoadDiscoverFeed;->a:Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Action$LoadDiscoverFeed;

    invoke-interface {v3, v7, v8}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v3

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Error;

    if-eqz v7, :cond_5

    :cond_4
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;

    sget-object v8, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Loading;->a:Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Loading;

    invoke-interface {v1, v7, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_5
    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->n:Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->H:Lcom/vuitton/foundation/model/domain/model/common/Coordinates;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->g:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    invoke-virtual {v9}, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->b()Z

    move-result v9

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->s:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v11, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->EXCLUSIVE_OFFER:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v11}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v11

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedDiscover$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v8, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedDiscover$1;->d:Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase;

    iput-object v7, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedDiscover$1;->e:Lcom/vuitton/foundation/model/domain/model/common/Coordinates;

    iput p1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedDiscover$1;->b:I

    iput-boolean v9, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedDiscover$1;->f:Z

    iput v6, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedDiscover$1;->g:I

    const/4 v6, 0x0

    invoke-virtual {v10, v11, v6, p0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_6

    goto :goto_1

    :cond_6
    move-object v12, v6

    move v6, p1

    move-object p1, v12

    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedDiscover$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedDiscover$1;->d:Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase;

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedDiscover$1;->e:Lcom/vuitton/foundation/model/domain/model/common/Coordinates;

    iput v6, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedDiscover$1;->b:I

    iput v5, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$fetchFeedDiscover$1;->g:I

    invoke-virtual {v8, v7, v9, p1, p0}, Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase;->a(Lcom/vuitton/foundation/model/domain/model/common/Coordinates;ZZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_7

    :goto_1
    return-object v2

    :cond_7
    move-object p0, v3

    :goto_2
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, p1, Lkotlin/Result$Failure;

    if-nez v2, :cond_8

    :try_start_0
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/feed/Feed;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/feed/models/mappers/FeedUiModelMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/feed/Feed;)Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v2

    :cond_8
    :goto_3
    instance-of v2, p1, Lkotlin/Result$Failure;

    if-nez v2, :cond_a

    move-object v2, p1

    check-cast v2, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

    :cond_9
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;

    new-instance v4, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;

    invoke-direct {v4, v2}, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;)V

    invoke-interface {v1, v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_a
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_d

    :cond_b
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;

    sget-object v3, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Error;->a:Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Error;

    invoke-interface {v1, v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v1, Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Error$LoadDiscoverFeedError;

    invoke-direct {v1, p1}, Lcom/vuitton/android/domain/monitoring/feed/FeedMonitoring$Error$LoadDiscoverFeedError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    const-string v1, "Unable to retrieve feed discover"

    :cond_c
    const-string v2, "FeedViewModelImpl"

    invoke-interface {v0, v2, v1, p1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    invoke-interface {p0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
