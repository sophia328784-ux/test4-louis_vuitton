.class public abstract Landroidx/compose/foundation/lazy/LazyDslKt;
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
.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 28

    move-object/from16 v0, p0

    move/from16 v10, p10

    move/from16 v11, p11

    const-string v1, "LazyColumn"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v2, 0x3335543

    move-object/from16 v3, p9

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    and-int/lit8 v3, v11, 0x1

    if-eqz v3, :cond_1

    or-int/lit8 v4, v10, 0x6

    goto :goto_1

    :cond_1
    and-int/lit8 v4, v10, 0x6

    if-nez v4, :cond_3

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v10

    goto :goto_1

    :cond_3
    move v4, v10

    :goto_1
    and-int/lit8 v5, v10, 0x30

    if-nez v5, :cond_6

    and-int/lit8 v5, v11, 0x2

    if-nez v5, :cond_4

    move-object/from16 v5, p1

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x20

    goto :goto_2

    :cond_4
    move-object/from16 v5, p1

    :cond_5
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v4, v6

    goto :goto_3

    :cond_6
    move-object/from16 v5, p1

    :goto_3
    and-int/lit8 v6, v11, 0x4

    if-eqz v6, :cond_8

    or-int/lit16 v4, v4, 0x180

    :cond_7
    move-object/from16 v7, p2

    goto :goto_5

    :cond_8
    and-int/lit16 v7, v10, 0x180

    if-nez v7, :cond_7

    move-object/from16 v7, p2

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/16 v8, 0x100

    goto :goto_4

    :cond_9
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v4, v8

    :goto_5
    and-int/lit8 v8, v11, 0x8

    const/4 v9, 0x0

    if-eqz v8, :cond_a

    or-int/lit16 v4, v4, 0xc00

    goto :goto_7

    :cond_a
    and-int/lit16 v8, v10, 0xc00

    if-nez v8, :cond_c

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v8

    if-eqz v8, :cond_b

    const/16 v8, 0x800

    goto :goto_6

    :cond_b
    const/16 v8, 0x400

    :goto_6
    or-int/2addr v4, v8

    :cond_c
    :goto_7
    and-int/lit16 v8, v10, 0x6000

    if-nez v8, :cond_f

    and-int/lit8 v8, v11, 0x10

    if-nez v8, :cond_d

    move-object/from16 v8, p3

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    const/16 v12, 0x4000

    goto :goto_8

    :cond_d
    move-object/from16 v8, p3

    :cond_e
    const/16 v12, 0x2000

    :goto_8
    or-int/2addr v4, v12

    goto :goto_9

    :cond_f
    move-object/from16 v8, p3

    :goto_9
    and-int/lit8 v12, v11, 0x20

    const/high16 v13, 0x30000

    if-eqz v12, :cond_11

    or-int/2addr v4, v13

    :cond_10
    move-object/from16 v13, p4

    goto :goto_b

    :cond_11
    and-int/2addr v13, v10

    if-nez v13, :cond_10

    move-object/from16 v13, p4

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    const/high16 v14, 0x20000

    goto :goto_a

    :cond_12
    const/high16 v14, 0x10000

    :goto_a
    or-int/2addr v4, v14

    :goto_b
    const/high16 v14, 0x180000

    and-int/2addr v14, v10

    if-nez v14, :cond_15

    and-int/lit8 v14, v11, 0x40

    if-nez v14, :cond_13

    move-object/from16 v14, p5

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_14

    const/high16 v15, 0x100000

    goto :goto_c

    :cond_13
    move-object/from16 v14, p5

    :cond_14
    const/high16 v15, 0x80000

    :goto_c
    or-int/2addr v4, v15

    goto :goto_d

    :cond_15
    move-object/from16 v14, p5

    :goto_d
    and-int/lit16 v15, v11, 0x80

    const/high16 v16, 0xc00000

    if-eqz v15, :cond_16

    or-int v4, v4, v16

    move/from16 v9, p6

    goto :goto_f

    :cond_16
    and-int v16, v10, v16

    move/from16 v9, p6

    if-nez v16, :cond_18

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v16

    if-eqz v16, :cond_17

    const/high16 v16, 0x800000

    goto :goto_e

    :cond_17
    const/high16 v16, 0x400000

    :goto_e
    or-int v4, v4, v16

    :cond_18
    :goto_f
    const/high16 v16, 0x6000000

    and-int v16, v10, v16

    if-nez v16, :cond_19

    const/high16 v16, 0x2000000

    or-int v4, v4, v16

    :cond_19
    const/high16 v16, 0x30000000

    and-int v16, v10, v16

    if-nez v16, :cond_1b

    move-object/from16 v16, v0

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    const/high16 v17, 0x20000000

    goto :goto_10

    :cond_1a
    const/high16 v17, 0x10000000

    :goto_10
    or-int v4, v4, v17

    goto :goto_11

    :cond_1b
    move-object/from16 v16, v0

    move-object/from16 v0, p8

    :goto_11
    const v17, 0x12492493

    and-int v0, v4, v17

    move/from16 p9, v3

    const v3, 0x12492492

    const/16 v17, 0x1

    if-eq v0, v3, :cond_1c

    move/from16 v0, v17

    goto :goto_12

    :cond_1c
    const/4 v0, 0x0

    :goto_12
    and-int/lit8 v3, v4, 0x1

    invoke-virtual {v2, v3, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v0, v10, 0x1

    const v3, -0xe000001

    const v18, -0x380001

    const v19, -0xe001

    if-eqz v0, :cond_21

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_14

    :cond_1d
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/lit8 v0, v11, 0x2

    if-eqz v0, :cond_1e

    and-int/lit8 v4, v4, -0x71

    :cond_1e
    and-int/lit8 v0, v11, 0x10

    if-eqz v0, :cond_1f

    and-int v4, v4, v19

    :cond_1f
    and-int/lit8 v0, v11, 0x40

    if-eqz v0, :cond_20

    and-int v4, v4, v18

    :cond_20
    and-int v0, v4, v3

    move-object/from16 v18, p7

    move-object/from16 v12, v16

    move-object/from16 v20, v8

    move/from16 v17, v9

    move-object/from16 v19, v13

    move-object v13, v5

    move-object/from16 v16, v14

    :goto_13
    move-object v14, v7

    goto :goto_16

    :cond_21
    :goto_14
    if-eqz p9, :cond_22

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    goto :goto_15

    :cond_22
    move-object/from16 v0, v16

    :goto_15
    and-int/lit8 v1, v11, 0x2

    if-eqz v1, :cond_23

    const/4 v1, 0x3

    const/4 v5, 0x0

    invoke-static {v5, v2, v1}, Landroidx/compose/foundation/lazy/LazyListStateKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/LazyListState;

    move-result-object v1

    and-int/lit8 v4, v4, -0x71

    move-object v5, v1

    :cond_23
    if-eqz v6, :cond_24

    sget-object v1, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/4 v1, 0x0

    invoke-static {v1}, Landroidx/compose/foundation/layout/PaddingKt;->a(F)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v1

    move-object v7, v1

    :cond_24
    and-int/lit8 v1, v11, 0x10

    if-eqz v1, :cond_25

    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    and-int v4, v4, v19

    move-object v8, v1

    :cond_25
    if-eqz v12, :cond_26

    sget-object v1, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    move-object v13, v1

    :cond_26
    and-int/lit8 v1, v11, 0x40

    if-eqz v1, :cond_27

    invoke-static {v2}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    move-result-object v1

    and-int v4, v4, v18

    move-object v14, v1

    :cond_27
    if-eqz v15, :cond_28

    move/from16 v9, v17

    :cond_28
    invoke-static {v2}, Landroidx/compose/foundation/OverscrollKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/OverscrollEffect;

    move-result-object v1

    and-int/2addr v3, v4

    move-object v12, v0

    move-object/from16 v18, v1

    move v0, v3

    move-object/from16 v20, v8

    move/from16 v17, v9

    move-object/from16 v19, v13

    move-object/from16 v16, v14

    move-object v13, v5

    goto :goto_13

    :goto_16
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit8 v1, v0, 0xe

    or-int/lit16 v1, v1, 0x6000

    and-int/lit8 v3, v0, 0x70

    or-int/2addr v1, v3

    and-int/lit16 v3, v0, 0x380

    or-int/2addr v1, v3

    and-int/lit16 v3, v0, 0x1c00

    or-int/2addr v1, v3

    shr-int/lit8 v3, v0, 0x3

    const/high16 v4, 0x70000

    and-int/2addr v4, v3

    or-int/2addr v1, v4

    const/high16 v4, 0x380000

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    shl-int/lit8 v3, v0, 0xc

    const/high16 v4, 0x70000000

    and-int/2addr v3, v4

    or-int v25, v1, v3

    shr-int/lit8 v1, v0, 0xc

    and-int/lit8 v1, v1, 0xe

    shr-int/lit8 v0, v0, 0x12

    and-int/lit16 v0, v0, 0x1c00

    or-int v26, v1, v0

    const/16 v27, 0x1900

    const/4 v15, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v23, p8

    move-object/from16 v24, v2

    invoke-static/range {v12 .. v27}, Landroidx/compose/foundation/lazy/LazyListKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object/from16 v6, v16

    move/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v5, v19

    move-object/from16 v4, v20

    goto :goto_17

    :cond_29
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object v2, v5

    move-object v3, v7

    move-object v4, v8

    move v7, v9

    move-object v5, v13

    move-object v6, v14

    move-object/from16 v1, v16

    move-object/from16 v8, p7

    :goto_17
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_2a

    new-instance v0, Lb0;

    const/4 v12, 0x2

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v12}, Lb0;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;III)V

    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2a
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 28

    move-object/from16 v0, p0

    move/from16 v10, p10

    move/from16 v11, p11

    const-string v1, "LazyRow"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v2, -0x705086e1

    move-object/from16 v3, p9

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    and-int/lit8 v3, v11, 0x1

    if-eqz v3, :cond_1

    or-int/lit8 v4, v10, 0x6

    goto :goto_1

    :cond_1
    and-int/lit8 v4, v10, 0x6

    if-nez v4, :cond_3

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v10

    goto :goto_1

    :cond_3
    move v4, v10

    :goto_1
    and-int/lit8 v5, v10, 0x30

    if-nez v5, :cond_6

    and-int/lit8 v5, v11, 0x2

    if-nez v5, :cond_4

    move-object/from16 v5, p1

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x20

    goto :goto_2

    :cond_4
    move-object/from16 v5, p1

    :cond_5
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v4, v6

    goto :goto_3

    :cond_6
    move-object/from16 v5, p1

    :goto_3
    and-int/lit8 v6, v11, 0x4

    if-eqz v6, :cond_8

    or-int/lit16 v4, v4, 0x180

    :cond_7
    move-object/from16 v7, p2

    goto :goto_5

    :cond_8
    and-int/lit16 v7, v10, 0x180

    if-nez v7, :cond_7

    move-object/from16 v7, p2

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/16 v8, 0x100

    goto :goto_4

    :cond_9
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v4, v8

    :goto_5
    and-int/lit8 v8, v11, 0x8

    const/4 v9, 0x0

    if-eqz v8, :cond_a

    or-int/lit16 v4, v4, 0xc00

    goto :goto_7

    :cond_a
    and-int/lit16 v8, v10, 0xc00

    if-nez v8, :cond_c

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v8

    if-eqz v8, :cond_b

    const/16 v8, 0x800

    goto :goto_6

    :cond_b
    const/16 v8, 0x400

    :goto_6
    or-int/2addr v4, v8

    :cond_c
    :goto_7
    and-int/lit16 v8, v10, 0x6000

    if-nez v8, :cond_f

    and-int/lit8 v8, v11, 0x10

    if-nez v8, :cond_d

    move-object/from16 v8, p3

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    const/16 v12, 0x4000

    goto :goto_8

    :cond_d
    move-object/from16 v8, p3

    :cond_e
    const/16 v12, 0x2000

    :goto_8
    or-int/2addr v4, v12

    goto :goto_9

    :cond_f
    move-object/from16 v8, p3

    :goto_9
    and-int/lit8 v12, v11, 0x20

    const/high16 v13, 0x30000

    if-eqz v12, :cond_11

    or-int/2addr v4, v13

    :cond_10
    move-object/from16 v13, p4

    goto :goto_b

    :cond_11
    and-int/2addr v13, v10

    if-nez v13, :cond_10

    move-object/from16 v13, p4

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    const/high16 v14, 0x20000

    goto :goto_a

    :cond_12
    const/high16 v14, 0x10000

    :goto_a
    or-int/2addr v4, v14

    :goto_b
    const/high16 v14, 0x180000

    and-int/2addr v14, v10

    if-nez v14, :cond_15

    and-int/lit8 v14, v11, 0x40

    if-nez v14, :cond_13

    move-object/from16 v14, p5

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_14

    const/high16 v15, 0x100000

    goto :goto_c

    :cond_13
    move-object/from16 v14, p5

    :cond_14
    const/high16 v15, 0x80000

    :goto_c
    or-int/2addr v4, v15

    goto :goto_d

    :cond_15
    move-object/from16 v14, p5

    :goto_d
    and-int/lit16 v15, v11, 0x80

    const/high16 v16, 0xc00000

    if-eqz v15, :cond_16

    or-int v4, v4, v16

    move/from16 v9, p6

    goto :goto_f

    :cond_16
    and-int v16, v10, v16

    move/from16 v9, p6

    if-nez v16, :cond_18

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v16

    if-eqz v16, :cond_17

    const/high16 v16, 0x800000

    goto :goto_e

    :cond_17
    const/high16 v16, 0x400000

    :goto_e
    or-int v4, v4, v16

    :cond_18
    :goto_f
    const/high16 v16, 0x6000000

    and-int v16, v10, v16

    if-nez v16, :cond_19

    const/high16 v16, 0x2000000

    or-int v4, v4, v16

    :cond_19
    const/high16 v16, 0x30000000

    and-int v16, v10, v16

    if-nez v16, :cond_1b

    move-object/from16 v16, v0

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    const/high16 v17, 0x20000000

    goto :goto_10

    :cond_1a
    const/high16 v17, 0x10000000

    :goto_10
    or-int v4, v4, v17

    goto :goto_11

    :cond_1b
    move-object/from16 v16, v0

    move-object/from16 v0, p8

    :goto_11
    const v17, 0x12492493

    and-int v0, v4, v17

    move/from16 p9, v3

    const v3, 0x12492492

    const/16 v17, 0x1

    if-eq v0, v3, :cond_1c

    move/from16 v0, v17

    goto :goto_12

    :cond_1c
    const/4 v0, 0x0

    :goto_12
    and-int/lit8 v3, v4, 0x1

    invoke-virtual {v2, v3, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v0, v10, 0x1

    const v3, -0xe000001

    const v18, -0x380001

    const v19, -0xe001

    if-eqz v0, :cond_21

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_14

    :cond_1d
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/lit8 v0, v11, 0x2

    if-eqz v0, :cond_1e

    and-int/lit8 v4, v4, -0x71

    :cond_1e
    and-int/lit8 v0, v11, 0x10

    if-eqz v0, :cond_1f

    and-int v4, v4, v19

    :cond_1f
    and-int/lit8 v0, v11, 0x40

    if-eqz v0, :cond_20

    and-int v4, v4, v18

    :cond_20
    and-int v0, v4, v3

    move-object/from16 v18, p7

    move-object/from16 v12, v16

    move-object/from16 v22, v8

    move/from16 v17, v9

    move-object/from16 v21, v13

    move-object v13, v5

    move-object/from16 v16, v14

    :goto_13
    move-object v14, v7

    goto :goto_16

    :cond_21
    :goto_14
    if-eqz p9, :cond_22

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    goto :goto_15

    :cond_22
    move-object/from16 v0, v16

    :goto_15
    and-int/lit8 v1, v11, 0x2

    if-eqz v1, :cond_23

    const/4 v1, 0x3

    const/4 v5, 0x0

    invoke-static {v5, v2, v1}, Landroidx/compose/foundation/lazy/LazyListStateKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/LazyListState;

    move-result-object v1

    and-int/lit8 v4, v4, -0x71

    move-object v5, v1

    :cond_23
    if-eqz v6, :cond_24

    sget-object v1, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/4 v1, 0x0

    invoke-static {v1}, Landroidx/compose/foundation/layout/PaddingKt;->a(F)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v1

    move-object v7, v1

    :cond_24
    and-int/lit8 v1, v11, 0x10

    if-eqz v1, :cond_25

    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    and-int v4, v4, v19

    move-object v8, v1

    :cond_25
    if-eqz v12, :cond_26

    sget-object v1, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    move-object v13, v1

    :cond_26
    and-int/lit8 v1, v11, 0x40

    if-eqz v1, :cond_27

    invoke-static {v2}, Landroidx/compose/foundation/gestures/ScrollableDefaults;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    move-result-object v1

    and-int v4, v4, v18

    move-object v14, v1

    :cond_27
    if-eqz v15, :cond_28

    move/from16 v9, v17

    :cond_28
    invoke-static {v2}, Landroidx/compose/foundation/OverscrollKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/OverscrollEffect;

    move-result-object v1

    and-int/2addr v3, v4

    move-object v12, v0

    move-object/from16 v18, v1

    move v0, v3

    move-object/from16 v22, v8

    move/from16 v17, v9

    move-object/from16 v21, v13

    move-object/from16 v16, v14

    move-object v13, v5

    goto :goto_13

    :goto_16
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit8 v1, v0, 0xe

    or-int/lit16 v1, v1, 0x6000

    and-int/lit8 v3, v0, 0x70

    or-int/2addr v1, v3

    and-int/lit16 v3, v0, 0x380

    or-int/2addr v1, v3

    and-int/lit16 v3, v0, 0x1c00

    or-int/2addr v1, v3

    shr-int/lit8 v3, v0, 0x3

    const/high16 v4, 0x70000

    and-int/2addr v4, v3

    or-int/2addr v1, v4

    const/high16 v4, 0x380000

    and-int/2addr v3, v4

    or-int v25, v1, v3

    shr-int/lit8 v1, v0, 0xc

    and-int/lit8 v1, v1, 0x70

    shr-int/lit8 v3, v0, 0x6

    and-int/lit16 v3, v3, 0x380

    or-int/2addr v1, v3

    shr-int/lit8 v0, v0, 0x12

    and-int/lit16 v0, v0, 0x1c00

    or-int v26, v1, v0

    const/16 v27, 0x700

    const/4 v15, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v23, p8

    move-object/from16 v24, v2

    invoke-static/range {v12 .. v27}, Landroidx/compose/foundation/lazy/LazyListKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object/from16 v6, v16

    move/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v5, v21

    move-object/from16 v4, v22

    goto :goto_17

    :cond_29
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object v2, v5

    move-object v3, v7

    move-object v4, v8

    move v7, v9

    move-object v5, v13

    move-object v6, v14

    move-object/from16 v1, v16

    move-object/from16 v8, p7

    :goto_17
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_2a

    new-instance v0, Lb0;

    const/4 v12, 0x3

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v12}, Lb0;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;III)V

    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2a
    return-void
.end method
