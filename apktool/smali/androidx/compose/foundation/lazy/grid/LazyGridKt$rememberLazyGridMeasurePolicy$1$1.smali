.class final Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasurePolicy;


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Landroidx/compose/foundation/lazy/grid/LazyGridState;

.field public final synthetic b:Z

.field public final synthetic c:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;

.field public final synthetic f:Landroidx/compose/foundation/layout/Arrangement$Vertical;

.field public final synthetic g:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field public final synthetic h:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic i:Landroidx/compose/ui/graphics/GraphicsContext;

.field public final synthetic j:Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/reflect/KProperty0;Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement$Companion$StickToTopPlacement$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->a:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iput-boolean p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->b:Z

    iput-object p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->c:Landroidx/compose/foundation/layout/PaddingValues;

    iput-object p4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->d:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->e:Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;

    iput-object p6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->f:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iput-object p7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->g:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iput-object p8, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->h:Lkotlinx/coroutines/CoroutineScope;

    iput-object p9, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->i:Landroidx/compose/ui/graphics/GraphicsContext;

    iput-object p10, p0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->j:Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 69

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-wide/from16 v11, p2

    iget-object v13, v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->c:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    iget-object v14, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->a:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iget-object v1, v14, Landroidx/compose/foundation/lazy/grid/LazyGridState;->s:Landroidx/compose/runtime/MutableState;

    iget-object v15, v14, Landroidx/compose/foundation/lazy/grid/LazyGridState;->d:Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    iget-boolean v1, v14, Landroidx/compose/foundation/lazy/grid/LazyGridState;->b:Z

    const/16 v21, 0x1

    if-nez v1, :cond_1

    invoke-interface {v13}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->u0()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v32, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v32, v21

    :goto_1
    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->b:Z

    if-eqz v1, :cond_2

    sget-object v3, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_2

    :cond_2
    sget-object v3, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    :goto_2
    invoke-static {v11, v12, v3}, Landroidx/compose/foundation/CheckScrollableContainerConstraintsKt;->a(JLandroidx/compose/foundation/gestures/Orientation;)V

    iget-object v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->c:Landroidx/compose/foundation/layout/PaddingValues;

    if-eqz v1, :cond_3

    invoke-interface {v13}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    invoke-interface {v3, v4}, Landroidx/compose/foundation/layout/PaddingValues;->b(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v4

    invoke-interface {v13, v4}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v4

    goto :goto_3

    :cond_3
    invoke-interface {v13}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/PaddingKt;->g(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v4

    invoke-interface {v13, v4}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v4

    :goto_3
    if-eqz v1, :cond_4

    invoke-interface {v13}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v5

    invoke-interface {v3, v5}, Landroidx/compose/foundation/layout/PaddingValues;->c(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v5

    invoke-interface {v13, v5}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v5

    goto :goto_4

    :cond_4
    invoke-interface {v13}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v5

    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/PaddingKt;->f(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v5

    invoke-interface {v13, v5}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v5

    :goto_4
    invoke-interface {v3}, Landroidx/compose/foundation/layout/PaddingValues;->d()F

    move-result v6

    invoke-interface {v13, v6}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v6

    invoke-interface {v3}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    move-result v3

    invoke-interface {v13, v3}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v3

    add-int/2addr v3, v6

    add-int v7, v4, v5

    if-eqz v1, :cond_5

    move v8, v3

    goto :goto_5

    :cond_5
    move v8, v7

    :goto_5
    if-eqz v1, :cond_6

    move/from16 v27, v6

    goto :goto_6

    :cond_6
    if-nez v1, :cond_7

    move/from16 v27, v4

    goto :goto_6

    :cond_7
    move/from16 v27, v5

    :goto_6
    sub-int v19, v8, v27

    neg-int v5, v7

    neg-int v8, v3

    move/from16 v16, v3

    invoke-static {v5, v8, v11, v12}, Landroidx/compose/ui/unit/ConstraintsKt;->i(IIJ)J

    move-result-wide v2

    iget-object v5, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;

    invoke-interface {v5}, Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;->j()Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;

    move-result-object v8

    iget-object v10, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->e:Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;

    invoke-interface {v10, v9, v2, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;J)Landroidx/compose/foundation/lazy/grid/LazyGridSlots;

    move-result-object v10

    move/from16 v18, v1

    iget-object v1, v10, Landroidx/compose/foundation/lazy/grid/LazyGridSlots;->a:[I

    array-length v1, v1

    move-wide/from16 v22, v2

    iget v2, v8, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->i:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_8

    iput v1, v8, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->i:I

    iget-object v2, v8, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move/from16 v31, v1

    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;

    move-object/from16 v24, v5

    const/4 v5, 0x2

    move/from16 v25, v7

    const/4 v7, 0x0

    invoke-direct {v1, v7, v7, v5, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v7, v8, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->c:I

    iput v7, v8, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->d:I

    iput v7, v8, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->e:I

    const/4 v1, -0x1

    iput v1, v8, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->f:I

    iget-object v2, v8, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_7

    :cond_8
    move/from16 v31, v1

    move-object/from16 v24, v5

    move/from16 v25, v7

    const/4 v1, -0x1

    const/4 v7, 0x0

    :goto_7
    iget-object v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->g:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iget-object v5, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->f:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    if-eqz v18, :cond_a

    if-eqz v5, :cond_9

    invoke-interface {v5}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->a()F

    move-result v17

    :goto_8
    move/from16 v1, v17

    goto :goto_9

    :cond_9
    const-string v0, "null verticalArrangement when isVertical == true"

    invoke-static {v0}, Lo60;->u(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    move-result-object v0

    throw v0

    :cond_a
    if-eqz v2, :cond_6e

    invoke-interface {v2}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->a()F

    move-result v17

    goto :goto_8

    :goto_9
    invoke-interface {v13, v1}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v37

    invoke-interface/range {v24 .. v24}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->b()I

    move-result v36

    if-eqz v18, :cond_b

    invoke-static {v11, v12}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    move-result v1

    sub-int v1, v1, v16

    goto :goto_a

    :cond_b
    invoke-static {v11, v12}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    move-result v1

    sub-int v1, v1, v25

    :goto_a
    int-to-long v3, v4

    const/16 v18, 0x20

    shl-long v3, v3, v18

    move-object/from16 v39, v8

    int-to-long v7, v6

    const-wide v40, 0xffffffffL

    and-long v6, v7, v40

    or-long/2addr v3, v6

    sget-object v6, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    new-instance v28, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;

    move-object v6, v5

    iget-object v5, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->a:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    move-object v7, v6

    iget-boolean v6, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->b:Z

    move/from16 v51, v1

    move-object/from16 v52, v7

    move-object/from16 v35, v10

    move/from16 v8, v19

    move-wide/from16 v19, v22

    move/from16 v17, v25

    move/from16 v7, v27

    move-object/from16 v1, v28

    const/16 v50, 0x0

    move-object/from16 v22, v2

    move-object/from16 v2, v24

    move-wide/from16 v67, v3

    move-object v3, v9

    move-wide/from16 v9, v67

    move/from16 v4, v37

    invoke-direct/range {v1 .. v10}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;ILandroidx/compose/foundation/lazy/grid/LazyGridState;ZIIJ)V

    new-instance v33, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;

    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->b:Z

    move/from16 v34, v1

    move-object/from16 v38, v28

    invoke-direct/range {v33 .. v39}, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1;-><init>(ZLandroidx/compose/foundation/lazy/grid/LazyGridSlots;IILandroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1;Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;)V

    move-object/from16 v5, v33

    move/from16 v9, v36

    move-object/from16 v3, v38

    move-object/from16 v1, v39

    new-instance v6, Lk60;

    const/4 v10, 0x5

    invoke-direct {v6, v1, v5, v10}, Lk60;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v10, Ll00;

    const/16 v4, 0x12

    invoke-direct {v10, v1, v4}, Ll00;-><init>(Ljava/lang/Object;I)V

    sget-object v4, Landroidx/compose/runtime/snapshots/Snapshot;->e:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->a()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/Snapshot;->e()Lkotlin/jvm/functions/Function1;

    move-result-object v23

    move-object/from16 v38, v5

    move-object/from16 v5, v23

    :goto_b
    move-object/from16 v39, v6

    goto :goto_c

    :cond_c
    move-object/from16 v38, v5

    move-object/from16 v5, v50

    goto :goto_b

    :goto_c
    invoke-static {v4}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v6

    move/from16 v42, v8

    :try_start_0
    invoke-virtual {v14}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->g()I

    move-result v8

    move-object/from16 v43, v10

    iget-object v10, v15, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->d:Ljava/lang/Object;

    invoke-static {v8, v2, v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProviderKt;->a(ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;)I

    move-result v10

    if-eq v8, v10, :cond_d

    move/from16 v54, v7

    iget-object v7, v15, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->a:Landroidx/compose/runtime/MutableIntState;

    check-cast v7, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->i(I)V

    iget-object v7, v15, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->e:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    invoke-virtual {v7, v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->h(I)V

    goto :goto_d

    :cond_d
    move/from16 v54, v7

    :goto_d
    if-lt v10, v9, :cond_f

    if-gtz v9, :cond_e

    goto :goto_e

    :cond_e
    add-int/lit8 v7, v9, -0x1

    invoke-virtual {v1, v7}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->c(I)I

    move-result v1

    const/4 v7, 0x0

    goto :goto_f

    :catchall_0
    move-exception v0

    goto/16 :goto_63

    :cond_f
    :goto_e
    invoke-virtual {v1, v10}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->c(I)I

    move-result v1

    iget-object v7, v15, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->b:Landroidx/compose/runtime/MutableIntState;

    check-cast v7, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {v7}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->f()I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_f
    invoke-static {v4, v6, v5}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    iget-object v4, v14, Landroidx/compose/foundation/lazy/grid/LazyGridState;->q:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    iget-object v5, v14, Landroidx/compose/foundation/lazy/grid/LazyGridState;->n:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    invoke-static {v2, v4, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsStateKt;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v13}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->u0()Z

    move-result v4

    if-nez v4, :cond_11

    if-nez v32, :cond_10

    goto :goto_10

    :cond_10
    iget-object v4, v14, Landroidx/compose/foundation/lazy/grid/LazyGridState;->v:Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;

    iget-object v4, v4, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;->b:Landroidx/compose/animation/core/AnimationState;

    iget-object v4, v4, Landroidx/compose/animation/core/AnimationState;->c:Landroidx/compose/runtime/MutableState;

    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    goto :goto_11

    :cond_11
    :goto_10
    iget v4, v14, Landroidx/compose/foundation/lazy/grid/LazyGridState;->g:F

    :goto_11
    iget-object v5, v14, Landroidx/compose/foundation/lazy/grid/LazyGridState;->m:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    invoke-interface {v13}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->u0()Z

    move-result v30

    iget-object v6, v14, Landroidx/compose/foundation/lazy/grid/LazyGridState;->c:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    iget-object v8, v14, Landroidx/compose/foundation/lazy/grid/LazyGridState;->r:Landroidx/compose/runtime/MutableState;

    if-ltz v54, :cond_12

    goto :goto_12

    :cond_12
    const-string v10, "negative beforeContentPadding"

    invoke-static {v10}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :goto_12
    if-ltz v42, :cond_13

    goto :goto_13

    :cond_13
    const-string v10, "negative afterContentPadding"

    invoke-static {v10}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :goto_13
    iget-object v10, v3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->b:Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;

    iget-boolean v15, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->b:Z

    move/from16 v55, v17

    const/16 v17, 0x0

    move/from16 v23, v1

    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->h:Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 v35, v1

    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->i:Landroidx/compose/ui/graphics/GraphicsContext;

    move/from16 v24, v7

    move-object/from16 v56, v8

    const-wide/16 v7, 0x0

    if-gtz v9, :cond_16

    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    move-result v24

    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    move-result v25

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10}, Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;->a()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    move-result-object v27

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v23, 0x0

    move-object/from16 v36, v1

    move-object/from16 v28, v3

    move-object/from16 v22, v5

    move/from16 v29, v15

    invoke-virtual/range {v22 .. v36}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->d(IIILjava/util/ArrayList;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;ZZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    move-object/from16 v15, v22

    if-nez v30, :cond_14

    invoke-virtual {v15}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->b()J

    move-result-wide v0

    sget-object v2, Landroidx/compose/ui/unit/IntSize;->b:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1, v7, v8}, Landroidx/compose/ui/unit/IntSize;->b(JJ)Z

    move-result v2

    if-nez v2, :cond_14

    shr-long v2, v0, v18

    long-to-int v2, v2

    move-wide/from16 v3, v19

    invoke-static {v2, v3, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->g(IJ)I

    move-result v24

    and-long v0, v0, v40

    long-to-int v0, v0

    invoke-static {v0, v3, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->f(IJ)I

    move-result v25

    :cond_14
    new-instance v0, Ln60;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Ln60;-><init>(I)V

    add-int v1, v24, v55

    invoke-static {v1, v11, v12}, Landroidx/compose/ui/unit/ConstraintsKt;->g(IJ)I

    move-result v1

    add-int v2, v25, v16

    invoke-static {v2, v11, v12}, Landroidx/compose/ui/unit/ConstraintsKt;->f(IJ)I

    move-result v2

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v13, v1, v2, v3, v0}, Landroidx/compose/ui/layout/MeasureScope;->V0(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v5

    move-object v0, v13

    sget-object v13, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    move-object v2, v14

    move/from16 v1, v54

    neg-int v14, v1

    move/from16 v3, v51

    add-int v15, v3, v42

    if-eqz v29, :cond_15

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    :goto_14
    move-object/from16 v18, v1

    move-object v1, v0

    goto :goto_15

    :cond_15
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_14

    :goto_15
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    const/4 v7, 0x0

    const/16 v16, 0x0

    move-object v3, v1

    const/4 v1, 0x0

    move-object v4, v2

    const/4 v2, 0x0

    move-object v6, v3

    const/4 v3, 0x0

    move-object v8, v4

    const/4 v4, 0x0

    move-object v9, v6

    const/4 v6, 0x0

    move-object/from16 v59, v8

    move-object/from16 v57, v9

    move/from16 v10, v31

    move-object/from16 v8, v35

    move/from16 v20, v37

    move-object/from16 v58, v38

    move-object/from16 v11, v39

    move/from16 v19, v42

    move-object/from16 v12, v43

    move-object/from16 v9, p1

    invoke-direct/range {v0 .. v20}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;II)V

    move-object/from16 v66, v58

    goto/16 :goto_5d

    :cond_16
    move-object/from16 v36, v1

    move-object v7, v3

    move-object/from16 v57, v13

    move-object/from16 v59, v14

    move/from16 v29, v15

    move-wide/from16 v13, v19

    move/from16 v20, v37

    move-object/from16 v58, v38

    move/from16 v19, v42

    move-object/from16 v8, v43

    move/from16 v3, v51

    move/from16 v1, v54

    move-object v15, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v25

    sub-int v24, v24, v25

    if-nez v23, :cond_17

    if-gez v24, :cond_17

    add-int v25, v25, v24

    const/16 v24, 0x0

    :cond_17
    move/from16 v26, v4

    new-instance v4, Lkotlin/collections/ArrayDeque;

    invoke-direct {v4}, Lkotlin/collections/ArrayDeque;-><init>()V

    move-object/from16 v51, v8

    neg-int v8, v1

    if-gez v20, :cond_18

    move/from16 v27, v20

    :goto_16
    move/from16 v54, v8

    goto :goto_17

    :cond_18
    const/16 v27, 0x0

    goto :goto_16

    :goto_17
    add-int v8, v54, v27

    add-int v24, v24, v8

    move-object/from16 v60, v10

    move/from16 v10, v24

    :goto_18
    if-gez v10, :cond_19

    if-lez v23, :cond_19

    move-object/from16 v24, v15

    add-int/lit8 v15, v23, -0x1

    move-object/from16 v11, v58

    invoke-virtual {v11, v15}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->c(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    move-result-object v12

    move/from16 v23, v15

    const/4 v15, 0x0

    invoke-virtual {v4, v15, v12}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    iget v12, v12, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->h:I

    add-int/2addr v10, v12

    move-object/from16 v15, v24

    move-wide/from16 v11, p2

    goto :goto_18

    :cond_19
    move-object/from16 v24, v15

    move-object/from16 v11, v58

    const/4 v15, 0x0

    if-ge v10, v8, :cond_1a

    sub-int v10, v8, v10

    sub-int v25, v25, v10

    move v10, v8

    :cond_1a
    move/from16 v12, v25

    sub-int/2addr v10, v8

    add-int v49, v3, v19

    if-gez v49, :cond_1b

    goto :goto_19

    :cond_1b
    move/from16 v15, v49

    :goto_19
    neg-int v0, v10

    move/from16 v25, v10

    move/from16 v28, v23

    const/4 v10, 0x0

    const/16 v27, 0x0

    :goto_1a
    iget v5, v4, Lkotlin/collections/ArrayDeque;->d:I

    if-ge v10, v5, :cond_1d

    if-lt v0, v15, :cond_1c

    invoke-virtual {v4, v10}, Lkotlin/collections/ArrayDeque;->h(I)Ljava/lang/Object;

    move/from16 v27, v21

    goto :goto_1a

    :cond_1c
    add-int/lit8 v28, v28, 0x1

    invoke-virtual {v4, v10}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    iget v5, v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->h:I

    add-int/2addr v0, v5

    add-int/lit8 v10, v10, 0x1

    goto :goto_1a

    :cond_1d
    move/from16 v10, v27

    move/from16 v5, v28

    :goto_1b
    if-ge v5, v9, :cond_1f

    if-lt v0, v15, :cond_1e

    if-lez v0, :cond_1e

    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v27

    if-eqz v27, :cond_1f

    :cond_1e
    move/from16 v61, v10

    goto :goto_1c

    :cond_1f
    move/from16 v61, v10

    goto :goto_1e

    :goto_1c
    invoke-virtual {v11, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->c(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    move-result-object v10

    move/from16 v27, v5

    iget-object v5, v10, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->b:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move/from16 v28, v15

    iget v15, v10, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->h:I

    move/from16 v33, v15

    array-length v15, v5

    if-nez v15, :cond_20

    goto :goto_1e

    :cond_20
    add-int v0, v0, v33

    if-gt v0, v8, :cond_21

    invoke-static {v5}, Lkotlin/collections/ArraysKt;->I([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iget v5, v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->a:I

    add-int/lit8 v15, v9, -0x1

    if-eq v5, v15, :cond_21

    add-int/lit8 v5, v27, 0x1

    sub-int v25, v25, v33

    move/from16 v23, v5

    move/from16 v10, v21

    goto :goto_1d

    :cond_21
    invoke-virtual {v4, v10}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    move/from16 v10, v61

    :goto_1d
    add-int/lit8 v5, v27, 0x1

    move/from16 v15, v28

    goto :goto_1b

    :goto_1e
    if-ge v0, v3, :cond_24

    sub-int v5, v3, v0

    sub-int v25, v25, v5

    add-int/2addr v0, v5

    move/from16 v8, v25

    :goto_1f
    if-ge v8, v1, :cond_22

    if-lez v23, :cond_22

    add-int/lit8 v10, v23, -0x1

    invoke-virtual {v11, v10}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->c(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    move-result-object v15

    move/from16 v23, v0

    const/4 v0, 0x0

    invoke-virtual {v4, v0, v15}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    iget v0, v15, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->h:I

    add-int/2addr v8, v0

    move/from16 v0, v23

    move/from16 v23, v10

    goto :goto_1f

    :cond_22
    move/from16 v23, v0

    add-int/2addr v5, v12

    if-gez v8, :cond_23

    add-int/2addr v5, v8

    add-int v0, v23, v8

    const/4 v8, 0x0

    goto :goto_20

    :cond_23
    move/from16 v0, v23

    goto :goto_20

    :cond_24
    move v5, v12

    move/from16 v8, v25

    :goto_20
    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->signum(I)I

    move-result v10

    invoke-static {v5}, Ljava/lang/Integer;->signum(I)I

    move-result v15

    if-ne v10, v15, :cond_25

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v15

    if-lt v10, v15, :cond_25

    int-to-float v10, v5

    goto :goto_21

    :cond_25
    move/from16 v10, v26

    :goto_21
    sub-float v15, v26, v10

    const/16 v23, 0x0

    if-eqz v30, :cond_26

    if-le v5, v12, :cond_26

    cmpg-float v25, v15, v23

    if-gtz v25, :cond_26

    sub-int/2addr v5, v12

    int-to-float v5, v5

    add-float v23, v5, v15

    :cond_26
    move/from16 v12, v23

    if-ltz v8, :cond_27

    goto :goto_22

    :cond_27
    const-string v5, "negative initial offset"

    invoke-static {v5}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :goto_22
    neg-int v5, v8

    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->n()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    move/from16 v27, v1

    if-eqz v15, :cond_28

    iget-object v1, v15, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->b:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    if-eqz v1, :cond_28

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->x([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    if-eqz v1, :cond_28

    iget v1, v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->a:I

    goto :goto_23

    :cond_28
    const/4 v1, 0x0

    :goto_23
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->p()Ljava/lang/Object;

    move-result-object v23

    move/from16 v25, v5

    move-object/from16 v5, v23

    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    if-eqz v5, :cond_2a

    iget-object v5, v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->b:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    if-eqz v5, :cond_2a

    move/from16 v23, v8

    array-length v8, v5

    if-nez v8, :cond_29

    move-object/from16 v5, v50

    goto :goto_24

    :cond_29
    array-length v8, v5

    add-int/lit8 v8, v8, -0x1

    aget-object v5, v5, v8

    :goto_24
    if-eqz v5, :cond_2b

    iget v5, v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->a:I

    move v8, v5

    goto :goto_25

    :cond_2a
    move/from16 v23, v8

    :cond_2b
    const/4 v8, 0x0

    :goto_25
    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    move-object/from16 v26, v5

    invoke-interface/range {v26 .. v26}, Ljava/util/Collection;->size()I

    move-result v5

    move/from16 v62, v12

    move-object/from16 v33, v15

    move-object/from16 v28, v50

    const/4 v12, 0x0

    :goto_26
    iget-object v15, v11, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->f:Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;

    if-ge v12, v5, :cond_2e

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Number;

    move/from16 v63, v5

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-ltz v5, :cond_2d

    if-ge v5, v1, :cond_2d

    move/from16 v34, v1

    iget v1, v15, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->i:I

    invoke-virtual {v15, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->e(I)I

    move-result v1

    const/4 v15, 0x0

    invoke-virtual {v11, v15, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->a(II)J

    move-result-wide v47

    const/16 v44, 0x0

    iget v15, v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->d:I

    move/from16 v45, v1

    move/from16 v43, v5

    move-object/from16 v42, v7

    move/from16 v46, v15

    invoke-virtual/range {v42 .. v48}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->d(IIIIJ)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v1

    if-nez v28, :cond_2c

    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    :cond_2c
    move-object/from16 v5, v28

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v28, v5

    goto :goto_27

    :cond_2d
    move/from16 v34, v1

    :goto_27
    add-int/lit8 v12, v12, 0x1

    move/from16 v1, v34

    move/from16 v5, v63

    goto :goto_26

    :cond_2e
    move/from16 v34, v1

    if-nez v28, :cond_2f

    sget-object v28, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_2f
    move-object/from16 v1, v28

    if-eqz v30, :cond_3b

    if-eqz v6, :cond_3b

    iget-object v5, v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->m:Ljava/util/List;

    move-object v6, v5

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3b

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const/4 v12, -0x1

    :goto_28
    if-ge v12, v6, :cond_32

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    move/from16 v53, v12

    invoke-interface/range {v28 .. v28}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getIndex()I

    move-result v12

    if-le v12, v8, :cond_31

    if-eqz v6, :cond_30

    add-int/lit8 v12, v6, -0x1

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    invoke-interface {v12}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getIndex()I

    move-result v12

    if-gt v12, v8, :cond_31

    :cond_30
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    goto :goto_29

    :cond_31
    add-int/lit8 v6, v6, -0x1

    move/from16 v12, v53

    goto :goto_28

    :cond_32
    move/from16 v53, v12

    move-object/from16 v6, v50

    :goto_29
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->M(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->N(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    if-eqz v12, :cond_33

    iget v12, v12, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->a:I

    add-int/lit8 v12, v12, 0x1

    goto :goto_2a

    :cond_33
    const/4 v12, 0x0

    :goto_2a
    if-eqz v6, :cond_3a

    invoke-interface {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getIndex()I

    move-result v6

    invoke-interface {v5}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->getIndex()I

    move-result v5

    move/from16 v63, v8

    add-int/lit8 v8, v9, -0x1

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-gt v6, v5, :cond_39

    move v8, v6

    move-object/from16 v6, v50

    :goto_2b
    if-eqz v6, :cond_37

    move/from16 v64, v10

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v10

    move-object/from16 v28, v1

    const/4 v1, 0x0

    :goto_2c
    if-ge v1, v10, :cond_36

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v42

    move/from16 v43, v1

    move-object/from16 v1, v42

    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    iget-object v1, v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->b:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-object/from16 v42, v6

    array-length v6, v1

    move-object/from16 v44, v1

    const/4 v1, 0x0

    :goto_2d
    if-ge v1, v6, :cond_35

    move/from16 v45, v1

    aget-object v1, v44, v45

    iget v1, v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->a:I

    if-ne v1, v8, :cond_34

    move-object/from16 v6, v42

    goto :goto_31

    :cond_34
    add-int/lit8 v1, v45, 0x1

    goto :goto_2d

    :cond_35
    add-int/lit8 v1, v43, 0x1

    move-object/from16 v6, v42

    goto :goto_2c

    :cond_36
    :goto_2e
    move-object/from16 v42, v6

    goto :goto_2f

    :cond_37
    move-object/from16 v28, v1

    move/from16 v64, v10

    goto :goto_2e

    :goto_2f
    if-nez v42, :cond_38

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    goto :goto_30

    :cond_38
    move-object/from16 v6, v42

    :goto_30
    invoke-virtual {v11, v12}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->c(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    move-result-object v1

    add-int/lit8 v12, v12, 0x1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_31
    if-eq v8, v5, :cond_3c

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v28

    move/from16 v10, v64

    goto :goto_2b

    :cond_39
    move-object/from16 v28, v1

    :goto_32
    move/from16 v64, v10

    goto :goto_33

    :cond_3a
    move-object/from16 v28, v1

    move/from16 v63, v8

    goto :goto_32

    :cond_3b
    move-object/from16 v28, v1

    move/from16 v63, v8

    move/from16 v64, v10

    const/16 v53, -0x1

    :goto_33
    move-object/from16 v6, v50

    :cond_3c
    if-nez v6, :cond_3d

    sget-object v6, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_3d
    invoke-interface/range {v26 .. v26}, Ljava/util/Collection;->size()I

    move-result v1

    move-object/from16 v8, v50

    const/4 v5, 0x0

    :goto_34
    if-ge v5, v1, :cond_44

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    add-int/lit8 v12, v63, 0x1

    if-gt v12, v10, :cond_43

    if-ge v10, v9, :cond_43

    if-eqz v30, :cond_41

    move-object v12, v6

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v12

    move/from16 v26, v1

    const/4 v1, 0x0

    :goto_35
    if-ge v1, v12, :cond_40

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v42

    move/from16 v43, v1

    move-object/from16 v1, v42

    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    iget-object v1, v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->b:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-object/from16 v65, v2

    array-length v2, v1

    move-object/from16 v42, v1

    const/4 v1, 0x0

    :goto_36
    if-ge v1, v2, :cond_3f

    move/from16 v44, v1

    aget-object v1, v42, v44

    iget v1, v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->a:I

    if-ne v1, v10, :cond_3e

    goto :goto_39

    :cond_3e
    add-int/lit8 v1, v44, 0x1

    goto :goto_36

    :cond_3f
    add-int/lit8 v1, v43, 0x1

    move-object/from16 v2, v65

    goto :goto_35

    :cond_40
    :goto_37
    move-object/from16 v65, v2

    goto :goto_38

    :cond_41
    move/from16 v26, v1

    goto :goto_37

    :goto_38
    iget v1, v15, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->i:I

    invoke-virtual {v15, v10}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->e(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v11, v2, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->a(II)J

    move-result-wide v47

    const/16 v44, 0x0

    iget v2, v7, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->d:I

    move/from16 v45, v1

    move/from16 v46, v2

    move-object/from16 v42, v7

    move/from16 v43, v10

    invoke-virtual/range {v42 .. v48}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItemProvider;->d(IIIIJ)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v1

    if-nez v8, :cond_42

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :cond_42
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_43
    move/from16 v26, v1

    move-object/from16 v65, v2

    :goto_39
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v26

    move-object/from16 v2, v65

    goto :goto_34

    :cond_44
    if-nez v8, :cond_45

    sget-object v8, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_45
    if-gtz v27, :cond_47

    if-gez v20, :cond_46

    goto :goto_3a

    :cond_46
    move-object/from16 v15, v33

    move/from16 v33, v23

    goto :goto_3c

    :cond_47
    :goto_3a
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->f()I

    move-result v1

    move/from16 v5, v23

    move-object/from16 v15, v33

    const/4 v2, 0x0

    :goto_3b
    if-ge v2, v1, :cond_48

    invoke-virtual {v4, v2}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    iget v10, v10, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->h:I

    if-eqz v5, :cond_48

    if-gt v10, v5, :cond_48

    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->f()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-eq v2, v12, :cond_48

    sub-int/2addr v5, v10

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v15, v10

    check-cast v15, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    goto :goto_3b

    :cond_48
    move/from16 v33, v5

    :goto_3c
    if-eqz v29, :cond_49

    invoke-static {v13, v14}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    move-result v1

    :goto_3d
    move v10, v1

    goto :goto_3e

    :cond_49
    invoke-static {v0, v13, v14}, Landroidx/compose/ui/unit/ConstraintsKt;->g(IJ)I

    move-result v1

    goto :goto_3d

    :goto_3e
    if-eqz v29, :cond_4a

    invoke-static {v0, v13, v14}, Landroidx/compose/ui/unit/ConstraintsKt;->f(IJ)I

    move-result v1

    :goto_3f
    move v12, v1

    goto :goto_40

    :cond_4a
    invoke-static {v13, v14}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    move-result v1

    goto :goto_3f

    :goto_40
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4b

    :goto_41
    move-object v1, v4

    goto :goto_42

    :cond_4b
    check-cast v6, Ljava/lang/Iterable;

    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_41

    :goto_42
    if-eqz v29, :cond_4c

    move v2, v12

    goto :goto_43

    :cond_4c
    move v2, v10

    :goto_43
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v0, v4, :cond_4d

    move/from16 v4, v21

    goto :goto_44

    :cond_4d
    const/4 v4, 0x0

    :goto_44
    if-eqz v4, :cond_4f

    if-nez v25, :cond_4e

    goto :goto_45

    :cond_4e
    const-string v5, "non-zero firstLineScrollOffset"

    invoke-static {v5}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->c(Ljava/lang/String;)V

    :cond_4f
    :goto_45
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v5

    move/from16 v23, v0

    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_46
    if-ge v6, v5, :cond_50

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    move/from16 v42, v3

    move-object/from16 v3, v26

    check-cast v3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    iget-object v3, v3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->b:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    array-length v3, v3

    add-int/2addr v0, v3

    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v42

    goto :goto_46

    :cond_50
    move/from16 v42, v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v4, :cond_5a

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_51

    goto :goto_47

    :cond_51
    const-string v0, "no items"

    invoke-static {v0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :goto_47
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [I

    const/4 v5, 0x0

    :goto_48
    if-ge v5, v0, :cond_52

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    iget v6, v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->g:I

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_48

    :cond_52
    new-array v6, v0, [I

    if-eqz v29, :cond_54

    move-object/from16 v0, v52

    if-eqz v0, :cond_53

    move-object/from16 v5, p1

    invoke-interface {v0, v5, v2, v4, v6}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->b(Landroidx/compose/ui/unit/Density;I[I[I)V

    move-object v8, v1

    move-object v0, v3

    move/from16 v44, v27

    move/from16 v43, v34

    goto :goto_49

    :cond_53
    const-string v0, "null verticalArrangement"

    invoke-static {v0}, Lo60;->u(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    move-result-object v0

    throw v0

    :cond_54
    move-object/from16 v5, p1

    if-eqz v22, :cond_59

    sget-object v5, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    move-object v8, v1

    move-object v0, v3

    move-object/from16 v1, v22

    move/from16 v44, v27

    move/from16 v43, v34

    move v3, v2

    move-object/from16 v2, p1

    invoke-interface/range {v1 .. v6}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->c(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    :goto_49
    invoke-static {v6}, Lkotlin/collections/ArraysKt;->y([I)Lkotlin/ranges/IntRange;

    move-result-object v1

    iget v2, v1, Lkotlin/ranges/IntProgression;->b:I

    iget v3, v1, Lkotlin/ranges/IntProgression;->c:I

    iget v1, v1, Lkotlin/ranges/IntProgression;->d:I

    if-lez v1, :cond_55

    if-le v2, v3, :cond_56

    :cond_55
    if-gez v1, :cond_58

    if-gt v3, v2, :cond_58

    :cond_56
    :goto_4a
    aget v4, v6, v2

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    invoke-virtual {v5, v4, v10, v12}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->a(III)[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v4

    array-length v5, v4

    move/from16 v22, v1

    const/4 v1, 0x0

    :goto_4b
    if-ge v1, v5, :cond_57

    move/from16 v25, v1

    aget-object v1, v4, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v25, 0x1

    goto :goto_4b

    :cond_57
    if-eq v2, v3, :cond_58

    add-int v2, v2, v22

    move/from16 v1, v22

    goto :goto_4a

    :cond_58
    move/from16 v3, v42

    move/from16 v4, v64

    const/4 v6, 0x0

    goto/16 :goto_51

    :cond_59
    const-string v0, "null horizontalArrangement"

    invoke-static {v0}, Lo60;->u(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    move-result-object v0

    throw v0

    :cond_5a
    move-object v4, v1

    move-object v0, v3

    move/from16 v44, v27

    move/from16 v43, v34

    move/from16 v3, v42

    move-object/from16 v1, v28

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_5c

    move/from16 v2, v25

    :goto_4c
    add-int/lit8 v5, v1, -0x1

    move-object/from16 v6, v28

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move/from16 v22, v2

    iget v2, v1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->q:I

    sub-int v2, v22, v2

    move/from16 v22, v5

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v10, v12}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->d(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-gez v22, :cond_5b

    goto :goto_4d

    :cond_5b
    move-object/from16 v28, v6

    move/from16 v1, v22

    goto :goto_4c

    :cond_5c
    :goto_4d
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v1

    move/from16 v5, v25

    const/4 v2, 0x0

    :goto_4e
    if-ge v2, v1, :cond_5e

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    move/from16 v22, v1

    invoke-virtual {v6, v5, v10, v12}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->a(III)[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    move-result-object v1

    move/from16 v25, v2

    array-length v2, v1

    move-object/from16 v26, v1

    const/4 v1, 0x0

    :goto_4f
    if-ge v1, v2, :cond_5d

    move/from16 v27, v1

    aget-object v1, v26, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v27, 0x1

    goto :goto_4f

    :cond_5d
    iget v1, v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->h:I

    add-int/2addr v5, v1

    add-int/lit8 v2, v25, 0x1

    move/from16 v1, v22

    goto :goto_4e

    :cond_5e
    move-object v1, v8

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_50
    if-ge v2, v1, :cond_5f

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v10, v12}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->d(IIII)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, v4, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->q:I

    add-int/2addr v5, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    :cond_5f
    const/4 v6, 0x0

    move/from16 v4, v64

    :goto_51
    float-to-int v1, v4

    invoke-interface/range {v60 .. v60}, Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;->a()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    move-result-object v27

    move-object/from16 v26, v0

    move-object/from16 v28, v7

    move/from16 v25, v12

    move/from16 v34, v23

    move-object/from16 v22, v24

    move/from16 v23, v1

    move/from16 v24, v10

    invoke-virtual/range {v22 .. v36}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->d(IIILjava/util/ArrayList;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;ZZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    move/from16 v1, v25

    move-object/from16 v8, v26

    move/from16 v12, v29

    move/from16 v2, v30

    move/from16 v0, v31

    move/from16 v5, v34

    if-nez v2, :cond_64

    move-object/from16 v28, v7

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->b()J

    move-result-wide v6

    sget-object v22, Landroidx/compose/ui/unit/IntSize;->b:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v32, v2

    move/from16 v42, v3

    const-wide/16 v2, 0x0

    invoke-static {v6, v7, v2, v3}, Landroidx/compose/ui/unit/IntSize;->b(JJ)Z

    move-result v2

    if-nez v2, :cond_63

    if-eqz v12, :cond_60

    move v2, v1

    :goto_52
    move/from16 v64, v4

    goto :goto_53

    :cond_60
    move v2, v10

    goto :goto_52

    :goto_53
    shr-long v3, v6, v18

    long-to-int v3, v3

    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v13, v14}, Landroidx/compose/ui/unit/ConstraintsKt;->g(IJ)I

    move-result v10

    and-long v3, v6, v40

    long-to-int v3, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v13, v14}, Landroidx/compose/ui/unit/ConstraintsKt;->f(IJ)I

    move-result v1

    if-eqz v12, :cond_61

    move v3, v1

    goto :goto_54

    :cond_61
    move v3, v10

    :goto_54
    if-eq v3, v2, :cond_62

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_55
    if-ge v4, v2, :cond_62

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    iput v3, v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->r:I

    iget v7, v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->h:I

    add-int/2addr v7, v3

    iput v7, v6, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->t:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_55

    :cond_62
    :goto_56
    move/from16 v30, v1

    move/from16 v29, v10

    goto :goto_58

    :cond_63
    :goto_57
    move/from16 v64, v4

    goto :goto_56

    :cond_64
    move/from16 v32, v2

    move/from16 v42, v3

    move-object/from16 v28, v7

    goto :goto_57

    :goto_58
    invoke-interface/range {v60 .. v60}, Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;->e()Landroidx/collection/MutableIntList;

    move-result-object v26

    new-instance v1, Lk60;

    const/4 v2, 0x6

    move-object/from16 v7, v28

    invoke-direct {v1, v11, v7, v2}, Lk60;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v2, p0

    iget-object v2, v2, Landroidx/compose/foundation/lazy/grid/LazyGridKt$rememberLazyGridMeasurePolicy$1$1;->j:Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;

    move-object/from16 v31, v1

    move-object/from16 v22, v2

    move-object/from16 v25, v8

    move/from16 v28, v19

    move/from16 v23, v43

    move/from16 v27, v44

    move/from16 v24, v63

    invoke-static/range {v22 .. v31}, Landroidx/compose/foundation/lazy/layout/LazyLayoutStickyItemsKt;->a(Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;IILjava/util/ArrayList;Landroidx/collection/IntList;IIIILkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v26

    move/from16 v1, v23

    move/from16 v2, v24

    add-int/lit8 v3, v9, -0x1

    if-ne v2, v3, :cond_66

    move/from16 v3, v42

    if-le v5, v3, :cond_65

    goto :goto_59

    :cond_65
    const/4 v3, 0x0

    goto :goto_5a

    :cond_66
    :goto_59
    move/from16 v3, v21

    :goto_5a
    new-instance v23, Ld90;

    const/16 v28, 0x0

    move/from16 v27, v32

    move-object/from16 v24, v56

    invoke-direct/range {v23 .. v28}, Ld90;-><init>(Landroidx/compose/runtime/MutableState;Ljava/util/ArrayList;Ljava/util/List;ZI)V

    move-object/from16 v5, v23

    move-object/from16 v8, v25

    move-object/from16 v4, v26

    add-int v6, v29, v55

    move-wide/from16 v13, p2

    invoke-static {v6, v13, v14}, Landroidx/compose/ui/unit/ConstraintsKt;->g(IJ)I

    move-result v6

    add-int v7, v30, v16

    invoke-static {v7, v13, v14}, Landroidx/compose/ui/unit/ConstraintsKt;->f(IJ)I

    move-result v7

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v10

    move-object/from16 v13, v57

    invoke-interface {v13, v6, v7, v10, v5}, Landroidx/compose/ui/layout/MeasureScope;->V0(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v5

    invoke-static {v1, v2, v8, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemKt;->a(IILjava/util/ArrayList;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz v12, :cond_67

    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    :goto_5b
    move/from16 v31, v0

    move-object/from16 v18, v2

    goto :goto_5c

    :cond_67
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_5b

    :goto_5c
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    move/from16 v16, v9

    move-object/from16 v66, v11

    move-object/from16 v57, v13

    move/from16 v10, v31

    move/from16 v2, v33

    move-object/from16 v8, v35

    move-object/from16 v11, v39

    move-object/from16 v12, v51

    move/from16 v14, v54

    move/from16 v7, v61

    move/from16 v6, v62

    move/from16 v4, v64

    move-object/from16 v9, p1

    move-object v13, v1

    move-object v1, v15

    move/from16 v15, v49

    invoke-direct/range {v0 .. v20}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;II)V

    :goto_5d
    invoke-interface/range {v57 .. v57}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->u0()Z

    move-result v1

    move-object/from16 v2, v59

    const/4 v15, 0x0

    invoke-virtual {v2, v0, v1, v15}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->f(Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;ZZ)V

    iget-object v1, v2, Landroidx/compose/foundation/lazy/grid/LazyGridState;->a:Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;

    instance-of v2, v1, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;

    if-eqz v2, :cond_68

    move-object v3, v1

    check-cast v3, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;

    goto :goto_5e

    :cond_68
    move-object/from16 v3, v50

    :goto_5e
    if-eqz v3, :cond_6d

    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->m:Ljava/util/List;

    const-string v2, "compose:lazy:cache_window:keepAroundItems"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->g()Z

    move-result v2

    if-eqz v2, :cond_6c

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6c

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    sget-object v4, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v5, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->r:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v5, v4, :cond_69

    :try_start_2
    invoke-interface {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->i()I

    move-result v2

    goto :goto_5f

    :cond_69
    invoke-interface {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->k()I

    move-result v2

    :goto_5f
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->M(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    if-ne v5, v4, :cond_6a

    invoke-interface {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->i()I

    move-result v1

    goto :goto_60

    :cond_6a
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;->k()I

    move-result v1

    :goto_60
    iget v4, v3, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I

    :goto_61
    if-ge v4, v2, :cond_6b

    move-object/from16 v5, v66

    invoke-virtual {v5, v4}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->c(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v66, v5

    goto :goto_61

    :cond_6b
    move-object/from16 v5, v66

    add-int/lit8 v1, v1, 0x1

    iget v2, v3, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    if-gt v1, v2, :cond_6c

    :goto_62
    invoke-virtual {v5, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLineProvider;->c(I)Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eq v1, v2, :cond_6c

    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    :cond_6c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v0

    :catchall_1
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_6d
    return-object v0

    :goto_63
    invoke-static {v4, v6, v5}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw v0

    :cond_6e
    const-string v0, "null horizontalArrangement when isVertical == false"

    invoke-static {v0}, Lo60;->u(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    move-result-object v0

    throw v0
.end method
