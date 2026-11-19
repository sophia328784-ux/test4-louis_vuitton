.class final Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1;
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
.field public final synthetic a:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

.field public final synthetic b:Landroidx/compose/foundation/gestures/Orientation;

.field public final synthetic c:Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Landroidx/compose/foundation/layout/PaddingValuesImpl;

.field public final synthetic f:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic g:Landroidx/compose/ui/graphics/GraphicsContext;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;Lkotlin/reflect/KProperty0;Landroidx/compose/foundation/layout/PaddingValuesImpl;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1;->a:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1;->b:Landroidx/compose/foundation/gestures/Orientation;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1;->c:Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;

    iput-object p4, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1;->d:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1;->e:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    iput-object p6, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1;->f:Lkotlinx/coroutines/CoroutineScope;

    iput-object p7, p0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1;->g:Landroidx/compose/ui/graphics/GraphicsContext;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-wide/from16 v1, p2

    iget-object v9, v8, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->c:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    iget-object v3, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1;->e:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    iget v4, v3, Landroidx/compose/foundation/layout/PaddingValuesImpl;->d:F

    iget v5, v3, Landroidx/compose/foundation/layout/PaddingValuesImpl;->b:F

    iget-object v10, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1;->a:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;

    iget-object v6, v10, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->v:Landroidx/compose/runtime/MutableState;

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    iget-boolean v6, v10, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->a:Z

    const/4 v12, 0x1

    if-nez v6, :cond_1

    invoke-interface {v9}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->u0()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    const/16 v17, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v17, v12

    :goto_1
    iget-object v6, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1;->b:Landroidx/compose/foundation/gestures/Orientation;

    invoke-static {v1, v2, v6}, Landroidx/compose/foundation/CheckScrollableContainerConstraintsKt;->a(JLandroidx/compose/foundation/gestures/Orientation;)V

    iget-object v7, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1;->c:Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;

    invoke-interface {v7, v8, v1, v2}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyGridStaggeredGridSlotsProvider;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;J)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;

    move-result-object v13

    sget-object v7, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v6, v7, :cond_2

    move v14, v12

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    :goto_2
    iget-object v7, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;

    invoke-interface {v9}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v7

    sget-object v16, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasurePolicyKt$WhenMappings;->a:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v18

    aget v11, v16, v18

    const/16 v22, 0x0

    move/from16 v18, v4

    const/4 v4, 0x2

    if-eq v11, v12, :cond_4

    if-ne v11, v4, :cond_3

    invoke-static {v3, v7}, Landroidx/compose/foundation/layout/PaddingKt;->g(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v7

    goto :goto_3

    :cond_3
    invoke-static {}, Lv40;->g()V

    return-object v22

    :cond_4
    move v7, v5

    :goto_3
    invoke-interface {v9, v7}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v11

    invoke-interface {v9}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v20

    move/from16 v21, v5

    aget v5, v16, v20

    if-eq v5, v12, :cond_6

    if-ne v5, v4, :cond_5

    invoke-static {v3, v7}, Landroidx/compose/foundation/layout/PaddingKt;->f(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v5

    goto :goto_4

    :cond_5
    invoke-static {}, Lv40;->g()V

    return-object v22

    :cond_6
    move/from16 v5, v18

    :goto_4
    invoke-interface {v9, v5}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v20

    invoke-interface {v9}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v5

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v16, v6

    if-eq v6, v12, :cond_8

    if-ne v6, v4, :cond_7

    move/from16 v4, v21

    goto :goto_5

    :cond_7
    invoke-static {}, Lv40;->g()V

    return-object v22

    :cond_8
    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/PaddingKt;->g(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v4

    :goto_5
    invoke-interface {v9, v4}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v4

    if-eqz v14, :cond_9

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    move-result v5

    goto :goto_6

    :cond_9
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    move-result v5

    :goto_6
    sub-int/2addr v5, v11

    sub-int v16, v5, v20

    const-wide v23, 0xffffffffL

    const/16 v5, 0x20

    if-eqz v14, :cond_a

    int-to-long v6, v4

    shl-long v4, v6, v5

    int-to-long v6, v11

    and-long v6, v6, v23

    or-long/2addr v4, v6

    sget-object v6, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    move-object/from16 v26, v13

    :goto_7
    move-wide v12, v4

    goto :goto_8

    :cond_a
    int-to-long v6, v11

    shl-long v5, v6, v5

    move-object/from16 v26, v13

    int-to-long v12, v4

    and-long v12, v12, v23

    or-long v4, v5, v12

    sget-object v6, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    goto :goto_7

    :goto_8
    invoke-interface {v9}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/PaddingKt;->g(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v4

    invoke-interface {v9}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v5

    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/PaddingKt;->f(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v3

    add-float/2addr v3, v4

    sget-object v4, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-interface {v9, v3}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v3

    add-float v4, v18, v21

    invoke-interface {v9, v4}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v4

    iget-object v5, v10, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->s:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    iget-object v6, v10, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->k:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    invoke-static {v15, v5, v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsStateKt;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;)Ljava/util/List;

    move-result-object v18

    invoke-static {v3, v1, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->g(IJ)I

    move-result v3

    invoke-static {v4, v1, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->f(IJ)I

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0xa

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/unit/Constraints;->a(JIIIII)J

    move-result-wide v5

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v1

    move-object/from16 v2, v18

    invoke-interface {v9}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->u0()Z

    move-result v18

    iget-object v3, v10, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->b:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    iget-object v4, v10, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->c:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;

    if-eqz v3, :cond_b

    iget-object v3, v3, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;->m:Ljava/util/List;

    goto :goto_9

    :cond_b
    move-object/from16 v3, v22

    :goto_9
    new-instance v7, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;

    const/16 v21, 0x0

    move-object/from16 v27, v7

    move v7, v14

    iget-object v14, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1;->f:Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasurePolicyKt$rememberStaggeredGridMeasurePolicy$1$1;->g:Landroidx/compose/ui/graphics/GraphicsContext;

    move-object/from16 v19, v3

    move-object/from16 v28, v4

    move-object/from16 v25, v9

    move-object v3, v15

    move/from16 v9, v16

    move-object/from16 v4, v26

    move v15, v1

    move-object v1, v10

    move-object/from16 v16, v14

    const/4 v14, 0x0

    move/from16 v29, v20

    move-object/from16 v20, v0

    move-object/from16 v0, v27

    move-wide/from16 v30, v12

    move v12, v11

    move-wide/from16 v10, v30

    move/from16 v13, v29

    invoke-direct/range {v0 .. v21}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;-><init>(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;Ljava/util/List;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridItemProvider;Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridSlots;JZLandroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScope;IJIIZILkotlinx/coroutines/CoroutineScope;ZZLjava/util/List;Landroidx/compose/ui/graphics/GraphicsContext;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v2, v1

    move-object v1, v0

    move-object/from16 v0, v28

    iget-object v4, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->b:[I

    iget-object v5, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->g:Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v6, v4}, Lkotlin/collections/ArraysKt;->B(I[I)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_a

    :cond_c
    move v11, v6

    :goto_a
    invoke-static {v11, v3, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProviderKt;->a(ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;)I

    move-result v3

    invoke-static {v4, v3}, Lkotlin/collections/ArraysKt;->g([II)Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->h:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    invoke-virtual {v5, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->h(I)V

    sget-object v5, Landroidx/compose/runtime/snapshots/Snapshot;->e:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->a()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/Snapshot;->e()Lkotlin/jvm/functions/Function1;

    move-result-object v22

    :cond_d
    move-object/from16 v7, v22

    invoke-static {v5}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v8

    :try_start_0
    iget-object v9, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->a:Lkotlin/jvm/functions/Function2;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v9, v3, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v5, v8, v7}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    iput-object v4, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->b:[I

    invoke-static {v4}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->a([I)I

    move-result v3

    iget-object v5, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->c:Landroidx/compose/runtime/MutableIntState;

    check-cast v5, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->i(I)V

    goto :goto_b

    :catchall_0
    move-exception v0

    invoke-static {v5, v8, v7}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw v0

    :cond_e
    :goto_b
    iget-object v0, v0, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridScrollPosition;->d:[I

    array-length v3, v4

    iget v5, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->t:I

    if-ne v3, v5, :cond_f

    :goto_c
    const/4 v9, 0x1

    goto :goto_10

    :cond_f
    iget-object v3, v1, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;->s:Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;

    invoke-virtual {v3}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;->g()V

    new-array v7, v5, [I

    move v11, v6

    :goto_d
    if-ge v11, v5, :cond_12

    array-length v8, v4

    if-ge v11, v8, :cond_10

    aget v8, v4, v11

    const/4 v9, -0x1

    if-eq v8, v9, :cond_10

    :goto_e
    const/4 v9, 0x1

    goto :goto_f

    :cond_10
    if-nez v11, :cond_11

    move v8, v6

    goto :goto_e

    :cond_11
    int-to-long v8, v11

    and-long v8, v8, v23

    invoke-static {v7, v8, v9}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->c([IJ)I

    move-result v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    :goto_f
    aput v8, v7, v11

    invoke-virtual {v3, v8, v11}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridLaneInfo;->i(II)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :cond_12
    move-object v4, v7

    goto :goto_c

    :goto_10
    array-length v3, v0

    if-ne v3, v5, :cond_13

    goto :goto_13

    :cond_13
    new-array v3, v5, [I

    move v11, v6

    :goto_11
    if-ge v11, v5, :cond_16

    array-length v7, v0

    if-ge v11, v7, :cond_14

    aget v7, v0, v11

    goto :goto_12

    :cond_14
    if-nez v11, :cond_15

    move v7, v6

    goto :goto_12

    :cond_15
    add-int/lit8 v7, v11, -0x1

    aget v7, v3, v7

    :goto_12
    aput v7, v3, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_11

    :cond_16
    move-object v0, v3

    :goto_13
    if-nez v18, :cond_18

    iget-boolean v3, v2, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->a:Z

    if-nez v3, :cond_17

    goto :goto_14

    :cond_17
    iget-object v3, v2, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->w:Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;

    iget-object v3, v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;->b:Landroidx/compose/animation/core/AnimationState;

    iget-object v3, v3, Landroidx/compose/animation/core/AnimationState;->c:Landroidx/compose/runtime/MutableState;

    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    goto :goto_15

    :cond_18
    :goto_14
    iget v3, v2, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->o:F

    :goto_15
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v1, v3, v4, v0, v9}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureKt;->d(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureContext;I[I[IZ)Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;

    move-result-object v0

    invoke-interface/range {v25 .. v25}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->u0()Z

    move-result v1

    invoke-virtual {v2, v0, v1, v6}, Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridState;->f(Landroidx/compose/foundation/lazy/staggeredgrid/LazyStaggeredGridMeasureResult;ZZ)V

    return-object v0
.end method
