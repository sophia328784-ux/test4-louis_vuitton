.class public abstract Landroidx/compose/foundation/lazy/grid/LazyGridDslKt;
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


# direct methods
.method public static final a(Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v6, p5

    if-eqz v0, :cond_0

    const-string v2, "LazyHorizontalGrid"

    invoke-static {v0, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v2, v0

    const v0, 0x25e7b320

    move-object/from16 v3, p10

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v13

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    or-int v0, p11, v0

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    const/16 v7, 0x20

    if-eqz v5, :cond_2

    move v5, v7

    goto :goto_1

    :cond_2
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v0, v5

    or-int/lit16 v0, v0, 0x80

    move-object/from16 v5, p3

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x800

    goto :goto_2

    :cond_3
    const/16 v8, 0x400

    :goto_2
    or-int/2addr v0, v8

    or-int/lit16 v0, v0, 0x6000

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/high16 v8, 0x100000

    goto :goto_3

    :cond_4
    const/high16 v8, 0x80000

    :goto_3
    or-int/2addr v0, v8

    const/high16 v8, 0x16400000

    or-int/2addr v0, v8

    move-object/from16 v10, p9

    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v8, v4

    goto :goto_4

    :cond_5
    move v8, v3

    :goto_4
    const v9, 0x12492493

    and-int/2addr v9, v0

    const v11, 0x12492492

    const/4 v12, 0x1

    const/4 v14, 0x0

    if-ne v9, v11, :cond_7

    and-int/lit8 v9, v8, 0x3

    if-eq v9, v3, :cond_6

    goto :goto_5

    :cond_6
    move v3, v14

    goto :goto_6

    :cond_7
    :goto_5
    move v3, v12

    :goto_6
    and-int/lit8 v9, v0, 0x1

    invoke-virtual {v13, v9, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v3, p11, 0x1

    const v9, -0x71c00381

    const/4 v11, 0x3

    if-eqz v3, :cond_9

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/2addr v0, v9

    move-object/from16 v3, p2

    move-object/from16 v15, p6

    move-object/from16 v9, p8

    move/from16 v16, v8

    move/from16 v8, p7

    goto :goto_8

    :cond_9
    :goto_7
    invoke-static {v14, v13, v11}, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/grid/LazyGridState;

    move-result-object v3

    invoke-static {v13}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    move-result-object v15

    invoke-static {v13}, Landroidx/compose/foundation/OverscrollKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/OverscrollEffect;

    move-result-object v16

    and-int/2addr v0, v9

    move-object/from16 v9, v16

    move/from16 v16, v8

    move v8, v12

    :goto_8
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v17, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit8 v17, v0, 0xe

    shr-int/lit8 v18, v0, 0xf

    and-int/lit8 v18, v18, 0x70

    or-int v17, v17, v18

    and-int/lit8 v18, v17, 0xe

    const/16 v19, 0x6

    move/from16 p1, v11

    xor-int/lit8 v11, v18, 0x6

    if-le v11, v4, :cond_a

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    :cond_a
    and-int/lit8 v11, v17, 0x6

    if-ne v11, v4, :cond_c

    :cond_b
    move v4, v12

    goto :goto_9

    :cond_c
    move v4, v14

    :goto_9
    and-int/lit8 v11, v17, 0x70

    xor-int/lit8 v11, v11, 0x30

    if-le v11, v7, :cond_d

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    :cond_d
    and-int/lit8 v11, v17, 0x30

    if-ne v11, v7, :cond_e

    goto :goto_a

    :cond_e
    move v12, v14

    :cond_f
    :goto_a
    or-int/2addr v4, v12

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v4, :cond_10

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v7, v4, :cond_11

    :cond_10
    new-instance v7, Landroidx/compose/foundation/lazy/grid/GridSlotCache;

    new-instance v4, Lrs;

    const/16 v11, 0x19

    invoke-direct {v4, v1, v6, v11}, Lrs;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {v7, v4}, Landroidx/compose/foundation/lazy/grid/GridSlotCache;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    move-object v4, v7

    check-cast v4, Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;

    shr-int/lit8 v7, v0, 0x3

    and-int/lit8 v7, v7, 0xe

    const/high16 v11, 0x30000

    or-int/2addr v7, v11

    and-int/lit16 v11, v0, 0x1c00

    or-int/2addr v7, v11

    const v11, 0xc06000

    or-int/2addr v7, v11

    shl-int/lit8 v0, v0, 0x9

    const/high16 v11, 0x70000000

    and-int/2addr v0, v11

    or-int v14, v7, v0

    shl-int/lit8 v0, v16, 0x3

    and-int/lit8 v0, v0, 0x70

    or-int v0, v19, v0

    const/4 v6, 0x0

    move-object/from16 v11, p4

    move-object v12, v10

    move-object v7, v15

    move-object/from16 v10, p5

    move v15, v0

    invoke-static/range {v2 .. v15}, Landroidx/compose/foundation/lazy/grid/LazyGridKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_b

    :cond_12
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v3, p2

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    :goto_b
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_13

    new-instance v0, La90;

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v10, p9

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, La90;-><init>(Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_13
    return-void
.end method

.method public static final b(Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v11, p11

    move/from16 v12, p12

    const-string v2, "LazyVerticalGrid"

    if-eqz v0, :cond_0

    invoke-static {v0, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v3, -0x7b81c7d6

    move-object/from16 v4, p10

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v3

    and-int/lit8 v4, v11, 0x6

    if-nez v4, :cond_2

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v11

    goto :goto_1

    :cond_2
    move v4, v11

    :goto_1
    and-int/lit8 v7, v12, 0x2

    if-eqz v7, :cond_3

    or-int/lit8 v4, v4, 0x30

    goto :goto_3

    :cond_3
    and-int/lit8 v9, v11, 0x30

    if-nez v9, :cond_5

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x20

    goto :goto_2

    :cond_4
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v4, v9

    :cond_5
    :goto_3
    and-int/lit16 v9, v11, 0x180

    if-nez v9, :cond_8

    and-int/lit8 v9, v12, 0x4

    if-nez v9, :cond_6

    move-object/from16 v9, p2

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v10, 0x100

    goto :goto_4

    :cond_6
    move-object/from16 v9, p2

    :cond_7
    const/16 v10, 0x80

    :goto_4
    or-int/2addr v4, v10

    goto :goto_5

    :cond_8
    move-object/from16 v9, p2

    :goto_5
    and-int/lit8 v10, v12, 0x8

    if-eqz v10, :cond_a

    or-int/lit16 v4, v4, 0xc00

    :cond_9
    move-object/from16 v13, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v13, v11, 0xc00

    if-nez v13, :cond_9

    move-object/from16 v13, p3

    invoke-virtual {v3, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/16 v14, 0x800

    goto :goto_6

    :cond_b
    const/16 v14, 0x400

    :goto_6
    or-int/2addr v4, v14

    :goto_7
    or-int/lit16 v4, v4, 0x6000

    const/high16 v14, 0x30000

    and-int v15, v11, v14

    if-nez v15, :cond_e

    and-int/lit8 v15, v12, 0x20

    if-nez v15, :cond_c

    move-object/from16 v15, p4

    invoke-virtual {v3, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d

    const/high16 v16, 0x20000

    goto :goto_8

    :cond_c
    move-object/from16 v15, p4

    :cond_d
    const/high16 v16, 0x10000

    :goto_8
    or-int v4, v4, v16

    goto :goto_9

    :cond_e
    move-object/from16 v15, p4

    :goto_9
    and-int/lit8 v16, v12, 0x40

    const/high16 v17, 0x180000

    if-eqz v16, :cond_f

    or-int v4, v4, v17

    move/from16 p1, v14

    move-object/from16 v14, p5

    goto :goto_b

    :cond_f
    and-int v17, v11, v17

    move/from16 p1, v14

    move-object/from16 v14, p5

    if-nez v17, :cond_11

    invoke-virtual {v3, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    const/high16 v17, 0x100000

    goto :goto_a

    :cond_10
    const/high16 v17, 0x80000

    :goto_a
    or-int v4, v4, v17

    :cond_11
    :goto_b
    const/high16 v17, 0xc00000

    and-int v17, v11, v17

    if-nez v17, :cond_12

    const/high16 v17, 0x400000

    or-int v4, v4, v17

    :cond_12
    and-int/lit16 v8, v12, 0x100

    const/high16 v17, 0x6000000

    if-eqz v8, :cond_13

    or-int v4, v4, v17

    move/from16 v6, p7

    goto :goto_d

    :cond_13
    and-int v17, v11, v17

    move/from16 v6, p7

    if-nez v17, :cond_15

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v18

    if-eqz v18, :cond_14

    const/high16 v18, 0x4000000

    goto :goto_c

    :cond_14
    const/high16 v18, 0x2000000

    :goto_c
    or-int v4, v4, v18

    :cond_15
    :goto_d
    const/high16 v18, 0x30000000

    and-int v18, v11, v18

    if-nez v18, :cond_16

    const/high16 v18, 0x10000000

    or-int v4, v4, v18

    :cond_16
    move-object/from16 v5, p9

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_17

    const/16 v19, 0x4

    goto :goto_e

    :cond_17
    const/16 v19, 0x2

    :goto_e
    const v20, 0x12492493

    move-object/from16 v21, v0

    and-int v0, v4, v20

    const v5, 0x12492492

    const/16 v20, 0x1

    const/4 v6, 0x0

    if-ne v0, v5, :cond_19

    and-int/lit8 v0, v19, 0x3

    const/4 v5, 0x2

    if-eq v0, v5, :cond_18

    goto :goto_f

    :cond_18
    move v0, v6

    goto :goto_10

    :cond_19
    :goto_f
    move/from16 v0, v20

    :goto_10
    and-int/lit8 v5, v4, 0x1

    invoke-virtual {v3, v5, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v0, v11, 0x1

    const v18, -0x70001

    const v22, -0x71c00001

    const/4 v5, 0x3

    if-eqz v0, :cond_1d

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_11

    :cond_1a
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/lit8 v0, v12, 0x4

    if-eqz v0, :cond_1b

    and-int/lit16 v4, v4, -0x381

    :cond_1b
    and-int/lit8 v0, v12, 0x20

    if-eqz v0, :cond_1c

    and-int v4, v4, v18

    :cond_1c
    and-int v0, v4, v22

    move-object/from16 v18, p6

    move v4, v0

    move-object/from16 v16, v13

    move/from16 v2, v19

    move/from16 v7, v20

    move-object/from16 v13, v21

    move/from16 v19, p7

    move-object/from16 v20, p8

    move-object v0, v14

    move-object v14, v9

    move-object/from16 v21, v15

    goto :goto_14

    :cond_1d
    :goto_11
    if-eqz v7, :cond_1e

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    goto :goto_12

    :cond_1e
    move-object/from16 v0, v21

    :goto_12
    and-int/lit8 v2, v12, 0x4

    if-eqz v2, :cond_1f

    invoke-static {v6, v3, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/grid/LazyGridState;

    move-result-object v2

    and-int/lit16 v4, v4, -0x381

    move-object v9, v2

    :cond_1f
    if-eqz v10, :cond_20

    sget-object v2, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/4 v2, 0x0

    invoke-static {v2}, Landroidx/compose/foundation/layout/PaddingKt;->a(F)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v2

    move-object v13, v2

    :cond_20
    and-int/lit8 v2, v12, 0x20

    if-eqz v2, :cond_21

    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    and-int v4, v4, v18

    move-object v15, v2

    :cond_21
    if-eqz v16, :cond_22

    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    move-object v14, v2

    :cond_22
    invoke-static {v3}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    move-result-object v2

    if-eqz v8, :cond_23

    move/from16 v7, v20

    goto :goto_13

    :cond_23
    move/from16 v7, p7

    :goto_13
    invoke-static {v3}, Landroidx/compose/foundation/OverscrollKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/OverscrollEffect;

    move-result-object v8

    and-int v4, v4, v22

    move-object/from16 v18, v2

    move-object/from16 v16, v13

    move/from16 v2, v19

    move-object v13, v0

    move/from16 v19, v7

    move/from16 v7, v20

    move-object/from16 v20, v8

    move-object/from16 v21, v15

    move-object v0, v14

    move-object v14, v9

    :goto_14
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v8, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit8 v8, v4, 0xe

    shr-int/lit8 v9, v4, 0xf

    and-int/lit8 v9, v9, 0x70

    or-int/2addr v8, v9

    and-int/lit8 v9, v8, 0xe

    xor-int/lit8 v9, v9, 0x6

    const/4 v10, 0x4

    if-le v9, v10, :cond_24

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_25

    :cond_24
    and-int/lit8 v9, v8, 0x6

    if-ne v9, v10, :cond_26

    :cond_25
    move v9, v7

    goto :goto_15

    :cond_26
    move v9, v6

    :goto_15
    and-int/lit8 v10, v8, 0x70

    xor-int/lit8 v10, v10, 0x30

    const/16 v15, 0x20

    if-le v10, v15, :cond_27

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_28

    :cond_27
    and-int/lit8 v8, v8, 0x30

    if-ne v8, v15, :cond_29

    :cond_28
    move v6, v7

    :cond_29
    or-int/2addr v6, v9

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_2a

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v7, v6, :cond_2b

    :cond_2a
    new-instance v7, Landroidx/compose/foundation/lazy/grid/GridSlotCache;

    new-instance v6, Lrs;

    const/16 v8, 0x18

    invoke-direct {v6, v1, v0, v8}, Lrs;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {v7, v6}, Landroidx/compose/foundation/lazy/grid/GridSlotCache;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2b
    move-object v15, v7

    check-cast v15, Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;

    shr-int/lit8 v6, v4, 0x3

    and-int/lit8 v7, v6, 0xe

    or-int v7, v7, p1

    and-int/lit8 v8, v6, 0x70

    or-int/2addr v7, v8

    and-int/lit16 v8, v4, 0x1c00

    or-int/2addr v7, v8

    const v8, 0xe000

    and-int/2addr v8, v4

    or-int/2addr v7, v8

    const/high16 v8, 0x1c00000

    and-int/2addr v6, v8

    or-int/2addr v6, v7

    shl-int/lit8 v7, v4, 0xc

    const/high16 v8, 0x70000000

    and-int/2addr v7, v8

    or-int v25, v6, v7

    shr-int/lit8 v4, v4, 0x12

    and-int/lit8 v4, v4, 0xe

    shl-int/2addr v2, v5

    and-int/lit8 v2, v2, 0x70

    or-int v26, v4, v2

    const/16 v17, 0x1

    move-object/from16 v23, p9

    move-object/from16 v22, v0

    move-object/from16 v24, v3

    invoke-static/range {v13 .. v26}, Landroidx/compose/foundation/lazy/grid/LazyGridKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridSlotsProvider;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move-object v2, v13

    move-object v3, v14

    move-object/from16 v4, v16

    move-object/from16 v7, v18

    move/from16 v8, v19

    move-object/from16 v9, v20

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    goto :goto_16

    :cond_2c
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object v3, v9

    move-object v4, v13

    move-object v6, v14

    move-object v5, v15

    move-object/from16 v2, v21

    move-object/from16 v9, p8

    :goto_16
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_2d

    new-instance v0, Lb90;

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v12}, Lb90;-><init>(Landroidx/compose/foundation/lazy/grid/GridCells$Fixed;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;II)V

    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2d
    return-void
.end method
