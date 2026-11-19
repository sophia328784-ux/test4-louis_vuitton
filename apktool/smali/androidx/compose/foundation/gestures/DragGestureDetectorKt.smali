.class public abstract Landroidx/compose/foundation/gestures/DragGestureDetectorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "foundation"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const v0, 0x3be38e39

    sput v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->a:F

    return-void
.end method

.method public static final a(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 17

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    instance-of v3, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitDragOrCancellation$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitDragOrCancellation$1;

    iget v4, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitDragOrCancellation$1;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitDragOrCancellation$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitDragOrCancellation$1;

    invoke-direct {v3, v2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitDragOrCancellation$1;->d:Ljava/lang/Object;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitDragOrCancellation$1;->e:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    if-ne v5, v6, :cond_1

    iget-object v0, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitDragOrCancellation$1;->c:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v1, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitDragOrCancellation$1;->b:Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v16, v1

    move-object v1, v0

    move-object/from16 v0, v16

    goto :goto_2

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->O0()Landroidx/compose/ui/input/pointer/PointerEvent;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->j(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_8

    :cond_3
    new-instance v2, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    iput-wide v0, v2, Lkotlin/jvm/internal/Ref$LongRef;->b:J

    move-object/from16 v0, p0

    :goto_1
    iput-object v0, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitDragOrCancellation$1;->b:Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    iput-object v2, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitDragOrCancellation$1;->c:Lkotlin/jvm/internal/Ref$LongRef;

    iput v6, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitDragOrCancellation$1;->e:I

    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-interface {v0, v1, v3}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->N0(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_4

    return-object v4

    :cond_4
    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    :goto_2
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerEvent;

    iget-object v5, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    move-object v8, v5

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    const/4 v9, 0x0

    move v10, v9

    :goto_3
    if-ge v10, v8, :cond_6

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-wide v12, v12, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    iget-wide v14, v1, Lkotlin/jvm/internal/Ref$LongRef;->b:J

    invoke-static {v12, v13, v14, v15}, Landroidx/compose/ui/input/pointer/PointerId;->a(JJ)Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_6
    move-object v11, v7

    :goto_4
    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v11, :cond_7

    move-object v11, v7

    goto :goto_7

    :cond_7
    invoke-static {v11}, Landroidx/compose/ui/input/pointer/PointerEventKt;->d(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v2, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    :goto_5
    if-ge v9, v5, :cond_9

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-boolean v10, v10, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    if-eqz v10, :cond_8

    goto :goto_6

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_9
    move-object v8, v7

    :goto_6
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v8, :cond_a

    goto :goto_7

    :cond_a
    iget-wide v8, v8, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    iput-wide v8, v1, Lkotlin/jvm/internal/Ref$LongRef;->b:J

    goto :goto_9

    :cond_b
    invoke-static {v11, v6}, Landroidx/compose/ui/input/pointer/PointerEventKt;->f(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    move-result-wide v8

    sget-object v2, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v12, 0x0

    invoke-static {v8, v9, v12, v13}, Landroidx/compose/ui/geometry/Offset;->c(JJ)Z

    move-result v2

    if-nez v2, :cond_d

    :goto_7
    if-eqz v11, :cond_c

    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputChange;->b()Z

    move-result v0

    if-nez v0, :cond_c

    return-object v11

    :cond_c
    :goto_8
    return-object v7

    :cond_d
    :goto_9
    move-object v2, v1

    goto/16 :goto_1
.end method

.method public static final b(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILc;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;
    .locals 18

    move-wide/from16 v0, p1

    move-object/from16 v2, p5

    instance-of v3, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;

    iget v4, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->i:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->i:I

    goto :goto_0

    :cond_0
    new-instance v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;

    invoke-direct {v3, v2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->h:Ljava/lang/Object;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->i:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    iget v0, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->g:F

    iget-object v1, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->f:Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v5, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->e:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    iget-object v9, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->d:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v10, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->c:Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    iget-object v11, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->b:Lkotlin/jvm/functions/Function2;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 p5, v9

    move v9, v0

    move-object v0, v10

    move-object/from16 v10, p5

    move-object/from16 p5, v5

    move-object v5, v3

    move-object/from16 v3, p5

    move v2, v7

    move-object/from16 p5, v8

    move v8, v6

    goto/16 :goto_a

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8

    :cond_2
    iget v0, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->g:F

    iget-object v1, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->e:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    iget-object v5, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->d:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v9, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->c:Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    iget-object v10, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->b:Lkotlin/jvm/functions/Function2;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v17, v9

    move v9, v0

    move-object/from16 v0, v17

    move-object/from16 v17, v3

    move-object v3, v1

    move-object v1, v10

    move-object v10, v5

    :goto_1
    move-object/from16 v5, v17

    goto :goto_3

    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v5, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->O0()Landroidx/compose/ui/input/pointer/PointerEvent;

    move-result-object v5

    invoke-static {v5, v0, v1}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->j(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 p5, v8

    goto/16 :goto_b

    :cond_4
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object v5

    move/from16 v9, p3

    invoke-static {v5, v9}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->k(Landroidx/compose/ui/platform/ViewConfiguration;I)F

    move-result v5

    new-instance v9, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    iput-wide v0, v9, Lkotlin/jvm/internal/Ref$LongRef;->b:J

    new-instance v0, Landroidx/compose/foundation/gestures/TouchSlopDetector;

    const-wide/16 v10, 0x0

    invoke-direct {v0, v2, v10, v11, v8}, Landroidx/compose/foundation/gestures/TouchSlopDetector;-><init>(Landroidx/compose/foundation/gestures/Orientation;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, p4

    move-object v2, v0

    move-object/from16 v0, p0

    :goto_2
    iput-object v1, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->b:Lkotlin/jvm/functions/Function2;

    iput-object v0, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->c:Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    iput-object v9, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->d:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object v2, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->e:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    iput-object v8, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->f:Landroidx/compose/ui/input/pointer/PointerInputChange;

    iput v5, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->g:F

    iput v7, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->i:I

    sget-object v10, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-interface {v0, v10, v3}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->N0(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v4, :cond_5

    goto/16 :goto_9

    :cond_5
    move-object/from16 v17, v3

    move-object v3, v2

    move-object v2, v10

    move-object v10, v9

    move v9, v5

    goto :goto_1

    :goto_3
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerEvent;

    iget-object v11, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    move-object v12, v11

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v12

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v12, :cond_7

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 p5, v8

    move-object v8, v15

    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    move/from16 p1, v14

    iget-wide v13, v8, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    iget-wide v6, v10, Lkotlin/jvm/internal/Ref$LongRef;->b:J

    invoke-static {v13, v14, v6, v7}, Landroidx/compose/ui/input/pointer/PointerId;->a(JJ)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v14, p1, 0x1

    move-object/from16 v8, p5

    const/4 v6, 0x2

    const/4 v7, 0x1

    goto :goto_4

    :cond_7
    move-object/from16 p5, v8

    move-object/from16 v15, p5

    :goto_5
    move-object v6, v15

    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v6, :cond_8

    goto/16 :goto_b

    :cond_8
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->b()Z

    move-result v7

    if-eqz v7, :cond_9

    goto/16 :goto_b

    :cond_9
    invoke-static {v6}, Landroidx/compose/ui/input/pointer/PointerEventKt;->d(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v2, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    move-object v6, v2

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v6, :cond_b

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-boolean v11, v11, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    if-eqz v11, :cond_a

    goto :goto_7

    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_b
    move-object/from16 v7, p5

    :goto_7
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v7, :cond_c

    goto :goto_b

    :cond_c
    iget-wide v6, v7, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    iput-wide v6, v10, Lkotlin/jvm/internal/Ref$LongRef;->b:J

    const/4 v2, 0x1

    goto :goto_8

    :cond_d
    const/4 v2, 0x1

    invoke-static {v6, v2}, Landroidx/compose/ui/input/pointer/PointerEventKt;->f(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    move-result-wide v11

    invoke-virtual {v3, v11, v12, v9, v2}, Landroidx/compose/foundation/gestures/TouchSlopDetector;->a(JFZ)J

    move-result-wide v11

    const-wide v13, 0x7fffffff7fffffffL

    and-long/2addr v13, v11

    const-wide v15, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v7, v13, v15

    if-eqz v7, :cond_f

    const/16 v7, 0x20

    shr-long/2addr v11, v7

    long-to-int v7, v11

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    new-instance v11, Ljava/lang/Float;

    invoke-direct {v11, v7}, Ljava/lang/Float;-><init>(F)V

    invoke-interface {v1, v6, v11}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->b()Z

    move-result v7

    if-eqz v7, :cond_e

    return-object v6

    :cond_e
    invoke-static {v3}, Landroidx/compose/foundation/gestures/TouchSlopDetector;->c(Landroidx/compose/foundation/gestures/TouchSlopDetector;)V

    :goto_8
    move-object/from16 v8, p5

    move v7, v2

    move-object v2, v3

    move-object v3, v5

    move v5, v9

    move-object v9, v10

    const/4 v6, 0x2

    goto/16 :goto_2

    :cond_f
    sget-object v7, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    iput-object v1, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->b:Lkotlin/jvm/functions/Function2;

    iput-object v0, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->c:Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    iput-object v10, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->d:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object v3, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->e:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    iput-object v6, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->f:Landroidx/compose/ui/input/pointer/PointerInputChange;

    iput v9, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->g:F

    const/4 v8, 0x2

    iput v8, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitHorizontalPointerSlopOrCancellation$1;->i:I

    invoke-interface {v0, v7, v5}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->N0(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_10

    :goto_9
    return-object v4

    :cond_10
    move-object v11, v1

    move-object v1, v6

    :goto_a
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->b()Z

    move-result v1

    if-eqz v1, :cond_11

    :goto_b
    return-object p5

    :cond_11
    move v7, v2

    move-object v2, v3

    move-object v3, v5

    move v6, v8

    move v5, v9

    move-object v9, v10

    move-object v1, v11

    move-object/from16 v8, p5

    goto/16 :goto_2
.end method

.method public static final c(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;

    invoke-direct {v0, p3}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;->e:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;->b:Landroidx/compose/ui/input/pointer/PointerInputChange;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-interface {p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->O0()Landroidx/compose/ui/input/pointer/PointerEvent;

    move-result-object p3

    invoke-static {p3, p1, p2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->j(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_4

    :cond_3
    invoke-interface {p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->O0()Landroidx/compose/ui/input/pointer/PointerEvent;

    move-result-object p3

    iget-object p3, p3, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    move-object v2, p3

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_5

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-wide v7, v7, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    invoke-static {v7, v8, p1, p2}, Landroidx/compose/ui/input/pointer/PointerId;->a(JJ)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    move-object v6, v4

    :goto_2
    move-object p2, v6

    check-cast p2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez p2, :cond_6

    goto :goto_4

    :cond_6
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance p3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object p2, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    invoke-interface {p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object v2

    invoke-interface {v2}, Landroidx/compose/ui/platform/ViewConfiguration;->b()J

    move-result-wide v5

    :try_start_1
    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v7, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;

    invoke-direct {v7, v2, p3, p1, v4}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$2;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    iput-object p2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;->b:Landroidx/compose/ui/input/pointer/PointerInputChange;

    iput-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput v3, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitLongPressOrCancellation$1;->f:I

    invoke-interface {p0, v5, v6, v7, v0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->c1(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    return-object v1

    :cond_7
    move-object p0, v2

    :goto_3
    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    if-eqz p0, :cond_9

    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/input/pointer/PointerInputChange;
    :try_end_1
    .catch Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez p0, :cond_8

    return-object p2

    :cond_8
    return-object p0

    :cond_9
    :goto_4
    return-object v4

    :catch_0
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez p0, :cond_a

    goto :goto_5

    :cond_a
    move-object p2, p0

    :goto_5
    return-object p2
.end method

.method public static final d(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLll0;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;
    .locals 18

    move-wide/from16 v0, p1

    move-object/from16 v2, p4

    instance-of v3, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;

    iget v4, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->i:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->i:I

    goto :goto_0

    :cond_0
    new-instance v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;

    invoke-direct {v3, v2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->h:Ljava/lang/Object;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->i:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    iget v0, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->g:F

    iget-object v1, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->f:Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v5, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->e:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    iget-object v9, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->d:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v10, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->c:Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    iget-object v11, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->b:Lkotlin/jvm/functions/Function2;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 p4, v5

    move v5, v0

    move-object v0, v10

    move-object v10, v9

    move-object v9, v3

    move-object/from16 v3, p4

    move v2, v7

    move-object/from16 p4, v8

    move v8, v6

    goto/16 :goto_9

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8

    :cond_2
    iget v0, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->g:F

    iget-object v1, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->e:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    iget-object v5, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->d:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v9, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->c:Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    iget-object v10, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->b:Lkotlin/jvm/functions/Function2;

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v17, v5

    move v5, v0

    move-object v0, v9

    move-object v9, v3

    move-object v3, v1

    move-object v1, v10

    move-object/from16 v10, v17

    goto :goto_2

    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v2, Landroidx/compose/ui/input/pointer/PointerType;->b:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/ui/input/pointer/PointerType;->c:I

    sget-object v5, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->O0()Landroidx/compose/ui/input/pointer/PointerEvent;

    move-result-object v5

    invoke-static {v5, v0, v1}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->j(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 p4, v8

    goto/16 :goto_a

    :cond_4
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object v5

    invoke-static {v5, v2}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->k(Landroidx/compose/ui/platform/ViewConfiguration;I)F

    move-result v2

    new-instance v5, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    iput-wide v0, v5, Lkotlin/jvm/internal/Ref$LongRef;->b:J

    new-instance v0, Landroidx/compose/foundation/gestures/TouchSlopDetector;

    const-wide/16 v9, 0x0

    invoke-direct {v0, v8, v9, v10, v8}, Landroidx/compose/foundation/gestures/TouchSlopDetector;-><init>(Landroidx/compose/foundation/gestures/Orientation;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, p3

    move-object v9, v5

    move-object v5, v3

    move v3, v2

    move-object v2, v0

    move-object/from16 v0, p0

    :goto_1
    iput-object v1, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->b:Lkotlin/jvm/functions/Function2;

    iput-object v0, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->c:Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    iput-object v9, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->d:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object v2, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->e:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    iput-object v8, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->f:Landroidx/compose/ui/input/pointer/PointerInputChange;

    iput v3, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->g:F

    iput v7, v5, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->i:I

    sget-object v10, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-interface {v0, v10, v5}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->N0(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v4, :cond_5

    goto/16 :goto_8

    :cond_5
    move/from16 v17, v3

    move-object v3, v2

    move-object v2, v10

    move-object v10, v9

    move-object v9, v5

    move/from16 v5, v17

    :goto_2
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerEvent;

    iget-object v11, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    move-object v12, v11

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v12

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v12, :cond_7

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 p4, v8

    move-object v8, v15

    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    move/from16 p1, v14

    iget-wide v13, v8, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    iget-wide v6, v10, Lkotlin/jvm/internal/Ref$LongRef;->b:J

    invoke-static {v13, v14, v6, v7}, Landroidx/compose/ui/input/pointer/PointerId;->a(JJ)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v14, p1, 0x1

    move-object/from16 v8, p4

    const/4 v6, 0x2

    const/4 v7, 0x1

    goto :goto_3

    :cond_7
    move-object/from16 p4, v8

    move-object/from16 v15, p4

    :goto_4
    move-object v6, v15

    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v6, :cond_8

    goto/16 :goto_a

    :cond_8
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->b()Z

    move-result v7

    if-eqz v7, :cond_9

    goto/16 :goto_a

    :cond_9
    invoke-static {v6}, Landroidx/compose/ui/input/pointer/PointerEventKt;->d(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v2, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    move-object v6, v2

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v6, :cond_b

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-boolean v11, v11, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    if-eqz v11, :cond_a

    goto :goto_6

    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_b
    move-object/from16 v7, p4

    :goto_6
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v7, :cond_c

    goto :goto_a

    :cond_c
    iget-wide v6, v7, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    iput-wide v6, v10, Lkotlin/jvm/internal/Ref$LongRef;->b:J

    const/4 v2, 0x1

    goto :goto_7

    :cond_d
    const/4 v2, 0x1

    invoke-static {v6, v2}, Landroidx/compose/ui/input/pointer/PointerEventKt;->f(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    move-result-wide v11

    invoke-virtual {v3, v11, v12, v5, v2}, Landroidx/compose/foundation/gestures/TouchSlopDetector;->a(JFZ)J

    move-result-wide v11

    const-wide v13, 0x7fffffff7fffffffL

    and-long/2addr v13, v11

    const-wide v15, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v7, v13, v15

    if-eqz v7, :cond_f

    new-instance v7, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v7, v11, v12}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    invoke-interface {v1, v6, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->b()Z

    move-result v7

    if-eqz v7, :cond_e

    return-object v6

    :cond_e
    invoke-static {v3}, Landroidx/compose/foundation/gestures/TouchSlopDetector;->c(Landroidx/compose/foundation/gestures/TouchSlopDetector;)V

    :goto_7
    move-object/from16 v8, p4

    move v7, v2

    move-object v2, v3

    move v3, v5

    move-object v5, v9

    move-object v9, v10

    const/4 v6, 0x2

    goto/16 :goto_1

    :cond_f
    sget-object v7, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    iput-object v1, v9, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->b:Lkotlin/jvm/functions/Function2;

    iput-object v0, v9, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->c:Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    iput-object v10, v9, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->d:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object v3, v9, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->e:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    iput-object v6, v9, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->f:Landroidx/compose/ui/input/pointer/PointerInputChange;

    iput v5, v9, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->g:F

    const/4 v8, 0x2

    iput v8, v9, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$awaitTouchSlopOrCancellation$1;->i:I

    invoke-interface {v0, v7, v9}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->N0(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_10

    :goto_8
    return-object v4

    :cond_10
    move-object v11, v1

    move-object v1, v6

    :goto_9
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->b()Z

    move-result v1

    if-eqz v1, :cond_11

    :goto_a
    return-object p4

    :cond_11
    move v7, v2

    move-object v2, v3

    move v3, v5

    move v6, v8

    move-object v5, v9

    move-object v9, v10

    move-object v1, v11

    move-object/from16 v8, p4

    goto/16 :goto_1
.end method

.method public static final e(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    new-instance v2, Lu9;

    const/4 v0, 0x3

    invoke-direct {v2, p1, v0}, Lu9;-><init>(Lkotlin/jvm/functions/Function1;I)V

    new-instance v5, Ly2;

    const/16 p1, 0x8

    invoke-direct {v5, p2, p1}, Ly2;-><init>(Lkotlin/jvm/functions/Function0;I)V

    new-instance v1, Lrt;

    const/4 p1, 0x5

    invoke-direct {v1, p1}, Lrt;-><init>(I)V

    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$13;

    const/4 v6, 0x0

    move-object v4, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectDragGestures$13;-><init>(Lrt;Lu9;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Ly2;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v0, p5}, Landroidx/compose/foundation/gestures/ForEachGestureKt;->b(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_0
    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic f(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;
    .locals 6

    new-instance v1, Lbp;

    const/16 v0, 0x1b

    invoke-direct {v1, v0}, Lbp;-><init>(I)V

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    new-instance p1, Lrt;

    const/4 p4, 0x7

    invoke-direct {p1, p4}, Lrt;-><init>(I)V

    :cond_0
    move-object v2, p1

    new-instance v3, Lrt;

    const/16 p1, 0x8

    invoke-direct {v3, p1}, Lrt;-><init>(I)V

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->e(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroidx/compose/ui/input/pointer/PointerInputScope;Lnz;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;
    .locals 6

    and-int/lit8 p5, p5, 0x1

    if-eqz p5, :cond_0

    new-instance p1, Lbp;

    const/16 p5, 0x1a

    invoke-direct {p1, p5}, Lbp;-><init>(I)V

    :cond_0
    move-object v1, p1

    new-instance v4, Lrt;

    const/4 p1, 0x6

    invoke-direct {v4, p1}, Lrt;-><init>(I)V

    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectHorizontalDragGestures$5;

    const/4 v5, 0x0

    move-object v3, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$detectHorizontalDragGestures$5;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lrt;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v0, p4}, Landroidx/compose/foundation/gestures/ForEachGestureKt;->b(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final h(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p4, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$drag$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$drag$1;

    iget v1, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$drag$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$drag$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$drag$1;

    invoke-direct {v0, p4}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$drag$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$drag$1;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$drag$1;->c:Lkotlin/jvm/functions/Function1;

    iget-object p1, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$drag$1;->b:Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object p3, p0

    move-object p0, p1

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :goto_1
    iput-object p0, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$drag$1;->b:Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    iput-object p3, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$drag$1;->c:Lkotlin/jvm/functions/Function1;

    iput v3, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$drag$1;->e:I

    invoke-static {p0, p1, p2, v0}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->a(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    :goto_2
    check-cast p4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez p4, :cond_4

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_4
    invoke-static {p4}, Landroidx/compose/ui/input/pointer/PointerEventKt;->d(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_5
    invoke-interface {p3, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide p1, p4, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    goto :goto_1
.end method

.method public static final i(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLl3;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p4

    instance-of v1, v0, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;

    iget v2, v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->h:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->h:I

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;

    invoke-direct {v1, v0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->g:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->h:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v6, :cond_1

    iget-object v3, v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->f:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v7, v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->e:Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    iget-object v8, v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->d:Landroidx/compose/foundation/gestures/Orientation;

    iget-object v9, v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->c:Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    iget-object v10, v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v16, v10

    move-object v10, v1

    move-object/from16 v1, v16

    goto :goto_3

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->O0()Landroidx/compose/ui/input/pointer/PointerEvent;

    move-result-object v3

    move-wide/from16 v7, p1

    invoke-static {v3, v7, v8}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->j(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    move-result v3

    if-eqz v3, :cond_3

    move v15, v6

    goto/16 :goto_e

    :cond_3
    move-object v3, v0

    move-object v9, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    :goto_1
    new-instance v10, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    iput-wide v7, v10, Lkotlin/jvm/internal/Ref$LongRef;->b:J

    move-object v7, v0

    move-object v8, v3

    move-object v3, v10

    :goto_2
    iput-object v1, v9, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->b:Lkotlin/jvm/functions/Function1;

    iput-object v0, v9, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->c:Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    iput-object v8, v9, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->d:Landroidx/compose/foundation/gestures/Orientation;

    iput-object v7, v9, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->e:Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    iput-object v3, v9, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->f:Lkotlin/jvm/internal/Ref$LongRef;

    iput v6, v9, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$horizontalDrag$1;->h:I

    sget-object v10, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-interface {v7, v10, v9}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->N0(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v2, :cond_4

    return-object v2

    :cond_4
    move-object/from16 v16, v9

    move-object v9, v0

    move-object v0, v10

    move-object/from16 v10, v16

    :goto_3
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerEvent;

    iget-object v11, v0, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    move-object v12, v11

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v12, :cond_6

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-wide v4, v15, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    move-object/from16 p0, v7

    iget-wide v6, v3, Lkotlin/jvm/internal/Ref$LongRef;->b:J

    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/input/pointer/PointerId;->a(JJ)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v7, p0

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_4

    :cond_6
    move-object/from16 p0, v7

    const/4 v14, 0x0

    :goto_5
    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v14, :cond_7

    const/4 v14, 0x0

    :goto_6
    const/4 v15, 0x1

    goto :goto_c

    :cond_7
    invoke-static {v14}, Landroidx/compose/ui/input/pointer/PointerEventKt;->d(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v0, v0, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v4, :cond_9

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-boolean v7, v7, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    if-eqz v7, :cond_8

    goto :goto_8

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_9
    const/4 v6, 0x0

    :goto_8
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v6, :cond_a

    goto :goto_6

    :cond_a
    iget-wide v4, v6, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    iput-wide v4, v3, Lkotlin/jvm/internal/Ref$LongRef;->b:J

    const/4 v15, 0x1

    goto :goto_b

    :cond_b
    const/4 v15, 0x1

    invoke-static {v14, v15}, Landroidx/compose/ui/input/pointer/PointerEventKt;->f(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    move-result-wide v4

    if-nez v8, :cond_c

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->d(J)F

    move-result v0

    goto :goto_a

    :cond_c
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v8, v0, :cond_d

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    :goto_9
    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    goto :goto_a

    :cond_d
    const/16 v0, 0x20

    shr-long/2addr v4, v0

    goto :goto_9

    :goto_a
    const/4 v4, 0x0

    cmpg-float v0, v0, v4

    if-nez v0, :cond_e

    :goto_b
    move-object/from16 v7, p0

    move-object v0, v9

    move-object v9, v10

    move v6, v15

    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_e
    :goto_c
    if-nez v14, :cond_f

    :goto_d
    const/4 v5, 0x0

    goto :goto_e

    :cond_f
    invoke-virtual {v14}, Landroidx/compose/ui/input/pointer/PointerInputChange;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_d

    :cond_10
    invoke-static {v14}, Landroidx/compose/ui/input/pointer/PointerEventKt;->d(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v0

    if-eqz v0, :cond_12

    move-object v5, v14

    :goto_e
    if-eqz v5, :cond_11

    move v4, v15

    goto :goto_f

    :cond_11
    const/4 v4, 0x0

    :goto_f
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_12
    invoke-interface {v1, v14}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v3, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    move-wide v5, v3

    move-object v3, v8

    move-wide v7, v5

    move-object v0, v9

    move-object v9, v10

    move v6, v15

    const/4 v5, 0x0

    goto/16 :goto_1
.end method

.method public static final j(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z
    .locals 6

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-wide v4, v4, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    invoke-static {v4, v5, p1, p2}, Landroidx/compose/ui/input/pointer/PointerId;->a(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    const/4 p0, 0x1

    if-eqz v3, :cond_2

    iget-boolean p1, v3, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    if-ne p1, p0, :cond_2

    move v1, p0

    :cond_2
    xor-int/2addr p0, v1

    return p0
.end method

.method public static final k(Landroidx/compose/ui/platform/ViewConfiguration;I)F
    .locals 1

    sget-object v0, Landroidx/compose/ui/input/pointer/PointerType;->b:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/input/pointer/PointerType;->d:I

    if-ne p1, v0, :cond_0

    invoke-interface {p0}, Landroidx/compose/ui/platform/ViewConfiguration;->g()F

    move-result p0

    sget p1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->a:F

    mul-float/2addr p0, p1

    return p0

    :cond_0
    invoke-interface {p0}, Landroidx/compose/ui/platform/ViewConfiguration;->g()F

    move-result p0

    return p0
.end method

.method public static final l(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerInputChange;Lrt;Lu9;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Ly2;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    instance-of v2, v1, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;

    iget v3, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->q:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->q:I

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;

    invoke-direct {v2, v1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->p:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->q:I

    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_0

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :pswitch_0
    iget-object v0, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->g:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v4, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->f:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    iget-object v5, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->e:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    iget-object v7, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->d:Lkotlin/Function;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    iget-object v8, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->c:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    iget-object v9, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->b:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v15, v3

    move-object v13, v6

    goto/16 :goto_29

    :pswitch_1
    iget v0, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->o:F

    iget-object v4, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->m:Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v5, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->l:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    iget-object v15, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->k:Lkotlin/jvm/internal/Ref$LongRef;

    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    iget-object v7, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->j:Ljava/lang/Object;

    check-cast v7, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    iget-object v8, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->i:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/internal/Ref$LongRef;

    const-wide v18, 0x7fffffff7fffffffL

    iget-object v9, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->h:Ljava/lang/Object;

    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v10, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->g:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/functions/Function1;

    iget-object v13, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->f:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/functions/Function0;

    iget-object v11, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->e:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function2;

    iget-object v12, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->d:Lkotlin/Function;

    check-cast v12, Lkotlin/jvm/functions/Function3;

    iget-object v14, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->c:Ljava/lang/Object;

    check-cast v14, Landroidx/compose/foundation/gestures/Orientation;

    iget-object v6, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->b:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v1, v15

    move-object v15, v3

    move-object v3, v6

    move-object v6, v10

    move-object v10, v14

    move-object v14, v5

    move-object v5, v9

    move-object v9, v12

    move-object v12, v1

    move v1, v0

    move-object v0, v8

    move-object v8, v11

    move-object v11, v7

    move-object v7, v13

    goto/16 :goto_23

    :pswitch_2
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    const-wide v18, 0x7fffffff7fffffffL

    iget v0, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->o:F

    iget-object v4, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->l:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    iget-object v5, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->k:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v6, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->j:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    iget-object v7, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->i:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v8, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->h:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v9, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->g:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    iget-object v10, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->f:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/functions/Function0;

    iget-object v11, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->e:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function2;

    iget-object v12, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->d:Lkotlin/Function;

    check-cast v12, Lkotlin/jvm/functions/Function3;

    iget-object v13, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->c:Ljava/lang/Object;

    check-cast v13, Landroidx/compose/foundation/gestures/Orientation;

    iget-object v14, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->b:Ljava/lang/Object;

    check-cast v14, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v24, v2

    move v2, v0

    move-object v0, v7

    move-object v7, v10

    move-object v10, v13

    move-object v13, v3

    move-object/from16 v3, v24

    move-object/from16 v24, v12

    move-object v12, v5

    move-object v5, v8

    move-object v8, v11

    move-object v11, v6

    move-object v6, v9

    move-object/from16 v9, v24

    goto/16 :goto_1c

    :pswitch_3
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    const-wide v18, 0x7fffffff7fffffffL

    iget-object v0, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->j:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v4, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->i:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v5, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->h:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v6, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->g:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    iget-object v7, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->f:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    iget-object v8, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->e:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function2;

    iget-object v9, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->d:Lkotlin/Function;

    check-cast v9, Lkotlin/jvm/functions/Function3;

    iget-object v10, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->c:Ljava/lang/Object;

    check-cast v10, Landroidx/compose/foundation/gestures/Orientation;

    iget-object v11, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->b:Ljava/lang/Object;

    check-cast v11, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v13, v3

    goto/16 :goto_15

    :pswitch_4
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    const-wide v18, 0x7fffffff7fffffffL

    iget v0, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->o:F

    iget-object v4, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->m:Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v6, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->l:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    iget-object v7, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->k:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v8, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->j:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    iget-object v9, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->i:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v10, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->h:Ljava/lang/Object;

    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v11, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->g:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function1;

    iget-object v12, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->f:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/functions/Function0;

    iget-object v13, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->e:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/functions/Function2;

    iget-object v14, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->d:Lkotlin/Function;

    check-cast v14, Lkotlin/jvm/functions/Function3;

    iget-object v15, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->c:Ljava/lang/Object;

    check-cast v15, Landroidx/compose/foundation/gestures/Orientation;

    iget-object v5, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->b:Ljava/lang/Object;

    check-cast v5, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v1, v13

    move-object v13, v3

    move-object v3, v7

    move-object v7, v1

    move-object v1, v10

    move-object v10, v8

    move-object v8, v12

    move-object v12, v9

    move-object v9, v11

    move-object v11, v5

    move-object v5, v15

    move-object v15, v6

    move-object v6, v14

    goto/16 :goto_e

    :pswitch_5
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    const-wide v18, 0x7fffffff7fffffffL

    iget v0, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->o:F

    iget-object v4, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->l:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    iget-object v5, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->k:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v6, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->j:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    iget-object v7, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->i:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v8, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->h:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v9, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->g:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    iget-object v10, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->f:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/functions/Function0;

    iget-object v11, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->e:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function2;

    iget-object v12, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->d:Lkotlin/Function;

    check-cast v12, Lkotlin/jvm/functions/Function3;

    iget-object v13, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->c:Ljava/lang/Object;

    check-cast v13, Landroidx/compose/foundation/gestures/Orientation;

    iget-object v14, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->b:Ljava/lang/Object;

    check-cast v14, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v15, v11

    move-object v11, v6

    move-object v6, v12

    move-object v12, v7

    move-object v7, v15

    move-object v15, v4

    move-object v4, v9

    move-object v9, v5

    move-object v5, v13

    const/4 v13, 0x2

    goto/16 :goto_6

    :pswitch_6
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    const-wide v18, 0x7fffffff7fffffffL

    iget-boolean v0, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->n:Z

    iget-object v4, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->h:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    iget-object v5, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->g:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    iget-object v6, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->f:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/functions/Function2;

    iget-object v7, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->e:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/functions/Function3;

    iget-object v8, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->d:Lkotlin/Function;

    check-cast v8, Landroidx/compose/foundation/gestures/Orientation;

    iget-object v9, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->c:Ljava/lang/Object;

    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v10, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->b:Ljava/lang/Object;

    check-cast v10, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v24, v8

    move-object v8, v5

    move-object/from16 v5, v24

    move-object/from16 v24, v7

    move-object v7, v6

    move-object/from16 v6, v24

    goto :goto_2

    :pswitch_7
    const-wide v16, 0x7fc000007fc00000L    # 2.247117487993712E307

    const-wide v18, 0x7fffffff7fffffffL

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    :cond_1
    iput-object v0, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->b:Ljava/lang/Object;

    move-object/from16 v4, p1

    iput-object v4, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->c:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->d:Lkotlin/Function;

    move-object/from16 v6, p3

    iput-object v6, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->e:Ljava/lang/Object;

    move-object/from16 v7, p4

    iput-object v7, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->f:Ljava/lang/Object;

    move-object/from16 v8, p5

    iput-object v8, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->g:Ljava/lang/Object;

    move-object/from16 v9, p6

    iput-object v9, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->h:Ljava/lang/Object;

    iput-boolean v1, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->n:Z

    const/4 v10, 0x1

    iput v10, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->q:I

    const/4 v10, 0x2

    invoke-static {v0, v5, v2, v10}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->b(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v3, :cond_2

    :goto_1
    move-object v15, v3

    goto/16 :goto_28

    :cond_2
    move-object v5, v9

    move-object v9, v4

    move-object v4, v5

    move-object v10, v0

    move v0, v1

    move-object v1, v11

    const/4 v5, 0x0

    :goto_2
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    new-instance v11, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    sget-object v12, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v12, 0x0

    iput-wide v12, v11, Lkotlin/jvm/internal/Ref$LongRef;->b:J

    if-eqz v0, :cond_13

    :goto_3
    iget-wide v12, v1, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    iget v0, v1, Landroidx/compose/ui/input/pointer/PointerInputChange;->i:I

    sget-object v9, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v10}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->O0()Landroidx/compose/ui/input/pointer/PointerEvent;

    move-result-object v9

    invoke-static {v9, v12, v13}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->j(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v13, v3

    :goto_4
    const/4 v3, 0x0

    goto/16 :goto_f

    :cond_3
    invoke-interface {v10}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object v9

    invoke-static {v9, v0}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->k(Landroidx/compose/ui/platform/ViewConfiguration;I)F

    move-result v0

    new-instance v9, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    iput-wide v12, v9, Lkotlin/jvm/internal/Ref$LongRef;->b:J

    new-instance v12, Landroidx/compose/foundation/gestures/TouchSlopDetector;

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    invoke-direct {v12, v5, v13, v14, v15}, Landroidx/compose/foundation/gestures/TouchSlopDetector;-><init>(Landroidx/compose/foundation/gestures/Orientation;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v12

    move-object v12, v11

    move-object v11, v10

    :goto_5
    iput-object v11, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->b:Ljava/lang/Object;

    iput-object v5, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->c:Ljava/lang/Object;

    iput-object v6, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->d:Lkotlin/Function;

    iput-object v7, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->e:Ljava/lang/Object;

    iput-object v8, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->f:Ljava/lang/Object;

    iput-object v4, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->g:Ljava/lang/Object;

    iput-object v1, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->h:Ljava/lang/Object;

    iput-object v12, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->i:Ljava/lang/Object;

    iput-object v10, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->j:Ljava/lang/Object;

    iput-object v9, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->k:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object v15, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->l:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    const/4 v13, 0x0

    iput-object v13, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->m:Landroidx/compose/ui/input/pointer/PointerInputChange;

    iput v0, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->o:F

    const/4 v13, 0x2

    iput v13, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->q:I

    sget-object v14, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-interface {v10, v14, v2}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->N0(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v3, :cond_4

    goto :goto_1

    :cond_4
    move-object/from16 v24, v8

    move-object v8, v1

    move-object v1, v14

    move-object v14, v11

    move-object v11, v10

    move-object/from16 v10, v24

    :goto_6
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerEvent;

    iget-object v13, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    move-object/from16 v21, v13

    check-cast v21, Ljava/util/Collection;

    move-object/from16 v22, v3

    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->size()I

    move-result v3

    move-object/from16 v21, v11

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v3, :cond_6

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    move/from16 p0, v3

    move-object/from16 v3, v23

    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    move-object/from16 p1, v4

    iget-wide v3, v3, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    move-object/from16 p2, v10

    move/from16 p3, v11

    iget-wide v10, v9, Lkotlin/jvm/internal/Ref$LongRef;->b:J

    invoke-static {v3, v4, v10, v11}, Landroidx/compose/ui/input/pointer/PointerId;->a(JJ)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_8

    :cond_5
    add-int/lit8 v11, p3, 0x1

    move/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v10, p2

    goto :goto_7

    :cond_6
    move-object/from16 p1, v4

    move-object/from16 p2, v10

    const/16 v23, 0x0

    :goto_8
    move-object/from16 v3, v23

    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v3, :cond_7

    :goto_9
    move-object/from16 v4, p1

    move-object v1, v8

    move-object v11, v12

    move-object v10, v14

    move-object/from16 v13, v22

    const/4 v3, 0x0

    move-object/from16 v8, p2

    goto/16 :goto_f

    :cond_7
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerInputChange;->b()Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_9

    :cond_8
    invoke-static {v3}, Landroidx/compose/ui/input/pointer/PointerEventKt;->d(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v1, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v3, :cond_a

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-boolean v11, v11, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    if-eqz v11, :cond_9

    goto :goto_b

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_a
    const/4 v10, 0x0

    :goto_b
    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v10, :cond_b

    goto :goto_9

    :cond_b
    iget-wide v3, v10, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    iput-wide v3, v9, Lkotlin/jvm/internal/Ref$LongRef;->b:J

    move-object v1, v8

    move-object v4, v9

    goto :goto_c

    :cond_c
    move-object v1, v8

    move-object v4, v9

    const/4 v10, 0x1

    invoke-static {v3, v10}, Landroidx/compose/ui/input/pointer/PointerEventKt;->f(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    move-result-wide v8

    invoke-virtual {v15, v8, v9, v0, v10}, Landroidx/compose/foundation/gestures/TouchSlopDetector;->a(JFZ)J

    move-result-wide v8

    and-long v10, v8, v18

    cmp-long v10, v10, v16

    if-eqz v10, :cond_e

    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    iput-wide v8, v12, Lkotlin/jvm/internal/Ref$LongRef;->b:J

    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerInputChange;->b()Z

    move-result v8

    if-eqz v8, :cond_d

    move-object/from16 v4, p1

    move-object/from16 v8, p2

    move-object v11, v12

    move-object v10, v14

    move-object/from16 v13, v22

    goto :goto_f

    :cond_d
    invoke-static {v15}, Landroidx/compose/foundation/gestures/TouchSlopDetector;->c(Landroidx/compose/foundation/gestures/TouchSlopDetector;)V

    :goto_c
    move-object/from16 v8, p2

    move-object v9, v4

    move-object v11, v14

    move-object/from16 v10, v21

    move-object/from16 v3, v22

    const-wide/16 v13, 0x0

    move-object/from16 v4, p1

    goto/16 :goto_5

    :cond_e
    sget-object v8, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    iput-object v14, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->b:Ljava/lang/Object;

    iput-object v5, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->c:Ljava/lang/Object;

    iput-object v6, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->d:Lkotlin/Function;

    iput-object v7, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->e:Ljava/lang/Object;

    move-object/from16 v10, p2

    iput-object v10, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->f:Ljava/lang/Object;

    move-object/from16 v9, p1

    iput-object v9, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->g:Ljava/lang/Object;

    iput-object v1, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->h:Ljava/lang/Object;

    iput-object v12, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->i:Ljava/lang/Object;

    move-object/from16 v11, v21

    iput-object v11, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->j:Ljava/lang/Object;

    iput-object v4, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->k:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object v15, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->l:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    iput-object v3, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->m:Landroidx/compose/ui/input/pointer/PointerInputChange;

    iput v0, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->o:F

    const/4 v13, 0x3

    iput v13, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->q:I

    invoke-interface {v11, v8, v2}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->N0(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v13, v22

    if-ne v8, v13, :cond_f

    :goto_d
    move-object v15, v13

    goto/16 :goto_28

    :cond_f
    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    move-object v8, v10

    move-object v10, v11

    move-object v11, v14

    :goto_e
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->b()Z

    move-result v4

    if-eqz v4, :cond_12

    move-object v4, v9

    move-object v10, v11

    move-object v11, v12

    goto/16 :goto_4

    :goto_f
    if-eqz v3, :cond_11

    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerInputChange;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_10

    :cond_10
    move-object v3, v13

    goto/16 :goto_3

    :cond_11
    :goto_10
    move-object v9, v3

    goto :goto_11

    :cond_12
    move-object v4, v9

    move-object v9, v3

    move-object v3, v13

    const-wide/16 v13, 0x0

    goto/16 :goto_5

    :cond_13
    move-object v13, v3

    :goto_11
    if-nez v9, :cond_2a

    invoke-interface {v10}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->O0()Landroidx/compose/ui/input/pointer/PointerEvent;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v12, 0x0

    :goto_12
    if-ge v12, v3, :cond_2a

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-boolean v14, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    if-eqz v14, :cond_29

    move-object v0, v6

    move-object v6, v4

    move-object v4, v9

    move-object v9, v0

    move-object v0, v8

    move-object v8, v7

    move-object v7, v0

    move-object v0, v11

    move-object v11, v10

    move-object v10, v5

    move-object v5, v1

    :goto_13
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    iput-object v11, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->b:Ljava/lang/Object;

    iput-object v10, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->c:Ljava/lang/Object;

    iput-object v9, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->d:Lkotlin/Function;

    iput-object v8, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->e:Ljava/lang/Object;

    iput-object v7, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->f:Ljava/lang/Object;

    iput-object v6, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->g:Ljava/lang/Object;

    iput-object v5, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->h:Ljava/lang/Object;

    iput-object v4, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->i:Ljava/lang/Object;

    iput-object v0, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->j:Ljava/lang/Object;

    const/4 v15, 0x0

    iput-object v15, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->k:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object v15, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->l:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    iput-object v15, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->m:Landroidx/compose/ui/input/pointer/PointerInputChange;

    const/4 v3, 0x4

    iput v3, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->q:I

    invoke-interface {v11, v1, v2}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->N0(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v13, :cond_14

    :goto_14
    goto :goto_d

    :cond_14
    :goto_15
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerEvent;

    iget-object v1, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v12, 0x0

    :goto_16
    if-ge v12, v3, :cond_17

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {v14}, Landroidx/compose/ui/input/pointer/PointerInputChange;->b()Z

    move-result v14

    if-eqz v14, :cond_16

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v12, 0x0

    :goto_17
    if-ge v12, v3, :cond_17

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-boolean v14, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    if-eqz v14, :cond_15

    goto :goto_13

    :cond_15
    add-int/lit8 v12, v12, 0x1

    goto :goto_17

    :cond_16
    add-int/lit8 v12, v12, 0x1

    goto :goto_16

    :cond_17
    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v12, 0x0

    :goto_18
    if-ge v12, v3, :cond_28

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-boolean v14, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    if-eqz v14, :cond_27

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-eqz v1, :cond_18

    iget-wide v3, v1, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    goto :goto_19

    :cond_18
    sget-object v1, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v3, 0x0

    :goto_19
    iget-wide v14, v5, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    invoke-static {v3, v4, v14, v15}, Landroidx/compose/ui/geometry/Offset;->e(JJ)J

    move-result-wide v3

    iget-wide v14, v5, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    iget v1, v5, Landroidx/compose/ui/input/pointer/PointerInputChange;->i:I

    invoke-interface {v11}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->O0()Landroidx/compose/ui/input/pointer/PointerEvent;

    move-result-object v12

    invoke-static {v12, v14, v15}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->j(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    move-result v12

    if-eqz v12, :cond_19

    move-object v1, v8

    move-object v8, v7

    move-object v7, v1

    move-object v1, v5

    move-object v4, v6

    move-object v6, v9

    move-object v5, v10

    move-object v10, v11

    move-object v15, v13

    :goto_1a
    const/4 v9, 0x0

    move-object v11, v0

    goto/16 :goto_24

    :cond_19
    invoke-interface {v11}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object v12

    invoke-static {v12, v1}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->k(Landroidx/compose/ui/platform/ViewConfiguration;I)F

    move-result v1

    new-instance v12, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    iput-wide v14, v12, Lkotlin/jvm/internal/Ref$LongRef;->b:J

    new-instance v14, Landroidx/compose/foundation/gestures/TouchSlopDetector;

    const/4 v15, 0x0

    invoke-direct {v14, v10, v3, v4, v15}, Landroidx/compose/foundation/gestures/TouchSlopDetector;-><init>(Landroidx/compose/foundation/gestures/Orientation;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v3, v11

    :goto_1b
    iput-object v3, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->b:Ljava/lang/Object;

    iput-object v10, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->c:Ljava/lang/Object;

    iput-object v9, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->d:Lkotlin/Function;

    iput-object v8, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->e:Ljava/lang/Object;

    iput-object v7, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->f:Ljava/lang/Object;

    iput-object v6, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->g:Ljava/lang/Object;

    iput-object v5, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->h:Ljava/lang/Object;

    iput-object v0, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->i:Ljava/lang/Object;

    iput-object v11, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->j:Ljava/lang/Object;

    iput-object v12, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->k:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object v14, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->l:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    const/4 v15, 0x0

    iput-object v15, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->m:Landroidx/compose/ui/input/pointer/PointerInputChange;

    iput v1, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->o:F

    const/4 v4, 0x5

    iput v4, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->q:I

    sget-object v4, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-interface {v11, v4, v2}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->N0(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v13, :cond_1a

    goto/16 :goto_14

    :cond_1a
    move-object/from16 v24, v2

    move v2, v1

    move-object v1, v4

    move-object v4, v14

    move-object v14, v3

    move-object/from16 v3, v24

    :goto_1c
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerEvent;

    iget-object v15, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    move-object/from16 v20, v15

    check-cast v20, Ljava/util/Collection;

    move-object/from16 v22, v13

    invoke-interface/range {v20 .. v20}, Ljava/util/Collection;->size()I

    move-result v13

    move-object/from16 v20, v11

    const/4 v11, 0x0

    :goto_1d
    if-ge v11, v13, :cond_1c

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move/from16 v23, v11

    move-object/from16 v11, v21

    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    move-object/from16 p0, v5

    move-object/from16 p1, v6

    iget-wide v5, v11, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    move-object v11, v7

    move-object/from16 p2, v8

    iget-wide v7, v12, Lkotlin/jvm/internal/Ref$LongRef;->b:J

    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/input/pointer/PointerId;->a(JJ)Z

    move-result v5

    if-eqz v5, :cond_1b

    move-object/from16 v5, v21

    goto :goto_1e

    :cond_1b
    add-int/lit8 v5, v23, 0x1

    move-object/from16 v6, p1

    move-object/from16 v8, p2

    move-object v7, v11

    move v11, v5

    move-object/from16 v5, p0

    goto :goto_1d

    :cond_1c
    move-object/from16 p0, v5

    move-object/from16 p1, v6

    move-object v11, v7

    move-object/from16 p2, v8

    const/4 v5, 0x0

    :goto_1e
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v5, :cond_1d

    :goto_1f
    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    move-object v2, v3

    move-object v6, v9

    move-object v5, v10

    move-object v8, v11

    move-object v10, v14

    move-object/from16 v15, v22

    goto/16 :goto_1a

    :cond_1d
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->b()Z

    move-result v6

    if-eqz v6, :cond_1e

    goto :goto_1f

    :cond_1e
    invoke-static {v5}, Landroidx/compose/ui/input/pointer/PointerEventKt;->d(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v6

    if-eqz v6, :cond_22

    iget-object v1, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    move-object v5, v1

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_20
    if-ge v6, v5, :cond_20

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-boolean v8, v8, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    if-eqz v8, :cond_1f

    move-object v5, v7

    goto :goto_21

    :cond_1f
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_20
    const/4 v5, 0x0

    :goto_21
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v5, :cond_21

    goto :goto_1f

    :cond_21
    iget-wide v5, v5, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    iput-wide v5, v12, Lkotlin/jvm/internal/Ref$LongRef;->b:J

    goto :goto_22

    :cond_22
    const/4 v1, 0x1

    invoke-static {v5, v1}, Landroidx/compose/ui/input/pointer/PointerEventKt;->f(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7, v2, v1}, Landroidx/compose/foundation/gestures/TouchSlopDetector;->a(JFZ)J

    move-result-wide v6

    and-long v6, v6, v18

    cmp-long v1, v6, v16

    if-eqz v1, :cond_24

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    const/4 v1, 0x0

    invoke-static {v5, v1}, Landroidx/compose/ui/input/pointer/PointerEventKt;->f(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    move-result-wide v6

    iput-wide v6, v0, Lkotlin/jvm/internal/Ref$LongRef;->b:J

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->b()Z

    move-result v1

    if-eqz v1, :cond_23

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    move-object v2, v3

    move-object v6, v9

    move-object v8, v11

    move-object/from16 v15, v22

    move-object v11, v0

    move-object v9, v5

    move-object v5, v10

    move-object v10, v14

    goto/16 :goto_24

    :cond_23
    invoke-static {v4}, Landroidx/compose/foundation/gestures/TouchSlopDetector;->c(Landroidx/compose/foundation/gestures/TouchSlopDetector;)V

    :goto_22
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v8, p2

    move v1, v2

    move-object v2, v3

    move-object v7, v11

    move-object v3, v14

    move-object/from16 v11, v20

    move-object/from16 v13, v22

    move-object v14, v4

    goto/16 :goto_1b

    :cond_24
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    iput-object v14, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->b:Ljava/lang/Object;

    iput-object v10, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->c:Ljava/lang/Object;

    iput-object v9, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->d:Lkotlin/Function;

    move-object/from16 v8, p2

    iput-object v8, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->e:Ljava/lang/Object;

    iput-object v11, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->f:Ljava/lang/Object;

    move-object/from16 v6, p1

    iput-object v6, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->g:Ljava/lang/Object;

    move-object/from16 v7, p0

    iput-object v7, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->h:Ljava/lang/Object;

    iput-object v0, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->i:Ljava/lang/Object;

    move-object/from16 v13, v20

    iput-object v13, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->j:Ljava/lang/Object;

    iput-object v12, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->k:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object v4, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->l:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    iput-object v5, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->m:Landroidx/compose/ui/input/pointer/PointerInputChange;

    iput v2, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->o:F

    const/4 v15, 0x6

    iput v15, v3, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->q:I

    invoke-interface {v13, v1, v3}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->N0(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v15, v22

    if-ne v1, v15, :cond_25

    goto/16 :goto_28

    :cond_25
    move v1, v2

    move-object v2, v3

    move-object v3, v14

    move-object v14, v4

    move-object v4, v5

    move-object v5, v7

    move-object v7, v11

    move-object v11, v13

    :goto_23
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->b()Z

    move-result v4

    if-eqz v4, :cond_26

    move-object v1, v8

    move-object v8, v7

    move-object v7, v1

    move-object v11, v0

    move-object v1, v5

    move-object v4, v6

    move-object v6, v9

    move-object v5, v10

    const/4 v9, 0x0

    move-object v10, v3

    :goto_24
    move-object v13, v15

    goto/16 :goto_11

    :cond_26
    move-object v13, v15

    goto/16 :goto_1b

    :cond_27
    move-object v15, v13

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_18

    :cond_28
    move-object v1, v9

    move-object v9, v4

    move-object v4, v6

    move-object v6, v1

    move-object v1, v8

    move-object v8, v7

    move-object v7, v1

    move-object v1, v5

    move-object v5, v10

    move-object v10, v11

    move-object v11, v0

    goto/16 :goto_11

    :cond_29
    move-object v15, v13

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_12

    :cond_2a
    move-object v15, v13

    if-eqz v9, :cond_39

    iget-wide v12, v11, Lkotlin/jvm/internal/Ref$LongRef;->b:J

    new-instance v0, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v0, v12, v13}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    invoke-interface {v6, v1, v9, v0}, Lkotlin/jvm/functions/Function3;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, v11, Lkotlin/jvm/internal/Ref$LongRef;->b:J

    new-instance v3, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v3, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    invoke-interface {v7, v9, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, v9, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    invoke-interface {v10}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->O0()Landroidx/compose/ui/input/pointer/PointerEvent;

    move-result-object v3

    invoke-static {v3, v0, v1}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->j(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    move-result v3

    if-eqz v3, :cond_2b

    :goto_25
    const/4 v6, 0x0

    goto/16 :goto_32

    :cond_2b
    :goto_26
    new-instance v3, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    iput-wide v0, v3, Lkotlin/jvm/internal/Ref$LongRef;->b:J

    move-object v0, v3

    move-object v9, v7

    move-object v5, v10

    move-object v7, v4

    move-object v4, v5

    :goto_27
    iput-object v9, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->b:Ljava/lang/Object;

    iput-object v8, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->c:Ljava/lang/Object;

    iput-object v7, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->d:Lkotlin/Function;

    iput-object v5, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->e:Ljava/lang/Object;

    iput-object v4, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->f:Ljava/lang/Object;

    iput-object v0, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->g:Ljava/lang/Object;

    const/4 v13, 0x0

    iput-object v13, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->h:Ljava/lang/Object;

    iput-object v13, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->i:Ljava/lang/Object;

    iput-object v13, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->j:Ljava/lang/Object;

    iput-object v13, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->k:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object v13, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->l:Landroidx/compose/foundation/gestures/TouchSlopDetector;

    iput-object v13, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->m:Landroidx/compose/ui/input/pointer/PointerInputChange;

    const/4 v1, 0x7

    iput v1, v2, Landroidx/compose/foundation/gestures/DragGestureDetectorKt$processDragGesture$1;->q:I

    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-interface {v4, v1, v2}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->N0(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v15, :cond_2c

    :goto_28
    return-object v15

    :cond_2c
    :goto_29
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerEvent;

    iget-object v3, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    move-object v6, v3

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    const/4 v10, 0x0

    :goto_2a
    if-ge v10, v6, :cond_2e

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-wide v13, v12, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    move-object/from16 p0, v2

    move-object v12, v3

    iget-wide v2, v0, Lkotlin/jvm/internal/Ref$LongRef;->b:J

    invoke-static {v13, v14, v2, v3}, Landroidx/compose/ui/input/pointer/PointerId;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_2d

    goto :goto_2b

    :cond_2d
    add-int/lit8 v10, v10, 0x1

    const/4 v13, 0x0

    move-object/from16 v2, p0

    move-object v3, v12

    goto :goto_2a

    :cond_2e
    move-object/from16 p0, v2

    const/4 v11, 0x0

    :goto_2b
    move-object v2, v11

    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v2, :cond_2f

    const/4 v2, 0x0

    :goto_2c
    const/4 v10, 0x1

    goto :goto_30

    :cond_2f
    invoke-static {v2}, Landroidx/compose/ui/input/pointer/PointerEventKt;->d(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v3

    if-eqz v3, :cond_33

    iget-object v1, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v6, 0x0

    :goto_2d
    if-ge v6, v3, :cond_31

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-boolean v11, v11, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    if-eqz v11, :cond_30

    goto :goto_2e

    :cond_30
    add-int/lit8 v6, v6, 0x1

    goto :goto_2d

    :cond_31
    const/4 v10, 0x0

    :goto_2e
    check-cast v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v10, :cond_32

    goto :goto_2c

    :cond_32
    iget-wide v1, v10, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    iput-wide v1, v0, Lkotlin/jvm/internal/Ref$LongRef;->b:J

    const/4 v10, 0x1

    goto :goto_2f

    :cond_33
    const/4 v10, 0x1

    invoke-static {v2, v10}, Landroidx/compose/ui/input/pointer/PointerEventKt;->f(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    move-result-wide v11

    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/Offset;->d(J)F

    move-result v1

    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-nez v1, :cond_34

    :goto_2f
    move-object/from16 v2, p0

    goto/16 :goto_27

    :cond_34
    :goto_30
    if-nez v2, :cond_35

    :goto_31
    move-object v4, v7

    goto/16 :goto_25

    :cond_35
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->b()Z

    move-result v0

    if-eqz v0, :cond_36

    goto :goto_31

    :cond_36
    invoke-static {v2}, Landroidx/compose/ui/input/pointer/PointerEventKt;->d(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v0

    if-eqz v0, :cond_38

    move-object v6, v2

    move-object v4, v7

    :goto_32
    if-nez v6, :cond_37

    invoke-interface {v8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_33

    :cond_37
    invoke-interface {v4, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    :cond_38
    const/4 v1, 0x0

    invoke-static {v2, v1}, Landroidx/compose/ui/input/pointer/PointerEventKt;->f(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J

    move-result-wide v3

    new-instance v0, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v0, v3, v4}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    invoke-interface {v9, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    iget-wide v2, v2, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    move-wide v0, v2

    move-object v10, v5

    move-object v4, v7

    move-object v7, v9

    move-object/from16 v2, p0

    goto/16 :goto_26

    :cond_39
    :goto_33
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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
