.class public final synthetic Loz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:F

.field public final synthetic c:Landroidx/compose/material3/SliderState;

.field public final synthetic d:J

.field public final synthetic e:J

.field public final synthetic f:J

.field public final synthetic g:J

.field public final synthetic h:F

.field public final synthetic i:F

.field public final synthetic j:Lkotlin/jvm/functions/Function2;

.field public final synthetic k:Lkotlin/jvm/functions/Function3;


# direct methods
.method public synthetic constructor <init>(FLandroidx/compose/material3/SliderState;JJJJFFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Loz0;->b:F

    iput-object p2, p0, Loz0;->c:Landroidx/compose/material3/SliderState;

    iput-wide p3, p0, Loz0;->d:J

    iput-wide p5, p0, Loz0;->e:J

    iput-wide p7, p0, Loz0;->f:J

    iput-wide p9, p0, Loz0;->g:J

    iput p11, p0, Loz0;->h:F

    iput p12, p0, Loz0;->i:F

    iput-object p13, p0, Loz0;->j:Lkotlin/jvm/functions/Function2;

    iput-object p14, p0, Loz0;->k:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    sget-object v2, Landroidx/compose/material3/SliderDefaults;->a:Landroidx/compose/material3/SliderDefaults;

    sget-object v2, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/ui/unit/Dp;->e:F

    iget v3, v0, Loz0;->b:F

    invoke-static {v3, v2}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result v2

    iget-object v4, v0, Loz0;->c:Landroidx/compose/material3/SliderState;

    const-wide v11, 0xffffffffL

    const/16 v13, 0x20

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v2, :cond_1

    iget-object v2, v4, Landroidx/compose/material3/SliderState;->m:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v3, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v2

    shr-long/2addr v2, v13

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    :goto_0
    div-float/2addr v2, v5

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v2

    and-long/2addr v2, v11

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    goto :goto_0

    :cond_1
    invoke-interface {v1, v3}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v2

    :goto_1
    sget-object v3, Landroidx/compose/material3/SliderDefaults;->a:Landroidx/compose/material3/SliderDefaults;

    iget-object v14, v4, Landroidx/compose/material3/SliderState;->g:[F

    invoke-virtual {v4}, Landroidx/compose/material3/SliderState;->c()F

    move-result v3

    const/4 v15, 0x0

    invoke-interface {v1, v15}, Landroidx/compose/ui/unit/Density;->k1(I)F

    move-result v6

    invoke-interface {v1, v15}, Landroidx/compose/ui/unit/Density;->k1(I)F

    move-result v7

    iget-object v8, v4, Landroidx/compose/material3/SliderState;->k:Landroidx/compose/runtime/MutableIntState;

    check-cast v8, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {v8}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->f()I

    move-result v8

    invoke-interface {v1, v8}, Landroidx/compose/ui/unit/Density;->k1(I)F

    move-result v8

    iget-object v9, v4, Landroidx/compose/material3/SliderState;->l:Landroidx/compose/runtime/MutableIntState;

    check-cast v9, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    invoke-virtual {v9}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->f()I

    move-result v9

    invoke-interface {v1, v9}, Landroidx/compose/ui/unit/Density;->k1(I)F

    move-result v9

    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->l1(F)F

    move-result v2

    iget-object v4, v4, Landroidx/compose/material3/SliderState;->m:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v10, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    const/16 v16, 0x1

    if-ne v4, v10, :cond_2

    move/from16 v17, v16

    goto :goto_2

    :cond_2
    move/from16 v17, v15

    :goto_2
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v10

    move/from16 p1, v5

    sget-object v5, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v10, v5, :cond_3

    move/from16 v18, v16

    goto :goto_3

    :cond_3
    move/from16 v18, v15

    :goto_3
    if-eqz v18, :cond_4

    if-nez v17, :cond_4

    move/from16 v19, v16

    goto :goto_4

    :cond_4
    move/from16 v19, v15

    :goto_4
    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v20

    if-eqz v17, :cond_5

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v21

    move-wide/from16 v23, v11

    and-long v11, v21, v23

    long-to-int v2, v11

    :goto_5
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    move v11, v2

    goto :goto_6

    :cond_5
    move-wide/from16 v23, v11

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v10

    shr-long/2addr v10, v13

    long-to-int v2, v10

    goto :goto_5

    :goto_6
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v2, v14

    const/4 v5, 0x0

    if-nez v2, :cond_6

    move-object v2, v5

    goto :goto_7

    :cond_6
    aget v2, v14, v15

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :goto_7
    const/4 v12, 0x0

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->a(FLjava/lang/Float;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v14}, Lkotlin/collections/ArraysKt;->K([F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->a(FLjava/lang/Float;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_8

    :cond_7
    move v2, v15

    goto :goto_9

    :cond_8
    :goto_8
    move/from16 v2, v16

    :goto_9
    array-length v10, v14

    if-nez v10, :cond_9

    goto :goto_a

    :cond_9
    aget v5, v14, v15

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    :goto_a
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->a(FLjava/lang/Float;)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-static {v14}, Lkotlin/collections/ArraysKt;->K([F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->a(FLjava/lang/Float;)Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_b

    :cond_a
    move v5, v15

    goto :goto_c

    :cond_b
    :goto_b
    move/from16 v5, v16

    :goto_c
    array-length v10, v14

    if-nez v10, :cond_c

    goto :goto_e

    :cond_c
    if-nez v5, :cond_d

    sub-float v5, v11, v12

    mul-float v10, v20, p1

    sub-float/2addr v5, v10

    mul-float/2addr v5, v3

    add-float/2addr v5, v12

    add-float v5, v5, v20

    :goto_d
    move/from16 v21, v5

    goto :goto_f

    :cond_d
    :goto_e
    invoke-static {v11, v12, v3, v12}, Ltr;->a(FFFF)F

    move-result v5

    goto :goto_d

    :goto_f
    array-length v3, v14

    if-nez v3, :cond_e

    goto :goto_11

    :cond_e
    if-nez v2, :cond_f

    sub-float v2, v11, v12

    mul-float v5, v20, p1

    sub-float/2addr v2, v5

    mul-float/2addr v2, v12

    add-float/2addr v2, v12

    add-float v2, v2, v20

    :goto_10
    move/from16 v22, v2

    goto :goto_12

    :cond_f
    :goto_11
    invoke-static {v11, v12, v12, v12}, Ltr;->a(FFFF)F

    move-result v2

    goto :goto_10

    :goto_12
    iget v2, v0, Loz0;->i:F

    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v25

    iget v2, v0, Loz0;->h:F

    invoke-static {v2, v12}, Landroidx/compose/ui/unit/Dp;->a(FF)I

    move-result v3

    if-lez v3, :cond_11

    if-eqz v17, :cond_10

    invoke-interface {v1, v7}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v3

    div-float v3, v3, p1

    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v5

    add-float/2addr v5, v3

    invoke-interface {v1, v9}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v3

    div-float v3, v3, p1

    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v2

    :goto_13
    add-float/2addr v2, v3

    move/from16 v26, v2

    move/from16 v27, v5

    goto :goto_14

    :cond_10
    invoke-interface {v1, v6}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v3

    div-float v3, v3, p1

    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v5

    add-float/2addr v5, v3

    invoke-interface {v1, v8}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v3

    div-float v3, v3, p1

    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v2

    goto :goto_13

    :cond_11
    move/from16 v26, v12

    move/from16 v27, v26

    :goto_14
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->G1()J

    move-result-wide v2

    if-eqz v17, :cond_12

    and-long v2, v2, v23

    :goto_15
    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    move/from16 v28, v2

    goto :goto_16

    :cond_12
    shr-long/2addr v2, v13

    goto :goto_15

    :goto_16
    sub-float v2, v11, v26

    sub-float v2, v2, v20

    cmpg-float v2, v21, v2

    iget-object v3, v0, Loz0;->j:Lkotlin/jvm/functions/Function2;

    if-gez v2, :cond_1b

    if-eqz v19, :cond_13

    move/from16 v9, v20

    goto :goto_17

    :cond_13
    move/from16 v9, v25

    :goto_17
    if-eqz v19, :cond_14

    move/from16 v10, v25

    goto :goto_18

    :cond_14
    move/from16 v10, v20

    :goto_18
    add-float v2, v21, v26

    sub-float v5, v11, v2

    if-eqz v17, :cond_15

    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    move/from16 p1, v13

    move-object/from16 v29, v14

    int-to-long v13, v8

    shl-long v6, v6, p1

    and-long v13, v13, v23

    or-long/2addr v6, v13

    sget-object v8, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    goto :goto_19

    :cond_15
    move/from16 p1, v13

    move-object/from16 v29, v14

    if-eqz v18, :cond_16

    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v13, v8

    shl-long v6, v6, p1

    and-long v13, v13, v23

    or-long/2addr v6, v13

    sget-object v8, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    goto :goto_19

    :cond_16
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v13, v8

    shl-long v6, v6, p1

    and-long v13, v13, v23

    or-long/2addr v6, v13

    sget-object v8, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    :goto_19
    if-eqz v17, :cond_17

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v13

    shr-long v13, v13, p1

    long-to-int v2, v13

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v13, v2

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    move/from16 v30, v12

    move-wide/from16 v31, v13

    int-to-long v12, v2

    shl-long v31, v31, p1

    and-long v12, v12, v23

    or-long v12, v31, v12

    sget-object v2, Landroidx/compose/ui/geometry/Size;->b:Landroidx/compose/ui/geometry/Size$Companion;

    move-object v5, v3

    move-object v2, v4

    move-wide v3, v6

    goto :goto_1b

    :cond_17
    move/from16 v30, v12

    if-eqz v18, :cond_18

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v12

    shr-long v12, v12, p1

    long-to-int v5, v12

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    sub-float/2addr v5, v2

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v12

    and-long v12, v12, v23

    long-to-int v2, v12

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v12, v5

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    move-object v8, v1

    int-to-long v1, v2

    shl-long v12, v12, p1

    and-long v1, v1, v23

    or-long/2addr v12, v1

    sget-object v1, Landroidx/compose/ui/geometry/Size;->b:Landroidx/compose/ui/geometry/Size$Companion;

    :goto_1a
    move-object v5, v3

    move-object v2, v4

    move-wide v3, v6

    move-object v1, v8

    goto :goto_1b

    :cond_18
    move-object v8, v1

    invoke-interface {v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v1

    and-long v1, v1, v23

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v12, v2

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    shl-long v12, v12, p1

    and-long v1, v1, v23

    or-long/2addr v12, v1

    sget-object v1, Landroidx/compose/ui/geometry/Size;->b:Landroidx/compose/ui/geometry/Size$Companion;

    goto :goto_1a

    :goto_1b
    iget-wide v7, v0, Loz0;->d:J

    move-wide/from16 v33, v12

    move-object v12, v5

    move-wide/from16 v5, v33

    invoke-static/range {v1 .. v10}, Landroidx/compose/material3/SliderDefaults;->e(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/foundation/gestures/Orientation;JJJFF)V

    if-eqz v17, :cond_19

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->G1()J

    move-result-wide v3

    shr-long v3, v3, p1

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    sub-float v4, v11, v20

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v5, v3

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    :goto_1c
    int-to-long v3, v3

    shl-long v5, v5, p1

    and-long v3, v3, v23

    or-long/2addr v3, v5

    goto :goto_1d

    :cond_19
    if-eqz v18, :cond_1a

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->G1()J

    move-result-wide v3

    and-long v3, v3, v23

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v6, v3

    shl-long v3, v4, p1

    and-long v5, v6, v23

    or-long/2addr v3, v5

    goto :goto_1d

    :cond_1a
    sub-float v3, v11, v20

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->G1()J

    move-result-wide v4

    and-long v4, v4, v23

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v5, v3

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    goto :goto_1c

    :goto_1d
    if-eqz v12, :cond_1c

    new-instance v5, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    invoke-interface {v12, v1, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    :cond_1b
    move-object v2, v4

    move/from16 v30, v12

    move/from16 p1, v13

    move-object/from16 v29, v14

    move-object v12, v3

    :cond_1c
    :goto_1e
    sub-float v13, v21, v26

    if-nez v19, :cond_1d

    move/from16 v9, v20

    goto :goto_1f

    :cond_1d
    move/from16 v9, v25

    :goto_1f
    if-eqz v19, :cond_1e

    move/from16 v10, v20

    goto :goto_20

    :cond_1e
    move/from16 v10, v25

    :goto_20
    if-eqz v19, :cond_1f

    move v3, v13

    goto :goto_21

    :cond_1f
    sub-float v3, v13, v30

    :goto_21
    cmpl-float v4, v3, v9

    if-lez v4, :cond_24

    if-eqz v17, :cond_20

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v6, v6

    shl-long v4, v4, p1

    and-long v6, v6, v23

    or-long/2addr v4, v6

    sget-object v6, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    goto :goto_22

    :cond_20
    if-eqz v18, :cond_21

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v4

    shr-long v4, v4, p1

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    sub-float/2addr v4, v13

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v6, v6

    shl-long v4, v4, p1

    and-long v6, v6, v23

    or-long/2addr v4, v6

    sget-object v6, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    goto :goto_22

    :cond_21
    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v6, v6

    shl-long v4, v4, p1

    and-long v6, v6, v23

    or-long/2addr v4, v6

    sget-object v6, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    :goto_22
    if-eqz v17, :cond_22

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v6

    shr-long v6, v6, p1

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    move-object v8, v1

    move-object v14, v2

    int-to-long v1, v3

    shl-long v6, v6, p1

    and-long v1, v1, v23

    or-long/2addr v1, v6

    sget-object v3, Landroidx/compose/ui/geometry/Size;->b:Landroidx/compose/ui/geometry/Size$Companion;

    :goto_23
    move-object v3, v8

    goto :goto_24

    :cond_22
    move-object v8, v1

    move-object v14, v2

    if-eqz v18, :cond_23

    invoke-interface {v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v1

    and-long v1, v1, v23

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v13}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v6, v1

    shl-long v1, v2, p1

    and-long v6, v6, v23

    or-long/2addr v1, v6

    sget-object v3, Landroidx/compose/ui/geometry/Size;->b:Landroidx/compose/ui/geometry/Size$Companion;

    goto :goto_23

    :cond_23
    invoke-interface {v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v1

    and-long v1, v1, v23

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v6, v1

    shl-long v1, v2, p1

    and-long v6, v6, v23

    or-long/2addr v1, v6

    sget-object v3, Landroidx/compose/ui/geometry/Size;->b:Landroidx/compose/ui/geometry/Size$Companion;

    goto :goto_23

    :goto_24
    iget-wide v7, v0, Loz0;->e:J

    move-wide/from16 v33, v1

    move-object v1, v3

    move-wide v3, v4

    move-wide/from16 v5, v33

    move-object v2, v14

    invoke-static/range {v1 .. v10}, Landroidx/compose/material3/SliderDefaults;->e(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/foundation/gestures/Orientation;JJJFF)V

    :cond_24
    add-float v2, v30, v20

    sub-float v11, v11, v20

    move/from16 v3, v30

    invoke-static {v3, v13}, Lkotlin/ranges/RangesKt;->h(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v3

    sub-float v4, v28, v26

    add-float v5, v28, v26

    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->h(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    sub-float v4, v22, v27

    add-float v5, v22, v27

    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->h(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    sub-float v4, v21, v26

    add-float v5, v21, v26

    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->h(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object v4

    move-object/from16 v5, v29

    array-length v6, v5

    move v7, v15

    :goto_25
    if-ge v15, v6, :cond_2a

    aget v8, v5, v15

    add-int/lit8 v9, v7, 0x1

    if-eqz v12, :cond_25

    array-length v10, v5

    add-int/lit8 v10, v10, -0x1

    if-ne v7, v10, :cond_25

    :goto_26
    move-object v10, v4

    move-object/from16 v29, v5

    goto/16 :goto_29

    :cond_25
    invoke-static {v2, v11, v8}, Landroidx/compose/ui/util/MathHelpersKt;->b(FFF)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v4, v8}, Lkotlin/ranges/ClosedFloatingPointRange;->h(Ljava/lang/Float;)Z

    move-result v8

    if-eqz v8, :cond_26

    goto :goto_26

    :cond_26
    if-eqz v17, :cond_27

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->G1()J

    move-result-wide v13

    shr-long v13, v13, p1

    long-to-int v8, v13

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v13, v8

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    move-object v10, v4

    move-object/from16 v29, v5

    int-to-long v4, v8

    shl-long v13, v13, p1

    and-long v4, v4, v23

    or-long/2addr v4, v13

    sget-object v8, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    goto :goto_27

    :cond_27
    move-object v10, v4

    move-object/from16 v29, v5

    if-eqz v18, :cond_28

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v4

    shr-long v4, v4, p1

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    sub-float/2addr v4, v7

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->G1()J

    move-result-wide v13

    and-long v13, v13, v23

    long-to-int v5, v13

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v13, v4

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    shl-long v13, v13, p1

    and-long v4, v4, v23

    or-long/2addr v4, v13

    sget-object v8, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    goto :goto_27

    :cond_28
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->G1()J

    move-result-wide v4

    and-long v4, v4, v23

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v13, v5

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    shl-long v13, v13, p1

    and-long v4, v4, v23

    or-long/2addr v4, v13

    sget-object v8, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    :goto_27
    new-instance v8, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v8, v4, v5}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlin/ranges/ClosedFloatingPointRange;->h(Ljava/lang/Float;)Z

    move-result v4

    if-eqz v4, :cond_29

    iget-wide v4, v0, Loz0;->g:J

    goto :goto_28

    :cond_29
    iget-wide v4, v0, Loz0;->f:J

    :goto_28
    new-instance v7, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v7, v4, v5}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    iget-object v4, v0, Loz0;->k:Lkotlin/jvm/functions/Function3;

    invoke-interface {v4, v1, v8, v7}, Lkotlin/jvm/functions/Function3;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_29
    add-int/lit8 v15, v15, 0x1

    move v7, v9

    move-object v4, v10

    move-object/from16 v5, v29

    goto/16 :goto_25

    :cond_2a
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
