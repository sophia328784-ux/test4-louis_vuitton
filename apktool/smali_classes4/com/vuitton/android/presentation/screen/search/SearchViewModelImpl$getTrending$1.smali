.class final Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getTrending$1;
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
    c = "com.vuitton.android.presentation.screen.search.SearchViewModelImpl$getTrending$1"
    f = "SearchViewModelImpl.kt"
    l = {
        0x104
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getTrending$1;->c:Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getTrending$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getTrending$1;->c:Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getTrending$1;-><init>(Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getTrending$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getTrending$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getTrending$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getTrending$1;->c:Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->s:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->q:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, p0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getTrending$1;->b:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    if-ne v4, v6, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :cond_2
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/vuitton/android/presentation/screen/search/models/SearchListState;

    new-instance v4, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Loading;

    invoke-direct {v4}, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Loading;-><init>()V

    invoke-interface {v1, p1, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/search/GetTrendingListUseCase;

    iput v6, p0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getTrending$1;->b:I

    invoke-virtual {p1, p0}, Lcom/vuitton/android/domain/usecase/search/GetTrendingListUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v3, :cond_3

    return-object v3

    :cond_3
    :goto_0
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_7

    move-object p1, p0

    check-cast p1, Ljava/util/List;

    :cond_4
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/vuitton/android/presentation/screen/search/models/SearchListState;

    move-object v4, p1

    check-cast v4, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v4, v8}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/search/Trending;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lcom/vuitton/android/presentation/screen/search/models/TrendingItemUiModel;

    iget-object v10, v8, Lcom/vuitton/foundation/model/domain/model/search/Trending;->a:Ljava/lang/String;

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/search/Trending;->b:Ljava/lang/String;

    invoke-direct {v9, v10, v8}, Lcom/vuitton/android/presentation/screen/search/models/TrendingItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    new-instance v4, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Result;

    invoke-direct {v4, v7}, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Result;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v3, Lcom/vuitton/android/presentation/screen/search/models/SearchState;->SUCCESS_SEARCH:Lcom/vuitton/android/presentation/screen/search/models/SearchState;

    if-eq p1, v3, :cond_7

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v3, Lcom/vuitton/android/presentation/screen/search/models/SearchState;->NO_RESULT_SEARCH:Lcom/vuitton/android/presentation/screen/search/models/SearchState;

    if-eq p1, v3, :cond_7

    :cond_6
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/vuitton/android/presentation/screen/search/models/SearchState;

    sget-object v3, Lcom/vuitton/android/presentation/screen/search/models/SearchState;->TRENDING:Lcom/vuitton/android/presentation/screen/search/models/SearchState;

    invoke-interface {v2, p1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_7
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_a

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    sget v3, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImplKt;->a:I

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->p:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz p1, :cond_8

    new-instance v0, Lcom/vuitton/android/domain/monitoring/search/SearchMonitoring$Error$SearchPanelError;

    invoke-direct {v0, p0}, Lcom/vuitton/android/domain/monitoring/search/SearchMonitoring$Error$SearchPanelError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    :cond_8
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/vuitton/android/presentation/screen/search/models/SearchListState;

    new-instance p1, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Error;

    invoke-direct {p1, v5, v6, v5}, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Error;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/vuitton/android/presentation/screen/search/models/SearchState;->SUCCESS_SEARCH:Lcom/vuitton/android/presentation/screen/search/models/SearchState;

    if-eq p0, p1, :cond_a

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/vuitton/android/presentation/screen/search/models/SearchState;->NO_RESULT_SEARCH:Lcom/vuitton/android/presentation/screen/search/models/SearchState;

    if-eq p0, p1, :cond_a

    :cond_9
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/vuitton/android/presentation/screen/search/models/SearchState;

    sget-object p1, Lcom/vuitton/android/presentation/screen/search/models/SearchState;->ERROR:Lcom/vuitton/android/presentation/screen/search/models/SearchState;

    invoke-interface {v2, p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    :cond_a
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
