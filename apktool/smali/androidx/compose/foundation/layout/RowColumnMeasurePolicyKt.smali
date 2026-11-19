.class public abstract Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "foundation-layout"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;IIIIILandroidx/compose/ui/layout/MeasureScope;Ljava/util/List;[Landroidx/compose/ui/layout/Placeable;II[II)Landroidx/compose/ui/layout/MeasureResult;
    .locals 26

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p7

    move/from16 v10, p10

    int-to-long v11, v8

    sub-int v13, v10, p9

    new-array v14, v13, [I

    const/4 v15, 0x0

    move/from16 v1, p9

    move/from16 v18, v15

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_0
    const/16 v19, 0x0

    const v4, 0x7fffffff

    if-ge v1, v10, :cond_9

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v5}, Landroidx/compose/foundation/layout/RowColumnImplKt;->a(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/foundation/layout/RowColumnImplKt;->b(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v20

    cmpl-float v21, v20, v15

    if-lez v21, :cond_0

    add-float v18, v18, v20

    add-int/lit8 v16, v16, 0x1

    move/from16 v21, v1

    move v0, v3

    move-wide/from16 v23, v11

    move/from16 v22, v15

    move-object/from16 v3, p0

    goto/16 :goto_7

    :cond_0
    if-ne v7, v4, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/compose/foundation/layout/RowColumnParentData;->d:Landroidx/compose/foundation/layout/FlowLayoutData;

    if-eqz v0, :cond_2

    iget v0, v0, Landroidx/compose/foundation/layout/FlowLayoutData;->a:F

    int-to-float v2, v7

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    :cond_2
    :goto_1
    sub-int v20, v6, v17

    aget-object v0, p8, v1

    if-nez v0, :cond_7

    if-eqz v19, :cond_3

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v2, v0

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-ne v6, v4, :cond_4

    goto :goto_3

    :cond_4
    if-gez v20, :cond_5

    const/4 v4, 0x0

    goto :goto_3

    :cond_5
    move/from16 v4, v20

    :goto_3
    if-eqz v19, :cond_6

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_4
    move/from16 v19, v3

    goto :goto_5

    :cond_6
    move v0, v7

    goto :goto_4

    :goto_5
    const/4 v3, 0x0

    move/from16 v21, v1

    const/4 v1, 0x0

    move-wide/from16 v23, v11

    move/from16 v22, v15

    move/from16 v15, v19

    move-object v11, v5

    move v5, v0

    move-object/from16 v0, p0

    invoke-interface/range {v0 .. v5}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->a(IIZII)J

    move-result-wide v1

    move-object v3, v0

    invoke-interface {v11, v1, v2}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    goto :goto_6

    :cond_7
    move/from16 v21, v1

    move-wide/from16 v23, v11

    move/from16 v22, v15

    move v15, v3

    move-object/from16 v3, p0

    :goto_6
    invoke-interface {v3, v0}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->c(Landroidx/compose/ui/layout/Placeable;)I

    move-result v1

    invoke-interface {v3, v0}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->e(Landroidx/compose/ui/layout/Placeable;)I

    move-result v2

    sub-int v4, v21, p9

    aput v1, v14, v4

    sub-int v4, v20, v1

    if-gez v4, :cond_8

    const/4 v4, 0x0

    :cond_8
    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v1, v4

    add-int v1, v1, v17

    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput-object v0, p8, v21

    move/from16 v17, v1

    move v0, v2

    move v2, v4

    :goto_7
    add-int/lit8 v1, v21, 0x1

    move v3, v0

    move/from16 v15, v22

    move-wide/from16 v11, v23

    goto/16 :goto_0

    :cond_9
    move-wide/from16 v23, v11

    move/from16 v22, v15

    move v15, v3

    move-object/from16 v3, p0

    if-nez v16, :cond_a

    sub-int v17, v17, v2

    move-object v0, v3

    move v3, v15

    const/4 v1, 0x0

    goto/16 :goto_13

    :cond_a
    if-eq v6, v4, :cond_b

    move v0, v6

    goto :goto_8

    :cond_b
    move/from16 v0, p1

    :goto_8
    const/4 v8, 0x1

    add-int/lit8 v1, v16, -0x1

    int-to-long v1, v1

    mul-long v11, v23, v1

    sub-int v0, v0, v17

    int-to-long v0, v0

    sub-long/2addr v0, v11

    const-wide/16 v20, 0x0

    cmp-long v2, v0, v20

    if-gez v2, :cond_c

    move-wide/from16 v0, v20

    :cond_c
    long-to-float v2, v0

    div-float v16, v2, v18

    move/from16 v2, p9

    :goto_9
    if-ge v2, v10, :cond_d

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v5}, Landroidx/compose/foundation/layout/RowColumnImplKt;->a(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v5

    invoke-static {v5}, Landroidx/compose/foundation/layout/RowColumnImplKt;->b(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v5

    mul-float v5, v5, v16

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-long v4, v5

    sub-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    const v4, 0x7fffffff

    goto :goto_9

    :cond_d
    move/from16 v4, p9

    move v2, v15

    const/4 v15, 0x0

    :goto_a
    if-ge v4, v10, :cond_17

    aget-object v5, p8, v4

    if-nez v5, :cond_16

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v5}, Landroidx/compose/foundation/layout/RowColumnImplKt;->a(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object v8

    invoke-static {v8}, Landroidx/compose/foundation/layout/RowColumnImplKt;->b(Landroidx/compose/foundation/layout/RowColumnParentData;)F

    move-result v20

    move-wide/from16 v23, v0

    const v0, 0x7fffffff

    if-ne v7, v0, :cond_f

    :cond_e
    move-object/from16 v0, v19

    goto :goto_b

    :cond_f
    if-eqz v8, :cond_e

    iget-object v0, v8, Landroidx/compose/foundation/layout/RowColumnParentData;->d:Landroidx/compose/foundation/layout/FlowLayoutData;

    if-eqz v0, :cond_e

    iget v0, v0, Landroidx/compose/foundation/layout/FlowLayoutData;->a:F

    int-to-float v1, v7

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_b
    cmpl-float v1, v20, v22

    if-lez v1, :cond_10

    goto :goto_c

    :cond_10
    const-string v1, "All weights <= 0 should have placeables"

    invoke-static {v1}, Landroidx/compose/foundation/layout/internal/InlineClassHelperKt;->b(Ljava/lang/String;)V

    :goto_c
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->signum(J)I

    move-result v1

    move/from16 v21, v2

    int-to-long v2, v1

    sub-long v23, v23, v2

    mul-float v20, v20, v16

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, v1

    const/4 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz v8, :cond_11

    iget-boolean v1, v8, Landroidx/compose/foundation/layout/RowColumnParentData;->b:Z

    goto :goto_d

    :cond_11
    const/4 v1, 0x1

    :goto_d
    if-eqz v1, :cond_12

    const v1, 0x7fffffff

    if-eq v2, v1, :cond_13

    move/from16 v18, v1

    move v1, v2

    goto :goto_e

    :cond_12
    const v1, 0x7fffffff

    :cond_13
    move/from16 v18, v1

    const/4 v1, 0x0

    :goto_e
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move/from16 v25, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v25

    goto :goto_f

    :cond_14
    move v3, v4

    move v4, v2

    const/4 v2, 0x0

    :goto_f
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_10
    move v8, v3

    goto :goto_11

    :cond_15
    move v0, v7

    goto :goto_10

    :goto_11
    const/4 v3, 0x1

    move-object v7, v5

    move/from16 v6, v21

    move v5, v0

    move-object/from16 v0, p0

    invoke-interface/range {v0 .. v5}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->a(IIZII)J

    move-result-wide v1

    invoke-interface {v7, v1, v2}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->c(Landroidx/compose/ui/layout/Placeable;)I

    move-result v2

    invoke-interface {v0, v1}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->e(Landroidx/compose/ui/layout/Placeable;)I

    move-result v3

    sub-int v4, v8, p9

    aput v2, v14, v4

    add-int/2addr v15, v2

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput-object v1, p8, v8

    goto :goto_12

    :cond_16
    move-wide/from16 v23, v0

    move v6, v2

    move-object v0, v3

    move v8, v4

    const v18, 0x7fffffff

    :goto_12
    add-int/lit8 v4, v8, 0x1

    move/from16 v6, p3

    move/from16 v7, p4

    move-object v3, v0

    move-wide/from16 v0, v23

    const/4 v8, 0x1

    goto/16 :goto_a

    :cond_17
    move v6, v2

    move-object v0, v3

    int-to-long v1, v15

    add-long/2addr v1, v11

    long-to-int v1, v1

    sub-int v2, p3, v17

    if-gez v1, :cond_18

    const/4 v1, 0x0

    :cond_18
    if-le v1, v2, :cond_19

    move v1, v2

    :cond_19
    move v3, v6

    :goto_13
    add-int v1, v17, v1

    if-gez v1, :cond_1a

    const/4 v1, 0x0

    :cond_1a
    move/from16 v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v1, p2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    new-array v3, v13, [I

    move-object/from16 v2, p6

    invoke-interface {v0, v4, v14, v3, v2}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->b(I[I[ILandroidx/compose/ui/layout/MeasureScope;)V

    move-object/from16 v1, p8

    move/from16 v8, p9

    move-object/from16 v6, p11

    move/from16 v7, p12

    move v9, v10

    invoke-interface/range {v0 .. v9}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;->d([Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/MeasureScope;[III[IIII)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method
