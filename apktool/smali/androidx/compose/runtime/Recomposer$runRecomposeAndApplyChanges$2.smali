.class final Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Landroidx/compose/runtime/MonotonicFrameClock;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;",
        "parentFrameClock",
        "Landroidx/compose/runtime/MonotonicFrameClock;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.runtime.Recomposer$runRecomposeAndApplyChanges$2"
    f = "Recomposer.kt"
    l = {
        0x267,
        0x272
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public b:Ljava/util/List;

.field public c:Ljava/util/List;

.field public d:Ljava/util/List;

.field public e:Landroidx/collection/MutableScatterSet;

.field public f:Landroidx/collection/MutableScatterSet;

.field public g:Landroidx/collection/MutableScatterSet;

.field public h:Ljava/util/Set;

.field public i:Landroidx/collection/MutableScatterSet;

.field public j:I

.field public synthetic k:Landroidx/compose/runtime/MonotonicFrameClock;

.field public final synthetic l:Landroidx/compose/runtime/Recomposer;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/Recomposer;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->l:Landroidx/compose/runtime/Recomposer;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static final b(Landroidx/compose/runtime/Recomposer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    iget-object v5, v0, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->clear()V

    move-object v6, v1

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_0

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/runtime/ControlledComposition;

    invoke-interface {v9}, Landroidx/compose/runtime/ControlledComposition;->w()V

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/Recomposer;->S(Landroidx/compose/runtime/ControlledComposition;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v2, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    iget-object v6, v2, Landroidx/collection/ScatterSet;->a:[J

    array-length v8, v6

    add-int/lit8 v8, v8, -0x2

    const/16 v7, 0x8

    const-wide/16 p2, 0x80

    if-ltz v8, :cond_4

    const/4 v9, 0x0

    const-wide/16 v16, 0xff

    :goto_1
    aget-wide v11, v6, v9

    const/4 v10, 0x7

    const-wide v18, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    not-long v13, v11

    shl-long/2addr v13, v10

    and-long/2addr v13, v11

    and-long v13, v13, v18

    cmp-long v13, v13, v18

    if-eqz v13, :cond_3

    sub-int v13, v9, v8

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    rsub-int/lit8 v13, v13, 0x8

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v13, :cond_2

    and-long v20, v11, v16

    cmp-long v15, v20, p2

    if-gez v15, :cond_1

    shl-int/lit8 v15, v9, 0x3

    add-int/2addr v15, v14

    aget-object v15, v1, v15

    check-cast v15, Landroidx/compose/runtime/ControlledComposition;

    invoke-interface {v15}, Landroidx/compose/runtime/ControlledComposition;->w()V

    invoke-virtual {v0, v15}, Landroidx/compose/runtime/Recomposer;->S(Landroidx/compose/runtime/ControlledComposition;)V

    :cond_1
    shr-long/2addr v11, v7

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_2
    if-ne v13, v7, :cond_5

    :cond_3
    if-eq v9, v8, :cond_5

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    const/4 v10, 0x7

    const-wide/16 v16, 0xff

    const-wide v18, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    :cond_5
    invoke-virtual {v2}, Landroidx/collection/MutableScatterSet;->f()V

    iget-object v1, v3, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    iget-object v2, v3, Landroidx/collection/ScatterSet;->a:[J

    array-length v6, v2

    add-int/lit8 v6, v6, -0x2

    if-ltz v6, :cond_9

    const/4 v8, 0x0

    :goto_3
    aget-wide v11, v2, v8

    not-long v13, v11

    shl-long/2addr v13, v10

    and-long/2addr v13, v11

    and-long v13, v13, v18

    cmp-long v9, v13, v18

    if-eqz v9, :cond_8

    sub-int v9, v8, v6

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    rsub-int/lit8 v9, v9, 0x8

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v9, :cond_7

    and-long v14, v11, v16

    cmp-long v14, v14, p2

    if-gez v14, :cond_6

    shl-int/lit8 v14, v8, 0x3

    add-int/2addr v14, v13

    aget-object v14, v1, v14

    check-cast v14, Landroidx/compose/runtime/ControlledComposition;

    invoke-interface {v14}, Landroidx/compose/runtime/ControlledComposition;->x()V

    :cond_6
    shr-long/2addr v11, v7

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_7
    if-ne v9, v7, :cond_9

    :cond_8
    if-eq v8, v6, :cond_9

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {v3}, Landroidx/collection/MutableScatterSet;->f()V

    invoke-virtual/range {p6 .. p6}, Landroidx/collection/MutableScatterSet;->f()V

    iget-object v1, v4, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    iget-object v2, v4, Landroidx/collection/ScatterSet;->a:[J

    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_d

    const/4 v6, 0x0

    :goto_5
    aget-wide v8, v2, v6

    not-long v11, v8

    shl-long/2addr v11, v10

    and-long/2addr v11, v8

    and-long v11, v11, v18

    cmp-long v11, v11, v18

    if-eqz v11, :cond_c

    sub-int v11, v6, v3

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    rsub-int/lit8 v11, v11, 0x8

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v11, :cond_b

    and-long v13, v8, v16

    cmp-long v13, v13, p2

    if-gez v13, :cond_a

    shl-int/lit8 v13, v6, 0x3

    add-int/2addr v13, v12

    aget-object v13, v1, v13

    check-cast v13, Landroidx/compose/runtime/ControlledComposition;

    invoke-interface {v13}, Landroidx/compose/runtime/ControlledComposition;->w()V

    invoke-virtual {v0, v13}, Landroidx/compose/runtime/Recomposer;->S(Landroidx/compose/runtime/ControlledComposition;)V

    :cond_a
    shr-long/2addr v8, v7

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_b
    if-ne v11, v7, :cond_d

    :cond_c
    if-eq v6, v3, :cond_d

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_d
    invoke-virtual {v4}, Landroidx/collection/MutableScatterSet;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-void

    :goto_7
    monitor-exit v5

    throw v0
.end method

.method public static final d(Ljava/util/List;Landroidx/compose/runtime/Recomposer;)V
    .locals 6

    invoke-interface {p0}, Ljava/util/List;->clear()V

    iget-object v0, p1, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Landroidx/compose/runtime/Recomposer;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/MovableContentStateReference;

    move-object v5, p0

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p1, Landroidx/compose/runtime/Recomposer;->k:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Landroidx/compose/runtime/MonotonicFrameClock;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance p1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;

    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->l:Landroidx/compose/runtime/Recomposer;

    invoke-direct {p1, p0, p3}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;-><init>(Landroidx/compose/runtime/Recomposer;Lkotlin/coroutines/Continuation;)V

    iput-object p2, p1, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->k:Landroidx/compose/runtime/MonotonicFrameClock;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->j:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v6, :cond_1

    if-ne v2, v4, :cond_0

    iget-object v2, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->i:Landroidx/collection/MutableScatterSet;

    iget-object v7, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->h:Ljava/util/Set;

    check-cast v7, Ljava/util/Set;

    iget-object v8, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->g:Landroidx/collection/MutableScatterSet;

    iget-object v9, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->f:Landroidx/collection/MutableScatterSet;

    iget-object v10, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->e:Landroidx/collection/MutableScatterSet;

    iget-object v11, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->d:Ljava/util/List;

    check-cast v11, Ljava/util/List;

    iget-object v12, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->c:Ljava/util/List;

    check-cast v12, Ljava/util/List;

    iget-object v13, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->b:Ljava/util/List;

    check-cast v13, Ljava/util/List;

    iget-object v14, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->k:Landroidx/compose/runtime/MonotonicFrameClock;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v26, v14

    move-object v14, v2

    move-object/from16 v2, v26

    goto/16 :goto_6

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_1
    iget-object v2, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->i:Landroidx/collection/MutableScatterSet;

    iget-object v7, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->h:Ljava/util/Set;

    check-cast v7, Ljava/util/Set;

    iget-object v8, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->g:Landroidx/collection/MutableScatterSet;

    iget-object v9, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->f:Landroidx/collection/MutableScatterSet;

    iget-object v10, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->e:Landroidx/collection/MutableScatterSet;

    iget-object v11, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->d:Ljava/util/List;

    check-cast v11, Ljava/util/List;

    iget-object v12, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->c:Ljava/util/List;

    check-cast v12, Ljava/util/List;

    iget-object v13, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->b:Ljava/util/List;

    check-cast v13, Ljava/util/List;

    iget-object v14, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->k:Landroidx/compose/runtime/MonotonicFrameClock;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v19, v2

    move-object v2, v14

    :goto_0
    move-object/from16 v25, v7

    move-object/from16 v18, v8

    move-object/from16 v24, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v21, v12

    move-object/from16 v20, v13

    goto/16 :goto_4

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->k:Landroidx/compose/runtime/MonotonicFrameClock;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroidx/collection/ScatterSetKt;->a()Landroidx/collection/MutableScatterSet;

    move-result-object v10

    invoke-static {}, Landroidx/collection/ScatterSetKt;->a()Landroidx/collection/MutableScatterSet;

    move-result-object v11

    new-instance v12, Landroidx/collection/MutableScatterSet;

    invoke-direct {v12, v5, v6, v3}, Landroidx/collection/MutableScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v13, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    invoke-direct {v13, v12}, Landroidx/compose/runtime/collection/ScatterSetWrapper;-><init>(Landroidx/collection/ScatterSet;)V

    invoke-static {}, Landroidx/collection/ScatterSetKt;->a()Landroidx/collection/MutableScatterSet;

    move-result-object v14

    move-object/from16 v26, v13

    move-object v13, v7

    move-object/from16 v7, v26

    move-object/from16 v26, v12

    move-object v12, v8

    move-object/from16 v8, v26

    move-object/from16 v26, v11

    move-object v11, v9

    move-object/from16 v9, v26

    :goto_1
    iget-object v15, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->l:Landroidx/compose/runtime/Recomposer;

    iget-object v15, v15, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    monitor-enter v15

    monitor-exit v15

    iget-object v15, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->l:Landroidx/compose/runtime/Recomposer;

    iput-object v2, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->k:Landroidx/compose/runtime/MonotonicFrameClock;

    move-object v3, v13

    check-cast v3, Ljava/util/List;

    iput-object v3, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->b:Ljava/util/List;

    move-object v3, v12

    check-cast v3, Ljava/util/List;

    iput-object v3, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->c:Ljava/util/List;

    move-object v3, v11

    check-cast v3, Ljava/util/List;

    iput-object v3, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->d:Ljava/util/List;

    iput-object v10, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->e:Landroidx/collection/MutableScatterSet;

    iput-object v9, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->f:Landroidx/collection/MutableScatterSet;

    iput-object v8, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->g:Landroidx/collection/MutableScatterSet;

    move-object v3, v7

    check-cast v3, Ljava/util/Set;

    iput-object v3, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->h:Ljava/util/Set;

    iput-object v14, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->i:Landroidx/collection/MutableScatterSet;

    iput v6, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->j:I

    invoke-virtual {v15}, Landroidx/compose/runtime/Recomposer;->H()Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v3, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->b(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v5

    invoke-direct {v3, v5, v6}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    iget-object v5, v15, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-virtual {v15}, Landroidx/compose/runtime/Recomposer;->H()Z

    move-result v16

    if-eqz v16, :cond_3

    move-object v15, v3

    goto :goto_2

    :cond_3
    iput-object v3, v15, Landroidx/compose/runtime/Recomposer;->r:Lkotlinx/coroutines/CancellableContinuationImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v15, 0x0

    :goto_2
    monitor-exit v5

    if-eqz v15, :cond_4

    sget-object v5, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v15, v5}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne v3, v5, :cond_5

    goto :goto_3

    :cond_5
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_6
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_3
    if-ne v3, v1, :cond_7

    goto :goto_5

    :cond_7
    move-object/from16 v19, v14

    goto/16 :goto_0

    :goto_4
    iget-object v3, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->l:Landroidx/compose/runtime/Recomposer;

    sget-object v5, Landroidx/compose/runtime/Recomposer;->z:Landroidx/compose/runtime/Recomposer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Recomposer;->R()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->l:Landroidx/compose/runtime/Recomposer;

    new-instance v16, Landroidx/compose/runtime/h;

    move-object/from16 v17, v3

    invoke-direct/range {v16 .. v25}, Landroidx/compose/runtime/h;-><init>(Landroidx/compose/runtime/Recomposer;Landroidx/collection/MutableScatterSet;Landroidx/collection/MutableScatterSet;Ljava/util/List;Ljava/util/List;Landroidx/collection/MutableScatterSet;Ljava/util/List;Landroidx/collection/MutableScatterSet;Ljava/util/Set;)V

    move-object/from16 v3, v16

    move-object/from16 v8, v18

    move-object/from16 v14, v19

    move-object/from16 v10, v22

    move-object/from16 v9, v24

    iput-object v2, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->k:Landroidx/compose/runtime/MonotonicFrameClock;

    move-object/from16 v5, v20

    check-cast v5, Ljava/util/List;

    iput-object v5, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->b:Ljava/util/List;

    move-object/from16 v5, v21

    check-cast v5, Ljava/util/List;

    iput-object v5, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->c:Ljava/util/List;

    move-object/from16 v5, v23

    check-cast v5, Ljava/util/List;

    iput-object v5, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->d:Ljava/util/List;

    iput-object v10, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->e:Landroidx/collection/MutableScatterSet;

    iput-object v9, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->f:Landroidx/collection/MutableScatterSet;

    iput-object v8, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->g:Landroidx/collection/MutableScatterSet;

    move-object/from16 v5, v25

    check-cast v5, Ljava/util/Set;

    iput-object v5, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->h:Ljava/util/Set;

    iput-object v14, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->i:Landroidx/collection/MutableScatterSet;

    iput v4, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->j:I

    invoke-interface {v2, v0, v3}, Landroidx/compose/runtime/MonotonicFrameClock;->c(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_8

    :goto_5
    return-object v1

    :cond_8
    move-object/from16 v13, v20

    move-object/from16 v12, v21

    move-object/from16 v11, v23

    move-object/from16 v7, v25

    :goto_6
    iget-object v3, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->l:Landroidx/compose/runtime/Recomposer;

    iget-object v5, v3, Landroidx/compose/runtime/Recomposer;->c:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    iget-object v15, v3, Landroidx/compose/runtime/Recomposer;->l:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v15}, Landroidx/collection/ScatterMap;->g()Z

    move-result v15

    if-eqz v15, :cond_a

    iget-object v15, v3, Landroidx/compose/runtime/Recomposer;->l:Landroidx/collection/MutableScatterMap;

    invoke-static {v15}, Landroidx/compose/runtime/collection/MultiValueMap;->e(Landroidx/collection/MutableScatterMap;)Landroidx/collection/MutableObjectList;

    move-result-object v15

    iget-object v4, v3, Landroidx/compose/runtime/Recomposer;->l:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v4}, Landroidx/collection/MutableScatterMap;->h()V

    iget-object v4, v3, Landroidx/compose/runtime/Recomposer;->m:Landroidx/compose/runtime/NestedContentMap;

    iget-object v6, v4, Landroidx/compose/runtime/NestedContentMap;->a:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v6}, Landroidx/collection/MutableScatterMap;->h()V

    iget-object v4, v4, Landroidx/compose/runtime/NestedContentMap;->b:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v4}, Landroidx/collection/MutableScatterMap;->h()V

    iget-object v4, v3, Landroidx/compose/runtime/Recomposer;->o:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v4}, Landroidx/collection/MutableScatterMap;->h()V

    new-instance v4, Landroidx/collection/MutableObjectList;

    iget v6, v15, Landroidx/collection/ObjectList;->b:I

    invoke-direct {v4, v6}, Landroidx/collection/MutableObjectList;-><init>(I)V

    iget-object v6, v15, Landroidx/collection/ObjectList;->a:[Ljava/lang/Object;

    iget v15, v15, Landroidx/collection/ObjectList;->b:I

    move-object/from16 v18, v1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v15, :cond_9

    aget-object v19, v6, v1

    move/from16 v20, v1

    move-object/from16 v1, v19

    check-cast v1, Landroidx/compose/runtime/MovableContentStateReference;

    move-object/from16 p1, v2

    iget-object v2, v3, Landroidx/compose/runtime/Recomposer;->n:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v2, v1}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v6

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v6}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    add-int/lit8 v1, v20, 0x1

    move-object/from16 v2, p1

    move-object/from16 v6, v19

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_a

    :cond_9
    move-object/from16 p1, v2

    iget-object v1, v3, Landroidx/compose/runtime/Recomposer;->n:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v1}, Landroidx/collection/MutableScatterMap;->h()V

    goto :goto_8

    :cond_a
    move-object/from16 v18, v1

    move-object/from16 p1, v2

    sget-object v4, Landroidx/collection/ObjectListKt;->b:Landroidx/collection/MutableObjectList;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_8
    monitor-exit v5

    iget-object v1, v4, Landroidx/collection/ObjectList;->a:[Ljava/lang/Object;

    iget v2, v4, Landroidx/collection/ObjectList;->b:I

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_c

    aget-object v4, v1, v3

    check-cast v4, Lkotlin/Pair;

    iget-object v5, v4, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/runtime/MovableContentStateReference;

    iget-object v4, v4, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/runtime/MovableContentState;

    if-eqz v4, :cond_b

    iget-object v5, v5, Landroidx/compose/runtime/MovableContentStateReference;->c:Landroidx/compose/runtime/ControlledComposition;

    invoke-interface {v5, v4}, Landroidx/compose/runtime/ControlledComposition;->i(Landroidx/compose/runtime/MovableContentState;)V

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_c
    iget-object v1, v0, Landroidx/compose/runtime/Recomposer$runRecomposeAndApplyChanges$2;->l:Landroidx/compose/runtime/Recomposer;

    iget-object v1, v1, Landroidx/compose/runtime/Recomposer;->b:Landroidx/compose/runtime/NextFrameEndCallbackQueue;

    iget-object v2, v1, Landroidx/compose/runtime/NextFrameEndCallbackQueue;->a:Landroidx/compose/runtime/internal/AtomicInt;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v1, v1, Landroidx/compose/runtime/NextFrameEndCallbackQueue;->b:Landroidx/compose/runtime/internal/AwaiterQueue;

    new-instance v2, Landroidx/compose/runtime/g;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/internal/AwaiterQueue;->b(Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v2, p1

    move v5, v3

    move-object/from16 v1, v18

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x1

    goto/16 :goto_1

    :goto_a
    monitor-exit v5

    throw v0

    :cond_d
    move-object/from16 v8, v18

    move-object/from16 v14, v19

    move-object/from16 v10, v22

    move-object/from16 v9, v24

    move-object/from16 v13, v20

    move-object/from16 v12, v21

    move-object/from16 v11, v23

    move-object/from16 v7, v25

    const/4 v3, 0x0

    const/4 v5, 0x0

    goto/16 :goto_1
.end method
