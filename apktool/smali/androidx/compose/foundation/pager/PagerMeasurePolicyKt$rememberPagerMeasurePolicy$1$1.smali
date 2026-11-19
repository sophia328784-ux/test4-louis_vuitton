.class final Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;
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
.field public final synthetic a:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic b:Landroidx/compose/foundation/gestures/Orientation;

.field public final synthetic c:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic d:Z

.field public final synthetic e:F

.field public final synthetic f:Landroidx/compose/foundation/pager/PageSize;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:Lkotlin/jvm/functions/Function0;

.field public final synthetic i:Landroidx/compose/ui/Alignment$Vertical;

.field public final synthetic j:Landroidx/compose/ui/Alignment$Horizontal;

.field public final synthetic k:I

.field public final synthetic l:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

.field public final synthetic m:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/layout/PaddingValues;ZFLandroidx/compose/foundation/pager/PageSize;Lkotlin/reflect/KProperty0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/Alignment$Horizontal;ILandroidx/compose/foundation/gestures/snapping/SnapPosition;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->a:Landroidx/compose/foundation/pager/PagerState;

    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->b:Landroidx/compose/foundation/gestures/Orientation;

    iput-object p3, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->c:Landroidx/compose/foundation/layout/PaddingValues;

    iput-boolean p4, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->d:Z

    iput p5, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->e:F

    iput-object p6, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->f:Landroidx/compose/foundation/pager/PageSize;

    iput-object p7, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->g:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->h:Lkotlin/jvm/functions/Function0;

    iput-object p9, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->i:Landroidx/compose/ui/Alignment$Vertical;

    iput-object p10, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->j:Landroidx/compose/ui/Alignment$Horizontal;

    iput p11, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->k:I

    iput-object p12, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->l:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

    iput-object p13, p0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->m:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 59

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    iget-object v4, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->c:Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    iget-object v5, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->a:Landroidx/compose/foundation/pager/PagerState;

    iget-object v6, v5, Landroidx/compose/foundation/pager/PagerState;->C:Landroidx/compose/runtime/MutableState;

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    sget-object v6, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    iget-object v9, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->b:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v9, v6, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    if-eqz v10, :cond_1

    move-object v11, v6

    goto :goto_1

    :cond_1
    sget-object v11, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    :goto_1
    invoke-static {v2, v3, v11}, Landroidx/compose/foundation/CheckScrollableContainerConstraintsKt;->a(JLandroidx/compose/foundation/gestures/Orientation;)V

    iget-object v11, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->c:Landroidx/compose/foundation/layout/PaddingValues;

    if-eqz v10, :cond_2

    invoke-interface {v4}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v12

    invoke-interface {v11, v12}, Landroidx/compose/foundation/layout/PaddingValues;->b(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v12

    invoke-interface {v4, v12}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v12

    goto :goto_2

    :cond_2
    invoke-interface {v4}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v12

    invoke-static {v11, v12}, Landroidx/compose/foundation/layout/PaddingKt;->g(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v12

    invoke-interface {v4, v12}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v12

    :goto_2
    if-eqz v10, :cond_3

    invoke-interface {v4}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v13

    invoke-interface {v11, v13}, Landroidx/compose/foundation/layout/PaddingValues;->c(Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v13

    invoke-interface {v4, v13}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v13

    goto :goto_3

    :cond_3
    invoke-interface {v4}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v13

    invoke-static {v11, v13}, Landroidx/compose/foundation/layout/PaddingKt;->f(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/unit/LayoutDirection;)F

    move-result v13

    invoke-interface {v4, v13}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v13

    :goto_3
    invoke-interface {v11}, Landroidx/compose/foundation/layout/PaddingValues;->d()F

    move-result v14

    invoke-interface {v4, v14}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v14

    invoke-interface {v11}, Landroidx/compose/foundation/layout/PaddingValues;->a()F

    move-result v11

    invoke-interface {v4, v11}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v11

    add-int v15, v14, v11

    add-int v8, v12, v13

    if-eqz v10, :cond_4

    move/from16 v17, v15

    goto :goto_4

    :cond_4
    move/from16 v17, v8

    :goto_4
    iget-boolean v7, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->d:Z

    if-eqz v10, :cond_5

    if-nez v7, :cond_5

    move v11, v14

    goto :goto_5

    :cond_5
    if-eqz v10, :cond_6

    if-eqz v7, :cond_6

    goto :goto_5

    :cond_6
    if-nez v10, :cond_7

    if-nez v7, :cond_7

    move v11, v12

    goto :goto_5

    :cond_7
    move v11, v13

    :goto_5
    sub-int v13, v17, v11

    move/from16 v17, v7

    neg-int v7, v8

    move/from16 v19, v8

    neg-int v8, v15

    invoke-static {v7, v8, v2, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->i(IIJ)J

    move-result-wide v7

    iput-object v1, v5, Landroidx/compose/foundation/pager/PagerState;->n:Landroidx/compose/ui/unit/Density;

    move-wide/from16 v20, v7

    iget v7, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->e:F

    invoke-interface {v4, v7}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result v7

    if-eqz v10, :cond_8

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    move-result v8

    sub-int/2addr v8, v15

    goto :goto_6

    :cond_8
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    move-result v8

    sub-int v8, v8, v19

    :goto_6
    const-wide v22, 0xffffffffL

    const/16 v24, 0x20

    if-eqz v17, :cond_c

    if-lez v8, :cond_9

    goto :goto_8

    :cond_9
    if-eqz v10, :cond_a

    goto :goto_7

    :cond_a
    add-int/2addr v12, v8

    :goto_7
    if-eqz v10, :cond_b

    add-int/2addr v14, v8

    :cond_b
    int-to-long v2, v12

    shl-long v2, v2, v24

    move-wide/from16 v24, v2

    int-to-long v2, v14

    and-long v2, v2, v22

    or-long v2, v24, v2

    sget-object v10, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    goto :goto_9

    :cond_c
    :goto_8
    int-to-long v2, v12

    shl-long v2, v2, v24

    move-wide/from16 v24, v2

    int-to-long v2, v14

    and-long v2, v2, v22

    or-long v2, v24, v2

    sget-object v10, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    :goto_9
    iget-object v10, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->f:Landroidx/compose/foundation/pager/PageSize;

    invoke-interface {v10, v1, v8}, Landroidx/compose/foundation/pager/PageSize;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;I)I

    move-result v10

    if-gez v10, :cond_d

    const/4 v12, 0x0

    goto :goto_a

    :cond_d
    move v12, v10

    :goto_a
    if-ne v9, v6, :cond_e

    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    move-result v10

    goto :goto_b

    :cond_e
    move v10, v12

    :goto_b
    if-eq v9, v6, :cond_f

    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    move-result v9

    goto :goto_c

    :cond_f
    move v9, v12

    :goto_c
    const/4 v14, 0x5

    const/4 v1, 0x0

    invoke-static {v1, v10, v1, v9, v14}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIII)J

    iget-object v1, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->g:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;

    add-int v9, v8, v11

    add-int/2addr v9, v13

    sget-object v10, Landroidx/compose/runtime/snapshots/Snapshot;->e:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    iget-object v14, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->l:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->a()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v10

    move/from16 v22, v15

    if-eqz v10, :cond_10

    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/Snapshot;->e()Lkotlin/jvm/functions/Function1;

    move-result-object v23

    move-object/from16 v15, v23

    :goto_d
    move-wide/from16 v24, v2

    goto :goto_e

    :cond_10
    const/4 v15, 0x0

    goto :goto_d

    :goto_e
    invoke-static {v10}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v2

    :try_start_0
    invoke-virtual {v5}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v3

    move/from16 v26, v7

    iget-object v7, v5, Landroidx/compose/foundation/pager/PagerState;->d:Landroidx/compose/foundation/pager/PagerScrollPosition;

    move/from16 v27, v8

    iget-object v8, v7, Landroidx/compose/foundation/pager/PagerScrollPosition;->e:Ljava/lang/Object;

    invoke-static {v3, v1, v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProviderKt;->a(ILandroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;)I

    move-result v8

    if-eq v3, v8, :cond_11

    move-object/from16 v28, v4

    iget-object v4, v7, Landroidx/compose/foundation/pager/PagerScrollPosition;->b:Landroidx/compose/runtime/MutableIntState;

    check-cast v4, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->i(I)V

    iget-object v4, v7, Landroidx/compose/foundation/pager/PagerScrollPosition;->f:Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;

    invoke-virtual {v4, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutNearestRangeState;->h(I)V

    goto :goto_f

    :cond_11
    move-object/from16 v28, v4

    :goto_f
    invoke-virtual {v5}, Landroidx/compose/foundation/pager/PagerState;->k()I

    invoke-virtual {v5}, Landroidx/compose/foundation/pager/PagerState;->l()F

    move-result v3

    invoke-virtual {v5}, Landroidx/compose/foundation/pager/PagerState;->o()I

    invoke-interface {v14, v9, v12, v11, v13}, Landroidx/compose/foundation/gestures/snapping/SnapPosition;->d(IIII)I

    move-result v4

    int-to-float v4, v4

    add-int v7, v12, v26

    int-to-float v14, v7

    mul-float/2addr v3, v14

    sub-float/2addr v4, v3

    invoke-static {v4}, Lkotlin/math/MathKt;->c(F)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {v10, v2, v15}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    iget-object v2, v5, Landroidx/compose/foundation/pager/PagerState;->A:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    iget-object v4, v5, Landroidx/compose/foundation/pager/PagerState;->w:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    invoke-static {v1, v2, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsStateKt;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;)Ljava/util/List;

    move-result-object v15

    invoke-static {}, Landroidx/collection/IntObjectMapKt;->a()Landroidx/collection/MutableIntObjectMap;

    move-result-object v14

    iget-object v2, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->h:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object v4, v5, Landroidx/compose/foundation/pager/PagerState;->B:Landroidx/compose/runtime/MutableState;

    if-ltz v11, :cond_12

    goto :goto_10

    :cond_12
    const-string v10, "negative beforeContentPadding"

    invoke-static {v10}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :goto_10
    if-ltz v13, :cond_13

    goto :goto_11

    :cond_13
    const-string v10, "negative afterContentPadding"

    invoke-static {v10}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :goto_11
    if-gez v7, :cond_14

    const/4 v10, 0x0

    :goto_12
    move-object/from16 v29, v1

    goto :goto_13

    :cond_14
    move v10, v7

    goto :goto_12

    :goto_13
    iget v1, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->k:I

    if-le v1, v2, :cond_15

    move v1, v2

    :cond_15
    move-object/from16 v30, v5

    iget-object v5, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->b:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v5, v6, :cond_16

    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    move-result v31

    move/from16 v57, v31

    move/from16 v31, v1

    move/from16 v1, v57

    goto :goto_14

    :cond_16
    move/from16 v31, v1

    move v1, v12

    :goto_14
    if-eq v5, v6, :cond_17

    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    move-result v6

    :goto_15
    move/from16 v16, v3

    move-object/from16 v17, v4

    const/4 v3, 0x5

    const/4 v4, 0x0

    goto :goto_16

    :cond_17
    move v6, v12

    goto :goto_15

    :goto_16
    invoke-static {v4, v1, v4, v6, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIII)J

    move-result-wide v32

    move-object v1, v15

    iget-object v15, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->l:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

    iget-object v3, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->m:Lkotlinx/coroutines/CoroutineScope;

    if-gtz v2, :cond_18

    sget-object v1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    neg-int v6, v11

    add-int v7, v27, v13

    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    move-result v0

    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    move-result v2

    new-instance v8, Lyk0;

    const/16 v9, 0xd

    invoke-direct {v8, v9}, Lyk0;-><init>(I)V

    add-int v0, v0, v19

    move-wide/from16 v9, p2

    invoke-static {v0, v9, v10}, Landroidx/compose/ui/unit/ConstraintsKt;->g(IJ)I

    move-result v0

    add-int v2, v2, v22

    invoke-static {v2, v9, v10}, Landroidx/compose/ui/unit/ConstraintsKt;->f(IJ)I

    move-result v2

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v9

    move-object/from16 v10, v28

    invoke-interface {v10, v0, v2, v9, v8}, Landroidx/compose/ui/layout/MeasureScope;->V0(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v16

    new-instance v0, Landroidx/compose/foundation/pager/PagerMeasureResult;

    const/high16 v24, 0x60000

    const/16 v25, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v2, v12

    const/4 v12, 0x0

    move/from16 v17, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v9, v4

    move/from16 v4, v17

    const/16 v17, 0x0

    const/16 v19, 0x1

    const/16 v18, 0x0

    move/from16 v20, v19

    const/16 v19, 0x0

    move-object/from16 v21, p1

    move-object/from16 v20, v3

    move/from16 v3, v26

    move-object/from16 v36, v30

    move/from16 v9, v31

    move-wide/from16 v22, v32

    invoke-direct/range {v0 .. v25}, Landroidx/compose/foundation/pager/PagerMeasureResult;-><init>(Ljava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;IIZILandroidx/compose/foundation/pager/MeasuredPage;Landroidx/compose/foundation/pager/MeasuredPage;FIZLandroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/ui/layout/MeasureResult;ZLjava/util/List;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, p1

    const/16 v34, 0x1

    goto/16 :goto_5a

    :cond_18
    move-wide/from16 v57, v20

    move-object/from16 v20, v3

    move v3, v8

    move-object v8, v5

    move-wide/from16 v5, v32

    move-wide/from16 v32, v57

    move v4, v13

    move-object v13, v15

    move/from16 v15, v26

    move-object/from16 v36, v30

    move/from16 v57, v16

    move-object/from16 v16, v1

    move v1, v3

    move/from16 v3, v57

    :goto_17
    if-lez v1, :cond_19

    if-lez v3, :cond_19

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v3, v10

    goto :goto_17

    :cond_19
    mul-int/lit8 v3, v3, -0x1

    if-lt v1, v2, :cond_1a

    add-int/lit8 v1, v2, -0x1

    const/4 v3, 0x0

    :cond_1a
    move/from16 v26, v15

    new-instance v15, Lkotlin/collections/ArrayDeque;

    invoke-direct {v15}, Lkotlin/collections/ArrayDeque;-><init>()V

    move-object/from16 v18, v15

    neg-int v15, v11

    if-gez v26, :cond_1b

    move/from16 v21, v26

    :goto_18
    move/from16 v30, v15

    goto :goto_19

    :cond_1b
    const/16 v21, 0x0

    goto :goto_18

    :goto_19
    add-int v15, v30, v21

    add-int/2addr v3, v15

    move/from16 v37, v10

    move/from16 v21, v15

    const/4 v15, 0x0

    :goto_1a
    iget-object v10, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->i:Landroidx/compose/ui/Alignment$Vertical;

    move/from16 v38, v9

    iget-object v9, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->j:Landroidx/compose/ui/Alignment$Horizontal;

    move-object/from16 v39, v13

    move v13, v12

    iget-boolean v12, v0, Landroidx/compose/foundation/pager/PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1;->d:Z

    if-gez v3, :cond_1c

    if-lez v1, :cond_1c

    add-int/lit8 v1, v1, -0x1

    move/from16 v40, v11

    invoke-interface/range {v28 .. v28}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v11

    move/from16 v48, v2

    move/from16 v42, v4

    move-object/from16 v47, v16

    move-object/from16 v49, v17

    move/from16 v45, v27

    move/from16 v50, v31

    move-wide/from16 v43, v32

    move/from16 v0, v37

    move/from16 v46, v38

    move-object/from16 v51, v39

    move/from16 v41, v40

    move v2, v1

    move/from16 v17, v3

    move-wide v3, v5

    move/from16 v16, v7

    move-wide/from16 v6, v24

    move-object/from16 v5, v29

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v14}, Landroidx/compose/foundation/pager/PagerMeasureKt;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZILandroidx/collection/MutableIntObjectMap;)Landroidx/compose/foundation/pager/MeasuredPage;

    move-result-object v9

    move-object v10, v8

    move v12, v13

    move-object v13, v14

    move-object/from16 v14, v18

    move-wide/from16 v57, v3

    move-object v4, v5

    move-wide v5, v6

    const/4 v3, 0x0

    move-wide/from16 v7, v57

    invoke-virtual {v14, v3, v9}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    iget v1, v9, Landroidx/compose/foundation/pager/MeasuredPage;->k:I

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    add-int v1, v17, v0

    move v3, v1

    move v1, v2

    move-object/from16 v29, v4

    move-wide/from16 v24, v5

    move-wide v5, v7

    move-object v8, v10

    move/from16 v7, v16

    move/from16 v11, v41

    move/from16 v4, v42

    move/from16 v9, v46

    move-object/from16 v16, v47

    move/from16 v2, v48

    move-object/from16 v17, v49

    move-object/from16 v0, p0

    move-object v14, v13

    move-object/from16 v13, v51

    goto :goto_1a

    :cond_1c
    move-object/from16 v35, v10

    move-object v10, v8

    move-object v8, v9

    move-object/from16 v9, v35

    move/from16 v48, v2

    move/from16 v42, v4

    move/from16 v41, v11

    move v11, v12

    move v12, v13

    move-object v13, v14

    move-object/from16 v47, v16

    move-object/from16 v49, v17

    move-object/from16 v14, v18

    move/from16 v45, v27

    move-object/from16 v4, v29

    move/from16 v50, v31

    move-wide/from16 v43, v32

    move/from16 v46, v38

    move-object/from16 v51, v39

    const/16 v35, 0x0

    move/from16 v17, v3

    move-wide v2, v5

    move/from16 v16, v7

    move-wide/from16 v5, v24

    move/from16 v0, v17

    move/from16 v7, v21

    if-ge v0, v7, :cond_1d

    move v0, v7

    :cond_1d
    sub-int/2addr v0, v7

    move/from16 v17, v15

    move/from16 v15, v45

    add-int v18, v15, v42

    if-gez v18, :cond_1e

    move/from16 v27, v15

    move/from16 v15, v35

    :goto_1b
    move/from16 v21, v1

    goto :goto_1c

    :cond_1e
    move/from16 v27, v15

    move/from16 v15, v18

    goto :goto_1b

    :goto_1c
    neg-int v1, v0

    move/from16 p0, v0

    move-wide/from16 v31, v2

    move/from16 v25, v21

    move/from16 v0, v35

    move/from16 v24, v0

    :goto_1d
    iget v2, v14, Lkotlin/collections/ArrayDeque;->d:I

    if-ge v0, v2, :cond_20

    if-lt v1, v15, :cond_1f

    invoke-virtual {v14, v0}, Lkotlin/collections/ArrayDeque;->h(I)Ljava/lang/Object;

    const/16 v24, 0x1

    goto :goto_1d

    :cond_1f
    add-int/lit8 v25, v25, 0x1

    add-int v1, v1, v37

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_20
    move v0, v1

    move/from16 v1, v17

    move/from16 v17, v24

    move/from16 v2, v25

    move/from16 v24, p0

    :goto_1e
    move/from16 v3, v48

    if-ge v2, v3, :cond_25

    if-lt v0, v15, :cond_21

    if-lez v0, :cond_21

    invoke-virtual {v14}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_22

    :cond_21
    move/from16 v25, v7

    move-object v7, v10

    goto :goto_1f

    :cond_22
    move v15, v1

    move v1, v0

    move/from16 v48, v3

    move-object v7, v10

    move-object v3, v14

    move/from16 v14, v27

    move-wide/from16 v32, v31

    move v0, v2

    goto/16 :goto_23

    :goto_1f
    invoke-interface/range {v28 .. v28}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v10

    move/from16 p0, v25

    move-object/from16 v25, v14

    move/from16 v14, p0

    move/from16 p0, v0

    move/from16 v48, v3

    move/from16 v29, v15

    move-object/from16 v0, p1

    move v15, v1

    move v1, v2

    move-wide/from16 v2, v31

    invoke-static/range {v0 .. v13}, Landroidx/compose/foundation/pager/PagerMeasureKt;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZILandroidx/collection/MutableIntObjectMap;)Landroidx/compose/foundation/pager/MeasuredPage;

    move-result-object v10

    move v0, v1

    add-int/lit8 v1, v48, -0x1

    if-ne v0, v1, :cond_23

    move/from16 v31, v12

    :goto_20
    move-wide/from16 v32, v2

    goto :goto_21

    :cond_23
    move/from16 v31, v37

    goto :goto_20

    :goto_21
    add-int v2, p0, v31

    if-gt v2, v14, :cond_24

    if-eq v0, v1, :cond_24

    add-int/lit8 v1, v0, 0x1

    sub-int v24, v24, v37

    move/from16 v21, v1

    move v1, v15

    move-object/from16 v3, v25

    const/16 v17, 0x1

    goto :goto_22

    :cond_24
    iget v1, v10, Landroidx/compose/foundation/pager/MeasuredPage;->k:I

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move-object/from16 v3, v25

    invoke-virtual {v3, v10}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :goto_22
    add-int/lit8 v0, v0, 0x1

    move v10, v2

    move v2, v0

    move v0, v10

    move-object v10, v7

    move v7, v14

    move/from16 v15, v29

    move-wide/from16 v31, v32

    const/16 v35, 0x0

    move-object v14, v3

    goto :goto_1e

    :cond_25
    move/from16 p0, v0

    move v15, v1

    move/from16 v1, p0

    move v0, v2

    move/from16 v48, v3

    move-object v7, v10

    move-object v3, v14

    move-wide/from16 v32, v31

    move/from16 v14, v27

    :goto_23
    if-ge v1, v14, :cond_28

    sub-int v2, v14, v1

    sub-int v24, v24, v2

    add-int v25, v1, v2

    move/from16 v1, v24

    move/from16 v2, v41

    :goto_24
    if-ge v1, v2, :cond_26

    if-lez v21, :cond_26

    add-int/lit8 v21, v21, -0x1

    invoke-interface/range {v28 .. v28}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v10

    move/from16 v52, v0

    move/from16 v24, v1

    move/from16 v40, v2

    move/from16 v27, v14

    move/from16 v1, v21

    move-object/from16 v0, p1

    move-object v14, v3

    move-wide/from16 v2, v32

    invoke-static/range {v0 .. v13}, Landroidx/compose/foundation/pager/PagerMeasureKt;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZILandroidx/collection/MutableIntObjectMap;)Landroidx/compose/foundation/pager/MeasuredPage;

    move-result-object v10

    const/4 v0, 0x0

    invoke-virtual {v14, v0, v10}, Lkotlin/collections/ArrayDeque;->add(ILjava/lang/Object;)V

    iget v10, v10, Landroidx/compose/foundation/pager/MeasuredPage;->k:I

    invoke-static {v15, v10}, Ljava/lang/Math;->max(II)I

    move-result v15

    add-int v10, v24, v37

    move v1, v10

    move-object v3, v14

    move/from16 v14, v27

    move/from16 v2, v40

    move/from16 v0, v52

    goto :goto_24

    :cond_26
    move/from16 v52, v0

    move/from16 v24, v1

    move/from16 v40, v2

    move/from16 v27, v14

    const/4 v0, 0x0

    move-object v14, v3

    move-wide/from16 v2, v32

    if-gez v24, :cond_27

    add-int v1, v25, v24

    move/from16 v10, v21

    move/from16 v21, v15

    move v15, v1

    move v1, v0

    goto :goto_25

    :cond_27
    move/from16 v10, v21

    move/from16 v1, v24

    move/from16 v21, v15

    move/from16 v15, v25

    goto :goto_25

    :cond_28
    move/from16 v52, v0

    move/from16 v27, v14

    move/from16 v40, v41

    const/4 v0, 0x0

    move-object v14, v3

    move-wide/from16 v2, v32

    move/from16 v10, v21

    move/from16 v21, v15

    move v15, v1

    move/from16 v1, v24

    :goto_25
    if-ltz v1, :cond_29

    goto :goto_26

    :cond_29
    const-string v24, "invalid currentFirstPageScrollOffset"

    invoke-static/range {v24 .. v24}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :goto_26
    neg-int v0, v1

    invoke-virtual {v14}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroidx/compose/foundation/pager/MeasuredPage;

    if-gtz v40, :cond_2a

    if-gez v26, :cond_2b

    :cond_2a
    move/from16 v25, v0

    goto :goto_28

    :cond_2b
    move/from16 v25, v0

    move-wide/from16 v31, v2

    move/from16 v33, v15

    move/from16 v3, v37

    :goto_27
    const/16 v34, 0x1

    :cond_2c
    move v15, v1

    goto :goto_2a

    :goto_28
    invoke-virtual {v14}, Lkotlin/collections/ArrayDeque;->f()I

    move-result v0

    move-wide/from16 v31, v2

    const/4 v2, 0x0

    :goto_29
    if-ge v2, v0, :cond_2e

    if-eqz v1, :cond_2e

    move/from16 v3, v37

    if-gt v3, v1, :cond_2d

    invoke-virtual {v14}, Lkotlin/collections/ArrayDeque;->f()I

    move-result v29

    move/from16 v33, v15

    const/16 v34, 0x1

    add-int/lit8 v15, v29, -0x1

    if-eq v2, v15, :cond_2c

    sub-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v14, v2}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v24, v15

    check-cast v24, Landroidx/compose/foundation/pager/MeasuredPage;

    move/from16 v37, v3

    move/from16 v15, v33

    goto :goto_29

    :cond_2d
    move/from16 v33, v15

    goto :goto_27

    :cond_2e
    move/from16 v33, v15

    move/from16 v3, v37

    goto :goto_27

    :goto_2a
    sub-int v0, v10, v50

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v10, v10, -0x1

    if-gt v0, v10, :cond_31

    const/4 v2, 0x0

    :goto_2b
    if-nez v2, :cond_2f

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_2f
    move/from16 v35, v1

    move v1, v10

    invoke-interface/range {v28 .. v28}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v10

    move/from16 v53, v3

    move/from16 p0, v15

    move-object/from16 v54, v24

    move/from16 v24, v25

    move v15, v0

    move-object/from16 v25, v14

    move-object/from16 v0, p1

    move-object v14, v2

    move-wide/from16 v2, v31

    move/from16 v31, v50

    invoke-static/range {v0 .. v13}, Landroidx/compose/foundation/pager/PagerMeasureKt;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZILandroidx/collection/MutableIntObjectMap;)Landroidx/compose/foundation/pager/MeasuredPage;

    move-result-object v10

    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v1, v15, :cond_30

    add-int/lit8 v10, v1, -0x1

    move v0, v15

    move/from16 v50, v31

    const/4 v1, 0x0

    move/from16 v15, p0

    move-wide/from16 v31, v2

    move-object v2, v14

    move-object/from16 v14, v25

    move/from16 v3, v53

    move/from16 v25, v24

    move-object/from16 v24, v54

    goto :goto_2b

    :cond_30
    :goto_2c
    move-object/from16 v0, v47

    goto :goto_2d

    :cond_31
    move/from16 v53, v3

    move/from16 p0, v15

    move-object/from16 v54, v24

    move/from16 v24, v25

    move-wide/from16 v2, v31

    move/from16 v31, v50

    move v15, v0

    move-object/from16 v25, v14

    const/4 v14, 0x0

    goto :goto_2c

    :goto_2d
    move-object/from16 v29, v0

    check-cast v29, Ljava/util/Collection;

    invoke-interface/range {v29 .. v29}, Ljava/util/Collection;->size()I

    move-result v1

    move-object v10, v14

    const/4 v14, 0x0

    :goto_2e
    if-ge v14, v1, :cond_34

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Number;

    move-object/from16 v47, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ge v0, v15, :cond_33

    if-nez v10, :cond_32

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :cond_32
    invoke-interface/range {v28 .. v28}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v32

    move/from16 v35, v14

    move/from16 v37, v15

    move-object/from16 v14, v47

    move-object v15, v10

    move-object/from16 v10, v32

    move/from16 v32, v1

    move v1, v0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v13}, Landroidx/compose/foundation/pager/PagerMeasureKt;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZILandroidx/collection/MutableIntObjectMap;)Landroidx/compose/foundation/pager/MeasuredPage;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v10, v15

    goto :goto_2f

    :cond_33
    move/from16 v32, v1

    move/from16 v35, v14

    move/from16 v37, v15

    move-object/from16 v14, v47

    :goto_2f
    add-int/lit8 v0, v35, 0x1

    move-object v1, v14

    move v14, v0

    move-object v0, v1

    move/from16 v1, v32

    move/from16 v15, v37

    goto :goto_2e

    :cond_34
    move-object v14, v0

    if-nez v10, :cond_35

    sget-object v10, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_35
    move-object v15, v10

    move-object v0, v15

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    move/from16 v10, v21

    const/4 v1, 0x0

    :goto_30
    if-ge v1, v0, :cond_36

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move/from16 v32, v0

    move-object/from16 v0, v21

    check-cast v0, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v0, v0, Landroidx/compose/foundation/pager/MeasuredPage;->k:I

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v32

    goto :goto_30

    :cond_36
    invoke-virtual/range {v25 .. v25}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v0, v0, Landroidx/compose/foundation/pager/MeasuredPage;->a:I

    sub-int v1, v48, v0

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v21, v15

    move/from16 v15, v31

    invoke-static {v15, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v0, v0, 0x1

    if-gt v0, v1, :cond_38

    const/16 v31, 0x0

    :goto_31
    if-nez v31, :cond_37

    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    :cond_37
    move/from16 v50, v15

    move-object/from16 v15, v31

    move/from16 v31, v10

    invoke-interface/range {v28 .. v28}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v10

    move-object/from16 v47, v14

    move v14, v1

    move v1, v0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v13}, Landroidx/compose/foundation/pager/PagerMeasureKt;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZILandroidx/collection/MutableIntObjectMap;)Landroidx/compose/foundation/pager/MeasuredPage;

    move-result-object v10

    invoke-interface {v15, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v1, v14, :cond_39

    add-int/lit8 v0, v1, 0x1

    move v1, v14

    move/from16 v10, v31

    move-object/from16 v14, v47

    move-object/from16 v31, v15

    move/from16 v15, v50

    goto :goto_31

    :cond_38
    move/from16 v31, v10

    move-object/from16 v47, v14

    move/from16 v50, v15

    move v14, v1

    const/4 v15, 0x0

    :cond_39
    invoke-interface/range {v29 .. v29}, Ljava/util/Collection;->size()I

    move-result v0

    move-object v1, v15

    const/4 v15, 0x0

    :goto_32
    if-ge v15, v0, :cond_3d

    move-object/from16 v10, v47

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Number;

    move/from16 v32, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Number;->intValue()I

    move-result v0

    move-object/from16 v29, v1

    add-int/lit8 v1, v14, 0x1

    if-gt v1, v0, :cond_3c

    move/from16 v1, v48

    if-ge v0, v1, :cond_3b

    if-nez v29, :cond_3a

    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    :cond_3a
    move-object/from16 v47, v10

    move/from16 v35, v14

    move-object/from16 v14, v29

    invoke-interface/range {v28 .. v28}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v10

    move/from16 v37, v32

    move/from16 v32, v15

    move v15, v1

    move v1, v0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v13}, Landroidx/compose/foundation/pager/PagerMeasureKt;->a(Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;IJLandroidx/compose/foundation/pager/PagerLazyLayoutItemProvider;JLandroidx/compose/foundation/gestures/Orientation;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/ui/unit/LayoutDirection;ZILandroidx/collection/MutableIntObjectMap;)Landroidx/compose/foundation/pager/MeasuredPage;

    move-result-object v1

    move-object v10, v7

    move-wide/from16 v57, v2

    move-object v2, v8

    move-wide/from16 v7, v57

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v14

    goto :goto_35

    :cond_3b
    move/from16 v37, v32

    move/from16 v32, v15

    move v15, v1

    :goto_33
    move-object/from16 v0, p1

    move-object/from16 v47, v10

    move/from16 v35, v14

    move-object v10, v7

    move-wide/from16 v57, v2

    move-object v2, v8

    move-wide/from16 v7, v57

    goto :goto_34

    :cond_3c
    move/from16 v37, v32

    move/from16 v32, v15

    move/from16 v15, v48

    goto :goto_33

    :goto_34
    move-object/from16 v1, v29

    :goto_35
    add-int/lit8 v3, v32, 0x1

    move/from16 v48, v15

    move/from16 v14, v35

    move/from16 v0, v37

    move v15, v3

    move-wide/from16 v57, v7

    move-object v8, v2

    move-wide/from16 v2, v57

    move-object v7, v10

    goto :goto_32

    :cond_3d
    move-object/from16 v0, p1

    move-object/from16 v29, v1

    move-object v10, v7

    move/from16 v15, v48

    move-wide v7, v2

    if-nez v29, :cond_3e

    sget-object v1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    move-object v6, v1

    goto :goto_36

    :cond_3e
    move-object/from16 v6, v29

    :goto_36
    move-object v1, v6

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    move/from16 v3, v31

    const/4 v2, 0x0

    :goto_37
    if-ge v2, v1, :cond_3f

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v4, v4, Landroidx/compose/foundation/pager/MeasuredPage;->k:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_3f
    invoke-virtual/range {v25 .. v25}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v9, v54

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_40

    move/from16 v13, v34

    goto :goto_38

    :cond_40
    const/4 v13, 0x0

    :goto_38
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v10, v1, :cond_41

    move v2, v3

    :goto_39
    move-wide/from16 v4, v43

    goto :goto_3a

    :cond_41
    move/from16 v2, v33

    goto :goto_39

    :goto_3a
    invoke-static {v2, v4, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->g(IJ)I

    move-result v14

    if-ne v10, v1, :cond_42

    move/from16 v3, v33

    :cond_42
    invoke-static {v3, v4, v5}, Landroidx/compose/ui/unit/ConstraintsKt;->f(IJ)I

    move-result v2

    move v3, v2

    if-ne v10, v1, :cond_43

    :goto_3b
    move/from16 v1, v27

    goto :goto_3c

    :cond_43
    move v2, v14

    goto :goto_3b

    :goto_3c
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    move/from16 v5, v33

    if-ge v5, v4, :cond_44

    move/from16 v4, v34

    goto :goto_3d

    :cond_44
    const/4 v4, 0x0

    :goto_3d
    if-eqz v4, :cond_46

    if-nez v24, :cond_45

    goto :goto_3e

    :cond_45
    move/from16 v27, v1

    new-instance v1, Ljava/lang/StringBuilder;

    move/from16 v29, v3

    const-string v3, "non-zero pagesScrollOffset="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v3, v24

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->c(Ljava/lang/String;)V

    goto :goto_3f

    :cond_46
    :goto_3e
    move/from16 v27, v1

    move/from16 v29, v3

    move/from16 v3, v24

    :goto_3f
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual/range {v25 .. v25}, Lkotlin/collections/ArrayDeque;->f()I

    move-result v24

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v31

    add-int v31, v31, v24

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v32, v3

    add-int v3, v24, v31

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v4, :cond_51

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_47

    goto :goto_40

    :cond_47
    const-string v3, "No extra pages"

    invoke-static {v3}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :goto_40
    invoke-virtual/range {v25 .. v25}, Lkotlin/collections/ArrayDeque;->f()I

    move-result v3

    new-array v4, v3, [I

    move-object/from16 v24, v1

    const/4 v1, 0x0

    :goto_41
    if-ge v1, v3, :cond_48

    aput v12, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    :cond_48
    move/from16 v33, v5

    new-array v5, v3, [I

    move-wide/from16 v37, v7

    move/from16 v7, v26

    move-object/from16 v1, v28

    invoke-interface {v1, v7}, Landroidx/compose/ui/unit/Density;->k1(I)F

    move-result v8

    new-instance v1, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-object/from16 v54, v9

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-direct {v1, v8, v9, v7, v7}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v8, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v10, v8, :cond_49

    invoke-virtual {v1, v0, v2, v4, v5}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->b(Landroidx/compose/ui/unit/Density;I[I[I)V

    move/from16 v16, v3

    move-object/from16 v8, v24

    move/from16 v7, v27

    move-object/from16 v55, v28

    move/from16 v9, v29

    move/from16 v56, v33

    goto :goto_42

    :cond_49
    move v8, v3

    move-object v3, v4

    sget-object v4, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    move/from16 v16, v8

    move-object/from16 v8, v24

    move/from16 v7, v27

    move-object/from16 v55, v28

    move/from16 v9, v29

    move/from16 v56, v33

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->c(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    :goto_42
    invoke-static {v5}, Lkotlin/collections/ArraysKt;->y([I)Lkotlin/ranges/IntRange;

    move-result-object v0

    if-nez v11, :cond_4a

    goto :goto_43

    :cond_4a
    sget-object v1, Lkotlin/ranges/IntProgression;->e:Lkotlin/ranges/IntProgression$Companion;

    iget v3, v0, Lkotlin/ranges/IntProgression;->c:I

    iget v4, v0, Lkotlin/ranges/IntProgression;->b:I

    iget v0, v0, Lkotlin/ranges/IntProgression;->d:I

    neg-int v0, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lkotlin/ranges/IntProgression;

    invoke-direct {v1, v3, v4, v0}, Lkotlin/ranges/IntProgression;-><init>(III)V

    move-object v0, v1

    :goto_43
    iget v1, v0, Lkotlin/ranges/IntProgression;->b:I

    iget v3, v0, Lkotlin/ranges/IntProgression;->c:I

    iget v0, v0, Lkotlin/ranges/IntProgression;->d:I

    if-lez v0, :cond_4b

    if-le v1, v3, :cond_4c

    :cond_4b
    if-gez v0, :cond_50

    if-gt v3, v1, :cond_50

    :cond_4c
    :goto_44
    aget v4, v5, v1

    if-nez v11, :cond_4d

    move/from16 v27, v0

    move v0, v1

    :goto_45
    move/from16 v24, v2

    move-object/from16 v2, v25

    goto :goto_46

    :cond_4d
    sub-int v24, v16, v1

    add-int/lit8 v24, v24, -0x1

    move/from16 v27, v0

    move/from16 v0, v24

    goto :goto_45

    :goto_46
    invoke-virtual {v2, v0}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/pager/MeasuredPage;

    if-eqz v11, :cond_4e

    sub-int v4, v24, v4

    move/from16 v25, v4

    iget v4, v0, Landroidx/compose/foundation/pager/MeasuredPage;->b:I

    sub-int v4, v25, v4

    :cond_4e
    invoke-virtual {v0, v4, v14, v9}, Landroidx/compose/foundation/pager/MeasuredPage;->b(III)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v1, v3, :cond_4f

    add-int v1, v1, v27

    move-object/from16 v25, v2

    move/from16 v2, v24

    move/from16 v0, v27

    goto :goto_44

    :cond_4f
    :goto_47
    move-object/from16 v4, v21

    goto/16 :goto_4b

    :cond_50
    move-object/from16 v2, v25

    goto :goto_47

    :cond_51
    move/from16 v56, v5

    move-wide/from16 v37, v7

    move-object/from16 v54, v9

    move-object/from16 v2, v25

    move/from16 v7, v27

    move-object/from16 v55, v28

    move/from16 v9, v29

    move-object v8, v1

    move-object/from16 v0, v21

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    move/from16 v1, v32

    const/4 v3, 0x0

    :goto_48
    if-ge v3, v0, :cond_52

    move-object/from16 v4, v21

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/pager/MeasuredPage;

    sub-int v1, v1, v16

    invoke-virtual {v5, v1, v14, v9}, Landroidx/compose/foundation/pager/MeasuredPage;->b(III)V

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    :cond_52
    move-object/from16 v4, v21

    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->f()I

    move-result v0

    move/from16 v1, v32

    const/4 v3, 0x0

    :goto_49
    if-ge v3, v0, :cond_53

    invoke-virtual {v2, v3}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/pager/MeasuredPage;

    invoke-virtual {v5, v1, v14, v9}, Landroidx/compose/foundation/pager/MeasuredPage;->b(III)V

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int v1, v1, v16

    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    :cond_53
    move-object v0, v6

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_4a
    if-ge v3, v0, :cond_54

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/foundation/pager/MeasuredPage;

    invoke-virtual {v5, v1, v14, v9}, Landroidx/compose/foundation/pager/MeasuredPage;->b(III)V

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int v1, v1, v16

    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    :cond_54
    :goto_4b
    if-eqz v13, :cond_56

    move-object v1, v8

    :cond_55
    move-object/from16 v25, v2

    goto :goto_4d

    :cond_56
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_4c
    if-ge v3, v0, :cond_55

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Landroidx/compose/foundation/pager/MeasuredPage;

    move/from16 v16, v0

    iget v0, v13, Landroidx/compose/foundation/pager/MeasuredPage;->a:I

    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v25, v2

    move-object/from16 v2, v21

    check-cast v2, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v2, v2, Landroidx/compose/foundation/pager/MeasuredPage;->a:I

    if-lt v0, v2, :cond_57

    iget v0, v13, Landroidx/compose/foundation/pager/MeasuredPage;->a:I

    invoke-virtual/range {v25 .. v25}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v2, v2, Landroidx/compose/foundation/pager/MeasuredPage;->a:I

    if-gt v0, v2, :cond_57

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_57
    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v16

    move-object/from16 v2, v25

    goto :goto_4c

    :goto_4d
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_58

    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_4f

    :cond_58
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_4e
    if-ge v3, v2, :cond_5a

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v5, v5, Landroidx/compose/foundation/pager/MeasuredPage;->a:I

    invoke-virtual/range {v25 .. v25}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v13, v13, Landroidx/compose/foundation/pager/MeasuredPage;->a:I

    if-ge v5, v13, :cond_59

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    :cond_5a
    :goto_4f
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5b

    sget-object v2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_51

    :cond_5b
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_50
    if-ge v4, v3, :cond_5d

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v6, v6, Landroidx/compose/foundation/pager/MeasuredPage;->a:I

    invoke-virtual/range {v25 .. v25}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v13, v13, Landroidx/compose/foundation/pager/MeasuredPage;->a:I

    if-le v6, v13, :cond_5c

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5c
    add-int/lit8 v4, v4, 0x1

    goto :goto_50

    :cond_5d
    :goto_51
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5e

    move-object/from16 v21, v0

    move-object/from16 v25, v1

    move-object/from16 v23, v2

    move/from16 v29, v9

    move/from16 v13, v40

    move/from16 v4, v42

    move/from16 v6, v46

    move-object/from16 v3, v51

    const/16 v16, 0x0

    goto/16 :goto_53

    :cond_5e
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v5, v5, Landroidx/compose/foundation/pager/MeasuredPage;->m:I

    move-object/from16 v21, v0

    move-object/from16 v16, v4

    move/from16 v13, v40

    move/from16 v4, v42

    move/from16 v6, v46

    move-object/from16 v3, v51

    invoke-interface {v3, v6, v12, v13, v4}, Landroidx/compose/foundation/gestures/snapping/SnapPosition;->d(IIII)I

    move-result v0

    int-to-float v0, v0

    int-to-float v5, v5

    sub-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    neg-float v0, v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move/from16 v23, v0

    move/from16 v0, v34

    if-gt v0, v5, :cond_60

    move-object/from16 v57, v2

    move v2, v0

    move/from16 v0, v23

    move-object/from16 v23, v57

    :goto_52
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v25, v1

    move-object/from16 v1, v24

    check-cast v1, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v1, v1, Landroidx/compose/foundation/pager/MeasuredPage;->m:I

    move/from16 v29, v9

    invoke-interface {v3, v6, v12, v13, v4}, Landroidx/compose/foundation/gestures/snapping/SnapPosition;->d(IIII)I

    move-result v9

    int-to-float v9, v9

    int-to-float v1, v1

    sub-float/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    neg-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-gez v9, :cond_5f

    move v0, v1

    move-object/from16 v16, v24

    :cond_5f
    if-eq v2, v5, :cond_61

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, v25

    move/from16 v9, v29

    goto :goto_52

    :cond_60
    move-object/from16 v25, v1

    move-object/from16 v23, v2

    move/from16 v29, v9

    :cond_61
    :goto_53
    move-object/from16 v0, v16

    check-cast v0, Landroidx/compose/foundation/pager/MeasuredPage;

    invoke-interface {v3, v6, v12, v13, v4}, Landroidx/compose/foundation/gestures/snapping/SnapPosition;->d(IIII)I

    move-result v1

    if-eqz v0, :cond_62

    iget v2, v0, Landroidx/compose/foundation/pager/MeasuredPage;->m:I

    :goto_54
    move/from16 v5, v53

    goto :goto_55

    :cond_62
    const/4 v2, 0x0

    goto :goto_54

    :goto_55
    if-nez v5, :cond_63

    const/4 v1, 0x0

    goto :goto_56

    :cond_63
    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v5

    div-float/2addr v1, v2

    const/high16 v2, -0x41000000    # -0.5f

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v1, v2, v5}, Lkotlin/ranges/RangesKt;->c(FFF)F

    move-result v1

    :goto_56
    new-instance v2, Lxg0;

    const/16 v5, 0xb

    move-object/from16 v6, v49

    invoke-direct {v2, v6, v8, v5}, Lxg0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    add-int v14, v14, v19

    move-wide/from16 v5, p2

    invoke-static {v14, v5, v6}, Landroidx/compose/ui/unit/ConstraintsKt;->g(IJ)I

    move-result v8

    add-int v9, v29, v22

    invoke-static {v9, v5, v6}, Landroidx/compose/ui/unit/ConstraintsKt;->f(IJ)I

    move-result v5

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v6

    move-object/from16 v9, v55

    invoke-interface {v9, v8, v5, v6, v2}, Landroidx/compose/ui/layout/MeasureScope;->V0(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v16

    move/from16 v2, v52

    if-lt v2, v15, :cond_65

    move/from16 v5, v56

    if-le v5, v7, :cond_64

    goto :goto_58

    :cond_64
    const/4 v14, 0x0

    :goto_57
    move v8, v11

    move-object v11, v0

    goto :goto_59

    :cond_65
    :goto_58
    const/4 v14, 0x1

    goto :goto_57

    :goto_59
    new-instance v0, Landroidx/compose/foundation/pager/PagerMeasureResult;

    const/16 v24, 0x0

    move/from16 v13, p0

    move-object v15, v3

    move-object/from16 v28, v9

    move-object v5, v10

    move v2, v12

    move/from16 v7, v18

    move-object/from16 v18, v21

    move-object/from16 v19, v23

    move/from16 v3, v26

    move/from16 v6, v30

    move-wide/from16 v22, v37

    move/from16 v9, v50

    move-object/from16 v10, v54

    const/16 v34, 0x1

    move-object/from16 v21, p1

    move v12, v1

    move-object/from16 v1, v25

    invoke-direct/range {v0 .. v24}, Landroidx/compose/foundation/pager/PagerMeasureResult;-><init>(Ljava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;IIZILandroidx/compose/foundation/pager/MeasuredPage;Landroidx/compose/foundation/pager/MeasuredPage;FIZLandroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/ui/layout/MeasureResult;ZLjava/util/List;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v21

    :goto_5a
    invoke-interface/range {v28 .. v28}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->u0()Z

    move-result v2

    move-object/from16 v4, v36

    const/4 v3, 0x0

    invoke-virtual {v4, v0, v2, v3}, Landroidx/compose/foundation/pager/PagerState;->h(Landroidx/compose/foundation/pager/PagerMeasureResult;ZZ)V

    iget-object v2, v4, Landroidx/compose/foundation/pager/PagerState;->v:Landroidx/compose/foundation/pager/PagerCacheWindowLogic;

    iget-object v3, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    const-string v4, "compose:pager:cache_window:keepAroundItems"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->g()Z

    move-result v4

    if-eqz v4, :cond_67

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_67

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/pager/PageInfo;

    invoke-interface {v4}, Landroidx/compose/foundation/pager/PageInfo;->getIndex()I

    move-result v4

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->M(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/pager/PageInfo;

    invoke-interface {v3}, Landroidx/compose/foundation/pager/PageInfo;->getIndex()I

    move-result v3

    iget v5, v2, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->j:I

    :goto_5b
    if-ge v5, v4, :cond_66

    invoke-virtual {v1, v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->C1(I)Ljava/util/List;

    add-int/lit8 v5, v5, 0x1

    goto :goto_5b

    :cond_66
    add-int/lit8 v3, v3, 0x1

    iget v2, v2, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->k:I

    if-gt v3, v2, :cond_67

    :goto_5c
    invoke-virtual {v1, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasureScopeImpl;->C1(I)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v3, v2, :cond_67

    add-int/lit8 v3, v3, 0x1

    goto :goto_5c

    :cond_67
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :catchall_1
    move-exception v0

    invoke-static {v10, v2, v15}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw v0
.end method
