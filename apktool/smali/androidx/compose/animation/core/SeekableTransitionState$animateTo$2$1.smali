.class final Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;
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
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.animation.core.SeekableTransitionState$animateTo$2$1"
    f = "Transition.kt"
    l = {
        0x892,
        0x26c,
        0x26e,
        0x2a4,
        0x2a6
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public b:Lkotlinx/coroutines/sync/MutexImpl;

.field public c:Landroidx/compose/animation/core/SeekableTransitionState;

.field public d:I

.field public final synthetic e:Landroidx/compose/animation/core/SeekableTransitionState;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Landroidx/compose/animation/core/Transition;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/SeekableTransitionState;Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->e:Landroidx/compose/animation/core/SeekableTransitionState;

    iput-object p3, p0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->f:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->g:Landroidx/compose/animation/core/Transition;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;

    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->f:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->g:Landroidx/compose/animation/core/Transition;

    iget-object p0, p0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->e:Landroidx/compose/animation/core/SeekableTransitionState;

    invoke-direct {p1, p0, v1, v0, p2}, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;-><init>(Landroidx/compose/animation/core/SeekableTransitionState;Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->d:I

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    iget-object v13, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->f:Ljava/lang/Object;

    iget-object v14, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->e:Landroidx/compose/animation/core/SeekableTransitionState;

    const/4 v15, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v9, :cond_4

    if-eq v2, v8, :cond_3

    if-eq v2, v7, :cond_2

    if-eq v2, v6, :cond_1

    if-ne v2, v5, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v15

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const-wide/high16 v16, -0x8000000000000000L

    goto/16 :goto_4

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const-wide/high16 v16, -0x8000000000000000L

    goto/16 :goto_3

    :cond_4
    iget-object v2, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->c:Landroidx/compose/animation/core/SeekableTransitionState;

    iget-object v9, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->b:Lkotlinx/coroutines/sync/MutexImpl;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const-wide/high16 v16, -0x8000000000000000L

    goto :goto_1

    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v14, Landroidx/compose/animation/core/SeekableTransitionState;->b:Landroidx/compose/runtime/MutableState;

    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_6

    invoke-static {v14}, Landroidx/compose/animation/core/SeekableTransitionState;->f(Landroidx/compose/animation/core/SeekableTransitionState;)V

    invoke-virtual {v14, v12}, Landroidx/compose/animation/core/SeekableTransitionState;->p(F)V

    const-wide/high16 v16, -0x8000000000000000L

    iget-object v3, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->g:Landroidx/compose/animation/core/Transition;

    invoke-virtual {v3, v13}, Landroidx/compose/animation/core/Transition;->r(Ljava/lang/Object;)V

    invoke-virtual {v3, v10, v11}, Landroidx/compose/animation/core/Transition;->p(J)V

    invoke-virtual {v14, v2}, Landroidx/compose/animation/core/SeekableTransitionState;->c(Ljava/lang/Object;)V

    iget-object v2, v14, Landroidx/compose/animation/core/SeekableTransitionState;->b:Landroidx/compose/runtime/MutableState;

    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    const-wide/high16 v16, -0x8000000000000000L

    :goto_0
    iget-object v2, v14, Landroidx/compose/animation/core/SeekableTransitionState;->k:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object v2, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->b:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object v14, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->c:Landroidx/compose/animation/core/SeekableTransitionState;

    iput v9, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->d:I

    invoke-virtual {v2, v0}, Lkotlinx/coroutines/sync/MutexImpl;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_7

    goto/16 :goto_9

    :cond_7
    move-object v9, v2

    move-object v2, v14

    :goto_1
    :try_start_0
    iget-object v2, v2, Landroidx/compose/animation/core/SeekableTransitionState;->d:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v9, v15}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    iput-object v15, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->b:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object v15, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->c:Landroidx/compose/animation/core/SeekableTransitionState;

    iput v8, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->d:I

    iget-wide v2, v14, Landroidx/compose/animation/core/SeekableTransitionState;->m:J

    cmp-long v2, v2, v16

    if-nez v2, :cond_9

    iget-object v2, v14, Landroidx/compose/animation/core/SeekableTransitionState;->p:Lxu0;

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/MonotonicFrameClockKt;->a(Lkotlin/coroutines/CoroutineContext;)Landroidx/compose/runtime/MonotonicFrameClock;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Landroidx/compose/runtime/MonotonicFrameClock;->c(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_8

    goto :goto_2

    :cond_8
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_2

    :cond_9
    invoke-virtual {v14, v0}, Landroidx/compose/animation/core/SeekableTransitionState;->j(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_a

    goto :goto_2

    :cond_a
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_2
    if-ne v2, v1, :cond_b

    goto/16 :goto_9

    :cond_b
    :goto_3
    iput v7, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->d:I

    invoke-static {v14, v0}, Landroidx/compose/animation/core/SeekableTransitionState;->i(Landroidx/compose/animation/core/SeekableTransitionState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_c

    goto/16 :goto_9

    :cond_c
    :goto_4
    iget-object v2, v14, Landroidx/compose/animation/core/SeekableTransitionState;->c:Landroidx/compose/runtime/MutableState;

    iget-object v3, v14, Landroidx/compose/animation/core/SeekableTransitionState;->i:Landroidx/compose/runtime/MutableFloatState;

    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    move-object v2, v3

    check-cast v2, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->a()F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_16

    iget-object v2, v14, Landroidx/compose/animation/core/SeekableTransitionState;->o:Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    if-eqz v2, :cond_d

    iget-object v7, v2, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->b:Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;

    invoke-static {v15, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    :cond_d
    if-eqz v2, :cond_e

    iget-object v7, v2, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->b:Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;

    move-object/from16 v18, v7

    goto :goto_5

    :cond_e
    move-object/from16 v18, v15

    :goto_5
    if-eqz v18, :cond_10

    iget-wide v7, v2, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->a:J

    iget-object v4, v2, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->e:Landroidx/compose/animation/core/AnimationVector1D;

    sget-object v9, Landroidx/compose/animation/core/SeekableTransitionState;->s:Landroidx/compose/animation/core/SeekableTransitionState$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v22, Landroidx/compose/animation/core/SeekableTransitionState;->v:Landroidx/compose/animation/core/AnimationVector1D;

    iget-object v9, v2, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->f:Landroidx/compose/animation/core/AnimationVector1D;

    if-nez v9, :cond_f

    sget-object v9, Landroidx/compose/animation/core/SeekableTransitionState;->u:Landroidx/compose/animation/core/AnimationVector1D;

    :cond_f
    move-object/from16 v21, v4

    move-wide/from16 v19, v7

    move-object/from16 v23, v9

    invoke-interface/range {v18 .. v23}, Landroidx/compose/animation/core/VectorizedAnimationSpec;->f(JLandroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    move-result-object v4

    check-cast v4, Landroidx/compose/animation/core/AnimationVector1D;

    goto :goto_7

    :cond_10
    if-eqz v2, :cond_14

    iget-wide v7, v2, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->a:J

    cmp-long v7, v7, v10

    if-nez v7, :cond_11

    goto :goto_6

    :cond_11
    iget-wide v7, v2, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->g:J

    cmp-long v9, v7, v16

    if-nez v9, :cond_12

    iget-wide v7, v14, Landroidx/compose/animation/core/SeekableTransitionState;->f:J

    :cond_12
    long-to-float v7, v7

    const v8, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v7, v8

    cmpg-float v8, v7, v12

    if-gtz v8, :cond_13

    sget-object v4, Landroidx/compose/animation/core/SeekableTransitionState;->s:Landroidx/compose/animation/core/SeekableTransitionState$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/animation/core/SeekableTransitionState;->u:Landroidx/compose/animation/core/AnimationVector1D;

    goto :goto_7

    :cond_13
    new-instance v8, Landroidx/compose/animation/core/AnimationVector1D;

    div-float/2addr v4, v7

    invoke-direct {v8, v4}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    move-object v4, v8

    goto :goto_7

    :cond_14
    :goto_6
    sget-object v4, Landroidx/compose/animation/core/SeekableTransitionState;->s:Landroidx/compose/animation/core/SeekableTransitionState$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/animation/core/SeekableTransitionState;->u:Landroidx/compose/animation/core/AnimationVector1D;

    :goto_7
    if-nez v2, :cond_15

    new-instance v2, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    invoke-direct {v2}, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;-><init>()V

    :cond_15
    iget-object v7, v2, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->e:Landroidx/compose/animation/core/AnimationVector1D;

    iput-object v15, v2, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->b:Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;

    const/4 v8, 0x0

    iput-boolean v8, v2, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->c:Z

    move-object v9, v3

    check-cast v9, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    invoke-virtual {v9}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->a()F

    move-result v9

    iput v9, v2, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->d:F

    move-object v9, v3

    check-cast v9, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    invoke-virtual {v9}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->a()F

    move-result v9

    invoke-virtual {v7, v9, v8}, Landroidx/compose/animation/core/AnimationVector1D;->e(FI)V

    iget-wide v7, v14, Landroidx/compose/animation/core/SeekableTransitionState;->f:J

    iput-wide v7, v2, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->g:J

    iput-wide v10, v2, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->a:J

    iput-object v4, v2, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->f:Landroidx/compose/animation/core/AnimationVector1D;

    long-to-double v7, v7

    check-cast v3, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->a()F

    move-result v3

    float-to-double v3, v3

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v9, v3

    mul-double/2addr v9, v7

    invoke-static {v9, v10}, Lkotlin/math/MathKt;->d(D)J

    move-result-wide v3

    iput-wide v3, v2, Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;->h:J

    iput-object v2, v14, Landroidx/compose/animation/core/SeekableTransitionState;->o:Landroidx/compose/animation/core/SeekableTransitionState$SeekingAnimationState;

    :cond_16
    iput-object v15, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->b:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object v15, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->c:Landroidx/compose/animation/core/SeekableTransitionState;

    iput v6, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->d:I

    invoke-static {v14, v0}, Landroidx/compose/animation/core/SeekableTransitionState;->g(Landroidx/compose/animation/core/SeekableTransitionState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_17

    goto :goto_9

    :cond_17
    :goto_8
    invoke-virtual {v14, v13}, Landroidx/compose/animation/core/SeekableTransitionState;->c(Ljava/lang/Object;)V

    iput v5, v0, Landroidx/compose/animation/core/SeekableTransitionState$animateTo$2$1;->d:I

    invoke-static {v14, v0}, Landroidx/compose/animation/core/SeekableTransitionState;->h(Landroidx/compose/animation/core/SeekableTransitionState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_18

    :goto_9
    return-object v1

    :cond_18
    :goto_a
    sget-object v0, Landroidx/compose/animation/core/SeekableTransitionState;->s:Landroidx/compose/animation/core/SeekableTransitionState$Companion;

    invoke-virtual {v14, v12}, Landroidx/compose/animation/core/SeekableTransitionState;->p(F)V

    :cond_19
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v9, v15}, Lkotlinx/coroutines/sync/Mutex;->d(Ljava/lang/Object;)V

    throw v0
.end method
