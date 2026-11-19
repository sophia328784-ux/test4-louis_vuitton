.class final Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003\"\u0008\u0008\u0001\u0010\u0004*\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0001H\u008a@\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "Key",
        "",
        "Value",
        "it",
        "emit",
        "(Lkotlin/Unit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Landroidx/paging/PageFetcherSnapshot;

.field public final synthetic c:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Landroidx/paging/PageFetcherSnapshot;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1;->b:Landroidx/paging/PageFetcherSnapshot;

    iput-object p2, p0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1;->c:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method


# virtual methods
.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;

    iget v1, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->l:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->l:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;

    invoke-direct {v0, p0, p1}, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;-><init>(Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->j:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->l:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :pswitch_0
    iget-object p0, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->e:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v2, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->c:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/paging/PageFetcherSnapshot;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_1b

    :pswitch_1
    iget-object p0, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/paging/LoadType;

    iget-object v2, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->c:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    iget-object v3, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->b:Ljava/lang/Object;

    check-cast v3, Landroidx/paging/PageFetcherSnapshot;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_19

    :pswitch_2
    iget-object p0, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->h:Ljava/lang/Object;

    check-cast p0, Landroidx/paging/PageFetcherSnapshot;

    iget-object v2, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->g:Ljava/lang/Object;

    check-cast v2, Landroidx/paging/LoadType;

    iget-object v3, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->f:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->e:Ljava/lang/Object;

    check-cast v5, Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v6, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->d:Ljava/lang/Object;

    check-cast v6, Landroidx/paging/LoadType;

    iget-object v7, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->c:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/CoroutineScope;

    iget-object v8, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->b:Ljava/lang/Object;

    check-cast v8, Landroidx/paging/PageFetcherSnapshot;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_17

    :pswitch_3
    iget-object p0, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->e:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->d:Ljava/lang/Object;

    check-cast v2, Landroidx/paging/LoadType;

    iget-object v5, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->c:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    iget-object v6, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->b:Ljava/lang/Object;

    check-cast v6, Landroidx/paging/PageFetcherSnapshot;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_14

    :catchall_0
    move-exception p1

    goto/16 :goto_15

    :pswitch_4
    iget-object p0, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->f:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->e:Ljava/lang/Object;

    check-cast v2, Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v5, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->d:Ljava/lang/Object;

    check-cast v5, Landroidx/paging/LoadType;

    iget-object v6, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->c:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    iget-object v7, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->b:Ljava/lang/Object;

    check-cast v7, Landroidx/paging/PageFetcherSnapshot;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object p1, v7

    goto/16 :goto_13

    :pswitch_5
    iget-object p0, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->f:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->e:Ljava/lang/Object;

    check-cast v2, Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v5, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->d:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    iget-object v6, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->c:Ljava/lang/Object;

    check-cast v6, Landroidx/paging/PageFetcherSnapshot;

    iget-object v7, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->b:Ljava/lang/Object;

    check-cast v7, Landroidx/paging/LoadStates;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_11

    :pswitch_6
    iget-object p0, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/paging/LoadType;

    iget-object v2, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->d:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    iget-object v5, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->c:Ljava/lang/Object;

    check-cast v5, Landroidx/paging/PageFetcherSnapshot;

    iget-object v6, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->b:Ljava/lang/Object;

    check-cast v6, Landroidx/paging/LoadStates;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v7, v6

    move-object v6, v5

    move-object v5, v2

    goto/16 :goto_10

    :pswitch_7
    iget-object p0, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->i:Landroidx/paging/PageFetcherSnapshot;

    iget-object v2, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->h:Ljava/lang/Object;

    check-cast v2, Landroidx/paging/LoadType;

    iget-object v5, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->g:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/sync/Mutex;

    iget-object v6, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->f:Ljava/lang/Object;

    check-cast v6, Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v7, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->e:Ljava/lang/Object;

    check-cast v7, Landroidx/paging/LoadType;

    iget-object v8, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->d:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/CoroutineScope;

    iget-object v9, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->c:Ljava/lang/Object;

    check-cast v9, Landroidx/paging/PageFetcherSnapshot;

    iget-object v10, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->b:Ljava/lang/Object;

    check-cast v10, Landroidx/paging/LoadStates;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_8
    iget-object p0, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->f:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->e:Ljava/lang/Object;

    check-cast v2, Landroidx/paging/LoadType;

    iget-object v5, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->d:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    iget-object v6, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->c:Ljava/lang/Object;

    check-cast v6, Landroidx/paging/PageFetcherSnapshot;

    iget-object v7, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->b:Ljava/lang/Object;

    check-cast v7, Landroidx/paging/LoadStates;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_b

    :catchall_1
    move-exception p1

    goto/16 :goto_c

    :pswitch_9
    iget-object p0, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->g:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->f:Ljava/lang/Object;

    check-cast v2, Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v5, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->e:Ljava/lang/Object;

    check-cast v5, Landroidx/paging/LoadType;

    iget-object v6, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->d:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    iget-object v7, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->c:Ljava/lang/Object;

    check-cast v7, Landroidx/paging/PageFetcherSnapshot;

    iget-object v8, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->b:Ljava/lang/Object;

    check-cast v8, Landroidx/paging/LoadStates;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object p1, v7

    move-object v7, v8

    goto/16 :goto_a

    :pswitch_a
    iget-object p0, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->f:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->e:Ljava/lang/Object;

    check-cast v2, Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v5, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->d:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    iget-object v6, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->c:Ljava/lang/Object;

    check-cast v6, Landroidx/paging/PageFetcherSnapshot;

    iget-object v7, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->b:Ljava/lang/Object;

    check-cast v7, Landroidx/paging/LoadStates;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_b
    iget-object p0, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/paging/LoadType;

    iget-object v2, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->d:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    iget-object v5, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->c:Ljava/lang/Object;

    check-cast v5, Landroidx/paging/PageFetcherSnapshot;

    iget-object v6, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->b:Ljava/lang/Object;

    check-cast v6, Landroidx/paging/LoadStates;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v7, v6

    move-object v6, v5

    move-object v5, v2

    goto/16 :goto_7

    :pswitch_c
    iget-object p0, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->i:Landroidx/paging/PageFetcherSnapshot;

    iget-object v2, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->h:Ljava/lang/Object;

    check-cast v2, Landroidx/paging/LoadType;

    iget-object v5, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->g:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/sync/Mutex;

    iget-object v6, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->f:Ljava/lang/Object;

    check-cast v6, Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v7, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->e:Ljava/lang/Object;

    check-cast v7, Landroidx/paging/LoadType;

    iget-object v8, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->d:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/CoroutineScope;

    iget-object v9, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->c:Ljava/lang/Object;

    check-cast v9, Landroidx/paging/PageFetcherSnapshot;

    iget-object v10, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->b:Ljava/lang/Object;

    check-cast v10, Landroidx/paging/LoadStates;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_d
    iget-object p0, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->f:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->e:Ljava/lang/Object;

    check-cast v2, Landroidx/paging/LoadType;

    iget-object v5, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->d:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    iget-object v6, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->c:Ljava/lang/Object;

    check-cast v6, Landroidx/paging/PageFetcherSnapshot;

    iget-object v7, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->b:Ljava/lang/Object;

    check-cast v7, Landroidx/paging/LoadStates;

    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    goto :goto_2

    :pswitch_e
    iget-object p0, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->g:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->f:Ljava/lang/Object;

    check-cast v2, Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v5, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->e:Ljava/lang/Object;

    check-cast v5, Landroidx/paging/LoadType;

    iget-object v6, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->d:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    iget-object v7, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->c:Ljava/lang/Object;

    check-cast v7, Landroidx/paging/PageFetcherSnapshot;

    iget-object v8, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->b:Ljava/lang/Object;

    check-cast v8, Landroidx/paging/LoadStates;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_3
    iget-object p1, v2, Landroidx/paging/PageFetcherSnapshotState$Holder;->b:Landroidx/paging/PageFetcherSnapshotState;

    iput-object v8, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->b:Ljava/lang/Object;

    iput-object v7, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->c:Ljava/lang/Object;

    iput-object v6, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->d:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->e:Ljava/lang/Object;

    iput-object p0, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->f:Ljava/lang/Object;

    iput-object v4, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->g:Ljava/lang/Object;

    const/4 v2, 0x3

    iput v2, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->l:I

    invoke-virtual {v7, p1, v5, v0}, Landroidx/paging/PageFetcherSnapshot;->k(Landroidx/paging/PageFetcherSnapshotState;Landroidx/paging/LoadType;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne p1, v1, :cond_1

    goto/16 :goto_1a

    :cond_1
    move-object v2, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    :goto_1
    invoke-interface {p0, v4}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    move-object v8, v5

    move-object p0, v6

    move-object v10, v7

    goto/16 :goto_4

    :goto_2
    invoke-interface {p0, v4}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw p1

    :pswitch_f
    iget-object p0, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->e:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->d:Ljava/lang/Object;

    check-cast v2, Landroidx/paging/PageFetcherSnapshot;

    iget-object v5, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->c:Ljava/lang/Object;

    check-cast v5, Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v6, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->b:Ljava/lang/Object;

    check-cast v6, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_10
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, p0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1;->b:Landroidx/paging/PageFetcherSnapshot;

    iget-object v5, v2, Landroidx/paging/PageFetcherSnapshot;->k:Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object p1, v5, Landroidx/paging/PageFetcherSnapshotState$Holder;->a:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object p0, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->b:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->c:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->d:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->e:Ljava/lang/Object;

    iput v3, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->l:I

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/sync/MutexImpl;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_2

    goto/16 :goto_1a

    :cond_2
    move-object v6, p0

    move-object p0, p1

    :goto_3
    :try_start_4
    iget-object p1, v5, Landroidx/paging/PageFetcherSnapshotState$Holder;->b:Landroidx/paging/PageFetcherSnapshotState;

    iget-object v5, p1, Landroidx/paging/PageFetcherSnapshotState;->l:Landroidx/paging/MutableLoadStateCollection;

    invoke-virtual {v5}, Landroidx/paging/MutableLoadStateCollection;->d()Landroidx/paging/LoadStates;

    move-result-object v5

    iget-object v2, v2, Landroidx/paging/PageFetcherSnapshot;->h:Landroidx/paging/HintHandler;

    iget-object v2, v2, Landroidx/paging/HintHandler;->a:Landroidx/paging/HintHandler$State;

    iget-object v2, v2, Landroidx/paging/HintHandler$State;->c:Landroidx/paging/ViewportHint$Access;

    invoke-virtual {p1, v2}, Landroidx/paging/PageFetcherSnapshotState;->a(Landroidx/paging/ViewportHint$Access;)Landroidx/paging/PagingState;

    move-result-object p1

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v5, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    invoke-interface {p0, v4}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    iget-object p0, v2, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/paging/LoadStates;

    iget-object p1, v2, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast p1, Landroidx/paging/PagingState;

    iget-object v2, v6, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1;->b:Landroidx/paging/PageFetcherSnapshot;

    iget-object v2, v2, Landroidx/paging/PageFetcherSnapshot;->e:Landroidx/paging/RemoteMediatorConnection;

    if-eqz v2, :cond_3

    invoke-interface {v2, p1}, Landroidx/paging/RemoteMediatorConnection;->b(Landroidx/paging/PagingState;)V

    :cond_3
    iget-object p1, v6, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1;->b:Landroidx/paging/PageFetcherSnapshot;

    iget-object v2, v6, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1;->c:Lkotlinx/coroutines/CoroutineScope;

    sget-object v5, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    iget-object v6, p0, Landroidx/paging/LoadStates;->a:Landroidx/paging/LoadState;

    instance-of v6, v6, Landroidx/paging/LoadState$Error;

    if-eqz v6, :cond_9

    move-object v10, p0

    move-object p0, p1

    move-object v8, v2

    move-object v2, v5

    :goto_4
    sget-object p1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$WhenMappings;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget p1, p1, v5

    if-ne p1, v3, :cond_4

    move-object p1, p0

    move-object v6, v2

    move-object v5, v4

    goto :goto_6

    :cond_4
    iget-object v6, p0, Landroidx/paging/PageFetcherSnapshot;->k:Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v5, v6, Landroidx/paging/PageFetcherSnapshotState$Holder;->a:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object v10, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->b:Ljava/lang/Object;

    iput-object p0, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->c:Ljava/lang/Object;

    iput-object v8, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->d:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->e:Ljava/lang/Object;

    iput-object v6, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->f:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->g:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->h:Ljava/lang/Object;

    iput-object p0, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->i:Landroidx/paging/PageFetcherSnapshot;

    const/4 p1, 0x4

    iput p1, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->l:I

    invoke-virtual {v5, v0}, Lkotlinx/coroutines/sync/MutexImpl;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto/16 :goto_1a

    :cond_5
    move-object v9, p0

    move-object v7, v2

    :goto_5
    :try_start_5
    iget-object p1, v6, Landroidx/paging/PageFetcherSnapshotState$Holder;->b:Landroidx/paging/PageFetcherSnapshotState;

    iget-object p1, p1, Landroidx/paging/PageFetcherSnapshotState;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/paging/ViewportHint;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    invoke-interface {v5, v4}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    move-object v5, p1

    move-object v6, v2

    move-object v2, v7

    move-object p1, p0

    move-object p0, v9

    :goto_6
    iput-object v10, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->b:Ljava/lang/Object;

    iput-object p0, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->c:Ljava/lang/Object;

    iput-object v8, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->d:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->e:Ljava/lang/Object;

    iput-object v4, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->f:Ljava/lang/Object;

    iput-object v4, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->g:Ljava/lang/Object;

    iput-object v4, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->h:Ljava/lang/Object;

    iput-object v4, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->i:Landroidx/paging/PageFetcherSnapshot;

    const/4 v7, 0x5

    iput v7, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->l:I

    invoke-static {p1, v6, v5, v0}, Landroidx/paging/PageFetcherSnapshot;->c(Landroidx/paging/PageFetcherSnapshot;Landroidx/paging/LoadType;Landroidx/paging/ViewportHint;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto/16 :goto_1a

    :cond_6
    move-object v6, p0

    move-object p0, v2

    move-object v5, v8

    move-object v7, v10

    :goto_7
    sget-object p1, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    if-ne p0, p1, :cond_8

    iget-object v2, v6, Landroidx/paging/PageFetcherSnapshot;->k:Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object p0, v2, Landroidx/paging/PageFetcherSnapshotState$Holder;->a:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object v7, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->b:Ljava/lang/Object;

    iput-object v6, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->c:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->d:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->e:Ljava/lang/Object;

    iput-object p0, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->f:Ljava/lang/Object;

    const/4 p1, 0x6

    iput p1, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->l:I

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/sync/MutexImpl;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    goto/16 :goto_1a

    :cond_7
    :goto_8
    :try_start_6
    iget-object p1, v2, Landroidx/paging/PageFetcherSnapshotState$Holder;->b:Landroidx/paging/PageFetcherSnapshotState;

    iget-object p1, p1, Landroidx/paging/PageFetcherSnapshotState;->l:Landroidx/paging/MutableLoadStateCollection;

    sget-object v2, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    invoke-virtual {p1, v2}, Landroidx/paging/MutableLoadStateCollection;->a(Landroidx/paging/LoadType;)Landroidx/paging/LoadState;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-interface {p0, v4}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    instance-of p0, p1, Landroidx/paging/LoadState$Error;

    if-nez p0, :cond_8

    invoke-static {v6, v5}, Landroidx/paging/PageFetcherSnapshot;->d(Landroidx/paging/PageFetcherSnapshot;Lkotlinx/coroutines/CoroutineScope;)V

    :cond_8
    move-object v2, v5

    move-object p1, v6

    move-object p0, v7

    goto :goto_9

    :catchall_3
    move-exception p1

    invoke-interface {p0, v4}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw p1

    :catchall_4
    move-exception p0

    invoke-interface {v5, v4}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw p0

    :cond_9
    :goto_9
    sget-object v5, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    iget-object v6, p0, Landroidx/paging/LoadStates;->b:Landroidx/paging/LoadState;

    instance-of v6, v6, Landroidx/paging/LoadState$Error;

    if-eqz v6, :cond_12

    sget-object v6, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    if-eq v5, v6, :cond_c

    iget-object v6, p1, Landroidx/paging/PageFetcherSnapshot;->k:Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v7, v6, Landroidx/paging/PageFetcherSnapshotState$Holder;->a:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object p0, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->b:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->c:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->d:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->e:Ljava/lang/Object;

    iput-object v6, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->f:Ljava/lang/Object;

    iput-object v7, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->g:Ljava/lang/Object;

    const/4 v8, 0x7

    iput v8, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->l:I

    invoke-virtual {v7, v0}, Lkotlinx/coroutines/sync/MutexImpl;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_a

    goto/16 :goto_1a

    :cond_a
    move-object v11, v7

    move-object v7, p0

    move-object p0, v11

    move-object v11, v6

    move-object v6, v2

    move-object v2, v11

    :goto_a
    :try_start_7
    iget-object v2, v2, Landroidx/paging/PageFetcherSnapshotState$Holder;->b:Landroidx/paging/PageFetcherSnapshotState;

    iput-object v7, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->b:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->c:Ljava/lang/Object;

    iput-object v6, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->d:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->e:Ljava/lang/Object;

    iput-object p0, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->f:Ljava/lang/Object;

    iput-object v4, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->g:Ljava/lang/Object;

    const/16 v8, 0x8

    iput v8, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->l:I

    invoke-virtual {p1, v2, v5, v0}, Landroidx/paging/PageFetcherSnapshot;->k(Landroidx/paging/PageFetcherSnapshotState;Landroidx/paging/LoadType;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-ne v2, v1, :cond_b

    goto/16 :goto_1a

    :cond_b
    move-object v2, v5

    move-object v5, v6

    move-object v6, p1

    :goto_b
    invoke-interface {p0, v4}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    move-object v8, v5

    move-object p0, v6

    move-object v10, v7

    goto :goto_d

    :goto_c
    invoke-interface {p0, v4}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw p1

    :cond_c
    move-object v10, p0

    move-object p0, p1

    move-object v8, v2

    move-object v2, v5

    :goto_d
    sget-object p1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$WhenMappings;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget p1, p1, v5

    if-ne p1, v3, :cond_d

    move-object p1, p0

    move-object v6, v2

    move-object v5, v4

    goto :goto_f

    :cond_d
    iget-object v6, p0, Landroidx/paging/PageFetcherSnapshot;->k:Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v5, v6, Landroidx/paging/PageFetcherSnapshotState$Holder;->a:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object v10, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->b:Ljava/lang/Object;

    iput-object p0, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->c:Ljava/lang/Object;

    iput-object v8, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->d:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->e:Ljava/lang/Object;

    iput-object v6, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->f:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->g:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->h:Ljava/lang/Object;

    iput-object p0, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->i:Landroidx/paging/PageFetcherSnapshot;

    const/16 p1, 0x9

    iput p1, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->l:I

    invoke-virtual {v5, v0}, Lkotlinx/coroutines/sync/MutexImpl;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_e

    goto/16 :goto_1a

    :cond_e
    move-object v9, p0

    move-object v7, v2

    :goto_e
    :try_start_8
    iget-object p1, v6, Landroidx/paging/PageFetcherSnapshotState$Holder;->b:Landroidx/paging/PageFetcherSnapshotState;

    iget-object p1, p1, Landroidx/paging/PageFetcherSnapshotState;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/paging/ViewportHint;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    invoke-interface {v5, v4}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    move-object v5, p1

    move-object v6, v2

    move-object v2, v7

    move-object p1, p0

    move-object p0, v9

    :goto_f
    iput-object v10, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->b:Ljava/lang/Object;

    iput-object p0, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->c:Ljava/lang/Object;

    iput-object v8, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->d:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->e:Ljava/lang/Object;

    iput-object v4, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->f:Ljava/lang/Object;

    iput-object v4, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->g:Ljava/lang/Object;

    iput-object v4, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->h:Ljava/lang/Object;

    iput-object v4, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->i:Landroidx/paging/PageFetcherSnapshot;

    const/16 v7, 0xa

    iput v7, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->l:I

    invoke-static {p1, v6, v5, v0}, Landroidx/paging/PageFetcherSnapshot;->c(Landroidx/paging/PageFetcherSnapshot;Landroidx/paging/LoadType;Landroidx/paging/ViewportHint;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_f

    goto/16 :goto_1a

    :cond_f
    move-object v6, p0

    move-object p0, v2

    move-object v5, v8

    move-object v7, v10

    :goto_10
    sget-object p1, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    if-ne p0, p1, :cond_11

    iget-object v2, v6, Landroidx/paging/PageFetcherSnapshot;->k:Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object p0, v2, Landroidx/paging/PageFetcherSnapshotState$Holder;->a:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object v7, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->b:Ljava/lang/Object;

    iput-object v6, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->c:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->d:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->e:Ljava/lang/Object;

    iput-object p0, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->f:Ljava/lang/Object;

    const/16 p1, 0xb

    iput p1, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->l:I

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/sync/MutexImpl;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_10

    goto/16 :goto_1a

    :cond_10
    :goto_11
    :try_start_9
    iget-object p1, v2, Landroidx/paging/PageFetcherSnapshotState$Holder;->b:Landroidx/paging/PageFetcherSnapshotState;

    iget-object p1, p1, Landroidx/paging/PageFetcherSnapshotState;->l:Landroidx/paging/MutableLoadStateCollection;

    sget-object v2, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    invoke-virtual {p1, v2}, Landroidx/paging/MutableLoadStateCollection;->a(Landroidx/paging/LoadType;)Landroidx/paging/LoadState;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    invoke-interface {p0, v4}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    instance-of p0, p1, Landroidx/paging/LoadState$Error;

    if-nez p0, :cond_11

    invoke-static {v6, v5}, Landroidx/paging/PageFetcherSnapshot;->d(Landroidx/paging/PageFetcherSnapshot;Lkotlinx/coroutines/CoroutineScope;)V

    :cond_11
    move-object v2, v5

    move-object p1, v6

    move-object p0, v7

    goto :goto_12

    :catchall_5
    move-exception p1

    invoke-interface {p0, v4}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw p1

    :catchall_6
    move-exception p0

    invoke-interface {v5, v4}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw p0

    :cond_12
    :goto_12
    sget-object v5, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    iget-object p0, p0, Landroidx/paging/LoadStates;->c:Landroidx/paging/LoadState;

    instance-of p0, p0, Landroidx/paging/LoadState$Error;

    if-eqz p0, :cond_1a

    sget-object p0, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    if-eq v5, p0, :cond_15

    iget-object p0, p1, Landroidx/paging/PageFetcherSnapshot;->k:Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v6, p0, Landroidx/paging/PageFetcherSnapshotState$Holder;->a:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object p1, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->b:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->c:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->d:Ljava/lang/Object;

    iput-object p0, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->e:Ljava/lang/Object;

    iput-object v6, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->f:Ljava/lang/Object;

    const/16 v7, 0xc

    iput v7, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->l:I

    invoke-virtual {v6, v0}, Lkotlinx/coroutines/sync/MutexImpl;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_13

    goto/16 :goto_1a

    :cond_13
    move-object v11, v2

    move-object v2, p0

    move-object p0, v6

    move-object v6, v11

    :goto_13
    :try_start_a
    iget-object v2, v2, Landroidx/paging/PageFetcherSnapshotState$Holder;->b:Landroidx/paging/PageFetcherSnapshotState;

    iput-object p1, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->b:Ljava/lang/Object;

    iput-object v6, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->c:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->d:Ljava/lang/Object;

    iput-object p0, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->e:Ljava/lang/Object;

    iput-object v4, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->f:Ljava/lang/Object;

    const/16 v7, 0xd

    iput v7, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->l:I

    invoke-virtual {p1, v2, v5, v0}, Landroidx/paging/PageFetcherSnapshot;->k(Landroidx/paging/PageFetcherSnapshotState;Landroidx/paging/LoadType;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-ne v2, v1, :cond_14

    goto/16 :goto_1a

    :cond_14
    move-object v2, v5

    move-object v5, v6

    move-object v6, p1

    :goto_14
    invoke-interface {p0, v4}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    move-object v7, v5

    move-object p0, v6

    goto :goto_16

    :goto_15
    invoke-interface {p0, v4}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw p1

    :cond_15
    move-object p0, p1

    move-object v7, v2

    move-object v2, v5

    :goto_16
    sget-object p1, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$WhenMappings;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget p1, p1, v5

    if-ne p1, v3, :cond_16

    move-object p1, p0

    move-object v5, v2

    move-object v3, v4

    goto :goto_18

    :cond_16
    iget-object v5, p0, Landroidx/paging/PageFetcherSnapshot;->k:Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object v3, v5, Landroidx/paging/PageFetcherSnapshotState$Holder;->a:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object p0, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->b:Ljava/lang/Object;

    iput-object v7, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->c:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->d:Ljava/lang/Object;

    iput-object v5, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->e:Ljava/lang/Object;

    iput-object v3, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->f:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->g:Ljava/lang/Object;

    iput-object p0, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->h:Ljava/lang/Object;

    const/16 p1, 0xe

    iput p1, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->l:I

    invoke-virtual {v3, v0}, Lkotlinx/coroutines/sync/MutexImpl;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_17

    goto :goto_1a

    :cond_17
    move-object v8, p0

    move-object v6, v2

    :goto_17
    :try_start_b
    iget-object p1, v5, Landroidx/paging/PageFetcherSnapshotState$Holder;->b:Landroidx/paging/PageFetcherSnapshotState;

    iget-object p1, p1, Landroidx/paging/PageFetcherSnapshotState;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/paging/ViewportHint;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    invoke-interface {v3, v4}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    move-object v3, p1

    move-object v5, v2

    move-object v2, v6

    move-object p1, p0

    move-object p0, v8

    :goto_18
    iput-object p0, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->b:Ljava/lang/Object;

    iput-object v7, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->c:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->d:Ljava/lang/Object;

    iput-object v4, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->e:Ljava/lang/Object;

    iput-object v4, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->f:Ljava/lang/Object;

    iput-object v4, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->g:Ljava/lang/Object;

    iput-object v4, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->h:Ljava/lang/Object;

    const/16 v6, 0xf

    iput v6, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->l:I

    invoke-static {p1, v5, v3, v0}, Landroidx/paging/PageFetcherSnapshot;->c(Landroidx/paging/PageFetcherSnapshot;Landroidx/paging/LoadType;Landroidx/paging/ViewportHint;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_18

    goto :goto_1a

    :cond_18
    move-object v3, p0

    move-object p0, v2

    move-object v2, v7

    :goto_19
    sget-object p1, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    if-ne p0, p1, :cond_1a

    iget-object p0, v3, Landroidx/paging/PageFetcherSnapshot;->k:Landroidx/paging/PageFetcherSnapshotState$Holder;

    iget-object p1, p0, Landroidx/paging/PageFetcherSnapshotState$Holder;->a:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object v3, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->b:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->c:Ljava/lang/Object;

    iput-object p0, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->d:Ljava/lang/Object;

    iput-object p1, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->e:Ljava/lang/Object;

    const/16 v5, 0x10

    iput v5, v0, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1$emit$1;->l:I

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/sync/MutexImpl;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_19

    :goto_1a
    return-object v1

    :cond_19
    move-object v1, p0

    move-object p0, p1

    move-object v0, v3

    :goto_1b
    :try_start_c
    iget-object p1, v1, Landroidx/paging/PageFetcherSnapshotState$Holder;->b:Landroidx/paging/PageFetcherSnapshotState;

    iget-object p1, p1, Landroidx/paging/PageFetcherSnapshotState;->l:Landroidx/paging/MutableLoadStateCollection;

    sget-object v1, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    invoke-virtual {p1, v1}, Landroidx/paging/MutableLoadStateCollection;->a(Landroidx/paging/LoadType;)Landroidx/paging/LoadState;

    move-result-object p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    invoke-interface {p0, v4}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    instance-of p0, p1, Landroidx/paging/LoadState$Error;

    if-nez p0, :cond_1a

    invoke-static {v0, v2}, Landroidx/paging/PageFetcherSnapshot;->d(Landroidx/paging/PageFetcherSnapshot;Lkotlinx/coroutines/CoroutineScope;)V

    goto :goto_1c

    :catchall_7
    move-exception p1

    invoke-interface {p0, v4}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw p1

    :catchall_8
    move-exception p0

    invoke-interface {v3, v4}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw p0

    :cond_1a
    :goto_1c
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :catchall_9
    move-exception p1

    invoke-interface {p0, v4}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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

.method public final bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p2}, Landroidx/paging/PageFetcherSnapshot$pageEventFlow$1$4$1;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
