.class final Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl$listenPreCache$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "-",
        "Lcom/vuitton/foundation/model/domain/model/spotlight/WorkInfoResult;",
        ">;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "Lcom/vuitton/foundation/model/domain/model/spotlight/WorkInfoResult;"
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
    c = "com.vuitton.android.data.repository.SpotlightRepositoryImpl$listenPreCache$1"
    f = "SpotlightRepositoryImpl.kt"
    l = {
        0x34
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl;

.field public final synthetic e:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl;Ljava/util/UUID;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl$listenPreCache$1;->d:Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl$listenPreCache$1;->e:Ljava/util/UUID;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl$listenPreCache$1;

    iget-object v1, p0, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl$listenPreCache$1;->d:Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl$listenPreCache$1;->e:Ljava/util/UUID;

    invoke-direct {v0, v1, p0, p2}, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl$listenPreCache$1;-><init>(Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl;Ljava/util/UUID;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl$listenPreCache$1;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl$listenPreCache$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl$listenPreCache$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl$listenPreCache$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl$listenPreCache$1;->c:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/flow/FlowCollector;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl$listenPreCache$1;->b:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl$listenPreCache$1;->d:Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl;

    iget-object v2, p1, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl;->b:Landroidx/work/WorkManager;

    iget-object v5, p0, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl$listenPreCache$1;->e:Ljava/util/UUID;

    invoke-virtual {v2, v5}, Landroidx/work/WorkManager;->c(Ljava/util/UUID;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object v2

    invoke-static {v2}, Landroidx/lifecycle/FlowLiveDataConversions;->a(Landroidx/lifecycle/LiveData;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v6

    iget-object v2, p1, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl;->c:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-interface {v2}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object v7

    sget-object v2, Lkotlinx/coroutines/Job$Key;->b:Lkotlinx/coroutines/Job$Key;

    invoke-interface {v7, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v2

    if-nez v2, :cond_4

    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    instance-of v2, v6, Lkotlinx/coroutines/flow/internal/FusibleFlow;

    if-eqz v2, :cond_3

    check-cast v6, Lkotlinx/coroutines/flow/internal/FusibleFlow;

    const/4 v2, 0x0

    const/4 v5, 0x6

    invoke-static {v6, v7, v2, v3, v5}, Lkotlinx/coroutines/flow/internal/FusibleFlow;->b(Lkotlinx/coroutines/flow/internal/FusibleFlow;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v6

    goto :goto_0

    :cond_3
    new-instance v5, Lkotlinx/coroutines/flow/internal/ChannelFlowOperatorImpl;

    const/16 v10, 0xc

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v11}, Lkotlinx/coroutines/flow/internal/ChannelFlowOperatorImpl;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v6, v5

    goto :goto_0

    :cond_4
    const-string v2, "Flow context cannot contain job in it. Had "

    invoke-static {v7, v2}, Ltg0;->n(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v3

    :goto_0
    invoke-static {v6}, Lkotlinx/coroutines/flow/FlowKt;->k(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    invoke-direct {v5, v2}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance v2, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl$listenPreCache$1$1;

    invoke-direct {v2, v0, p1}, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl$listenPreCache$1$1;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl;)V

    iput-object v3, p0, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl$listenPreCache$1;->c:Ljava/lang/Object;

    iput v4, p0, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl$listenPreCache$1;->b:I

    invoke-virtual {v5, v2, p0}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;->f(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
