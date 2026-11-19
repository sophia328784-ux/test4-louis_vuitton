.class final Landroidx/paging/PageFetcher$flow$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/paging/PageFetcher$GenerationInfo<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Boolean;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Landroidx/paging/PageFetcher$GenerationInfo<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\u0010\u0000\u001a\u0010\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u0003\u0018\u00010\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0004\"\u0008\u0008\u0001\u0010\u0003*\u00020\u00042\u0014\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u0003\u0018\u00010\u00012\u0006\u0010\u0006\u001a\u00020\u0007H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/paging/PageFetcher$GenerationInfo;",
        "Key",
        "Value",
        "",
        "previousGeneration",
        "triggerRemoteRefresh",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.paging.PageFetcher$flow$1$2"
    f = "PageFetcher.kt"
    l = {
        0x49,
        0x4d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public b:Landroidx/paging/PagingSource;

.field public c:I

.field public synthetic d:Ljava/lang/Object;

.field public synthetic e:Z

.field public final synthetic f:Landroidx/paging/RemoteMediatorAccessor;

.field public final synthetic g:Landroidx/paging/PageFetcher;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Landroidx/paging/PageFetcher;Landroidx/paging/RemoteMediatorAccessor;)V
    .locals 0

    iput-object p3, p0, Landroidx/paging/PageFetcher$flow$1$2;->f:Landroidx/paging/RemoteMediatorAccessor;

    iput-object p2, p0, Landroidx/paging/PageFetcher$flow$1$2;->g:Landroidx/paging/PageFetcher;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/paging/PageFetcher$GenerationInfo;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Landroidx/paging/PageFetcher$flow$1$2;

    iget-object v1, p0, Landroidx/paging/PageFetcher$flow$1$2;->f:Landroidx/paging/RemoteMediatorAccessor;

    iget-object p0, p0, Landroidx/paging/PageFetcher$flow$1$2;->g:Landroidx/paging/PageFetcher;

    invoke-direct {v0, p3, p0, v1}, Landroidx/paging/PageFetcher$flow$1$2;-><init>(Lkotlin/coroutines/Continuation;Landroidx/paging/PageFetcher;Landroidx/paging/RemoteMediatorAccessor;)V

    iput-object p1, v0, Landroidx/paging/PageFetcher$flow$1$2;->d:Ljava/lang/Object;

    iput-boolean p2, v0, Landroidx/paging/PageFetcher$flow$1$2;->e:Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Landroidx/paging/PageFetcher$flow$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Landroidx/paging/PageFetcher$flow$1$2;->c:I

    const/4 v2, 0x2

    iget-object v5, p0, Landroidx/paging/PageFetcher$flow$1$2;->g:Landroidx/paging/PageFetcher;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Landroidx/paging/PageFetcher$flow$1$2;->b:Landroidx/paging/PagingSource;

    iget-object v1, p0, Landroidx/paging/PageFetcher$flow$1$2;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/paging/PageFetcher$GenerationInfo;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v2, p1

    goto :goto_3

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_1
    iget-object v1, p0, Landroidx/paging/PageFetcher$flow$1$2;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/paging/PageFetcher$GenerationInfo;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v6, p1

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/paging/PageFetcher$flow$1$2;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/paging/PageFetcher$GenerationInfo;

    iget-boolean v6, p0, Landroidx/paging/PageFetcher$flow$1$2;->e:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroidx/paging/PageFetcher$flow$1$2;->f:Landroidx/paging/RemoteMediatorAccessor;

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroidx/paging/RemoteMediatorConnection;->a()V

    :cond_3
    if-eqz v1, :cond_4

    iget-object v6, v1, Landroidx/paging/PageFetcher$GenerationInfo;->a:Landroidx/paging/PageFetcherSnapshot;

    if-eqz v6, :cond_4

    iget-object v6, v6, Landroidx/paging/PageFetcherSnapshot;->b:Landroidx/paging/PagingSource;

    goto :goto_0

    :cond_4
    move-object v6, v4

    :goto_0
    iput-object v1, p0, Landroidx/paging/PageFetcher$flow$1$2;->d:Ljava/lang/Object;

    iput v3, p0, Landroidx/paging/PageFetcher$flow$1$2;->c:I

    invoke-static {v5, v6, p0}, Landroidx/paging/PageFetcher;->a(Landroidx/paging/PageFetcher;Landroidx/paging/PagingSource;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    check-cast v6, Landroidx/paging/PagingSource;

    if-eqz v1, :cond_7

    iget-object v7, v1, Landroidx/paging/PageFetcher$GenerationInfo;->a:Landroidx/paging/PageFetcherSnapshot;

    if-eqz v7, :cond_7

    iput-object v1, p0, Landroidx/paging/PageFetcher$flow$1$2;->d:Ljava/lang/Object;

    iput-object v6, p0, Landroidx/paging/PageFetcher$flow$1$2;->b:Landroidx/paging/PagingSource;

    iput v2, p0, Landroidx/paging/PageFetcher$flow$1$2;->c:I

    invoke-virtual {v7, p0}, Landroidx/paging/PageFetcherSnapshot;->e(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_6

    :goto_2
    return-object v0

    :cond_6
    move-object v0, v6

    :goto_3
    check-cast v2, Landroidx/paging/PagingState;

    goto :goto_4

    :cond_7
    move-object v2, v4

    move-object v0, v6

    :goto_4
    if-eqz v2, :cond_8

    iget-object v6, v2, Landroidx/paging/PagingState;->a:Ljava/util/List;

    goto :goto_5

    :cond_8
    move-object v6, v4

    :goto_5
    check-cast v6, Ljava/util/Collection;

    if-eqz v6, :cond_9

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_9
    if-eqz v1, :cond_a

    iget-object v6, v1, Landroidx/paging/PageFetcher$GenerationInfo;->b:Landroidx/paging/PagingState;

    if-eqz v6, :cond_a

    iget-object v7, v6, Landroidx/paging/PagingState;->a:Ljava/util/List;

    if-eqz v7, :cond_a

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v3

    if-ne v7, v3, :cond_a

    move-object v2, v6

    :cond_a
    if-eqz v2, :cond_b

    iget-object v3, v2, Landroidx/paging/PagingState;->b:Ljava/lang/Integer;

    goto :goto_6

    :cond_b
    move-object v3, v4

    :goto_6
    if-nez v3, :cond_d

    if-eqz v1, :cond_c

    iget-object v3, v1, Landroidx/paging/PageFetcher$GenerationInfo;->b:Landroidx/paging/PagingState;

    if-eqz v3, :cond_c

    iget-object v3, v3, Landroidx/paging/PagingState;->b:Ljava/lang/Integer;

    goto :goto_7

    :cond_c
    move-object v3, v4

    :goto_7
    if-eqz v3, :cond_d

    iget-object v2, v1, Landroidx/paging/PageFetcher$GenerationInfo;->b:Landroidx/paging/PagingState;

    :cond_d
    move-object v12, v2

    if-nez v12, :cond_e

    iget-object v2, v5, Landroidx/paging/PageFetcher;->b:Ljava/lang/Object;

    goto :goto_8

    :cond_e
    invoke-virtual {v0, v12}, Landroidx/paging/PagingSource;->a(Landroidx/paging/PagingState;)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Landroidx/paging/PagingLogger;->a(I)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_f
    :goto_8
    if-eqz v1, :cond_10

    iget-object v3, v1, Landroidx/paging/PageFetcher$GenerationInfo;->a:Landroidx/paging/PageFetcherSnapshot;

    if-eqz v3, :cond_10

    iget-object v3, v3, Landroidx/paging/PageFetcherSnapshot;->l:Lkotlinx/coroutines/JobImpl;

    invoke-interface {v3, v4}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_10
    if-eqz v1, :cond_11

    iget-object v1, v1, Landroidx/paging/PageFetcher$GenerationInfo;->c:Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_11

    invoke-interface {v1, v4}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_11
    new-instance v1, Landroidx/paging/PageFetcher$GenerationInfo;

    iget-object v10, v5, Landroidx/paging/PageFetcher;->c:Landroidx/paging/PagingConfig;

    iget-object v3, v5, Landroidx/paging/PageFetcher;->e:Landroidx/paging/ConflatedEventBus;

    iget-object v11, v3, Landroidx/paging/ConflatedEventBus;->b:Landroidx/paging/ConflatedEventBus$special$$inlined$mapNotNull$1;

    new-instance v3, Landroidx/paging/PageFetcher$flow$1$2$1;

    const-string v8, "refresh()V"

    const/4 v9, 0x0

    const/4 v4, 0x0

    const-class v6, Landroidx/paging/PageFetcher;

    const-string v7, "refresh"

    invoke-direct/range {v3 .. v9}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v6, Landroidx/paging/PageFetcherSnapshot;

    iget-object p0, p0, Landroidx/paging/PageFetcher$flow$1$2;->f:Landroidx/paging/RemoteMediatorAccessor;

    move-object v8, v0

    move-object v7, v2

    move-object v13, v3

    move-object v9, v10

    move-object v10, v11

    move-object v11, p0

    invoke-direct/range {v6 .. v13}, Landroidx/paging/PageFetcherSnapshot;-><init>(Ljava/lang/Object;Landroidx/paging/PagingSource;Landroidx/paging/PagingConfig;Lkotlinx/coroutines/flow/Flow;Landroidx/paging/RemoteMediatorConnection;Landroidx/paging/PagingState;Lkotlin/jvm/functions/Function0;)V

    invoke-static {}, Lkotlinx/coroutines/JobKt;->a()Lkotlinx/coroutines/JobImpl;

    move-result-object p0

    invoke-direct {v1, v6, v12, p0}, Landroidx/paging/PageFetcher$GenerationInfo;-><init>(Landroidx/paging/PageFetcherSnapshot;Landroidx/paging/PagingState;Lkotlinx/coroutines/Job;)V

    return-object v1
.end method
