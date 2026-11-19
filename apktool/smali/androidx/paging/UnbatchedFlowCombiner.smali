.class public final Landroidx/paging/UnbatchedFlowCombiner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u00022\u00020\u0003Bd\u0012[\u0010\r\u001aW\u0008\u0001\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\u0013\u0012\u00118\u0001\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0008\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\n\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0004\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/paging/UnbatchedFlowCombiner;",
        "T1",
        "T2",
        "",
        "Lkotlin/Function4;",
        "Lkotlin/ParameterName;",
        "name",
        "t1",
        "t2",
        "Landroidx/paging/CombineSource;",
        "updateFrom",
        "Lkotlin/coroutines/Continuation;",
        "",
        "send",
        "<init>",
        "(Lkotlin/jvm/functions/Function4;)V",
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
.field public final a:Lkotlin/jvm/functions/Function4;

.field public final b:Lkotlinx/coroutines/CompletableDeferred;

.field public final c:Lkotlinx/coroutines/sync/MutexImpl;

.field public final d:[Lkotlinx/coroutines/CompletableDeferred;

.field public final e:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function4;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function4<",
            "-TT1;-TT2;-",
            "Landroidx/paging/CombineSource;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/paging/UnbatchedFlowCombiner;->a:Lkotlin/jvm/functions/Function4;

    invoke-static {}, Lkotlinx/coroutines/CompletableDeferredKt;->a()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    iput-object p1, p0, Landroidx/paging/UnbatchedFlowCombiner;->b:Lkotlinx/coroutines/CompletableDeferred;

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->a()Lkotlinx/coroutines/sync/MutexImpl;

    move-result-object p1

    iput-object p1, p0, Landroidx/paging/UnbatchedFlowCombiner;->c:Lkotlinx/coroutines/sync/MutexImpl;

    const/4 p1, 0x2

    new-array v0, p1, [Lkotlinx/coroutines/CompletableDeferred;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    invoke-static {}, Lkotlinx/coroutines/CompletableDeferredKt;->a()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Landroidx/paging/UnbatchedFlowCombiner;->d:[Lkotlinx/coroutines/CompletableDeferred;

    new-array v0, p1, [Ljava/lang/Object;

    :goto_1
    if-ge v1, p1, :cond_1

    sget-object v2, Landroidx/paging/FlowExtKt;->a:Ljava/lang/Object;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iput-object v0, p0, Landroidx/paging/UnbatchedFlowCombiner;->e:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p3, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;

    iget v1, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;

    invoke-direct {v0, p0, p3}, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;-><init>(Landroidx/paging/UnbatchedFlowCombiner;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->f:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->h:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->c:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->b:Landroidx/paging/UnbatchedFlowCombiner;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_8

    :catchall_0
    move-exception p1

    goto/16 :goto_a

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :cond_2
    iget p0, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->e:I

    iget-object p1, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->d:Lkotlinx/coroutines/sync/MutexImpl;

    iget-object p2, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->c:Ljava/lang/Object;

    iget-object v2, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->b:Landroidx/paging/UnbatchedFlowCombiner;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget p1, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->e:I

    iget-object p2, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->c:Ljava/lang/Object;

    iget-object p0, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->b:Landroidx/paging/UnbatchedFlowCombiner;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p3, p0, Landroidx/paging/UnbatchedFlowCombiner;->d:[Lkotlinx/coroutines/CompletableDeferred;

    aget-object v2, p3, p1

    invoke-interface {v2}, Lkotlinx/coroutines/Job;->isCompleted()Z

    move-result v2

    if-eqz v2, :cond_5

    iput-object p0, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->b:Landroidx/paging/UnbatchedFlowCombiner;

    iput-object p2, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->c:Ljava/lang/Object;

    iput p1, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->e:I

    iput v5, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->h:I

    iget-object p3, p0, Landroidx/paging/UnbatchedFlowCombiner;->b:Lkotlinx/coroutines/CompletableDeferred;

    invoke-interface {p3, v0}, Lkotlinx/coroutines/Deferred;->k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6

    goto/16 :goto_7

    :cond_5
    aget-object p3, p3, p1

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {p3, v2}, Lkotlinx/coroutines/CompletableDeferred;->g(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    iget-object p3, p0, Landroidx/paging/UnbatchedFlowCombiner;->c:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object p0, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->b:Landroidx/paging/UnbatchedFlowCombiner;

    iput-object p2, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->c:Ljava/lang/Object;

    iput-object p3, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->d:Lkotlinx/coroutines/sync/MutexImpl;

    iput p1, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->e:I

    iput v4, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->h:I

    invoke-virtual {p3, v0}, Lkotlinx/coroutines/sync/MutexImpl;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_7

    goto :goto_7

    :cond_7
    move-object v2, p0

    move p0, p1

    move-object p1, p3

    :goto_2
    :try_start_1
    iget-object p3, v2, Landroidx/paging/UnbatchedFlowCombiner;->e:[Ljava/lang/Object;

    array-length v4, p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v7, 0x0

    move v8, v7

    :goto_3
    sget-object v9, Landroidx/paging/FlowExtKt;->a:Ljava/lang/Object;

    if-ge v8, v4, :cond_9

    :try_start_2
    aget-object v10, p3, v8

    if-ne v10, v9, :cond_8

    move v4, v5

    goto :goto_4

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v11, p1

    move-object p1, p0

    move-object p0, v11

    goto :goto_a

    :cond_9
    move v4, v7

    :goto_4
    aput-object p2, p3, p0

    array-length p2, p3

    move v8, v7

    :goto_5
    if-ge v8, p2, :cond_b

    aget-object v10, p3, v8

    if-ne v10, v9, :cond_a

    goto :goto_9

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_b
    if-eqz v4, :cond_c

    sget-object p0, Landroidx/paging/CombineSource;->INITIAL:Landroidx/paging/CombineSource;

    goto :goto_6

    :cond_c
    if-nez p0, :cond_d

    sget-object p0, Landroidx/paging/CombineSource;->RECEIVER:Landroidx/paging/CombineSource;

    goto :goto_6

    :cond_d
    sget-object p0, Landroidx/paging/CombineSource;->OTHER:Landroidx/paging/CombineSource;

    :goto_6
    iget-object p2, v2, Landroidx/paging/UnbatchedFlowCombiner;->a:Lkotlin/jvm/functions/Function4;

    aget-object v4, p3, v7

    aget-object p3, p3, v5

    iput-object v2, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->b:Landroidx/paging/UnbatchedFlowCombiner;

    iput-object p1, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->c:Ljava/lang/Object;

    iput-object v6, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->d:Lkotlinx/coroutines/sync/MutexImpl;

    iput v3, v0, Landroidx/paging/UnbatchedFlowCombiner$onNext$1;->h:I

    invoke-interface {p2, v4, p3, p0, v0}, Lkotlin/jvm/functions/Function4;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne p0, v1, :cond_e

    :goto_7
    return-object v1

    :cond_e
    move-object p0, p1

    move-object p1, v2

    :goto_8
    :try_start_3
    iget-object p1, p1, Landroidx/paging/UnbatchedFlowCombiner;->b:Lkotlinx/coroutines/CompletableDeferred;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {p1, p2}, Lkotlinx/coroutines/CompletableDeferred;->g(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object p1, p0

    :goto_9
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :goto_a
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw p1
.end method
