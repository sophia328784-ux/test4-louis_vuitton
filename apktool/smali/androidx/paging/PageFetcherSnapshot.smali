.class public final Landroidx/paging/PageFetcherSnapshot;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/paging/PageFetcherSnapshot$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u0001*\u0008\u0008\u0001\u0010\u0003*\u00020\u00012\u00020\u0001B{\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00018\u0000\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0016\u0008\u0002\u0010\r\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u000c\u0012\u0016\u0008\u0002\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u000e\u0012\u000e\u0008\u0002\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/paging/PageFetcherSnapshot;",
        "",
        "Key",
        "Value",
        "initialKey",
        "Landroidx/paging/PagingSource;",
        "pagingSource",
        "Landroidx/paging/PagingConfig;",
        "config",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "retryFlow",
        "Landroidx/paging/RemoteMediatorConnection;",
        "remoteMediatorConnection",
        "Landroidx/paging/PagingState;",
        "previousPagingState",
        "Lkotlin/Function0;",
        "jumpCallback",
        "<init>",
        "(Ljava/lang/Object;Landroidx/paging/PagingSource;Landroidx/paging/PagingConfig;Lkotlinx/coroutines/flow/Flow;Landroidx/paging/RemoteMediatorConnection;Landroidx/paging/PagingState;Lkotlin/jvm/functions/Function0;)V",
        "paging-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Landroidx/paging/PagingSource;

.field public final c:Landroidx/paging/PagingConfig;

.field public final d:Lkotlinx/coroutines/flow/Flow;

.field public final e:Landroidx/paging/RemoteMediatorConnection;

.field public final f:Landroidx/paging/PagingState;

.field public final g:Lkotlin/jvm/functions/Function0;

.field public final h:Landroidx/paging/HintHandler;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final k:Landroidx/paging/PageFetcherSnapshotState$Holder;

.field public final l:Lkotlinx/coroutines/JobImpl;

.field public final m:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/paging/PagingSource;Landroidx/paging/PagingConfig;Lkotlinx/coroutines/flow/Flow;Landroidx/paging/RemoteMediatorConnection;Landroidx/paging/PagingState;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;",
            "Landroidx/paging/PagingSource<",
            "TKey;TValue;>;",
            "Landroidx/paging/PagingConfig;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/paging/RemoteMediatorConnection<",
            "TKey;TValue;>;",
            "Landroidx/paging/PagingState<",
            "TKey;TValue;>;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/paging/PageFetcherSnapshot;->a:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/paging/PageFetcherSnapshot;->b:Landroidx/paging/PagingSource;

    iput-object p3, p0, Landroidx/paging/PageFetcherSnapshot;->c:Landroidx/paging/PagingConfig;

    iput-object p4, p0, Landroidx/paging/PageFetcherSnapshot;->d:Lkotlinx/coroutines/flow/Flow;

    iput-object p5, p0, Landroidx/paging/PageFetcherSnapshot;->e:Landroidx/paging/RemoteMediatorConnection;

    iput-object p6, p0, Landroidx/paging/PageFetcherSnapshot;->f:Landroidx/paging/PagingState;

    iput-object p7, p0, Landroidx/paging/PageFetcherSnapshot;->g:Lkotlin/jvm/functions/Function0;

    iget p1, p3, Landroidx/paging/PagingConfig;->f:I

    const/high16 p2, -0x80000000

    const/4 p4, 0x0

    if-ne p1, p2, :cond_0

    new-instance p1, Landroidx/paging/HintHandler;

    invoke-direct {p1}, Landroidx/paging/HintHandler;-><init>()V

    iput-object p1, p0, Landroidx/paging/PageFetcherSnapshot;->h:Landroidx/paging/HintHandler;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/paging/PageFetcherSnapshot;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, -0x2

    const/4 p2, 0x6

    invoke-static {p1, p2, p4}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object p1

    iput-object p1, p0, Landroidx/paging/PageFetcherSnapshot;->j:Lkotlinx/coroutines/channels/BufferedChannel;

    new-instance p1, Landroidx/paging/PageFetcherSnapshotState$Holder;

    invoke-direct {p1, p3}, Landroidx/paging/PageFetcherSnapshotState$Holder;-><init>(Landroidx/paging/PagingConfig;)V

    iput-object p1, p0, Landroidx/paging/PageFetcherSnapshot;->k:Landroidx/paging/PageFetcherSnapshotState$Holder;

    invoke-static {}, Lkotlinx/coroutines/JobKt;->a()Lkotlinx/coroutines/JobImpl;

    move-result-object p1

    iput-object p1, p0, Landroidx/paging/PageFetcherSnapshot;->l:Lkotlinx/coroutines/JobImpl;

    new-instance p2, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1;

    invoke-direct {p2, p0, p4}, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1;-><init>(Landroidx/paging/PageFetcherSnapshot;Lkotlin/coroutines/Continuation;)V

    new-instance p3, Landroidx/paging/CancelableChannelFlowKt$cancelableChannelFlow$1;

    invoke-direct {p3, p1, p2, p4}, Landroidx/paging/CancelableChannelFlowKt$cancelableChannelFlow$1;-><init>(Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-static {p3}, Landroidx/paging/SimpleChannelFlowKt;->a(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance p2, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$2;

    invoke-direct {p2, p0, p4}, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$2;-><init>(Landroidx/paging/PageFetcherSnapshot;Lkotlin/coroutines/Continuation;)V

    new-instance p3, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {p3, p2, p1}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    iput-object p3, p0, Landroidx/paging/PageFetcherSnapshot;->m:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    return-void

    :cond_0
    const-string p0, "PagingConfig.jumpThreshold was set, but the associated PagingSource has not marked support for jumps by overriding PagingSource.jumpingSupported to true."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw p4
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroidx/paging/PagingSource;Landroidx/paging/PagingConfig;Lkotlinx/coroutines/flow/Flow;Landroidx/paging/RemoteMediatorConnection;Landroidx/paging/PagingState;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x10

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p5, v0

    :cond_0
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_1

    move-object p6, v0

    :cond_1
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_2

    .line 105
    sget-object p7, Landroidx/paging/PageFetcherSnapshot$1;->c:Landroidx/paging/PageFetcherSnapshot$1;

    .line 106
    :cond_2
    invoke-direct/range {p0 .. p7}, Landroidx/paging/PageFetcherSnapshot;-><init>(Ljava/lang/Object;Landroidx/paging/PagingSource;Landroidx/paging/PagingConfig;Lkotlinx/coroutines/flow/Flow;Landroidx/paging/RemoteMediatorConnection;Landroidx/paging/PagingState;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final a(Landroidx/paging/PageFetcherSnapshot;Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;Landroidx/paging/LoadType;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p2}, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Landroidx/paging/PageFetcherSnapshot;Landroidx/paging/LoadType;)V

    new-instance v2, Landroidx/paging/FlowExtKt$simpleTransformLatest$1;

    invoke-direct {v2, p1, v0, v1}, Landroidx/paging/FlowExtKt$simpleTransformLatest$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2}, Landroidx/paging/SimpleChannelFlowKt;->a(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$3;

    invoke-direct {v0, p2, v1}, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$3;-><init>(Landroidx/paging/LoadType;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/paging/FlowExtKt$simpleRunningReduce$1;

    invoke-direct {v2, p1, v0, v1}, Landroidx/paging/FlowExtKt$simpleRunningReduce$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->t(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->c(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v0, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$4;

    invoke-direct {v0, p0, p2}, Landroidx/paging/PageFetcherSnapshot$collectAsGenerationalViewportHints$4;-><init>(Landroidx/paging/PageFetcherSnapshot;Landroidx/paging/LoadType;)V

    invoke-interface {p1, v0, p3}, Lkotlinx/coroutines/flow/Flow;->f(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final b(Landroidx/paging/PageFetcherSnapshot;Landroidx/paging/LoadType;Landroidx/paging/GenerationalViewportHint;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v2, Landroidx/paging/PageFetcherSnapshot$doLoad$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;

    iget v4, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->q:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->q:I

    goto :goto_0

    :cond_0
    new-instance v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;

    invoke-direct {v3, v0, v2}, Landroidx/paging/PageFetcherSnapshot$doLoad$1;-><init>(Landroidx/paging/PageFetcherSnapshot;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->o:Ljava/lang/Object;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->q:I

    const-string v6, "Use doInitialLoad for LoadType == REFRESH"

    const/4 v10, 0x1

    const/4 v11, 0x0

    packed-switch v5, :pswitch_data_0

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v11

    :pswitch_0
    iget v0, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->n:I

    iget v1, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->m:I

    iget-object v5, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->i:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/sync/Mutex;

    iget-object v12, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->h:Ljava/lang/Object;

    check-cast v12, Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v13, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->g:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v14, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->f:Ljava/lang/Object;

    check-cast v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v15, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->e:Ljava/lang/Object;

    check-cast v15, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v7, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->d:Ljava/lang/Object;

    check-cast v7, Landroidx/paging/GenerationalViewportHint;

    iget-object v11, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->c:Ljava/lang/Object;

    check-cast v11, Landroidx/paging/LoadType;

    iget-object v8, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->b:Ljava/lang/Object;

    check-cast v8, Landroidx/paging/PageFetcherSnapshot;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v9, v7

    move-object v7, v14

    const/16 v17, 0x3

    move-object v14, v8

    move-object v8, v15

    goto/16 :goto_20

    :pswitch_1
    iget-object v0, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->j:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->i:Ljava/lang/Object;

    check-cast v0, Landroidx/paging/PagingSource$LoadResult;

    iget-object v5, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->h:Ljava/lang/Object;

    check-cast v5, Landroidx/paging/PagingSource$LoadParams;

    iget-object v7, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->g:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v8, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->f:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v11, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->e:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v12, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->d:Ljava/lang/Object;

    check-cast v12, Landroidx/paging/GenerationalViewportHint;

    iget-object v13, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->c:Ljava/lang/Object;

    check-cast v13, Landroidx/paging/LoadType;

    iget-object v14, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->b:Ljava/lang/Object;

    check-cast v14, Landroidx/paging/PageFetcherSnapshot;

    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v12

    const/4 v10, 0x0

    const/16 v17, 0x3

    move-object v12, v11

    move-object v11, v13

    goto/16 :goto_1c

    :catchall_0
    move-exception v0

    :goto_1
    const/4 v5, 0x0

    goto/16 :goto_22

    :pswitch_2
    iget-object v0, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->k:Ljava/lang/Object;

    check-cast v0, Landroidx/paging/PageFetcherSnapshotState;

    iget-object v1, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->j:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->i:Ljava/lang/Object;

    check-cast v5, Landroidx/paging/PagingSource$LoadResult;

    iget-object v7, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->h:Ljava/lang/Object;

    check-cast v7, Landroidx/paging/PagingSource$LoadParams;

    iget-object v8, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->g:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v11, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->f:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v12, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->e:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v13, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->d:Ljava/lang/Object;

    check-cast v13, Landroidx/paging/GenerationalViewportHint;

    iget-object v14, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->c:Ljava/lang/Object;

    check-cast v14, Landroidx/paging/LoadType;

    iget-object v15, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->b:Ljava/lang/Object;

    check-cast v15, Landroidx/paging/PageFetcherSnapshot;

    :try_start_1
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v17, 0x3

    goto/16 :goto_19

    :pswitch_3
    iget-object v0, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->l:Lkotlinx/coroutines/sync/MutexImpl;

    iget-object v1, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->k:Ljava/lang/Object;

    check-cast v1, Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v5, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->j:Ljava/lang/Object;

    check-cast v5, Landroidx/paging/LoadType;

    iget-object v7, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->i:Ljava/lang/Object;

    check-cast v7, Landroidx/paging/PagingSource$LoadResult;

    iget-object v8, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->h:Ljava/lang/Object;

    check-cast v8, Landroidx/paging/PagingSource$LoadParams;

    iget-object v11, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->g:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v12, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->f:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v13, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->e:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v14, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->d:Ljava/lang/Object;

    check-cast v14, Landroidx/paging/GenerationalViewportHint;

    iget-object v15, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->c:Ljava/lang/Object;

    check-cast v15, Landroidx/paging/LoadType;

    iget-object v9, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->b:Ljava/lang/Object;

    check-cast v9, Landroidx/paging/PageFetcherSnapshot;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v17, v15

    move-object v15, v0

    move-object v0, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object/from16 v14, v17

    const/16 v17, 0x3

    goto/16 :goto_18

    :pswitch_4
    iget-object v0, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/paging/PageFetcherSnapshotState;

    iget-object v1, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->d:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->c:Ljava/lang/Object;

    check-cast v4, Landroidx/paging/GenerationalViewportHint;

    iget-object v3, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->b:Ljava/lang/Object;

    check-cast v3, Landroidx/paging/LoadType;

    :try_start_2
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_14

    :catchall_1
    move-exception v0

    :goto_2
    const/4 v5, 0x0

    goto/16 :goto_15

    :pswitch_5
    iget-object v0, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->g:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->f:Ljava/lang/Object;

    check-cast v1, Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v5, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->e:Ljava/lang/Object;

    check-cast v5, Landroidx/paging/PagingSource$LoadResult;

    iget-object v6, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->d:Ljava/lang/Object;

    check-cast v6, Landroidx/paging/GenerationalViewportHint;

    iget-object v7, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->c:Ljava/lang/Object;

    check-cast v7, Landroidx/paging/LoadType;

    iget-object v8, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->b:Ljava/lang/Object;

    check-cast v8, Landroidx/paging/PageFetcherSnapshot;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v2, v0

    move-object v0, v3

    move-object v12, v6

    move-object v3, v7

    goto/16 :goto_13

    :pswitch_6
    iget-object v0, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->k:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->j:Ljava/lang/Object;

    check-cast v1, Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v5, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->i:Ljava/lang/Object;

    check-cast v5, Landroidx/paging/PagingSource$LoadResult;

    iget-object v7, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->h:Ljava/lang/Object;

    check-cast v7, Landroidx/paging/PagingSource$LoadParams;

    iget-object v8, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->g:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v9, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->f:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v11, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->e:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v12, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->d:Ljava/lang/Object;

    check-cast v12, Landroidx/paging/GenerationalViewportHint;

    iget-object v13, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->c:Ljava/lang/Object;

    check-cast v13, Landroidx/paging/LoadType;

    iget-object v14, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->b:Ljava/lang/Object;

    check-cast v14, Landroidx/paging/PageFetcherSnapshot;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v2, v0

    goto/16 :goto_11

    :pswitch_7
    iget-object v0, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->h:Ljava/lang/Object;

    check-cast v0, Landroidx/paging/PagingSource$LoadParams;

    iget-object v1, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->g:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v5, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->f:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->e:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v8, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->d:Ljava/lang/Object;

    check-cast v8, Landroidx/paging/GenerationalViewportHint;

    iget-object v9, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->c:Ljava/lang/Object;

    check-cast v9, Landroidx/paging/LoadType;

    iget-object v11, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->b:Ljava/lang/Object;

    check-cast v11, Landroidx/paging/PageFetcherSnapshot;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v12, v8

    move-object v13, v9

    move-object v8, v11

    move-object v9, v5

    move-object v11, v7

    move-object v7, v0

    move-object v0, v1

    goto/16 :goto_e

    :pswitch_8
    iget-object v0, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->i:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->h:Ljava/lang/Object;

    iget-object v5, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->g:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/sync/Mutex;

    iget-object v7, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->f:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v8, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->e:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v9, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->d:Ljava/lang/Object;

    check-cast v9, Landroidx/paging/GenerationalViewportHint;

    iget-object v11, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->c:Ljava/lang/Object;

    check-cast v11, Landroidx/paging/LoadType;

    iget-object v12, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->b:Ljava/lang/Object;

    check-cast v12, Landroidx/paging/PageFetcherSnapshot;

    :try_start_3
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_a

    :catchall_2
    move-exception v0

    :goto_3
    const/4 v10, 0x0

    goto/16 :goto_24

    :pswitch_9
    iget-object v0, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->i:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->h:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->g:Ljava/lang/Object;

    check-cast v5, Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v7, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->f:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v8, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->e:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v9, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->d:Ljava/lang/Object;

    check-cast v9, Landroidx/paging/GenerationalViewportHint;

    iget-object v11, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->c:Ljava/lang/Object;

    check-cast v11, Landroidx/paging/LoadType;

    iget-object v12, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->b:Ljava/lang/Object;

    check-cast v12, Landroidx/paging/PageFetcherSnapshot;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_a
    iget-object v0, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->g:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->f:Ljava/lang/Object;

    check-cast v1, Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v5, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->e:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v7, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->d:Ljava/lang/Object;

    check-cast v7, Landroidx/paging/GenerationalViewportHint;

    iget-object v8, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->c:Ljava/lang/Object;

    check-cast v8, Landroidx/paging/LoadType;

    iget-object v9, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->b:Ljava/lang/Object;

    check-cast v9, Landroidx/paging/PageFetcherSnapshot;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v2, v5

    move-object v5, v1

    move-object v1, v8

    move-object v8, v2

    move-object v2, v0

    move-object v0, v9

    goto :goto_4

    :pswitch_b
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v2, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    if-eq v1, v2, :cond_2e

    new-instance v5, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iget-object v2, v0, Landroidx/paging/PageFetcherSnapshot;->k:Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v7, v2, Landroidx/paging/PageFetcherSnapshotState$Holder;->a:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object v0, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->b:Ljava/lang/Object;

    iput-object v1, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->c:Ljava/lang/Object;

    move-object/from16 v8, p2

    iput-object v8, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->d:Ljava/lang/Object;

    iput-object v5, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->e:Ljava/lang/Object;

    iput-object v2, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->f:Ljava/lang/Object;

    iput-object v7, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->g:Ljava/lang/Object;

    iput v10, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->q:I

    invoke-virtual {v7, v3}, Lkotlinx/coroutines/sync/MutexImpl;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v4, :cond_1

    goto/16 :goto_1f

    :cond_1
    move-object/from16 v19, v5

    move-object v5, v2

    move-object v2, v7

    move-object v7, v8

    move-object/from16 v8, v19

    :goto_4
    :try_start_4
    iget-object v5, v5, Landroidx/paging/PageFetcherSnapshotState$Holder;->b:Landroidx/paging/PageFetcherSnapshotState;

    sget-object v9, Landroidx/paging/PageFetcherSnapshot$WhenMappings;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v9, v9, v11

    if-eq v9, v10, :cond_2d

    const/4 v11, 0x2

    if-eq v9, v11, :cond_5

    const/4 v11, 0x3

    if-eq v9, v11, :cond_3

    :cond_2
    const/4 v5, 0x0

    goto/16 :goto_8

    :cond_3
    iget v9, v5, Landroidx/paging/PageFetcherSnapshotState;->d:I

    iget-object v5, v5, Landroidx/paging/PageFetcherSnapshotState;->c:Ljava/util/ArrayList;

    iget-object v11, v7, Landroidx/paging/GenerationalViewportHint;->b:Landroidx/paging/ViewportHint;

    iget v11, v11, Landroidx/paging/ViewportHint;->d:I

    add-int/2addr v9, v11

    add-int/2addr v9, v10

    if-gez v9, :cond_4

    iget v11, v8, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    iget-object v12, v0, Landroidx/paging/PageFetcherSnapshot;->c:Landroidx/paging/PagingConfig;

    iget v12, v12, Landroidx/paging/PagingConfig;->a:I

    neg-int v9, v9

    mul-int/2addr v12, v9

    add-int/2addr v12, v11

    iput v12, v8, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    const/4 v9, 0x0

    goto :goto_5

    :catchall_3
    move-exception v0

    const/4 v5, 0x0

    goto/16 :goto_25

    :cond_4
    :goto_5
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->F(Ljava/util/List;)I

    move-result v11

    if-gt v9, v11, :cond_2

    :goto_6
    iget v12, v8, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/paging/PagingSource$LoadResult$Page;

    iget-object v13, v13, Landroidx/paging/PagingSource$LoadResult$Page;->b:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    add-int/2addr v12, v13

    iput v12, v8, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    if-eq v9, v11, :cond_2

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_5
    iget v9, v5, Landroidx/paging/PageFetcherSnapshotState;->d:I

    iget-object v5, v5, Landroidx/paging/PageFetcherSnapshotState;->c:Ljava/util/ArrayList;

    iget-object v11, v7, Landroidx/paging/GenerationalViewportHint;->b:Landroidx/paging/ViewportHint;

    iget v11, v11, Landroidx/paging/ViewportHint;->c:I

    add-int/2addr v9, v11

    sub-int/2addr v9, v10

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->F(Ljava/util/List;)I

    move-result v11

    if-le v9, v11, :cond_6

    iget v11, v8, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    iget-object v12, v0, Landroidx/paging/PageFetcherSnapshot;->c:Landroidx/paging/PagingConfig;

    iget v12, v12, Landroidx/paging/PagingConfig;->a:I

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int/2addr v13, v10

    sub-int/2addr v9, v13

    mul-int/2addr v9, v12

    add-int/2addr v9, v11

    iput v9, v8, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v10

    :cond_6
    if-ltz v9, :cond_2

    const/4 v11, 0x0

    :goto_7
    iget v12, v8, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/paging/PagingSource$LoadResult$Page;

    iget-object v13, v13, Landroidx/paging/PagingSource$LoadResult$Page;->b:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    add-int/2addr v12, v13

    iput v12, v8, Lkotlin/jvm/internal/Ref$IntRef;->b:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eq v11, v9, :cond_2

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :goto_8
    invoke-interface {v2, v5}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v5, v0, Landroidx/paging/PageFetcherSnapshot;->k:Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v9, v5, Landroidx/paging/PageFetcherSnapshotState$Holder;->a:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object v0, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->b:Ljava/lang/Object;

    iput-object v1, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->c:Ljava/lang/Object;

    iput-object v7, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->d:Ljava/lang/Object;

    iput-object v8, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->e:Ljava/lang/Object;

    iput-object v2, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->f:Ljava/lang/Object;

    iput-object v5, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->g:Ljava/lang/Object;

    iput-object v9, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->h:Ljava/lang/Object;

    iput-object v2, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->i:Ljava/lang/Object;

    const/4 v11, 0x2

    iput v11, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->q:I

    invoke-virtual {v9, v3}, Lkotlinx/coroutines/sync/MutexImpl;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v4, :cond_7

    goto/16 :goto_1f

    :cond_7
    move-object v12, v0

    move-object v11, v1

    move-object v0, v2

    move-object v1, v9

    move-object v9, v7

    move-object v7, v0

    :goto_9
    :try_start_5
    iget-object v2, v5, Landroidx/paging/PageFetcherSnapshotState$Holder;->b:Landroidx/paging/PageFetcherSnapshotState;

    iget v5, v9, Landroidx/paging/GenerationalViewportHint;->a:I

    iget-object v13, v9, Landroidx/paging/GenerationalViewportHint;->b:Landroidx/paging/ViewportHint;

    invoke-virtual {v13, v11}, Landroidx/paging/ViewportHint;->a(Landroidx/paging/LoadType;)I

    move-result v13

    iget v14, v8, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    add-int/2addr v13, v14

    invoke-virtual {v12, v2, v11, v5, v13}, Landroidx/paging/PageFetcherSnapshot;->i(Landroidx/paging/PageFetcherSnapshotState;Landroidx/paging/LoadType;II)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_9

    iput-object v12, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->b:Ljava/lang/Object;

    iput-object v11, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->c:Ljava/lang/Object;

    iput-object v9, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->d:Ljava/lang/Object;

    iput-object v8, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->e:Ljava/lang/Object;

    iput-object v7, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->f:Ljava/lang/Object;

    iput-object v1, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->g:Ljava/lang/Object;

    iput-object v5, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->h:Ljava/lang/Object;

    iput-object v0, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->i:Ljava/lang/Object;

    const/4 v13, 0x3

    iput v13, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->q:I

    invoke-virtual {v12, v2, v11, v3}, Landroidx/paging/PageFetcherSnapshot;->k(Landroidx/paging/PageFetcherSnapshotState;Landroidx/paging/LoadType;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-ne v2, v4, :cond_8

    goto/16 :goto_1f

    :cond_8
    move-object/from16 v19, v5

    move-object v5, v1

    move-object/from16 v1, v19

    :goto_a
    move-object v2, v1

    move-object v1, v5

    :goto_b
    const/4 v5, 0x0

    goto :goto_c

    :catchall_4
    move-exception v0

    move-object v5, v1

    goto/16 :goto_3

    :cond_9
    const/4 v2, 0x0

    goto :goto_b

    :goto_c
    invoke-interface {v1, v5}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    :goto_d
    iget-object v1, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    if-eqz v1, :cond_2c

    invoke-virtual {v12, v11, v1}, Landroidx/paging/PageFetcherSnapshot;->g(Landroidx/paging/LoadType;Ljava/lang/Object;)Landroidx/paging/PagingSource$LoadParams;

    move-result-object v1

    iget-object v2, v12, Landroidx/paging/PageFetcherSnapshot;->b:Landroidx/paging/PagingSource;

    const/16 v17, 0x3

    invoke-static/range {v17 .. v17}, Landroidx/paging/PagingLogger;->a(I)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object v5, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    invoke-static {v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_a
    iput-object v12, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->b:Ljava/lang/Object;

    iput-object v11, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->c:Ljava/lang/Object;

    iput-object v9, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->d:Ljava/lang/Object;

    iput-object v8, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->e:Ljava/lang/Object;

    iput-object v7, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->f:Ljava/lang/Object;

    iput-object v0, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->g:Ljava/lang/Object;

    iput-object v1, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->h:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->i:Ljava/lang/Object;

    iput-object v5, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->j:Ljava/lang/Object;

    const/4 v5, 0x4

    iput v5, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->q:I

    invoke-virtual {v2, v1, v3}, Landroidx/paging/PagingSource;->b(Landroidx/paging/PagingSource$LoadParams;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_b

    goto/16 :goto_1f

    :cond_b
    move-object v13, v11

    move-object v11, v8

    move-object v8, v12

    move-object v12, v9

    move-object v9, v7

    move-object v7, v1

    :goto_e
    move-object v5, v2

    check-cast v5, Landroidx/paging/PagingSource$LoadResult;

    instance-of v1, v5, Landroidx/paging/PagingSource$LoadResult$Page;

    if-eqz v1, :cond_17

    sget-object v1, Landroidx/paging/PageFetcherSnapshot$WhenMappings;->a:[I

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_d

    const/4 v2, 0x3

    if-ne v1, v2, :cond_c

    move-object v1, v5

    check-cast v1, Landroidx/paging/PagingSource$LoadResult$Page;

    iget-object v1, v1, Landroidx/paging/PagingSource$LoadResult$Page;->d:Ljava/lang/Object;

    goto :goto_10

    :cond_c
    invoke-static {v6}, Lmd;->n(Ljava/lang/String;)V

    :goto_f
    const/16 v16, 0x0

    return-object v16

    :cond_d
    move-object v1, v5

    check-cast v1, Landroidx/paging/PagingSource$LoadResult$Page;

    iget-object v1, v1, Landroidx/paging/PagingSource$LoadResult$Page;->c:Ljava/lang/Object;

    :goto_10
    iget-object v2, v8, Landroidx/paging/PageFetcherSnapshot;->b:Landroidx/paging/PagingSource;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, v8, Landroidx/paging/PageFetcherSnapshot;->k:Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v2, v1, Landroidx/paging/PageFetcherSnapshotState$Holder;->a:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object v8, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->b:Ljava/lang/Object;

    iput-object v13, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->c:Ljava/lang/Object;

    iput-object v12, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->d:Ljava/lang/Object;

    iput-object v11, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->e:Ljava/lang/Object;

    iput-object v9, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->f:Ljava/lang/Object;

    iput-object v0, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->g:Ljava/lang/Object;

    iput-object v7, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->h:Ljava/lang/Object;

    iput-object v5, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->i:Ljava/lang/Object;

    iput-object v1, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->j:Ljava/lang/Object;

    iput-object v2, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->k:Ljava/lang/Object;

    const/4 v14, 0x5

    iput v14, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->q:I

    invoke-virtual {v2, v3}, Lkotlinx/coroutines/sync/MutexImpl;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v4, :cond_e

    goto/16 :goto_1f

    :cond_e
    move-object v14, v8

    move-object v8, v0

    :goto_11
    :try_start_6
    iget-object v0, v1, Landroidx/paging/PageFetcherSnapshotState$Holder;->b:Landroidx/paging/PageFetcherSnapshotState;

    iget v1, v12, Landroidx/paging/GenerationalViewportHint;->a:I

    move-object v15, v5

    check-cast v15, Landroidx/paging/PagingSource$LoadResult$Page;

    invoke-virtual {v0, v1, v13, v15}, Landroidx/paging/PageFetcherSnapshotState;->e(ILandroidx/paging/LoadType;Landroidx/paging/PagingSource$LoadResult$Page;)Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    if-nez v0, :cond_f

    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Landroidx/paging/PagingLogger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13, v0, v1}, Landroidx/paging/PageFetcherSnapshot;->h(Landroidx/paging/LoadType;Ljava/lang/Object;Landroidx/paging/PagingSource$LoadResult;)V

    goto/16 :goto_23

    :cond_f
    const/16 v17, 0x3

    invoke-static/range {v17 .. v17}, Landroidx/paging/PagingLogger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13, v0, v5}, Landroidx/paging/PageFetcherSnapshot;->h(Landroidx/paging/LoadType;Ljava/lang/Object;Landroidx/paging/PagingSource$LoadResult;)V

    :cond_10
    iget v0, v11, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    move-object v1, v5

    check-cast v1, Landroidx/paging/PagingSource$LoadResult$Page;

    iget-object v2, v1, Landroidx/paging/PagingSource$LoadResult$Page;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v0

    iput v2, v11, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    sget-object v0, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    if-ne v13, v0, :cond_11

    iget-object v0, v1, Landroidx/paging/PagingSource$LoadResult$Page;->c:Ljava/lang/Object;

    if-eqz v0, :cond_12

    :cond_11
    sget-object v0, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    if-ne v13, v0, :cond_13

    iget-object v0, v1, Landroidx/paging/PagingSource$LoadResult$Page;->d:Ljava/lang/Object;

    if-nez v0, :cond_13

    :cond_12
    iput-boolean v10, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    :cond_13
    move-object v0, v8

    move-object v8, v14

    :cond_14
    const/16 v17, 0x3

    goto/16 :goto_16

    :catchall_5
    move-exception v0

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw v0

    :cond_15
    sget-object v0, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    if-ne v13, v0, :cond_16

    const-string v0, "prevKey"

    goto :goto_12

    :cond_16
    const-string v0, "nextKey"

    :goto_12
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The same value, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", was passed as the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in two\n                            | sequential Pages loaded from a PagingSource. Re-using load keys in\n                            | PagingSource is often an error, and must be explicitly enabled by\n                            | overriding PagingSource.keyReuseSupported.\n                            "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->c0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltg0;->c(Ljava/lang/Object;)V

    goto/16 :goto_f

    :cond_17
    instance-of v1, v5, Landroidx/paging/PagingSource$LoadResult$Error;

    if-eqz v1, :cond_1b

    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Landroidx/paging/PagingLogger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13, v0, v5}, Landroidx/paging/PageFetcherSnapshot;->h(Landroidx/paging/LoadType;Ljava/lang/Object;Landroidx/paging/PagingSource$LoadResult;)V

    :cond_18
    iget-object v1, v8, Landroidx/paging/PageFetcherSnapshot;->k:Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v0, v1, Landroidx/paging/PageFetcherSnapshotState$Holder;->a:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object v8, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->b:Ljava/lang/Object;

    iput-object v13, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->c:Ljava/lang/Object;

    iput-object v12, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->d:Ljava/lang/Object;

    iput-object v5, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->e:Ljava/lang/Object;

    iput-object v1, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->f:Ljava/lang/Object;

    iput-object v0, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->g:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->h:Ljava/lang/Object;

    const/4 v2, 0x6

    iput v2, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->q:I

    invoke-virtual {v0, v3}, Lkotlinx/coroutines/sync/MutexImpl;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_19

    goto/16 :goto_1f

    :cond_19
    move-object v2, v0

    move-object v0, v3

    move-object v3, v13

    :goto_13
    :try_start_7
    iget-object v1, v1, Landroidx/paging/PageFetcherSnapshotState$Holder;->b:Landroidx/paging/PageFetcherSnapshotState;

    new-instance v6, Landroidx/paging/LoadState$Error;

    check-cast v5, Landroidx/paging/PagingSource$LoadResult$Error;

    iget-object v5, v5, Landroidx/paging/PagingSource$LoadResult$Error;->b:Ljava/lang/Throwable;

    invoke-direct {v6, v5}, Landroidx/paging/LoadState$Error;-><init>(Ljava/lang/Throwable;)V

    iput-object v3, v0, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->b:Ljava/lang/Object;

    iput-object v12, v0, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->c:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->d:Ljava/lang/Object;

    iput-object v1, v0, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->e:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v0, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->f:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->g:Ljava/lang/Object;

    const/4 v5, 0x7

    iput v5, v0, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->q:I

    invoke-virtual {v8, v1, v3, v6, v0}, Landroidx/paging/PageFetcherSnapshot;->j(Landroidx/paging/PageFetcherSnapshotState;Landroidx/paging/LoadType;Landroidx/paging/LoadState$Error;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-ne v0, v4, :cond_1a

    goto/16 :goto_1f

    :cond_1a
    move-object v0, v1

    move-object v1, v2

    move-object v4, v12

    :goto_14
    :try_start_8
    iget-object v0, v0, Landroidx/paging/PageFetcherSnapshotState;->k:Ljava/util/LinkedHashMap;

    iget-object v2, v4, Landroidx/paging/GenerationalViewportHint;->b:Landroidx/paging/ViewportHint;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :catchall_6
    move-exception v0

    move-object v1, v2

    goto/16 :goto_2

    :goto_15
    invoke-interface {v1, v5}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw v0

    :cond_1b
    instance-of v1, v5, Landroidx/paging/PagingSource$LoadResult$Invalid;

    if-eqz v1, :cond_14

    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Landroidx/paging/PagingLogger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v13, v0, v5}, Landroidx/paging/PageFetcherSnapshot;->h(Landroidx/paging/LoadType;Ljava/lang/Object;Landroidx/paging/PagingSource$LoadResult;)V

    :cond_1c
    iget-object v0, v8, Landroidx/paging/PageFetcherSnapshot;->l:Lkotlinx/coroutines/JobImpl;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    iget-object v0, v8, Landroidx/paging/PageFetcherSnapshot;->b:Landroidx/paging/PagingSource;

    iget-object v1, v0, Landroidx/paging/PagingSource;->a:Landroidx/paging/InvalidateCallbackTracker;

    invoke-virtual {v1}, Landroidx/paging/InvalidateCallbackTracker;->a()Z

    move-result v1

    if-eqz v1, :cond_1d

    const/16 v17, 0x3

    invoke-static/range {v17 .. v17}, Landroidx/paging/PagingLogger;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_1d
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :goto_16
    sget-object v1, Landroidx/paging/PageFetcherSnapshot$WhenMappings;->a:[I

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1e

    sget-object v1, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    goto :goto_17

    :cond_1e
    sget-object v1, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    :goto_17
    iget-object v14, v8, Landroidx/paging/PageFetcherSnapshot;->k:Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v15, v14, Landroidx/paging/PageFetcherSnapshotState$Holder;->a:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object v8, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->b:Ljava/lang/Object;

    iput-object v13, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->c:Ljava/lang/Object;

    iput-object v12, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->d:Ljava/lang/Object;

    iput-object v11, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->e:Ljava/lang/Object;

    iput-object v9, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->f:Ljava/lang/Object;

    iput-object v0, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->g:Ljava/lang/Object;

    iput-object v7, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->h:Ljava/lang/Object;

    iput-object v5, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->i:Ljava/lang/Object;

    iput-object v1, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->j:Ljava/lang/Object;

    iput-object v14, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->k:Ljava/lang/Object;

    iput-object v15, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->l:Lkotlinx/coroutines/sync/MutexImpl;

    const/16 v2, 0x8

    iput v2, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->q:I

    invoke-virtual {v15, v3}, Lkotlinx/coroutines/sync/MutexImpl;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_1f

    goto/16 :goto_1f

    :cond_1f
    move-object/from16 v19, v5

    move-object v5, v1

    move-object v1, v14

    move-object v14, v13

    move-object v13, v12

    move-object v12, v11

    move-object v11, v9

    move-object v9, v8

    move-object v8, v7

    move-object/from16 v7, v19

    :goto_18
    :try_start_9
    iget-object v1, v1, Landroidx/paging/PageFetcherSnapshotState$Holder;->b:Landroidx/paging/PageFetcherSnapshotState;

    iget-object v2, v13, Landroidx/paging/GenerationalViewportHint;->b:Landroidx/paging/ViewportHint;

    invoke-virtual {v1, v5, v2}, Landroidx/paging/PageFetcherSnapshotState;->c(Landroidx/paging/LoadType;Landroidx/paging/ViewportHint;)Landroidx/paging/PageEvent$Drop;

    move-result-object v2

    if-eqz v2, :cond_21

    invoke-virtual {v1, v2}, Landroidx/paging/PageFetcherSnapshotState;->b(Landroidx/paging/PageEvent$Drop;)V

    iget-object v5, v9, Landroidx/paging/PageFetcherSnapshot;->j:Lkotlinx/coroutines/channels/BufferedChannel;

    iput-object v9, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->b:Ljava/lang/Object;

    iput-object v14, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->c:Ljava/lang/Object;

    iput-object v13, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->d:Ljava/lang/Object;

    iput-object v12, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->e:Ljava/lang/Object;

    iput-object v11, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->f:Ljava/lang/Object;

    iput-object v0, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->g:Ljava/lang/Object;

    iput-object v8, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->h:Ljava/lang/Object;

    iput-object v7, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->i:Ljava/lang/Object;

    iput-object v15, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->j:Ljava/lang/Object;

    iput-object v1, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->k:Ljava/lang/Object;

    const/4 v10, 0x0

    iput-object v10, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->l:Lkotlinx/coroutines/sync/MutexImpl;

    const/16 v10, 0x9

    iput v10, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->q:I

    invoke-interface {v5, v2, v3}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_20

    goto/16 :goto_1f

    :cond_20
    move-object v5, v7

    move-object v7, v8

    move-object v8, v0

    move-object v0, v1

    move-object v1, v15

    move-object v15, v9

    :goto_19
    move-object v9, v15

    move-object v15, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_1a

    :catchall_7
    move-exception v0

    move-object v1, v15

    goto/16 :goto_1

    :cond_21
    move-object v5, v7

    move-object v7, v8

    :goto_1a
    iget v2, v13, Landroidx/paging/GenerationalViewportHint;->a:I

    iget-object v8, v13, Landroidx/paging/GenerationalViewportHint;->b:Landroidx/paging/ViewportHint;

    invoke-virtual {v8, v14}, Landroidx/paging/ViewportHint;->a(Landroidx/paging/LoadType;)I

    move-result v8

    iget v10, v12, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    add-int/2addr v8, v10

    invoke-virtual {v9, v1, v14, v2, v8}, Landroidx/paging/PageFetcherSnapshot;->i(Landroidx/paging/PageFetcherSnapshotState;Landroidx/paging/LoadType;II)Ljava/lang/Object;

    move-result-object v2

    iget-object v8, v1, Landroidx/paging/PageFetcherSnapshotState;->l:Landroidx/paging/MutableLoadStateCollection;

    iput-object v2, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    if-nez v2, :cond_23

    invoke-virtual {v8, v14}, Landroidx/paging/MutableLoadStateCollection;->a(Landroidx/paging/LoadType;)Landroidx/paging/LoadState;

    move-result-object v2

    instance-of v2, v2, Landroidx/paging/LoadState$Error;

    if-nez v2, :cond_23

    iget-boolean v2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    if-eqz v2, :cond_22

    sget-object v2, Landroidx/paging/LoadState$NotLoading;->b:Landroidx/paging/LoadState$NotLoading$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/paging/LoadState$NotLoading;->c:Landroidx/paging/LoadState$NotLoading;

    goto :goto_1b

    :cond_22
    sget-object v2, Landroidx/paging/LoadState$NotLoading;->b:Landroidx/paging/LoadState$NotLoading$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/paging/LoadState$NotLoading;->d:Landroidx/paging/LoadState$NotLoading;

    :goto_1b
    invoke-virtual {v8, v14, v2}, Landroidx/paging/MutableLoadStateCollection;->c(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V

    :cond_23
    move-object v2, v5

    check-cast v2, Landroidx/paging/PagingSource$LoadResult$Page;

    invoke-virtual {v1, v2, v14}, Landroidx/paging/PageFetcherSnapshotState;->f(Landroidx/paging/PagingSource$LoadResult$Page;Landroidx/paging/LoadType;)Landroidx/paging/PageEvent$Insert;

    move-result-object v1

    iget-object v2, v9, Landroidx/paging/PageFetcherSnapshot;->j:Lkotlinx/coroutines/channels/BufferedChannel;

    iput-object v9, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->b:Ljava/lang/Object;

    iput-object v14, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->c:Ljava/lang/Object;

    iput-object v13, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->d:Ljava/lang/Object;

    iput-object v12, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->e:Ljava/lang/Object;

    iput-object v11, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->f:Ljava/lang/Object;

    iput-object v0, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->g:Ljava/lang/Object;

    iput-object v7, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->h:Ljava/lang/Object;

    iput-object v5, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->i:Ljava/lang/Object;

    iput-object v15, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->j:Ljava/lang/Object;

    const/4 v10, 0x0

    iput-object v10, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->k:Ljava/lang/Object;

    iput-object v10, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->l:Lkotlinx/coroutines/sync/MutexImpl;

    const/16 v8, 0xa

    iput v8, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->q:I

    invoke-interface {v2, v1, v3}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    if-ne v1, v4, :cond_24

    goto :goto_1f

    :cond_24
    move-object v1, v7

    move-object v7, v0

    move-object v0, v5

    move-object v5, v1

    move-object v8, v11

    move-object v11, v14

    move-object v1, v15

    move-object v14, v9

    move-object v9, v13

    :goto_1c
    invoke-interface {v1, v10}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    instance-of v1, v5, Landroidx/paging/PagingSource$LoadParams$Prepend;

    if-eqz v1, :cond_25

    move-object v1, v0

    check-cast v1, Landroidx/paging/PagingSource$LoadResult$Page;

    iget-object v1, v1, Landroidx/paging/PagingSource$LoadResult$Page;->c:Ljava/lang/Object;

    if-nez v1, :cond_25

    const/4 v1, 0x1

    goto :goto_1d

    :cond_25
    const/4 v1, 0x0

    :goto_1d
    instance-of v2, v5, Landroidx/paging/PagingSource$LoadParams$Append;

    if-eqz v2, :cond_26

    check-cast v0, Landroidx/paging/PagingSource$LoadResult$Page;

    iget-object v0, v0, Landroidx/paging/PagingSource$LoadResult$Page;->d:Ljava/lang/Object;

    if-nez v0, :cond_26

    const/4 v0, 0x1

    goto :goto_1e

    :cond_26
    const/4 v0, 0x0

    :goto_1e
    iget-object v2, v14, Landroidx/paging/PageFetcherSnapshot;->e:Landroidx/paging/RemoteMediatorConnection;

    if-eqz v2, :cond_2b

    if-nez v1, :cond_27

    if-eqz v0, :cond_2b

    :cond_27
    iget-object v2, v14, Landroidx/paging/PageFetcherSnapshot;->k:Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v5, v2, Landroidx/paging/PageFetcherSnapshotState$Holder;->a:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object v14, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->b:Ljava/lang/Object;

    iput-object v11, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->c:Ljava/lang/Object;

    iput-object v9, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->d:Ljava/lang/Object;

    iput-object v12, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->e:Ljava/lang/Object;

    iput-object v8, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->f:Ljava/lang/Object;

    iput-object v7, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->g:Ljava/lang/Object;

    iput-object v2, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->h:Ljava/lang/Object;

    iput-object v5, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->i:Ljava/lang/Object;

    const/4 v10, 0x0

    iput-object v10, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->j:Ljava/lang/Object;

    iput v1, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->m:I

    iput v0, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->n:I

    const/16 v10, 0xb

    iput v10, v3, Landroidx/paging/PageFetcherSnapshot$doLoad$1;->q:I

    invoke-virtual {v5, v3}, Lkotlinx/coroutines/sync/MutexImpl;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v4, :cond_28

    :goto_1f
    return-object v4

    :cond_28
    move-object v13, v7

    move-object v7, v8

    move-object v8, v12

    move-object v12, v2

    :goto_20
    :try_start_a
    iget-object v2, v12, Landroidx/paging/PageFetcherSnapshotState$Holder;->b:Landroidx/paging/PageFetcherSnapshotState;

    iget-object v10, v14, Landroidx/paging/PageFetcherSnapshot;->h:Landroidx/paging/HintHandler;

    iget-object v12, v14, Landroidx/paging/PageFetcherSnapshot;->e:Landroidx/paging/RemoteMediatorConnection;

    iget-object v10, v10, Landroidx/paging/HintHandler;->a:Landroidx/paging/HintHandler$State;

    iget-object v10, v10, Landroidx/paging/HintHandler$State;->c:Landroidx/paging/ViewportHint$Access;

    invoke-virtual {v2, v10}, Landroidx/paging/PageFetcherSnapshotState;->a(Landroidx/paging/ViewportHint$Access;)Landroidx/paging/PagingState;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    const/4 v10, 0x0

    invoke-interface {v5, v10}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    if-eqz v1, :cond_29

    sget-object v1, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    invoke-interface {v12, v1, v2}, Landroidx/paging/RemoteMediatorConnection;->e(Landroidx/paging/LoadType;Landroidx/paging/PagingState;)V

    :cond_29
    if-eqz v0, :cond_2a

    sget-object v0, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    invoke-interface {v12, v0, v2}, Landroidx/paging/RemoteMediatorConnection;->e(Landroidx/paging/LoadType;Landroidx/paging/PagingState;)V

    :cond_2a
    move-object v0, v13

    :goto_21
    move-object v12, v14

    const/4 v10, 0x1

    goto/16 :goto_d

    :catchall_8
    move-exception v0

    const/4 v10, 0x0

    invoke-interface {v5, v10}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw v0

    :cond_2b
    move-object v0, v7

    move-object v7, v8

    move-object v8, v12

    goto :goto_21

    :goto_22
    invoke-interface {v1, v5}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw v0

    :cond_2c
    :goto_23
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :goto_24
    invoke-interface {v5, v10}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw v0

    :cond_2d
    :try_start_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :goto_25
    invoke-interface {v2, v5}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw v0

    :cond_2e
    const/4 v5, 0x0

    invoke-static {v6}, Lmd;->n(Ljava/lang/String;)V

    return-object v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final c(Landroidx/paging/PageFetcherSnapshot;Landroidx/paging/LoadType;Landroidx/paging/ViewportHint;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/paging/PageFetcherSnapshot$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    check-cast p3, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    invoke-virtual {p0, p3}, Landroidx/paging/PageFetcherSnapshot;->f(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_1
    const/4 p3, 0x0

    if-eqz p2, :cond_4

    iget-object p0, p0, Landroidx/paging/PageFetcherSnapshot;->h:Landroidx/paging/HintHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    if-eq p1, v0, :cond_3

    sget-object v0, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "invalid load type for reset: "

    invoke-static {p1, p0}, Ltg0;->n(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p3

    :cond_3
    :goto_0
    iget-object p0, p0, Landroidx/paging/HintHandler;->a:Landroidx/paging/HintHandler$State;

    new-instance v0, Landroidx/paging/HintHandler$forceSetHint$2;

    invoke-direct {v0, p1, p2}, Landroidx/paging/HintHandler$forceSetHint$2;-><init>(Landroidx/paging/LoadType;Landroidx/paging/ViewportHint;)V

    invoke-virtual {p0, p3, v0}, Landroidx/paging/HintHandler$State;->a(Landroidx/paging/ViewportHint$Access;Lkotlin/jvm/functions/Function2;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_4
    const-string p0, "Cannot retry APPEND / PREPEND load on PagingSource without ViewportHint"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object p3
.end method

.method public static final d(Landroidx/paging/PageFetcherSnapshot;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 4

    iget-object v0, p0, Landroidx/paging/PageFetcherSnapshot;->c:Landroidx/paging/PagingConfig;

    iget v0, v0, Landroidx/paging/PagingConfig;->f:I

    const/high16 v1, -0x80000000

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    new-instance v0, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$1;

    invoke-direct {v0, p0, v3}, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$1;-><init>(Landroidx/paging/PageFetcherSnapshot;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v3, v3, v0, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_0
    new-instance v0, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;

    invoke-direct {v0, p0, v3}, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$2;-><init>(Landroidx/paging/PageFetcherSnapshot;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v3, v3, v0, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v0, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$3;

    invoke-direct {v0, p0, v3}, Landroidx/paging/PageFetcherSnapshot$startConsumingHints$3;-><init>(Landroidx/paging/PageFetcherSnapshot;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v3, v3, v0, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static h(Landroidx/paging/LoadType;Ljava/lang/Object;Landroidx/paging/PagingSource$LoadResult;)V
    .locals 0

    if-nez p2, :cond_0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    return-void

    :cond_0
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final e(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Landroidx/paging/PageFetcherSnapshot$currentPagingState$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/paging/PageFetcherSnapshot$currentPagingState$1;

    iget v1, v0, Landroidx/paging/PageFetcherSnapshot$currentPagingState$1;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/paging/PageFetcherSnapshot$currentPagingState$1;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/paging/PageFetcherSnapshot$currentPagingState$1;

    invoke-direct {v0, p0, p1}, Landroidx/paging/PageFetcherSnapshot$currentPagingState$1;-><init>(Landroidx/paging/PageFetcherSnapshot;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Landroidx/paging/PageFetcherSnapshot$currentPagingState$1;->e:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/paging/PageFetcherSnapshot$currentPagingState$1;->g:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Landroidx/paging/PageFetcherSnapshot$currentPagingState$1;->d:Lkotlinx/coroutines/sync/MutexImpl;

    iget-object v1, v0, Landroidx/paging/PageFetcherSnapshot$currentPagingState$1;->c:Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v0, v0, Landroidx/paging/PageFetcherSnapshot$currentPagingState$1;->b:Landroidx/paging/PageFetcherSnapshot;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v2, p0

    move-object p0, v0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/paging/PageFetcherSnapshot;->k:Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v2, p1, Landroidx/paging/PageFetcherSnapshotState$Holder;->a:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object p0, v0, Landroidx/paging/PageFetcherSnapshot$currentPagingState$1;->b:Landroidx/paging/PageFetcherSnapshot;

    iput-object p1, v0, Landroidx/paging/PageFetcherSnapshot$currentPagingState$1;->c:Landroidx/paging/PageFetcherSnapshotState$Holder;

    iput-object v2, v0, Landroidx/paging/PageFetcherSnapshot$currentPagingState$1;->d:Lkotlinx/coroutines/sync/MutexImpl;

    iput v3, v0, Landroidx/paging/PageFetcherSnapshot$currentPagingState$1;->g:I

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/sync/MutexImpl;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v1, p1

    :goto_1
    :try_start_0
    iget-object p1, v1, Landroidx/paging/PageFetcherSnapshotState$Holder;->b:Landroidx/paging/PageFetcherSnapshotState;

    iget-object p0, p0, Landroidx/paging/PageFetcherSnapshot;->h:Landroidx/paging/HintHandler;

    iget-object p0, p0, Landroidx/paging/HintHandler;->a:Landroidx/paging/HintHandler$State;

    iget-object p0, p0, Landroidx/paging/HintHandler$State;->c:Landroidx/paging/ViewportHint$Access;

    invoke-virtual {p1, p0}, Landroidx/paging/PageFetcherSnapshotState;->a(Landroidx/paging/ViewportHint$Access;)Landroidx/paging/PagingState;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2, v4}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {v2, v4}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw p0
.end method

.method public final f(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p1, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;

    iget v1, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;

    invoke-direct {v0, p0, p1}, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;-><init>(Landroidx/paging/PageFetcherSnapshot;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->f:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->h:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :pswitch_0
    iget-object p0, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->b:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_e

    :catchall_0
    move-exception p1

    goto/16 :goto_f

    :pswitch_1
    iget-object p0, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->e:Lkotlinx/coroutines/sync/MutexImpl;

    iget-object v2, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->d:Ljava/lang/Object;

    check-cast v2, Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v3, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->c:Ljava/lang/Object;

    check-cast v3, Landroidx/paging/PagingSource$LoadResult;

    iget-object v4, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->b:Ljava/lang/Object;

    check-cast v4, Landroidx/paging/PageFetcherSnapshot;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_2
    iget-object p0, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->e:Lkotlinx/coroutines/sync/MutexImpl;

    iget-object v1, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v2, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->c:Ljava/lang/Object;

    check-cast v2, Landroidx/paging/PagingSource$LoadResult;

    iget-object v0, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/paging/PageFetcherSnapshot;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_3
    iget-object p0, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->d:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->c:Ljava/lang/Object;

    check-cast v2, Landroidx/paging/PagingSource$LoadResult;

    iget-object v3, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->b:Ljava/lang/Object;

    check-cast v3, Landroidx/paging/PageFetcherSnapshot;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_7

    :catchall_1
    move-exception p1

    goto/16 :goto_8

    :pswitch_4
    iget-object p0, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->e:Lkotlinx/coroutines/sync/MutexImpl;

    iget-object v2, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->d:Ljava/lang/Object;

    check-cast v2, Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v3, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->c:Ljava/lang/Object;

    check-cast v3, Landroidx/paging/PagingSource$LoadResult;

    iget-object v4, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->b:Ljava/lang/Object;

    check-cast v4, Landroidx/paging/PageFetcherSnapshot;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_5
    iget-object p0, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->e:Lkotlinx/coroutines/sync/MutexImpl;

    iget-object v2, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->d:Ljava/lang/Object;

    check-cast v2, Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v6, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->c:Ljava/lang/Object;

    check-cast v6, Landroidx/paging/PagingSource$LoadResult;

    iget-object v7, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->b:Ljava/lang/Object;

    check-cast v7, Landroidx/paging/PageFetcherSnapshot;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_6
    iget-object p0, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/paging/PageFetcherSnapshot;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_7
    iget-object p0, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->c:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/paging/PageFetcherSnapshot;

    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    goto/16 :goto_11

    :pswitch_8
    iget-object p0, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->d:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->c:Ljava/lang/Object;

    check-cast v2, Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v6, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->b:Ljava/lang/Object;

    check-cast v6, Landroidx/paging/PageFetcherSnapshot;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v6

    goto :goto_1

    :pswitch_9
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, p0, Landroidx/paging/PageFetcherSnapshot;->k:Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object p1, v2, Landroidx/paging/PageFetcherSnapshotState$Holder;->a:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object p0, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->b:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->c:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->d:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->h:I

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/sync/MutexImpl;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_1

    goto/16 :goto_d

    :cond_1
    :goto_1
    :try_start_3
    iget-object v2, v2, Landroidx/paging/PageFetcherSnapshotState$Holder;->b:Landroidx/paging/PageFetcherSnapshotState;

    sget-object v6, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    iput-object p0, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->b:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->c:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->d:Ljava/lang/Object;

    iput v4, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->h:I

    invoke-virtual {p0, v2, v6, v0}, Landroidx/paging/PageFetcherSnapshot;->k(Landroidx/paging/PageFetcherSnapshotState;Landroidx/paging/LoadType;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-ne v2, v1, :cond_2

    goto/16 :goto_d

    :cond_2
    move-object v2, p0

    move-object p0, p1

    :goto_2
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    sget-object p0, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    iget-object p1, v2, Landroidx/paging/PageFetcherSnapshot;->a:Ljava/lang/Object;

    iget-object v6, v2, Landroidx/paging/PageFetcherSnapshot;->b:Landroidx/paging/PagingSource;

    invoke-virtual {v2, p0, p1}, Landroidx/paging/PageFetcherSnapshot;->g(Landroidx/paging/LoadType;Ljava/lang/Object;)Landroidx/paging/PagingSource$LoadParams;

    move-result-object p0

    invoke-static {v3}, Landroidx/paging/PagingLogger;->a(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, v2, Landroidx/paging/PageFetcherSnapshot;->a:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_3
    iput-object v2, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->b:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->c:Ljava/lang/Object;

    iput v3, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->h:I

    invoke-virtual {v6, p0, v0}, Landroidx/paging/PagingSource;->b(Landroidx/paging/PagingSource$LoadParams;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto/16 :goto_d

    :cond_4
    move-object p0, v2

    :goto_3
    check-cast p1, Landroidx/paging/PagingSource$LoadResult;

    instance-of v2, p1, Landroidx/paging/PagingSource$LoadResult$Page;

    if-eqz v2, :cond_10

    iget-object v2, p0, Landroidx/paging/PageFetcherSnapshot;->k:Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v6, v2, Landroidx/paging/PageFetcherSnapshotState$Holder;->a:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object p0, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->b:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->c:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->d:Ljava/lang/Object;

    iput-object v6, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->e:Lkotlinx/coroutines/sync/MutexImpl;

    const/4 v7, 0x4

    iput v7, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->h:I

    invoke-virtual {v6, v0}, Lkotlinx/coroutines/sync/MutexImpl;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_5

    goto/16 :goto_d

    :cond_5
    move-object v7, p0

    move-object p0, v6

    move-object v6, p1

    :goto_4
    :try_start_4
    iget-object p1, v2, Landroidx/paging/PageFetcherSnapshotState$Holder;->b:Landroidx/paging/PageFetcherSnapshotState;

    sget-object v2, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    move-object v8, v6

    check-cast v8, Landroidx/paging/PagingSource$LoadResult$Page;

    const/4 v9, 0x0

    invoke-virtual {p1, v9, v2, v8}, Landroidx/paging/PageFetcherSnapshotState;->e(ILandroidx/paging/LoadType;Landroidx/paging/PagingSource$LoadResult$Page;)Z

    move-result v8

    iget-object p1, p1, Landroidx/paging/PageFetcherSnapshotState;->l:Landroidx/paging/MutableLoadStateCollection;

    sget-object v9, Landroidx/paging/LoadState$NotLoading;->b:Landroidx/paging/LoadState$NotLoading$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/paging/LoadState$NotLoading;->d:Landroidx/paging/LoadState$NotLoading;

    invoke-virtual {p1, v2, v9}, Landroidx/paging/MutableLoadStateCollection;->c(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V

    move-object v9, v6

    check-cast v9, Landroidx/paging/PagingSource$LoadResult$Page;

    iget-object v9, v9, Landroidx/paging/PagingSource$LoadResult$Page;->c:Ljava/lang/Object;

    if-nez v9, :cond_6

    sget-object v9, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    sget-object v10, Landroidx/paging/LoadState$NotLoading;->c:Landroidx/paging/LoadState$NotLoading;

    invoke-virtual {p1, v9, v10}, Landroidx/paging/MutableLoadStateCollection;->c(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V

    goto :goto_5

    :catchall_3
    move-exception p1

    goto/16 :goto_b

    :cond_6
    :goto_5
    move-object v9, v6

    check-cast v9, Landroidx/paging/PagingSource$LoadResult$Page;

    iget-object v9, v9, Landroidx/paging/PagingSource$LoadResult$Page;->d:Ljava/lang/Object;

    if-nez v9, :cond_7

    sget-object v9, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    sget-object v10, Landroidx/paging/LoadState$NotLoading;->c:Landroidx/paging/LoadState$NotLoading;

    invoke-virtual {p1, v9, v10}, Landroidx/paging/MutableLoadStateCollection;->c(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_7
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    if-eqz v8, :cond_b

    invoke-static {v3}, Landroidx/paging/PagingLogger;->a(I)Z

    move-result p0

    if-eqz p0, :cond_8

    iget-object p0, v7, Landroidx/paging/PageFetcherSnapshot;->a:Ljava/lang/Object;

    invoke-static {v2, p0, v6}, Landroidx/paging/PageFetcherSnapshot;->h(Landroidx/paging/LoadType;Ljava/lang/Object;Landroidx/paging/PagingSource$LoadResult;)V

    :cond_8
    iget-object v2, v7, Landroidx/paging/PageFetcherSnapshot;->k:Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object p0, v2, Landroidx/paging/PageFetcherSnapshotState$Holder;->a:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object v7, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->b:Ljava/lang/Object;

    iput-object v6, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->c:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->d:Ljava/lang/Object;

    iput-object p0, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->e:Lkotlinx/coroutines/sync/MutexImpl;

    const/4 p1, 0x5

    iput p1, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->h:I

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/sync/MutexImpl;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    goto/16 :goto_d

    :cond_9
    move-object v3, v6

    move-object v4, v7

    :goto_6
    :try_start_5
    iget-object p1, v2, Landroidx/paging/PageFetcherSnapshotState$Holder;->b:Landroidx/paging/PageFetcherSnapshotState;

    iget-object v2, v4, Landroidx/paging/PageFetcherSnapshot;->j:Lkotlinx/coroutines/channels/BufferedChannel;

    move-object v6, v3

    check-cast v6, Landroidx/paging/PagingSource$LoadResult$Page;

    sget-object v7, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    invoke-virtual {p1, v6, v7}, Landroidx/paging/PageFetcherSnapshotState;->f(Landroidx/paging/PagingSource$LoadResult$Page;Landroidx/paging/LoadType;)Landroidx/paging/PageEvent$Insert;

    move-result-object p1

    iput-object v4, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->b:Ljava/lang/Object;

    iput-object v3, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->c:Ljava/lang/Object;

    iput-object p0, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->d:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->e:Lkotlinx/coroutines/sync/MutexImpl;

    const/4 v6, 0x6

    iput v6, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->h:I

    invoke-interface {v2, p1, v0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-ne p1, v1, :cond_a

    goto/16 :goto_d

    :cond_a
    move-object v2, v3

    move-object v3, v4

    :goto_7
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    goto :goto_9

    :goto_8
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw p1

    :cond_b
    invoke-static {v4}, Landroidx/paging/PagingLogger;->a(I)Z

    move-result p0

    if-eqz p0, :cond_c

    iget-object p0, v7, Landroidx/paging/PageFetcherSnapshot;->a:Ljava/lang/Object;

    invoke-static {v2, p0, v5}, Landroidx/paging/PageFetcherSnapshot;->h(Landroidx/paging/LoadType;Ljava/lang/Object;Landroidx/paging/PagingSource$LoadResult;)V

    :cond_c
    move-object v2, v6

    move-object v3, v7

    :goto_9
    iget-object p0, v3, Landroidx/paging/PageFetcherSnapshot;->e:Landroidx/paging/RemoteMediatorConnection;

    if-eqz p0, :cond_16

    move-object p0, v2

    check-cast p0, Landroidx/paging/PagingSource$LoadResult$Page;

    iget-object p1, p0, Landroidx/paging/PagingSource$LoadResult$Page;->c:Ljava/lang/Object;

    if-eqz p1, :cond_d

    iget-object p0, p0, Landroidx/paging/PagingSource$LoadResult$Page;->d:Ljava/lang/Object;

    if-nez p0, :cond_16

    :cond_d
    iget-object p0, v3, Landroidx/paging/PageFetcherSnapshot;->k:Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object p1, p0, Landroidx/paging/PageFetcherSnapshotState$Holder;->a:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object v3, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->b:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->c:Ljava/lang/Object;

    iput-object p0, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->d:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->e:Lkotlinx/coroutines/sync/MutexImpl;

    const/4 v4, 0x7

    iput v4, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->h:I

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/sync/MutexImpl;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_e

    goto/16 :goto_d

    :cond_e
    move-object v1, p0

    move-object p0, p1

    move-object v0, v3

    :goto_a
    :try_start_6
    iget-object p1, v1, Landroidx/paging/PageFetcherSnapshotState$Holder;->b:Landroidx/paging/PageFetcherSnapshotState;

    iget-object v1, v0, Landroidx/paging/PageFetcherSnapshot;->h:Landroidx/paging/HintHandler;

    iget-object v0, v0, Landroidx/paging/PageFetcherSnapshot;->e:Landroidx/paging/RemoteMediatorConnection;

    iget-object v1, v1, Landroidx/paging/HintHandler;->a:Landroidx/paging/HintHandler$State;

    iget-object v1, v1, Landroidx/paging/HintHandler$State;->c:Landroidx/paging/ViewportHint$Access;

    invoke-virtual {p1, v1}, Landroidx/paging/PageFetcherSnapshotState;->a(Landroidx/paging/ViewportHint$Access;)Landroidx/paging/PagingState;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    check-cast v2, Landroidx/paging/PagingSource$LoadResult$Page;

    iget-object p0, v2, Landroidx/paging/PagingSource$LoadResult$Page;->c:Ljava/lang/Object;

    if-nez p0, :cond_f

    sget-object p0, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    invoke-interface {v0, p0, p1}, Landroidx/paging/RemoteMediatorConnection;->e(Landroidx/paging/LoadType;Landroidx/paging/PagingState;)V

    :cond_f
    iget-object p0, v2, Landroidx/paging/PagingSource$LoadResult$Page;->d:Ljava/lang/Object;

    if-nez p0, :cond_16

    sget-object p0, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    invoke-interface {v0, p0, p1}, Landroidx/paging/RemoteMediatorConnection;->e(Landroidx/paging/LoadType;Landroidx/paging/PagingState;)V

    goto/16 :goto_10

    :catchall_4
    move-exception p1

    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw p1

    :goto_b
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw p1

    :cond_10
    instance-of v2, p1, Landroidx/paging/PagingSource$LoadResult$Error;

    if-eqz v2, :cond_14

    invoke-static {v4}, Landroidx/paging/PagingLogger;->a(I)Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object v2, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    iget-object v3, p0, Landroidx/paging/PageFetcherSnapshot;->a:Ljava/lang/Object;

    invoke-static {v2, v3, p1}, Landroidx/paging/PageFetcherSnapshot;->h(Landroidx/paging/LoadType;Ljava/lang/Object;Landroidx/paging/PagingSource$LoadResult;)V

    :cond_11
    iget-object v2, p0, Landroidx/paging/PageFetcherSnapshot;->k:Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v3, v2, Landroidx/paging/PageFetcherSnapshotState$Holder;->a:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object p0, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->b:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->c:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->d:Ljava/lang/Object;

    iput-object v3, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->e:Lkotlinx/coroutines/sync/MutexImpl;

    const/16 v4, 0x8

    iput v4, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->h:I

    invoke-virtual {v3, v0}, Lkotlinx/coroutines/sync/MutexImpl;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_12

    goto :goto_d

    :cond_12
    move-object v4, p0

    move-object p0, v3

    move-object v3, p1

    :goto_c
    :try_start_7
    iget-object p1, v2, Landroidx/paging/PageFetcherSnapshotState$Holder;->b:Landroidx/paging/PageFetcherSnapshotState;

    new-instance v2, Landroidx/paging/LoadState$Error;

    check-cast v3, Landroidx/paging/PagingSource$LoadResult$Error;

    iget-object v3, v3, Landroidx/paging/PagingSource$LoadResult$Error;->b:Ljava/lang/Throwable;

    invoke-direct {v2, v3}, Landroidx/paging/LoadState$Error;-><init>(Ljava/lang/Throwable;)V

    sget-object v3, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    iput-object p0, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->b:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->c:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->d:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->e:Lkotlinx/coroutines/sync/MutexImpl;

    const/16 v6, 0x9

    iput v6, v0, Landroidx/paging/PageFetcherSnapshot$doInitialLoad$1;->h:I

    invoke-virtual {v4, p1, v3, v2, v0}, Landroidx/paging/PageFetcherSnapshot;->j(Landroidx/paging/PageFetcherSnapshotState;Landroidx/paging/LoadType;Landroidx/paging/LoadState$Error;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-ne p1, v1, :cond_13

    :goto_d
    return-object v1

    :cond_13
    :goto_e
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :goto_f
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw p1

    :cond_14
    instance-of v0, p1, Landroidx/paging/PagingSource$LoadResult$Invalid;

    if-eqz v0, :cond_16

    invoke-static {v4}, Landroidx/paging/PagingLogger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    iget-object v1, p0, Landroidx/paging/PageFetcherSnapshot;->a:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Landroidx/paging/PageFetcherSnapshot;->h(Landroidx/paging/LoadType;Ljava/lang/Object;Landroidx/paging/PagingSource$LoadResult;)V

    :cond_15
    iget-object p1, p0, Landroidx/paging/PageFetcherSnapshot;->l:Lkotlinx/coroutines/JobImpl;

    invoke-interface {p1, v5}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    iget-object p0, p0, Landroidx/paging/PageFetcherSnapshot;->b:Landroidx/paging/PagingSource;

    iget-object p1, p0, Landroidx/paging/PagingSource;->a:Landroidx/paging/InvalidateCallbackTracker;

    invoke-virtual {p1}, Landroidx/paging/InvalidateCallbackTracker;->a()Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-static {v3}, Landroidx/paging/PagingLogger;->a(I)Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_16
    :goto_10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :catchall_5
    move-exception p0

    move-object v11, p1

    move-object p1, p0

    move-object p0, v11

    :goto_11
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Landroidx/paging/LoadType;Ljava/lang/Object;)Landroidx/paging/PagingSource$LoadParams;
    .locals 3

    sget-object v0, Landroidx/paging/PagingSource$LoadParams;->a:Landroidx/paging/PagingSource$LoadParams$Companion;

    sget-object v1, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    iget-object p0, p0, Landroidx/paging/PageFetcherSnapshot;->c:Landroidx/paging/PagingConfig;

    if-ne p1, v1, :cond_0

    iget v1, p0, Landroidx/paging/PagingConfig;->d:I

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/paging/PagingConfig;->a:I

    :goto_0
    iget-boolean p0, p0, Landroidx/paging/PagingConfig;->c:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/paging/PagingSource$LoadParams$Companion$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_1

    new-instance p1, Landroidx/paging/PagingSource$LoadParams$Append;

    invoke-direct {p1, p2, v1, p0}, Landroidx/paging/PagingSource$LoadParams$Append;-><init>(Ljava/lang/Object;IZ)V

    return-object p1

    :cond_1
    const-string p0, "key cannot be null for append"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v2

    :cond_2
    invoke-static {}, Lv40;->g()V

    return-object v2

    :cond_3
    if-eqz p2, :cond_4

    new-instance p1, Landroidx/paging/PagingSource$LoadParams$Prepend;

    invoke-direct {p1, p2, v1, p0}, Landroidx/paging/PagingSource$LoadParams$Prepend;-><init>(Ljava/lang/Object;IZ)V

    return-object p1

    :cond_4
    const-string p0, "key cannot be null for prepend"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v2

    :cond_5
    new-instance p1, Landroidx/paging/PagingSource$LoadParams$Refresh;

    invoke-direct {p1, p2, v1, p0}, Landroidx/paging/PagingSource$LoadParams$Refresh;-><init>(Ljava/lang/Object;IZ)V

    return-object p1
.end method

.method public final i(Landroidx/paging/PageFetcherSnapshotState;Landroidx/paging/LoadType;II)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/paging/PageFetcherSnapshotState$WhenMappings;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroidx/paging/PageFetcherSnapshotState;->h:I

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-object v2

    :cond_1
    iget v0, p1, Landroidx/paging/PageFetcherSnapshotState;->g:I

    :goto_0
    if-eq p3, v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p3, p1, Landroidx/paging/PageFetcherSnapshotState;->l:Landroidx/paging/MutableLoadStateCollection;

    invoke-virtual {p3, p2}, Landroidx/paging/MutableLoadStateCollection;->a(Landroidx/paging/LoadType;)Landroidx/paging/LoadState;

    move-result-object p3

    instance-of p3, p3, Landroidx/paging/LoadState$Error;

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    iget-object p0, p0, Landroidx/paging/PageFetcherSnapshot;->c:Landroidx/paging/PagingConfig;

    iget p0, p0, Landroidx/paging/PagingConfig;->b:I

    if-lt p4, p0, :cond_4

    :goto_1
    return-object v2

    :cond_4
    sget-object p0, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    iget-object p1, p1, Landroidx/paging/PageFetcherSnapshotState;->c:Ljava/util/ArrayList;

    if-ne p2, p0, :cond_5

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/paging/PagingSource$LoadResult$Page;

    iget-object p0, p0, Landroidx/paging/PagingSource$LoadResult$Page;->c:Ljava/lang/Object;

    return-object p0

    :cond_5
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->M(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/paging/PagingSource$LoadResult$Page;

    iget-object p0, p0, Landroidx/paging/PagingSource$LoadResult$Page;->d:Ljava/lang/Object;

    return-object p0

    :cond_6
    const-string p0, "Cannot get loadId for loadType: REFRESH"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v2
.end method

.method public final j(Landroidx/paging/PageFetcherSnapshotState;Landroidx/paging/LoadType;Landroidx/paging/LoadState$Error;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 1

    iget-object p1, p1, Landroidx/paging/PageFetcherSnapshotState;->l:Landroidx/paging/MutableLoadStateCollection;

    invoke-virtual {p1, p2}, Landroidx/paging/MutableLoadStateCollection;->a(Landroidx/paging/LoadType;)Landroidx/paging/LoadState;

    move-result-object v0

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p2, p3}, Landroidx/paging/MutableLoadStateCollection;->c(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V

    new-instance p2, Landroidx/paging/PageEvent$LoadStateUpdate;

    invoke-virtual {p1}, Landroidx/paging/MutableLoadStateCollection;->d()Landroidx/paging/LoadStates;

    move-result-object p1

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Landroidx/paging/PageEvent$LoadStateUpdate;-><init>(Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V

    iget-object p0, p0, Landroidx/paging/PageFetcherSnapshot;->j:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p0, p2, p4}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final k(Landroidx/paging/PageFetcherSnapshotState;Landroidx/paging/LoadType;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 2

    iget-object p1, p1, Landroidx/paging/PageFetcherSnapshotState;->l:Landroidx/paging/MutableLoadStateCollection;

    invoke-virtual {p1, p2}, Landroidx/paging/MutableLoadStateCollection;->a(Landroidx/paging/LoadType;)Landroidx/paging/LoadState;

    move-result-object v0

    sget-object v1, Landroidx/paging/LoadState$Loading;->b:Landroidx/paging/LoadState$Loading;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p2, v1}, Landroidx/paging/MutableLoadStateCollection;->c(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V

    new-instance p2, Landroidx/paging/PageEvent$LoadStateUpdate;

    invoke-virtual {p1}, Landroidx/paging/MutableLoadStateCollection;->d()Landroidx/paging/LoadStates;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Landroidx/paging/PageEvent$LoadStateUpdate;-><init>(Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V

    iget-object p0, p0, Landroidx/paging/PageFetcherSnapshot;->j:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-interface {p0, p2, p3}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
