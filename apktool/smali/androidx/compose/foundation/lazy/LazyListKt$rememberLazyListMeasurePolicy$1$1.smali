.class final Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;
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
.field public final synthetic a:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic b:Z

.field public final synthetic c:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Landroidx/compose/foundation/layout/Arrangement$Vertical;

.field public final synthetic f:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field public final synthetic g:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic h:Landroidx/compose/ui/graphics/GraphicsContext;

.field public final synthetic i:Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;

.field public final synthetic j:Landroidx/compose/ui/Alignment$Horizontal;

.field public final synthetic k:Landroidx/compose/ui/Alignment$Vertical;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/reflect/KProperty0;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement$Companion$StickToTopPlacement$1;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->a:Landroidx/compose/foundation/lazy/LazyListState;

    iput-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->b:Z

    iput-object p3, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->c:Landroidx/compose/foundation/layout/PaddingValues;

    iput-object p4, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->d:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->e:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iput-object p6, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->f:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iput-object p7, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->g:Lkotlinx/coroutines/CoroutineScope;

    iput-object p8, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->h:Landroidx/compose/ui/graphics/GraphicsContext;

    iput-object p9, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->i:Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;

    iput-object p10, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->j:Landroidx/compose/ui/Alignment$Horizontal;

    iput-object p11, p0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->k:Landroidx/compose/ui/Alignment$Vertical;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 59

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-wide/from16 v1, p2

    iget-object v3, v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->c:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    iget-object v4, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->a:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v5, v4, Landroidx/compose/foundation/lazy/LazyListState;->t:Landroidx/compose/runtime/MutableState;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    iget-boolean v5, v4, Landroidx/compose/foundation/lazy/LazyListState;->b:Z

    const/16 v21, 0x1

    if-nez v5, :cond_1

    invoke-interface {v3}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->u0()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/16 v32, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v32, v21

    :goto_1
    iget-boolean v5, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->b:Z

    if-eqz v5, :cond_2

    sget-object v7, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_2

    :cond_2
    sget-object v7, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    :goto_2
    invoke-static {v1, v2, v7}, Landroidx/compose/foundation/CheckScrollableContainerConstraintsKt;->a(JLandroidx/compose/foundation/gestures/Orientation;)V

    iget-object v7, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->c:Landroidx/compose/foundation/layout/PaddingValues;

    if-eqz v5, :cond_3

    invoke-interface {v3}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v8

    invoke-interface {v7, v8}, Landroidx/compose/foundation/layout/PaddingValues;->b(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v8

    invoke-interface {v3, v8}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v8

    goto :goto_3

    :cond_3
    invoke-interface {v3}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v8

    invoke-static {v7, v8}, Landroidx/compose/foundation/layout/PaddingKt;->g(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v8

    invoke-interface {v3, v8}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v8

    :goto_3
    if-eqz v5, :cond_4

    invoke-interface {v3}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v10

    invoke-interface {v7, v10}, Landroidx/compose/foundation/layout/PaddingValues;->c(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v10

    invoke-interface {v3, v10}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v10

    goto :goto_4

    :cond_4
    invoke-interface {v3}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v10

    invoke-static {v7, v10}, Landroidx/compose/foundation/layout/PaddingKt;->f(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v10

    invoke-interface {v3, v10}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v10

    :goto_4
    invoke-interface {v7}, Landroidx/compose/foundation/layout/PaddingValues;->d()F

    move-result v11

    invoke-interface {v3, v11}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v11

    invoke-interface {v7}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    move-result v7

    invoke-interface {v3, v7}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v7

    add-int/2addr v7, v11

    add-int v12, v8, v10

    if-eqz v5, :cond_5

    move v13, v7

    goto :goto_5

    :cond_5
    move v13, v12

    :goto_5
    if-eqz v5, :cond_6

    move/from16 v27, v11

    goto :goto_6

    :cond_6
    if-nez v5, :cond_7

    move/from16 v27, v8

    goto :goto_6

    :cond_7
    move/from16 v27, v10

    :goto_6
    sub-int v18, v13, v27

    neg-int v10, v12

    neg-int v13, v7

    invoke-static {v10, v13, v1, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->i(IIJ)J

    move-result-wide v13

    iget-object v10, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {v10}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/foundation/lazy/LazyListItemProvider;

    invoke-interface {v10}, Landroidx/compose/foundation/lazy/LazyListItemProvider;->g()Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    move-result-object v15

    invoke-static {v13, v14}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    move-result v6

    invoke-static {v13, v14}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    move-result v1

    iget-object v2, v15, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;->a:Landroidx/compose/runtime/MutableIntState;

    check-cast v2, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->i(I)V

    iget-object v2, v15, Landroidx/compose/foundation/lazy/LazyItemScopeImpl;->b:Landroidx/compose/runtime/MutableIntState;

    check-cast v2, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->i(I)V

    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->f:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    const-string v17, "null verticalArrangement when isVertical == true"

    iget-object v2, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->e:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    if-eqz v5, :cond_9

    if-eqz v2, :cond_8

    invoke-interface {v2}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->a()F

    move-result v6

    goto :goto_7

    :cond_8
    invoke-static/range {v17 .. v17}, Lo60;->u(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    move-result-object v0

    throw v0

    :cond_9
    if-eqz v1, :cond_65

    invoke-interface {v1}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->a()F

    move-result v6

    :goto_7
    invoke-interface {v3, v6}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v19

    invoke-interface {v10}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->b()I

    move-result v15

    if-eqz v5, :cond_a

    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    move-result v5

    sub-int/2addr v5, v7

    :goto_8
    move-object v6, v1

    move-object/from16 v20, v2

    goto :goto_9

    :cond_a
    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    move-result v5

    sub-int/2addr v5, v12

    goto :goto_8

    :goto_9
    int-to-long v1, v8

    const/16 v37, 0x20

    shl-long v1, v1, v37

    move-wide/from16 v22, v1

    int-to-long v1, v11

    const-wide v38, 0xffffffffL

    and-long v1, v1, v38

    or-long v1, v22, v1

    sget-object v8, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    new-instance v28, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;

    move v8, v5

    move-object v5, v10

    iget-object v10, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->k:Landroidx/compose/ui/Alignment$Vertical;

    move v11, v7

    move v7, v15

    iget-object v15, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->a:Landroidx/compose/foundation/lazy/LazyListState;

    move-object/from16 v22, v4

    iget-boolean v4, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->b:Z

    iget-object v9, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->j:Landroidx/compose/ui/Alignment$Horizontal;

    move/from16 v16, v18

    move/from16 v18, v12

    move/from16 v12, v16

    move-object/from16 v41, v3

    move/from16 v42, v8

    move/from16 v16, v11

    move/from16 v8, v19

    move-object/from16 v43, v20

    move-object/from16 v44, v22

    move/from16 v11, v27

    move-object/from16 v19, v6

    move-object/from16 v6, p1

    move-wide/from16 v57, v1

    move-object/from16 v1, v28

    move-wide v2, v13

    move-wide/from16 v13, v57

    invoke-direct/range {v1 .. v15}, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;-><init>(JZLandroidx/compose/foundation/lazy/LazyListItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IILandroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;IIJLandroidx/compose/foundation/lazy/LazyListState;)V

    move v15, v7

    move-object/from16 v6, v19

    move/from16 v19, v8

    move-wide v7, v2

    sget-object v2, Landroidx/compose/runtime/snapshots/Snapshot;->e:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->a()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v2

    const/16 v45, 0x0

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->e()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    goto :goto_a

    :cond_b
    move-object/from16 v3, v45

    :goto_a
    invoke-static {v2}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v4

    :try_start_0
    invoke-virtual/range {v44 .. v44}, Landroidx/compose/foundation/lazy/LazyListState;->h()I

    move-result v9

    move-object/from16 v10, v44

    iget-object v13, v10, Landroidx/compose/foundation/lazy/LazyListState;->e:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    iget-object v14, v13, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->d:Ljava/lang/Object;

    invoke-static {v9, v5, v14}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProviderKt;->a(ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;)I

    move-result v14

    if-eq v9, v14, :cond_c

    move-object/from16 v20, v6

    iget-object v6, v13, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->a:Landroidx/compose/runtime/MutableIntState;

    check-cast v6, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->i(I)V

    iget-object v6, v13, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->e:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    invoke-virtual {v6, v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->h(I)V

    goto :goto_b

    :cond_c
    move-object/from16 v20, v6

    :goto_b
    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/LazyListState;->i()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {v2, v4, v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    iget-object v2, v10, Landroidx/compose/foundation/lazy/LazyListState;->s:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    iget-object v3, v10, Landroidx/compose/foundation/lazy/LazyListState;->p:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    invoke-static {v5, v2, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsStateKt;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;)Ljava/util/List;

    move-result-object v2

    invoke-interface/range {v41 .. v41}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->u0()Z

    move-result v3

    if-nez v3, :cond_e

    if-nez v32, :cond_d

    goto :goto_c

    :cond_d
    iget-object v3, v10, Landroidx/compose/foundation/lazy/LazyListState;->x:Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;

    iget-object v3, v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;->b:Landroidx/compose/animation/core/AnimationState;

    iget-object v3, v3, Landroidx/compose/animation/core/AnimationState;->c:Landroidx/compose/runtime/MutableState;

    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    goto :goto_d

    :cond_e
    :goto_c
    iget v3, v10, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    :goto_d
    iget-object v4, v10, Landroidx/compose/foundation/lazy/LazyListState;->o:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    invoke-interface/range {v41 .. v41}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->u0()Z

    move-result v30

    iget-object v9, v10, Landroidx/compose/foundation/lazy/LazyListState;->w:Landroidx/compose/runtime/MutableState;

    iget-boolean v13, v10, Landroidx/compose/foundation/lazy/LazyListState;->i:Z

    if-ltz v11, :cond_f

    goto :goto_e

    :cond_f
    const-string v5, "invalid beforeContentPadding"

    invoke-static {v5}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :goto_e
    if-ltz v12, :cond_10

    goto :goto_f

    :cond_10
    const-string v5, "invalid afterContentPadding"

    invoke-static {v5}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :goto_f
    iget-object v5, v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->b:Landroidx/compose/foundation/lazy/LazyListItemProvider;

    move-object/from16 v28, v1

    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->b:Z

    move/from16 v44, v16

    const/16 v16, 0x0

    move/from16 v29, v1

    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->g:Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 v35, v1

    iget-object v1, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->h:Landroidx/compose/ui/graphics/GraphicsContext;

    move-object/from16 v47, v9

    move-object/from16 v46, v10

    const-wide/16 v9, 0x0

    if-gtz v15, :cond_13

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    move-result v24

    invoke-static {v7, v8}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    move-result v25

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Landroidx/compose/foundation/lazy/LazyListItemProvider;->a()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    move-result-object v27

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v23, 0x0

    const/16 v31, 0x1

    move-object/from16 v36, v1

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v36}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->d(IIILjava/util/ArrayList;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;ZZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    move-object/from16 v0, v28

    if-nez v30, :cond_11

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->b()J

    move-result-wide v1

    sget-object v3, Landroidx/compose/ui/unit/IntSize;->b:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, v9, v10}, Landroidx/compose/ui/unit/IntSize;->b(JJ)Z

    move-result v3

    if-nez v3, :cond_11

    shr-long v3, v1, v37

    long-to-int v3, v3

    invoke-static {v3, v7, v8}, Landroidx/compose/ui/unit/ConstraintsKt;->g(IJ)I

    move-result v24

    and-long v1, v1, v38

    long-to-int v1, v1

    invoke-static {v1, v7, v8}, Landroidx/compose/ui/unit/ConstraintsKt;->f(IJ)I

    move-result v25

    :cond_11
    new-instance v1, Ln60;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Ln60;-><init>(I)V

    add-int v2, v24, v18

    move-wide/from16 v3, p2

    invoke-static {v2, v3, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->g(IJ)I

    move-result v2

    add-int v6, v25, v44

    invoke-static {v6, v3, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->f(IJ)I

    move-result v3

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v4

    move-object/from16 v6, v41

    invoke-interface {v6, v2, v3, v4, v1}, Landroidx/compose/ui/layout/MeasureScope;->V0(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v1

    move/from16 v18, v12

    sget-object v12, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    neg-int v13, v11

    move/from16 v4, v42

    add-int v14, v4, v18

    if-eqz v29, :cond_12

    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    :goto_10
    move-object/from16 v17, v2

    goto :goto_11

    :cond_12
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_10

    :goto_11
    new-instance v2, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    const/4 v15, 0x0

    const/16 v20, 0x0

    move-object v3, v5

    move-object v5, v1

    const/4 v1, 0x0

    move-object v4, v2

    const/4 v2, 0x0

    move-object v7, v3

    const/4 v3, 0x0

    move-object v8, v4

    const/4 v4, 0x0

    move-object/from16 v41, v6

    const/4 v6, 0x0

    move-object v9, v7

    const/4 v7, 0x0

    iget-wide v10, v0, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->d:J

    move-object/from16 v49, v0

    move-object v0, v8

    move-object/from16 v8, v35

    move-object/from16 v48, v41

    move-object/from16 v50, v46

    move-object/from16 v41, v9

    move-object/from16 v9, p1

    invoke-direct/range {v0 .. v20}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JLjava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v56, v49

    :goto_12
    move-object v2, v0

    goto/16 :goto_4e

    :cond_13
    move-object/from16 v36, v1

    move-object/from16 v22, v4

    move-object/from16 v49, v28

    move-object/from16 v48, v41

    move/from16 v4, v42

    move-object/from16 v50, v46

    move-object/from16 v1, p1

    move-object/from16 v41, v5

    if-lt v14, v15, :cond_14

    add-int/lit8 v14, v15, -0x1

    const/4 v6, 0x0

    :cond_14
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int/2addr v6, v5

    if-nez v14, :cond_15

    if-gez v6, :cond_15

    add-int/2addr v5, v6

    const/4 v6, 0x0

    :cond_15
    new-instance v9, Lkotlin/collections/ArrayDeque;

    invoke-direct {v9}, Lkotlin/collections/ArrayDeque;-><init>()V

    move v10, v13

    neg-int v13, v11

    if-gez v19, :cond_16

    move/from16 v23, v19

    :goto_13
    move/from16 v24, v3

    goto :goto_14

    :cond_16
    const/16 v23, 0x0

    goto :goto_13

    :goto_14
    add-int v3, v13, v23

    add-int/2addr v6, v3

    move/from16 v23, v14

    const/4 v14, 0x0

    :goto_15
    if-gez v6, :cond_17

    if-lez v23, :cond_17

    move/from16 v25, v5

    add-int/lit8 v5, v23, -0x1

    move/from16 v26, v10

    move/from16 v42, v12

    move-object/from16 v10, v49

    invoke-static {v10, v5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->d(Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v12

    move/from16 v46, v13

    const/4 v13, 0x0

    invoke-virtual {v9, v13, v12}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    iget v13, v12, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->s:I

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v14

    iget v12, v12, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->r:I

    add-int/2addr v6, v12

    move/from16 v23, v5

    move/from16 v5, v25

    move/from16 v10, v26

    move/from16 v12, v42

    move/from16 v13, v46

    goto :goto_15

    :cond_17
    move/from16 v25, v5

    move/from16 v26, v10

    move/from16 v42, v12

    move/from16 v46, v13

    move-object/from16 v10, v49

    if-ge v6, v3, :cond_18

    sub-int v5, v3, v6

    sub-int v5, v25, v5

    move v6, v3

    goto :goto_16

    :cond_18
    move/from16 v5, v25

    :goto_16
    sub-int/2addr v6, v3

    move v12, v14

    add-int v14, v4, v42

    if-gez v14, :cond_19

    const/4 v13, 0x0

    :goto_17
    move/from16 v25, v12

    goto :goto_18

    :cond_19
    move v13, v14

    goto :goto_17

    :goto_18
    neg-int v12, v6

    move/from16 v28, v6

    move v6, v12

    move/from16 v49, v14

    move/from16 v31, v23

    const/4 v12, 0x0

    const/16 v27, 0x0

    :goto_19
    iget v14, v9, Lkotlin/collections/ArrayDeque;->d:I

    if-ge v12, v14, :cond_1b

    if-lt v6, v13, :cond_1a

    invoke-virtual {v9, v12}, Lkotlin/collections/ArrayDeque;->h(I)Ljava/lang/Object;

    move/from16 v27, v21

    goto :goto_19

    :cond_1a
    add-int/lit8 v31, v31, 0x1

    invoke-virtual {v9, v12}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v14, v14, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->r:I

    add-int/2addr v6, v14

    add-int/lit8 v12, v12, 0x1

    goto :goto_19

    :cond_1b
    move/from16 v14, v25

    move/from16 v51, v27

    move/from16 v12, v31

    :goto_1a
    if-ge v12, v15, :cond_1d

    if-lt v6, v13, :cond_1c

    if-lez v6, :cond_1c

    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_1d

    :cond_1c
    move/from16 v25, v13

    goto :goto_1b

    :cond_1d
    move/from16 v52, v15

    goto :goto_1d

    :goto_1b
    invoke-static {v10, v12}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->d(Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v13

    move/from16 v52, v15

    iget v15, v13, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->r:I

    add-int/2addr v6, v15

    if-gt v6, v3, :cond_1e

    move/from16 v27, v3

    add-int/lit8 v3, v52, -0x1

    if-eq v12, v3, :cond_1f

    add-int/lit8 v3, v12, 0x1

    sub-int v28, v28, v15

    move/from16 v23, v3

    move/from16 v51, v21

    goto :goto_1c

    :cond_1e
    move/from16 v27, v3

    :cond_1f
    iget v3, v13, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->s:I

    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v9, v13}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    move v14, v3

    :goto_1c
    add-int/lit8 v12, v12, 0x1

    move/from16 v13, v25

    move/from16 v3, v27

    move/from16 v15, v52

    goto :goto_1a

    :goto_1d
    if-ge v6, v4, :cond_22

    sub-int v3, v4, v6

    sub-int v28, v28, v3

    add-int/2addr v6, v3

    move/from16 v13, v28

    :goto_1e
    if-ge v13, v11, :cond_20

    if-lez v23, :cond_20

    add-int/lit8 v15, v23, -0x1

    move/from16 v25, v3

    invoke-static {v10, v15}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->d(Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v3

    move/from16 v27, v6

    const/4 v6, 0x0

    invoke-virtual {v9, v6, v3}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    iget v6, v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->s:I

    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    move-result v14

    iget v3, v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->r:I

    add-int/2addr v13, v3

    move/from16 v23, v15

    move/from16 v3, v25

    move/from16 v6, v27

    goto :goto_1e

    :cond_20
    move/from16 v25, v3

    move/from16 v27, v6

    add-int v3, v5, v25

    if-gez v13, :cond_21

    add-int/2addr v3, v13

    add-int v6, v27, v13

    move v13, v6

    move/from16 v15, v23

    const/4 v6, 0x0

    goto :goto_1f

    :cond_21
    move v6, v13

    move/from16 v15, v23

    move/from16 v13, v27

    goto :goto_1f

    :cond_22
    move v3, v5

    move v13, v6

    move/from16 v15, v23

    move/from16 v6, v28

    :goto_1f
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v23

    move/from16 v53, v11

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->signum(I)I

    move-result v11

    move/from16 v23, v14

    invoke-static {v3}, Ljava/lang/Integer;->signum(I)I

    move-result v14

    if-ne v11, v14, :cond_23

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v14

    if-lt v11, v14, :cond_23

    int-to-float v11, v3

    goto :goto_20

    :cond_23
    move/from16 v11, v24

    :goto_20
    sub-float v14, v24, v11

    const/16 v24, 0x0

    if-eqz v30, :cond_24

    if-le v3, v5, :cond_24

    cmpg-float v25, v14, v24

    if-gtz v25, :cond_24

    sub-int/2addr v3, v5

    int-to-float v3, v3

    add-float v24, v3, v14

    :cond_24
    move/from16 v14, v24

    if-ltz v6, :cond_25

    goto :goto_21

    :cond_25
    const-string v3, "negative currentFirstItemScrollOffset"

    invoke-static {v3}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :goto_21
    neg-int v3, v6

    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-gtz v53, :cond_26

    if-gez v19, :cond_27

    :cond_26
    move/from16 v24, v3

    goto :goto_23

    :cond_27
    move/from16 v24, v3

    move-object v3, v5

    move/from16 v33, v6

    :goto_22
    const/4 v5, 0x0

    goto :goto_25

    :goto_23
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->f()I

    move-result v3

    move-object/from16 v25, v5

    move v5, v6

    const/4 v6, 0x0

    :goto_24
    if-ge v6, v3, :cond_28

    invoke-virtual {v9, v6}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v27

    move/from16 v28, v3

    move-object/from16 v3, v27

    check-cast v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v3, v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->r:I

    if-eqz v5, :cond_28

    if-gt v3, v5, :cond_28

    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->f()I

    move-result v27

    move/from16 v31, v3

    add-int/lit8 v3, v27, -0x1

    if-eq v6, v3, :cond_28

    sub-int v5, v5, v31

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v9, v6}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move/from16 v3, v28

    goto :goto_24

    :cond_28
    move/from16 v33, v5

    move-object/from16 v3, v25

    goto :goto_22

    :goto_25
    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v15, v15, -0x1

    if-gt v6, v15, :cond_2a

    move-object/from16 v25, v45

    :goto_26
    if-nez v25, :cond_29

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    :cond_29
    move/from16 v54, v14

    move-object/from16 v5, v25

    invoke-static {v10, v15}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->d(Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v14

    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v15, v6, :cond_2b

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v25, v5

    move/from16 v14, v54

    const/4 v5, 0x0

    goto :goto_26

    :cond_2a
    move/from16 v54, v14

    move-object/from16 v5, v45

    :cond_2b
    move-object v14, v2

    check-cast v14, Ljava/util/Collection;

    invoke-interface {v14}, Ljava/util/Collection;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-ltz v15, :cond_2f

    :goto_27
    add-int/lit8 v25, v15, -0x1

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    if-ge v15, v6, :cond_2d

    if-nez v5, :cond_2c

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_2c
    invoke-static {v10, v15}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->d(Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v15

    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2d
    if-gez v25, :cond_2e

    goto :goto_28

    :cond_2e
    move/from16 v15, v25

    goto :goto_27

    :cond_2f
    :goto_28
    if-nez v5, :cond_30

    sget-object v5, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_30
    move-object v6, v5

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    move/from16 v15, v23

    move-object/from16 v23, v14

    move v14, v15

    const/4 v15, 0x0

    :goto_29
    if-ge v15, v6, :cond_31

    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    move/from16 v27, v6

    move-object/from16 v6, v25

    check-cast v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v6, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->s:I

    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    move-result v14

    add-int/lit8 v15, v15, 0x1

    move/from16 v6, v27

    goto :goto_29

    :cond_31
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->M(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v6, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->a:I

    add-int/lit8 v15, v52, -0x1

    invoke-static {v6, v15}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->M(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v15, v15, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->a:I

    add-int/lit8 v15, v15, 0x1

    if-gt v15, v6, :cond_33

    move-object/from16 v25, v45

    :goto_2a
    if-nez v25, :cond_32

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    :cond_32
    move/from16 v55, v12

    move/from16 v27, v14

    move-object/from16 v14, v25

    invoke-static {v10, v15}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->d(Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v12

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v15, v6, :cond_34

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v25, v14

    move/from16 v14, v27

    move/from16 v12, v55

    goto :goto_2a

    :cond_33
    move/from16 v55, v12

    move/from16 v27, v14

    move-object/from16 v14, v45

    :cond_34
    if-eqz v14, :cond_35

    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->M(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v12, v12, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->a:I

    if-le v12, v6, :cond_35

    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->M(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v6, v6, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->a:I

    :cond_35
    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->size()I

    move-result v12

    move-object v15, v14

    const/4 v14, 0x0

    :goto_2b
    if-ge v14, v12, :cond_38

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Number;

    move-object/from16 v25, v2

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-le v2, v6, :cond_37

    if-nez v15, :cond_36

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :cond_36
    invoke-static {v10, v2}, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->d(Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1;I)Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_37
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, v25

    goto :goto_2b

    :cond_38
    if-nez v15, :cond_39

    sget-object v15, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_39
    move-object v2, v15

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    move/from16 v14, v27

    const/4 v6, 0x0

    :goto_2c
    if-ge v6, v2, :cond_3a

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v12, v12, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->s:I

    invoke-static {v14, v12}, Ljava/lang/Math;->max(II)I

    move-result v14

    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    :cond_3a
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3b

    move/from16 v12, v21

    goto :goto_2d

    :cond_3b
    const/4 v12, 0x0

    :goto_2d
    if-eqz v29, :cond_3c

    move v2, v14

    goto :goto_2e

    :cond_3c
    move v2, v13

    :goto_2e
    invoke-static {v2, v7, v8}, Landroidx/compose/ui/unit/ConstraintsKt;->g(IJ)I

    move-result v2

    if-eqz v29, :cond_3d

    move v14, v13

    :cond_3d
    invoke-static {v14, v7, v8}, Landroidx/compose/ui/unit/ConstraintsKt;->f(IJ)I

    move-result v14

    move-object/from16 v25, v3

    if-eqz v29, :cond_3e

    move v3, v14

    goto :goto_2f

    :cond_3e
    move v3, v2

    :goto_2f
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v13, v6, :cond_3f

    move/from16 v6, v21

    goto :goto_30

    :cond_3f
    const/4 v6, 0x0

    :goto_30
    if-eqz v6, :cond_41

    if-nez v24, :cond_40

    goto :goto_31

    :cond_40
    const-string v23, "non-zero itemsScrollOffset"

    invoke-static/range {v23 .. v23}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->c(Ljava/lang/String;)V

    :cond_41
    :goto_31
    move-object/from16 v28, v10

    new-instance v10, Ljava/util/ArrayList;

    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->f()I

    move-result v23

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v27

    add-int v27, v27, v23

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v31, v2

    add-int v2, v23, v27

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v6, :cond_4a

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_42

    goto :goto_32

    :cond_42
    const-string v2, "no extra items"

    invoke-static {v2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :goto_32
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->f()I

    move-result v2

    move v5, v4

    new-array v4, v2, [I

    const/4 v6, 0x0

    :goto_33
    if-ge v6, v2, :cond_43

    invoke-virtual {v9, v6}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v15, v15, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->q:I

    aput v15, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_33

    :cond_43
    new-array v6, v2, [I

    if-eqz v29, :cond_45

    move-object/from16 v2, v43

    if-eqz v2, :cond_44

    invoke-interface {v2, v1, v3, v4, v6}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->b(Landroidx/compose/ui/unit/Density;I[I[I)V

    move v15, v5

    move/from16 v20, v12

    move-object/from16 v17, v25

    move/from16 v12, v31

    const/16 v40, 0x0

    goto :goto_34

    :cond_44
    invoke-static/range {v17 .. v17}, Lo60;->u(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    move-result-object v0

    throw v0

    :cond_45
    if-eqz v20, :cond_49

    move v2, v5

    sget-object v5, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    move v15, v2

    move-object/from16 v17, v25

    const/16 v40, 0x0

    move-object v2, v1

    move-object/from16 v1, v20

    move/from16 v20, v12

    move/from16 v12, v31

    invoke-interface/range {v1 .. v6}, Landroidx/compose/foundation/layout/Arrangement$Horizontal;->c(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    :goto_34
    invoke-static {v6}, Lkotlin/collections/ArraysKt;->y([I)Lkotlin/ranges/IntRange;

    move-result-object v1

    iget v2, v1, Lkotlin/ranges/IntProgression;->b:I

    iget v3, v1, Lkotlin/ranges/IntProgression;->c:I

    iget v1, v1, Lkotlin/ranges/IntProgression;->d:I

    if-lez v1, :cond_46

    if-le v2, v3, :cond_47

    :cond_46
    if-gez v1, :cond_48

    if-gt v3, v2, :cond_48

    :cond_47
    :goto_35
    aget v4, v6, v2

    invoke-virtual {v9, v2}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v5, v4, v12, v14}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->i(III)V

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v2, v3, :cond_48

    add-int/2addr v2, v1

    goto :goto_35

    :cond_48
    move v2, v15

    goto/16 :goto_39

    :cond_49
    const-string v0, "null horizontalArrangement when isVertical == false"

    invoke-static {v0}, Lo60;->u(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    move-result-object v0

    throw v0

    :cond_4a
    move v2, v4

    move/from16 v20, v12

    move-object/from16 v17, v25

    move/from16 v12, v31

    const/16 v40, 0x0

    move-object v1, v5

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    move/from16 v3, v24

    move/from16 v6, v40

    :goto_36
    if-ge v6, v1, :cond_4b

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    move/from16 v23, v1

    iget v1, v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->r:I

    sub-int/2addr v3, v1

    invoke-virtual {v4, v3, v12, v14}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->i(III)V

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move/from16 v1, v23

    goto :goto_36

    :cond_4b
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->f()I

    move-result v1

    move/from16 v3, v24

    move/from16 v6, v40

    :goto_37
    if-ge v6, v1, :cond_4c

    invoke-virtual {v9, v6}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v4, v3, v12, v14}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->i(III)V

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->r:I

    add-int/2addr v3, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    :cond_4c
    move-object v1, v15

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    move/from16 v6, v40

    :goto_38
    if-ge v6, v1, :cond_4d

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    invoke-virtual {v4, v3, v12, v14}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->i(III)V

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->r:I

    add-int/2addr v3, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_38

    :cond_4d
    :goto_39
    if-nez v26, :cond_4e

    float-to-int v1, v11

    invoke-interface/range {v41 .. v41}, Landroidx/compose/foundation/lazy/LazyListItemProvider;->a()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    move-result-object v27

    const/16 v31, 0x1

    move/from16 v23, v1

    move-object/from16 v26, v10

    move/from16 v24, v12

    move/from16 v34, v13

    move/from16 v25, v14

    invoke-virtual/range {v22 .. v36}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->d(IIILjava/util/ArrayList;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemProvider;ZZIZIILkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V

    move/from16 v1, v25

    move-object/from16 v5, v26

    move/from16 v6, v34

    :goto_3a
    move-object/from16 v3, v28

    move/from16 v10, v29

    move/from16 v4, v30

    goto :goto_3b

    :cond_4e
    move-object v5, v10

    move v6, v13

    move v1, v14

    goto :goto_3a

    :goto_3b
    if-nez v4, :cond_53

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->b()J

    move-result-wide v13

    sget-object v15, Landroidx/compose/ui/unit/IntSize;->b:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v15, v9

    move/from16 v32, v10

    const-wide/16 v9, 0x0

    invoke-static {v13, v14, v9, v10}, Landroidx/compose/ui/unit/IntSize;->b(JJ)Z

    move-result v9

    if-nez v9, :cond_52

    if-eqz v32, :cond_4f

    move v9, v1

    :goto_3c
    move/from16 v34, v11

    goto :goto_3d

    :cond_4f
    move v9, v12

    goto :goto_3c

    :goto_3d
    shr-long v10, v13, v37

    long-to-int v10, v10

    invoke-static {v12, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v10, v7, v8}, Landroidx/compose/ui/unit/ConstraintsKt;->g(IJ)I

    move-result v10

    and-long v11, v13, v38

    long-to-int v11, v11

    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v7, v8}, Landroidx/compose/ui/unit/ConstraintsKt;->f(IJ)I

    move-result v14

    if-eqz v32, :cond_50

    move v1, v14

    goto :goto_3e

    :cond_50
    move v1, v10

    :goto_3e
    if-eq v1, v9, :cond_51

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    move/from16 v8, v40

    :goto_3f
    if-ge v8, v7, :cond_51

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iput v1, v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->u:I

    iget v11, v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->i:I

    add-int/2addr v11, v1

    iput v11, v9, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->w:I

    add-int/lit8 v8, v8, 0x1

    goto :goto_3f

    :cond_51
    move/from16 v29, v10

    move/from16 v30, v14

    goto :goto_42

    :cond_52
    :goto_40
    move/from16 v34, v11

    goto :goto_41

    :cond_53
    move-object v15, v9

    move/from16 v32, v10

    goto :goto_40

    :goto_41
    move/from16 v30, v1

    move/from16 v29, v12

    :goto_42
    invoke-virtual {v15}, Lkotlin/collections/ArrayDeque;->n()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v1, :cond_54

    iget v1, v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->a:I

    move/from16 v23, v1

    goto :goto_43

    :cond_54
    move/from16 v23, v40

    :goto_43
    invoke-virtual {v15}, Lkotlin/collections/ArrayDeque;->p()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v1, :cond_55

    iget v1, v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->a:I

    move/from16 v24, v1

    goto :goto_44

    :cond_55
    move/from16 v24, v40

    :goto_44
    invoke-interface/range {v41 .. v41}, Landroidx/compose/foundation/lazy/LazyListItemProvider;->e()Landroidx/collection/MutableIntList;

    move-result-object v26

    new-instance v1, Ll00;

    const/16 v7, 0x14

    invoke-direct {v1, v3, v7}, Ll00;-><init>(Ljava/lang/Object;I)V

    iget-object v0, v0, Landroidx/compose/foundation/lazy/LazyListKt$rememberLazyListMeasurePolicy$1$1;->i:Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;

    move-object/from16 v22, v0

    move-object/from16 v31, v1

    move-object/from16 v25, v5

    move/from16 v28, v42

    move/from16 v27, v53

    invoke-static/range {v22 .. v31}, Landroidx/compose/foundation/lazy/layout/LazyLayoutStickyItemsKt;->a(Landroidx/compose/foundation/lazy/layout/StickyItemsPlacement;IILjava/util/ArrayList;Landroidx/collection/IntList;IIIILkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v0

    move/from16 v12, v28

    if-eqz v20, :cond_57

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v1, :cond_56

    iget v1, v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_45

    :cond_56
    move-object/from16 v1, v45

    goto :goto_45

    :cond_57
    invoke-virtual {v15}, Lkotlin/collections/ArrayDeque;->n()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v1, :cond_56

    iget v1, v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_45
    if-eqz v20, :cond_59

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->N(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v7, :cond_58

    iget v7, v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->a:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_46
    move/from16 v15, v52

    move/from16 v8, v55

    goto :goto_47

    :cond_58
    move-object/from16 v7, v45

    goto :goto_46

    :cond_59
    invoke-virtual {v15}, Lkotlin/collections/ArrayDeque;->p()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    if-eqz v7, :cond_58

    iget v7, v7, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->a:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_46

    :goto_47
    if-lt v8, v15, :cond_5b

    if-le v6, v2, :cond_5a

    goto :goto_48

    :cond_5a
    move/from16 v6, v40

    goto :goto_49

    :cond_5b
    :goto_48
    move/from16 v6, v21

    :goto_49
    new-instance v22, Ld90;

    const/16 v27, 0x1

    move-object/from16 v25, v0

    move/from16 v26, v4

    move-object/from16 v24, v5

    move-object/from16 v23, v47

    invoke-direct/range {v22 .. v27}, Ld90;-><init>(Landroidx/compose/runtime/MutableState;Ljava/util/ArrayList;Ljava/util/List;ZI)V

    move-object/from16 v2, v22

    add-int v4, v29, v18

    move-wide/from16 v8, p2

    invoke-static {v4, v8, v9}, Landroidx/compose/ui/unit/ConstraintsKt;->g(IJ)I

    move-result v4

    add-int v10, v30, v44

    invoke-static {v10, v8, v9}, Landroidx/compose/ui/unit/ConstraintsKt;->f(IJ)I

    move-result v8

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v9

    move-object/from16 v10, v48

    invoke-interface {v10, v4, v8, v9, v2}, Landroidx/compose/ui/layout/MeasureScope;->V0(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v2

    if-eqz v1, :cond_5c

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_4a

    :cond_5c
    move/from16 v1, v40

    :goto_4a
    if-eqz v7, :cond_5d

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_4b

    :cond_5d
    move/from16 v4, v40

    :goto_4b
    invoke-static {v1, v4, v5, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItemKt;->a(IILjava/util/ArrayList;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v32, :cond_5e

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    :goto_4c
    move/from16 v18, v12

    move-object v12, v0

    goto :goto_4d

    :cond_5e
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_4c

    :goto_4d
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    const/16 v20, 0x0

    move-object/from16 v48, v10

    iget-wide v10, v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->d:J

    move-object/from16 v4, v17

    move-object/from16 v17, v1

    move-object v1, v4

    move-object/from16 v9, p1

    move-object v5, v2

    move-object/from16 v56, v3

    move v3, v6

    move/from16 v2, v33

    move/from16 v4, v34

    move-object/from16 v8, v35

    move/from16 v13, v46

    move/from16 v14, v49

    move/from16 v7, v51

    move/from16 v6, v54

    invoke-direct/range {v0 .. v20}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;-><init>(Landroidx/compose/foundation/lazy/LazyListMeasuredItem;IZFLandroidx/compose/ui/layout/MeasureResult;FZLkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JLjava/util/List;IIIZLandroidx/compose/foundation/gestures/Orientation;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_12

    :goto_4e
    invoke-interface/range {v48 .. v48}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->u0()Z

    move-result v0

    move-object/from16 v10, v50

    const/4 v13, 0x0

    invoke-virtual {v10, v2, v0, v13}, Landroidx/compose/foundation/lazy/LazyListState;->g(Landroidx/compose/foundation/lazy/LazyListMeasureResult;ZZ)V

    iget-object v0, v10, Landroidx/compose/foundation/lazy/LazyListState;->a:Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;

    instance-of v1, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;

    if-eqz v1, :cond_5f

    move-object/from16 v45, v0

    check-cast v45, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;

    :cond_5f
    move-object/from16 v0, v45

    if-eqz v0, :cond_64

    iget-object v1, v2, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->k:Ljava/util/List;

    const-string v3, "compose:lazy:cache_window:keepAroundItems"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->g()Z

    move-result v3

    if-eqz v3, :cond_63

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_63

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v3, v3, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->a:I

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->M(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    iget v1, v1, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->a:I

    iget v4, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v10, v56

    :goto_4f
    iget-object v5, v10, Landroidx/compose/foundation/lazy/LazyListMeasuredItemProvider;->c:Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;

    if-ge v4, v3, :cond_61

    if-ltz v4, :cond_60

    :try_start_2
    invoke-interface/range {v41 .. v41}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->b()I

    move-result v6

    if-ge v4, v6, :cond_60

    invoke-interface {v5, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->C1(I)Ljava/util/List;

    :cond_60
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    :cond_61
    add-int/lit8 v1, v1, 0x1

    iget v0, v0, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    if-gt v1, v0, :cond_63

    :goto_50
    if-ltz v1, :cond_62

    invoke-interface/range {v41 .. v41}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->b()I

    move-result v3

    if-ge v1, v3, :cond_62

    invoke-interface {v5, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;->C1(I)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_62
    if-eq v1, v0, :cond_63

    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    :cond_63
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v2

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :cond_64
    return-object v2

    :catchall_1
    move-exception v0

    invoke-static {v2, v4, v3}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw v0

    :cond_65
    const-string v0, "null horizontalAlignment when isVertical == false"

    invoke-static {v0}, Lo60;->u(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    move-result-object v0

    throw v0
.end method
