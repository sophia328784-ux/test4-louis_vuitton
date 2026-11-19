.class final Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshFeedForYou$1;
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
    c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$refreshFeedForYou$1"
    f = "FeedViewModelImpl.kt"
    l = {
        0x385,
        0x382
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/usecase/feed/GetFeedForYouUseCase;

.field public c:Lcom/vuitton/foundation/model/domain/model/common/Coordinates;

.field public d:Z

.field public e:I

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshFeedForYou$1;->f:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshFeedForYou$1;->g:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshFeedForYou$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshFeedForYou$1;->f:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshFeedForYou$1;->g:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshFeedForYou$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshFeedForYou$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshFeedForYou$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshFeedForYou$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshFeedForYou$1;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshFeedForYou$1;->f:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_1
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshFeedForYou$1;->d:Z

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshFeedForYou$1;->c:Lcom/vuitton/foundation/model/domain/model/common/Coordinates;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshFeedForYou$1;->b:Lcom/vuitton/android/domain/usecase/feed/GetFeedForYouUseCase;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v6, v5, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/feed/GetFeedForYouUseCase;

    iget-object p1, v5, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->H:Lcom/vuitton/foundation/model/domain/model/common/Coordinates;

    iget-object v1, v5, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->g:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    invoke-virtual {v1}, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->b()Z

    move-result v1

    iget-object v7, v5, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->s:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v8, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->EXCLUSIVE_OFFER:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v8}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v8

    iput-object v6, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshFeedForYou$1;->b:Lcom/vuitton/android/domain/usecase/feed/GetFeedForYouUseCase;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshFeedForYou$1;->c:Lcom/vuitton/foundation/model/domain/model/common/Coordinates;

    iput-boolean v1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshFeedForYou$1;->d:Z

    iput v3, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshFeedForYou$1;->e:I

    const/4 v3, 0x0

    invoke-virtual {v7, v8, v3, p0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v9, v3

    move-object v3, p1

    move-object p1, v9

    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshFeedForYou$1;->b:Lcom/vuitton/android/domain/usecase/feed/GetFeedForYouUseCase;

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshFeedForYou$1;->c:Lcom/vuitton/foundation/model/domain/model/common/Coordinates;

    iput v2, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshFeedForYou$1;->e:I

    invoke-virtual {v6, v3, v1, p1, p0}, Lcom/vuitton/android/domain/usecase/feed/GetFeedForYouUseCase;->a(Lcom/vuitton/foundation/model/domain/model/common/Coordinates;ZZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    :goto_2
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_5

    :try_start_0
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/feed/Feed;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/feed/models/mappers/FeedUiModelMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/feed/Feed;)Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    :cond_5
    :goto_3
    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_c

    check-cast p1, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;->a:Ljava/util/List;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$refreshFeedForYou$1;->g:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Hc(Ljava/lang/String;Ljava/util/List;)Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_6

    :cond_6
    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->O:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_7
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;

    instance-of v3, v2, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;

    if-eqz v3, :cond_8

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;

    goto :goto_4

    :cond_8
    move-object v3, v4

    :goto_4
    if-eqz v3, :cond_b

    check-cast v2, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;->a:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;->a:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    move-object v5, p1

    :cond_9
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    new-instance v2, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

    invoke-direct {v2, v3}, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;-><init>(Ljava/util/List;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;

    invoke-direct {v3, v2}, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;)V

    move-object v2, v3

    :cond_b
    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_c
    :goto_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
