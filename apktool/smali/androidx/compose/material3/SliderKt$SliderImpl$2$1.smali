.class final Landroidx/compose/material3/SliderKt$SliderImpl$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Landroidx/compose/material3/SliderState;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/SliderState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/SliderKt$SliderImpl$2$1;->a:Landroidx/compose/material3/SliderState;

    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 22

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-wide/from16 v2, p3

    iget-object v1, v1, Landroidx/compose/material3/SliderKt$SliderImpl$2$1;->a:Landroidx/compose/material3/SliderState;

    iget v4, v1, Landroidx/compose/material3/SliderState;->a:I

    iget-object v5, v1, Landroidx/compose/material3/SliderState;->g:[F

    iget-object v6, v1, Landroidx/compose/material3/SliderState;->m:Landroidx/compose/foundation/gestures/Orientation;

    move-object v7, v0

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    const/4 v10, 0x0

    const-string v11, "Collection contains no element matching the predicate."

    if-ge v9, v7, :cond_b

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v12}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Landroidx/compose/material3/SliderComponents;->THUMB:Landroidx/compose/material3/SliderComponents;

    if-ne v13, v14, :cond_a

    invoke-interface {v12, v2, v3}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v7

    move-object v9, v0

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v9

    move v12, v8

    :goto_1
    if-ge v12, v9, :cond_9

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v13}, Landroidx/compose/ui/layout/LayoutIdKt;->a(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v14

    sget-object v15, Landroidx/compose/material3/SliderComponents;->TRACK:Landroidx/compose/material3/SliderComponents;

    if-ne v14, v15, :cond_8

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    const/4 v9, 0x1

    const/4 v11, 0x2

    if-ne v6, v0, :cond_0

    iget v12, v7, Landroidx/compose/ui/layout/Placeable;->c:I

    neg-int v12, v12

    invoke-static {v8, v12, v9, v2, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->j(IIIJ)J

    move-result-wide v14

    const/16 v19, 0x0

    const/16 v20, 0xe

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v14 .. v20}, Landroidx/compose/ui/unit/Constraints;->a(JIIIII)J

    move-result-wide v2

    invoke-interface {v13, v2, v3}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v2

    goto :goto_2

    :cond_0
    iget v12, v7, Landroidx/compose/ui/layout/Placeable;->b:I

    neg-int v12, v12

    invoke-static {v12, v8, v11, v2, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->j(IIIJ)J

    move-result-wide v14

    const/16 v19, 0x0

    const/16 v20, 0xb

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v14 .. v20}, Landroidx/compose/ui/unit/Constraints;->a(JIIIII)J

    move-result-wide v2

    invoke-interface {v13, v2, v3}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v2

    :goto_2
    new-instance v3, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    invoke-virtual {v1}, Landroidx/compose/material3/SliderState;->c()F

    move-result v12

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v13, v5

    if-nez v13, :cond_1

    goto :goto_3

    :cond_1
    aget v10, v5, v8

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    :goto_3
    invoke-static {v12, v10}, Lkotlin/jvm/internal/Intrinsics;->a(FLjava/lang/Float;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-static {v5}, Lkotlin/collections/ArraysKt;->K([F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->a(FLjava/lang/Float;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_4

    :cond_2
    move v9, v8

    :cond_3
    :goto_4
    sget-object v5, Landroidx/compose/material3/SliderKt;->f:Landroidx/compose/ui/layout/VerticalAlignmentLine;

    invoke-interface {v2, v5}, Landroidx/compose/ui/layout/Measured;->W(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v5

    const/high16 v10, -0x80000000

    if-eq v5, v10, :cond_4

    move v8, v5

    :cond_4
    if-ne v6, v0, :cond_6

    iget v0, v2, Landroidx/compose/ui/layout/Placeable;->b:I

    iget v5, v7, Landroidx/compose/ui/layout/Placeable;->b:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v5, v7, Landroidx/compose/ui/layout/Placeable;->c:I

    iget v6, v2, Landroidx/compose/ui/layout/Placeable;->c:I

    add-int v10, v5, v6

    iget v13, v2, Landroidx/compose/ui/layout/Placeable;->b:I

    sub-int v13, v0, v13

    div-int/2addr v13, v11

    div-int/2addr v5, v11

    iget v14, v7, Landroidx/compose/ui/layout/Placeable;->b:I

    sub-int v14, v0, v14

    div-int/2addr v14, v11

    if-lez v4, :cond_5

    if-nez v9, :cond_5

    mul-int/lit8 v4, v8, 0x2

    sub-int/2addr v6, v4

    int-to-float v4, v6

    mul-float/2addr v4, v12

    invoke-static {v4}, Lkotlin/math/MathKt;->c(F)I

    move-result v4

    add-int/2addr v4, v8

    goto :goto_5

    :cond_5
    int-to-float v4, v6

    mul-float/2addr v4, v12

    invoke-static {v4}, Lkotlin/math/MathKt;->c(F)I

    move-result v4

    :goto_5
    iput v4, v3, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    :goto_6
    move/from16 v18, v5

    move/from16 v17, v13

    move/from16 v20, v14

    goto :goto_9

    :cond_6
    iget v0, v7, Landroidx/compose/ui/layout/Placeable;->b:I

    iget v5, v2, Landroidx/compose/ui/layout/Placeable;->b:I

    add-int/2addr v0, v5

    iget v5, v2, Landroidx/compose/ui/layout/Placeable;->c:I

    iget v6, v7, Landroidx/compose/ui/layout/Placeable;->c:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget v5, v7, Landroidx/compose/ui/layout/Placeable;->b:I

    div-int/lit8 v13, v5, 0x2

    iget v5, v2, Landroidx/compose/ui/layout/Placeable;->c:I

    sub-int v5, v10, v5

    div-int/2addr v5, v11

    if-lez v4, :cond_7

    if-nez v9, :cond_7

    iget v4, v2, Landroidx/compose/ui/layout/Placeable;->b:I

    mul-int/lit8 v6, v8, 0x2

    sub-int/2addr v4, v6

    int-to-float v4, v4

    mul-float/2addr v4, v12

    invoke-static {v4}, Lkotlin/math/MathKt;->c(F)I

    move-result v4

    add-int/2addr v4, v8

    :goto_7
    move v14, v4

    goto :goto_8

    :cond_7
    iget v4, v2, Landroidx/compose/ui/layout/Placeable;->b:I

    int-to-float v4, v4

    mul-float/2addr v4, v12

    invoke-static {v4}, Lkotlin/math/MathKt;->c(F)I

    move-result v4

    goto :goto_7

    :goto_8
    iget v4, v7, Landroidx/compose/ui/layout/Placeable;->c:I

    sub-int v4, v10, v4

    div-int/2addr v4, v11

    iput v4, v3, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    goto :goto_6

    :goto_9
    iget-object v4, v1, Landroidx/compose/material3/SliderState;->h:Landroidx/compose/runtime/MutableIntState;

    check-cast v4, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->i(I)V

    iget-object v1, v1, Landroidx/compose/material3/SliderState;->i:Landroidx/compose/runtime/MutableIntState;

    check-cast v1, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {v1, v10}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->i(I)V

    new-instance v15, Lqz0;

    move-object/from16 v16, v2

    move-object/from16 v21, v3

    move-object/from16 v19, v7

    invoke-direct/range {v15 .. v21}, Lqz0;-><init>(Landroidx/compose/ui/layout/Placeable;IILandroidx/compose/ui/layout/Placeable;ILkotlin/jvm/internal/Ref$IntRef;)V

    move-object/from16 v13, p1

    invoke-static {v13, v0, v10, v15}, Landroidx/compose/ui/layout/MeasureScope;->t1(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    :cond_8
    move-object/from16 v13, p1

    move-object/from16 v19, v7

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    :cond_9
    invoke-static {v11}, Landroidx/compose/ui/util/ListUtilsKt;->b(Ljava/lang/String;)Ljava/lang/Void;

    invoke-static {}, Los;->d()V

    return-object v10

    :cond_a
    move-object/from16 v13, p1

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_b
    invoke-static {v11}, Landroidx/compose/ui/util/ListUtilsKt;->b(Ljava/lang/String;)Ljava/lang/Void;

    invoke-static {}, Los;->d()V

    return-object v10
.end method
