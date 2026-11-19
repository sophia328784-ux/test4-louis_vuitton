.class public abstract Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormComponentKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v0, p16

    move/from16 v3, p17

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x69b816ca

    move-object/from16 v5, p15

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v0

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v8, 0x20

    goto :goto_1

    :cond_1
    const/16 v8, 0x10

    :goto_1
    or-int/2addr v5, v8

    and-int/lit16 v8, v0, 0x180

    if-nez v8, :cond_3

    move-object/from16 v8, p2

    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/16 v13, 0x100

    goto :goto_2

    :cond_2
    const/16 v13, 0x80

    :goto_2
    or-int/2addr v5, v13

    goto :goto_3

    :cond_3
    move-object/from16 v8, p2

    :goto_3
    and-int/lit16 v13, v0, 0xc00

    if-nez v13, :cond_5

    move-object/from16 v13, p3

    invoke-virtual {v4, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    const/16 v16, 0x800

    goto :goto_4

    :cond_4
    const/16 v16, 0x400

    :goto_4
    or-int v5, v5, v16

    goto :goto_5

    :cond_5
    move-object/from16 v13, p3

    :goto_5
    and-int/lit16 v9, v0, 0x6000

    const/16 v16, 0x2000

    if-nez v9, :cond_7

    move-object/from16 v9, p4

    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    const/16 v18, 0x4000

    goto :goto_6

    :cond_6
    move/from16 v18, v16

    :goto_6
    or-int v5, v5, v18

    goto :goto_7

    :cond_7
    move-object/from16 v9, p4

    :goto_7
    const/high16 v18, 0x30000

    and-int v18, v0, v18

    move-object/from16 v7, p5

    if-nez v18, :cond_9

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    const/high16 v20, 0x20000

    goto :goto_8

    :cond_8
    const/high16 v20, 0x10000

    :goto_8
    or-int v5, v5, v20

    :cond_9
    const/high16 v20, 0x180000

    and-int v20, v0, v20

    move-object/from16 v11, p6

    if-nez v20, :cond_b

    invoke-virtual {v4, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    const/high16 v21, 0x100000

    goto :goto_9

    :cond_a
    const/high16 v21, 0x80000

    :goto_9
    or-int v5, v5, v21

    :cond_b
    const/high16 v21, 0xc00000

    and-int v21, v0, v21

    move-object/from16 v14, p7

    if-nez v21, :cond_d

    invoke-virtual {v4, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    const/high16 v22, 0x800000

    goto :goto_a

    :cond_c
    const/high16 v22, 0x400000

    :goto_a
    or-int v5, v5, v22

    :cond_d
    const/high16 v22, 0x6000000

    and-int v22, v0, v22

    move-object/from16 v15, p8

    if-nez v22, :cond_f

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    const/high16 v23, 0x4000000

    goto :goto_b

    :cond_e
    const/high16 v23, 0x2000000

    :goto_b
    or-int v5, v5, v23

    :cond_f
    const/high16 v23, 0x30000000

    and-int v23, v0, v23

    move-object/from16 v12, p9

    if-nez v23, :cond_11

    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_10

    const/high16 v24, 0x20000000

    goto :goto_c

    :cond_10
    const/high16 v24, 0x10000000

    :goto_c
    or-int v5, v5, v24

    :cond_11
    and-int/lit8 v24, v3, 0x6

    move-object/from16 v10, p10

    if-nez v24, :cond_13

    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_12

    const/16 v25, 0x4

    goto :goto_d

    :cond_12
    const/16 v25, 0x2

    :goto_d
    or-int v25, v3, v25

    goto :goto_e

    :cond_13
    move/from16 v25, v3

    :goto_e
    and-int/lit8 v26, v3, 0x30

    move-object/from16 v6, p11

    if-nez v26, :cond_15

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_14

    const/16 v27, 0x20

    goto :goto_f

    :cond_14
    const/16 v27, 0x10

    :goto_f
    or-int v25, v25, v27

    :cond_15
    and-int/lit16 v0, v3, 0x180

    if-nez v0, :cond_17

    move-object/from16 v0, p12

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_16

    const/16 v17, 0x100

    goto :goto_10

    :cond_16
    const/16 v17, 0x80

    :goto_10
    or-int v25, v25, v17

    goto :goto_11

    :cond_17
    move-object/from16 v0, p12

    :goto_11
    and-int/lit16 v0, v3, 0xc00

    if-nez v0, :cond_19

    move-object/from16 v0, p13

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18

    const/16 v19, 0x800

    goto :goto_12

    :cond_18
    const/16 v19, 0x400

    :goto_12
    or-int v25, v25, v19

    goto :goto_13

    :cond_19
    move-object/from16 v0, p13

    :goto_13
    and-int/lit16 v0, v3, 0x6000

    if-nez v0, :cond_1b

    move-object/from16 v0, p14

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    const/16 v16, 0x4000

    :cond_1a
    or-int v25, v25, v16

    :goto_14
    move/from16 v0, v25

    goto :goto_15

    :cond_1b
    move-object/from16 v0, p14

    goto :goto_14

    :goto_15
    const v16, 0x12492493

    and-int v3, v5, v16

    const v6, 0x12492492

    const/16 v16, 0x1

    const/4 v7, 0x0

    if-ne v3, v6, :cond_1d

    and-int/lit16 v3, v0, 0x2493

    const/16 v6, 0x2492

    if-eq v3, v6, :cond_1c

    goto :goto_16

    :cond_1c
    move v3, v7

    goto :goto_17

    :cond_1d
    :goto_16
    move/from16 v3, v16

    :goto_17
    and-int/lit8 v6, v5, 0x1

    invoke-virtual {v4, v6, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_2d

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/4 v3, 0x3

    invoke-static {v7, v4, v3}, Landroidx/compose/foundation/lazy/LazyListStateKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/LazyListState;

    move-result-object v6

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v7, "DistantRepairFormComponent"

    invoke-direct {v3, v7}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v7

    iget v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-static {v3, v7, v8, v9}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v17

    and-int/lit8 v3, v0, 0x70

    const/16 v7, 0x20

    if-ne v3, v7, :cond_1e

    move/from16 v3, v16

    goto :goto_18

    :cond_1e
    const/4 v3, 0x0

    :goto_18
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v3, v7

    and-int/lit16 v7, v5, 0x380

    const/16 v8, 0x100

    if-ne v7, v8, :cond_1f

    move/from16 v7, v16

    goto :goto_19

    :cond_1f
    const/4 v7, 0x0

    :goto_19
    or-int/2addr v3, v7

    and-int/lit16 v7, v5, 0x1c00

    const/16 v8, 0x800

    if-ne v7, v8, :cond_20

    move/from16 v7, v16

    goto :goto_1a

    :cond_20
    const/4 v7, 0x0

    :goto_1a
    or-int/2addr v3, v7

    const/high16 v7, 0x70000

    and-int/2addr v7, v5

    const/high16 v8, 0x20000

    if-ne v7, v8, :cond_21

    move/from16 v7, v16

    goto :goto_1b

    :cond_21
    const/4 v7, 0x0

    :goto_1b
    or-int/2addr v3, v7

    const v7, 0xe000

    and-int v8, v5, v7

    const/16 v9, 0x4000

    if-ne v8, v9, :cond_22

    move/from16 v8, v16

    goto :goto_1c

    :cond_22
    const/4 v8, 0x0

    :goto_1c
    or-int/2addr v3, v8

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v3, v8

    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v3, v8

    const/high16 v8, 0x380000

    and-int/2addr v8, v5

    const/high16 v9, 0x100000

    if-ne v8, v9, :cond_23

    move/from16 v8, v16

    goto :goto_1d

    :cond_23
    const/4 v8, 0x0

    :goto_1d
    or-int/2addr v3, v8

    and-int/lit16 v8, v0, 0x380

    const/16 v9, 0x100

    if-ne v8, v9, :cond_24

    move/from16 v8, v16

    goto :goto_1e

    :cond_24
    const/4 v8, 0x0

    :goto_1e
    or-int/2addr v3, v8

    and-int/lit16 v8, v0, 0x1c00

    const/16 v9, 0x800

    if-ne v8, v9, :cond_25

    move/from16 v8, v16

    goto :goto_1f

    :cond_25
    const/4 v8, 0x0

    :goto_1f
    or-int/2addr v3, v8

    and-int/2addr v7, v0

    const/16 v9, 0x4000

    if-ne v7, v9, :cond_26

    move/from16 v7, v16

    goto :goto_20

    :cond_26
    const/4 v7, 0x0

    :goto_20
    or-int/2addr v3, v7

    const/high16 v7, 0x1c00000

    and-int/2addr v7, v5

    const/high16 v8, 0x800000

    if-ne v7, v8, :cond_27

    move/from16 v7, v16

    goto :goto_21

    :cond_27
    const/4 v7, 0x0

    :goto_21
    or-int/2addr v3, v7

    const/high16 v7, 0xe000000

    and-int/2addr v7, v5

    const/high16 v8, 0x4000000

    if-ne v7, v8, :cond_28

    move/from16 v7, v16

    goto :goto_22

    :cond_28
    const/4 v7, 0x0

    :goto_22
    or-int/2addr v3, v7

    const/high16 v7, 0x70000000

    and-int/2addr v5, v7

    const/high16 v7, 0x20000000

    if-ne v5, v7, :cond_29

    move/from16 v5, v16

    goto :goto_23

    :cond_29
    const/4 v5, 0x0

    :goto_23
    or-int/2addr v3, v5

    and-int/lit8 v0, v0, 0xe

    const/4 v5, 0x4

    if-ne v0, v5, :cond_2a

    goto :goto_24

    :cond_2a
    const/16 v16, 0x0

    :goto_24
    or-int v0, v3, v16

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_2c

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v0, :cond_2b

    goto :goto_25

    :cond_2b
    move-object v14, v4

    goto :goto_26

    :cond_2c
    :goto_25
    new-instance v0, Lqu;

    move-object/from16 v3, p2

    move-object/from16 v5, p5

    move-object v7, v2

    move-object/from16 v28, v4

    move-object v8, v6

    move-object/from16 v16, v10

    move-object v9, v11

    move-object v4, v13

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v6, p4

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object v2, v1

    move-object v15, v12

    move-object/from16 v1, p11

    move-object/from16 v12, p14

    invoke-direct/range {v0 .. v16}, Lqu;-><init>(Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    move-object v6, v8

    move-object/from16 v14, v28

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v3, v0

    :goto_26
    move-object v13, v3

    check-cast v13, Lkotlin/jvm/functions/Function1;

    const/4 v15, 0x0

    const/16 v16, 0x1fc

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, v17

    invoke-static/range {v5 .. v16}, Landroidx/compose/foundation/lazy/LazyDslKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_27

    :cond_2d
    move-object v14, v4

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_27
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_2e

    move-object v1, v0

    new-instance v0, Lru;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v29, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v17}, Lru;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;II)V

    move-object/from16 v1, v29

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2e
    return-void
.end method
